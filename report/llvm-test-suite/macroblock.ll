Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/macroblock?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
begin_hunk_0_@ChromaResidualCoding:bb.a
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !111
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
  %i.ic = load ptr, ptr @img, align 8, !tbaa !11  ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 15548
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !50
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next123, %i.if
  br i1 %i.ig, label %.lr.ph100, label %.loopexit.thread, !llvm.loop !243

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.ih = phi i32 [ %i.jg, %.critedge ], [ %i.fb, %.preheader.lr.ph ]
  %i.ii = phi i32 [ %i.jh, %.critedge ], [ %i.gr, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.critedge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph96, label %.critedge

.lr.ph96:                                         ; preds = %.preheader
  %i.ik = load ptr, ptr %i.gm, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv119
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %indvars.iv119
  %.pre = load i32, ptr %i.gn, align 4, !tbaa !53
  %.pre131 = load i32, ptr %i.go, align 8, !tbaa !52
  %i.in = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.io = add nsw i32 %.pre, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !111
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph96, %bb.l
  %indvars.iv116 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next117, %bb.l ] ; 4 uses
  %i.is = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.it = add nsw i32 %.pre131, %i.is
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.ir, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !125
  %i.ix = zext i16 %i.iw to i32
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv116
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !125
  %i.ja = zext i16 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv116
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !9
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.jd = load i32, ptr %i.gk, align 8, !tbaa !48 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next117, %i.je
  br i1 %i.jf, label %bb.l, label %.critedge.loopexit, !llvm.loop !244

.critedge.loopexit:                               ; preds = %bb.l
  %.pre132 = load i32, ptr %i.fd, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.jg = phi i32 [ %.pre132, %.critedge.loopexit ], [ %i.ih, %.preheader ] ; 2 uses
  %i.jh = phi i32 [ %i.jd, %.critedge.loopexit ], [ %i.ii, %.preheader ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ji = sext i32 %i.jg to i64
  %i.jj = icmp slt i64 %indvars.iv.next120, %i.ji
  br i1 %i.jj, label %.preheader, label %.loopexit, !llvm.loop !245

.loopexit:                                        ; preds = %.lr.ph94, %.critedge, %.preheader83
  %i.jk = phi ptr [ %i.fc, %.critedge ], [ %i.fc, %.preheader83 ], [ %i.ge, %.lr.ph94 ] ; 2 uses
  br i1 %i.o, label %.loopexit.thread, label %.loopexit.thread138

.loopexit.thread:                                 ; preds = %.lr.ph100, %.preheader80, %.preheader79.preheader, %.loopexit
  %i.jl = phi ptr [ %i.jk, %.loopexit ], [ %i.fc, %.preheader79.preheader ], [ %i.fc, %.preheader80 ], [ %i.ic, %.lr.ph100 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !54
  %i.jo = icmp eq i32 %i.jn, 3
  br i1 %i.jo, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit.thread
  %i.jp = load i32, ptr @si_frame_indicator, align 4, !tbaa !9
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = load i32, ptr @sp2_frame_indicator, align 4
  %i.js = icmp ne i32 %i.jr, 0
  %or.cond = select i1 %i.jq, i1 true, i1 %i.js
  %i.jt = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
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
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !140
  %.not77 = icmp eq i32 %i.jz, 0
  br i1 %.not77, label %bb.p, label %.thread

bb.p:                                             ; preds = %.loopexit.thread138
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 20
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !54
  %.not68 = icmp eq i32 %i.kb, 3
  br i1 %.not68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 14224
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [536 x i8], ptr %i.kd, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !56
  %i.kk = icmp eq i32 %i.kj, 10
  br i1 %i.kk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kl = load i32, ptr %0, align 4, !tbaa !9
  %i.km = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.kn = tail call i32 @dct_chroma(i32 noundef %i.km, i32 noundef %i.kl) #17
  br label %.thread.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ko = load i32, ptr @si_frame_indicator, align 4, !tbaa !9
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = load i32, ptr @sp2_frame_indicator, align 4
  %i.kr = icmp ne i32 %i.kq, 0
  %or.cond5 = select i1 %i.kp, i1 true, i1 %i.kr
  %i.ks = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
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
  store i32 %.sink, ptr %0, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit.thread, %.loopexit.thread138
  br i1 %i.x, label %.preheader85, label %bb.v, !llvm.loop !246

bb.v:                                             ; preds = %.thread
  %i.kw = load i32, ptr %0, align 4, !tbaa !9
  %i.kx = shl i32 %i.kw, 4
  %i.ky = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 14224
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !30
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [536 x i8], ptr %i.la, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 364 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !58
  %i.lh = add nsw i32 %i.lg, %i.kx
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !58
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
  %i.c = load ptr, ptr @img, align 8, !tbaa !11   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 4 uses
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
  %i.r = load ptr, ptr @getNeighbour, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = add i32 %i.t, -1
  call void %i.r(i32 noundef %i.g, i32 noundef -1, i32 noundef %i.u, i32 noundef 1, ptr noundef nonnull %i.s) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.v = load ptr, ptr @getNeighbour, align 8, !tbaa !11
  call void %i.v(i32 noundef %i.g, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %3) #17
  %i.w = load i32, ptr %3, align 4, !tbaa !149    ; 2 uses
  %i.x = load i32, ptr %4, align 16, !tbaa !149   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !149  ; 2 uses
  %i.aa = load ptr, ptr @input, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !113
  %.not361 = icmp eq i32 %i.ac, 0
  br i1 %.not361, label %bb.o, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not362 = icmp eq i32 %i.w, 0
  br i1 %.not362, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @img, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 14240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !150
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
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
  %lcmp.mod892 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod892)
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv563.epil.init ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !149
  %.not377.epil = icmp eq i32 %i.at, 0
  br i1 %.not377.epil, label %.preheader454, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !150
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
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
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !149
  %.not377 = icmp eq i32 %i.bh, 0
  br i1 %.not377, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !150
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.bo = and i32 %i.bn, %.sroa.0.0458
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bp = phi i32 [ %i.bo, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.next564.1 = add nuw nsw i64 %indvars.iv563, 2 ; 3 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next564.1 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !149
  %.not377.1 = icmp eq i32 %i.br, 0
  br i1 %.not377.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !150
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !9
  %i.by = and i32 %i.bx, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader454.loopexit.unr-lcssa, label %bb.f, !llvm.loop !248

bb.k:                                             ; preds = %.lr.ph464, %bb.m
  %indvars.iv568 = phi i64 [ %i.be, %.lr.ph464 ], [ %indvars.iv.next569, %bb.m ]
  %.sroa.16.0463 = phi i32 [ 1, %.lr.ph464 ], [ %i.cj, %bb.m ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next569 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !149
  %.not376 = icmp eq i32 %i.cb, 0
  br i1 %.not376, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.bd, align 8, !tbaa !114
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !150
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = and i32 %i.ch, %.sroa.16.0463
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next569 to i32
  %i.cl = icmp sgt i32 %i.m, %i.ck
  br i1 %i.cl, label %bb.k, label %._crit_edge465, !llvm.loop !249

._crit_edge465:                                   ; preds = %bb.m, %.preheader454
  %.sroa.16.0.lcssa = phi i32 [ 1, %.preheader454 ], [ %i.cj, %bb.m ] ; 2 uses
  %.not363 = icmp eq i32 %i.x, 0
  br i1 %.not363, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge465
  %i.cm = load ptr, ptr @img, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 14240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !150
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge465, %._crit_edge
  %.0325 = phi i32 [ %i.w, %._crit_edge ], [ %i.al, %._crit_edge465 ], [ %i.al, %bb.n ] ; 2 uses
  %.sroa.16.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.16.0.lcssa, %._crit_edge465 ], [ %.sroa.16.0.lcssa, %bb.n ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.0.0.lcssa, %._crit_edge465 ], [ %.sroa.0.0.lcssa, %bb.n ] ; 2 uses
  %.0324 = phi i32 [ %i.x, %._crit_edge ], [ 0, %._crit_edge465 ], [ %i.ct, %bb.n ] ; 2 uses
  %.not364 = icmp eq ptr %0, null
  br i1 %.not364, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.0325, ptr %0, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not365 = icmp eq ptr %1, null
  br i1 %.not365, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp ne i32 %.sroa.0.1, 0
  %i.cv = icmp ne i32 %.sroa.16.1, 0
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %1, align 4, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not366 = icmp eq ptr %2, null
  br i1 %.not366, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.0324, ptr %2, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cy = icmp ne i32 %.0325, 0                   ; 29 uses
  %i.cz = icmp ne i32 %.sroa.0.1, 0               ; 13 uses
  %i.da = icmp ne i32 %.sroa.16.1, 0              ; 13 uses
  %or.cond8 = select i1 %i.cz, i1 %i.da, i1 false ; 5 uses
  %i.db = sext i32 %i.p to i64                    ; 3 uses
  %i.dc = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.db
  %i.dd = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.db
  %i.de = getelementptr inbounds [64 x i8], ptr @IntraChromaPrediction.block_pos, i64 %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
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
  %invariant.gep811 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %wide.trip.count690 = zext i32 %i.dy to i64     ; 3 uses
  %invariant.gep813 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.m to i64
  %wide.trip.count696 = zext nneg i32 %i.k to i64
  %i.en = add nsw i64 %wide.trip.count665, -1     ; 3 uses
  %xtraiter893 = and i64 %wide.trip.count665, 1
  %i.eo = icmp eq i64 %i.en, 0
  %unroll_iter896 = and i64 %wide.trip.count665, 2147483646
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  %lcmp.mod895 = trunc i32 %i.m to i1
  %xtraiter898 = and i64 %wide.trip.count665, 1
  %i.ep = icmp eq i64 %i.en, 0
  %unroll_iter901 = and i64 %wide.trip.count665, 4294967294
  %lcmp.mod899.not = icmp eq i64 %xtraiter898, 0
  %lcmp.mod900 = trunc i32 %i.m to i1
  %brmerge872 = or i1 %i.dk, %i.dj
  %xtraiter904 = and i64 %wide.trip.count665, 3   ; 3 uses
  %i.eq = icmp ult i64 %i.en, 3
  %unroll_iter907 = and i64 %wide.trip.count665, 4294967292
  %lcmp.mod905.not = icmp eq i64 %xtraiter904, 0
  %lcmp.mod906 = icmp ne i64 %xtraiter904, 0
  %min.iters.check850 = icmp ult i32 %i.dm, 9
  %n.vec852 = and i64 %wide.trip.count685, 4294967288 ; 3 uses
  %cmp.n869 = icmp eq i64 %n.vec852, %wide.trip.count685
  %min.iters.check833 = icmp ult i32 %i.du, 9
  %n.vec835 = and i64 %wide.trip.count690, 4294967288 ; 3 uses
  %cmp.n847 = icmp eq i64 %n.vec835, %wide.trip.count690
  %invariant.op920.a = sub i32 1, %i.du
  %min.iters.check = icmp ult i32 %i.k, 8
  %n.vec = and i64 %wide.trip.count680, 2147483640 ; 3 uses
  %broadcast.splatinsert826 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat827 = shufflevector <8 x i32> %broadcast.splatinsert826, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = sub <8 x i32> splat (i32 1), %broadcast.splat827
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count680
  %invariant.op919 = sub i32 1, %i.dm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread410
  %i.er = phi i1 [ true, %bb.u ], [ false, %.thread410 ]
  %indvars.iv704 = phi i64 [ 0, %bb.u ], [ 1, %.thread410 ] ; 7 uses
  %i.es = load ptr, ptr @enc_picture, align 8, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6472
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !145
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv704
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !42 ; 70 uses
  %i.ex = load ptr, ptr @img, align 8, !tbaa !11  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 15528
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !151
  %i.fa = ashr i32 %i.ez, 1                       ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.preheader450.lr.ph, label %._crit_edge487

.preheader450.lr.ph:                              ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 15516
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !268 ; 20 uses
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
  %i.fo = load i8, ptr %i.fg, align 4, !tbaa !66  ; 5 uses
  %i.fp = load i8, ptr %i.fh, align 4, !tbaa !66  ; 5 uses
  %i.fq = load i32, ptr %i.fi, align 16, !tbaa !9
  switch i32 %i.fq, label %.thread385 [
    i32 0, label %bb.w
    i32 1, label %bb.z
    i32 2, label %bb.ad
    i32 3, label %bb.ah
  ]

bb.w:                                             ; preds = %.preheader450
  br i1 %i.cy, label %.preheader438, label %.thread413

.preheader438:                                    ; preds = %bb.w
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !111
  %i.fs = zext i8 %i.fp to i64
  %i.ft = getelementptr [2 x i8], ptr %i.fr, i64 %i.fn
  %i.fu = getelementptr [2 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load <4 x i16>, ptr %i.fu, align 2, !tbaa !125
  %i.fw = zext <4 x i16> %i.fv to <4 x i32>
  %i.fx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fw) ; 2 uses
  br i1 %i.cz, label %.preheader437, label %.thread382

.thread413:                                       ; preds = %bb.w
  br i1 %i.cz, label %.preheader437, label %.thread385

.preheader437:                                    ; preds = %.preheader438, %.thread413
  %.1351415.ph = phi i32 [ 0, %.thread413 ], [ %i.fx, %.preheader438 ]
  %i.fy = zext i8 %i.fo to i64                    ; 4 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !152
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !111
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !153
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !125
  %i.gk = zext i16 %i.gj to i32
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 68
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !152
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !111
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !153
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !125
  %i.gw = zext i16 %i.gv to i32
  %i.gx = add nuw nsw i32 %i.gk, %i.gw
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 92
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !152
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !111
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !153
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !125
  %i.hj = zext i16 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.gx, %i.hj
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 116
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !152
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !111
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 112
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !153
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !125
  %i.hw = zext i16 %i.hv to i32
  %i.hx = add nuw nsw i32 %i.hk, %i.hw            ; 2 uses
  br i1 %i.cy, label %bb.x, label %bb.y

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
  %i.id = add nuw nsw i32 %i.hx, 2
  %i.ie = lshr i32 %i.id, 2
  br label %.thread385

bb.z:                                             ; preds = %.preheader450
  br i1 %i.cy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cz, label %bb.ac, label %.thread385

bb.ab:                                            ; preds = %bb.z
  %i.if = load ptr, ptr %i.fl, align 8, !tbaa !111
  %i.ig = zext i8 %i.fp to i64
  %i.ih = getelementptr [2 x i8], ptr %i.if, i64 %i.fn
  %i.ii = getelementptr [2 x i8], ptr %i.ih, i64 %i.ig
end_hunk_0
begin_hunk_1_@IntraChromaPrediction:bb.a
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
  %i.ben = load ptr, ptr @img, align 8, !tbaa !11
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 8528
  %i.bep = getelementptr inbounds nuw [512 x i8], ptr %i.beo, i64 %indvars.iv754 ; 4 uses
  %i.beq = load i32, ptr %i.bec, align 4, !tbaa !152
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.ber
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !111
  %i.beu = load i32, ptr %i.bed, align 16, !tbaa !153
  %i.bev = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv727
  %i.bew = sext i32 %i.beu to i64
  %i.bex = getelementptr [2 x i8], ptr %i.bet, i64 %indvars.iv714
  %i.bey = getelementptr [2 x i8], ptr %i.bex, i64 %i.bew
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr %i.bev, i64 %indvars.iv714
  %i.bfa = load <4 x i16>, ptr %i.bey, align 2, !tbaa !125
  %i.bfb = zext <4 x i16> %i.bfa to <4 x i32>
  %i.bfc = load <4 x i16>, ptr %i.bez, align 2, !tbaa !125
  %i.bfd = zext <4 x i16> %i.bfc to <4 x i32>
  %i.bfe = sub nsw <4 x i32> %i.bfb, %i.bfd
  store <4 x i32> %i.bfe, ptr @diff, align 16, !tbaa !9
  %i.bff = load i32, ptr %i.bef, align 4, !tbaa !152
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bfg
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !111
  %i.bfj = load i32, ptr %i.beg, align 8, !tbaa !153
  %i.bfk = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730
  %i.bfl = sext i32 %i.bfj to i64
  %i.bfm = getelementptr [2 x i8], ptr %i.bfi, i64 %indvars.iv714
  %i.bfn = getelementptr [2 x i8], ptr %i.bfm, i64 %i.bfl
  %i.bfo = getelementptr inbounds nuw [2 x i8], ptr %i.bfk, i64 %indvars.iv714
  %i.bfp = load <4 x i16>, ptr %i.bfn, align 2, !tbaa !125
  %i.bfq = zext <4 x i16> %i.bfp to <4 x i32>
  %i.bfr = load <4 x i16>, ptr %i.bfo, align 2, !tbaa !125
  %i.bfs = zext <4 x i16> %i.bfr to <4 x i32>
  %i.bft = sub nsw <4 x i32> %i.bfq, %i.bfs
  store <4 x i32> %i.bft, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !9
  %i.bfu = load i32, ptr %i.bei, align 4, !tbaa !152
  %i.bfv = sext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bfv
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !111
  %i.bfy = load i32, ptr %i.bej, align 16, !tbaa !153
  %i.bfz = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730.1
  %i.bga = sext i32 %i.bfy to i64
  %i.bgb = getelementptr [2 x i8], ptr %i.bfx, i64 %indvars.iv714
  %i.bgc = getelementptr [2 x i8], ptr %i.bgb, i64 %i.bga
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %indvars.iv714
  %i.bge = load <4 x i16>, ptr %i.bgc, align 2, !tbaa !125
  %i.bgf = zext <4 x i16> %i.bge to <4 x i32>
  %i.bgg = load <4 x i16>, ptr %i.bgd, align 2, !tbaa !125
  %i.bgh = zext <4 x i16> %i.bgg to <4 x i32>
  %i.bgi = sub nsw <4 x i32> %i.bgf, %i.bgh
  store <4 x i32> %i.bgi, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !9
  %i.bgj = load i32, ptr %i.bel, align 4, !tbaa !152
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bgk
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !111
  %i.bgn = load i32, ptr %i.bem, align 8, !tbaa !153
  %i.bgo = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730.2
  %i.bgp = sext i32 %i.bgn to i64
  %i.bgq = getelementptr [2 x i8], ptr %i.bgm, i64 %indvars.iv714
  %i.bgr = getelementptr [2 x i8], ptr %i.bgq, i64 %i.bgp
  %i.bgs = getelementptr inbounds nuw [2 x i8], ptr %i.bgo, i64 %indvars.iv714
  %i.bgt = load <4 x i16>, ptr %i.bgr, align 2, !tbaa !125
  %i.bgu = zext <4 x i16> %i.bgt to <4 x i32>
  %i.bgv = load <4 x i16>, ptr %i.bgs, align 2, !tbaa !125
  %i.bgw = zext <4 x i16> %i.bgv to <4 x i32>
  %i.bgx = sub nsw <4 x i32> %i.bgu, %i.bgw
  store <4 x i32> %i.bgx, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !9
  %i.bgy = call i32 @distortion4x4(ptr noundef nonnull @diff) #17
  %i.bgz = add nsw i32 %i.bgy, %.2523.us.us.us    ; 3 uses
  %indvars.iv.next715 = add nuw i64 %indvars.iv714, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next715 to i32
  %i.bha = icmp sgt i32 %i.k, %indvars
  br i1 %i.bha, label %.preheader432.us.us.us, label %._crit_edge524.us.us.us, !llvm.loop !265

._crit_edge524.us.us.us:                          ; preds = %.preheader432.us.us.us
  %indvars.iv.next728 = add nuw i64 %indvars.iv727, 4 ; 2 uses
  %indvars743 = trunc i64 %indvars.iv.next728 to i32
  %i.bhb = icmp sgt i32 %i.m, %indvars743
  br i1 %i.bhb, label %.preheader433.us.us.us, label %._crit_edge528.split.us.us.us, !llvm.loop !266

._crit_edge528.split.us.us.us:                    ; preds = %._crit_edge524.us.us.us
  %i.bhc = load ptr, ptr @imgUV_org, align 8, !tbaa !44
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !42 ; 4 uses
  br label %.preheader433.us.us.us.1

.preheader433.us.us.us.1:                         ; preds = %._crit_edge524.us.us.us.1, %._crit_edge528.split.us.us.us
  %indvars.iv727.1 = phi i64 [ %indvars.iv.next728.1, %._crit_edge524.us.us.us.1 ], [ 0, %._crit_edge528.split.us.us.us ] ; 6 uses
  %.1316527.us.us.us.1 = phi i32 [ %i.bkd, %._crit_edge524.us.us.us.1 ], [ %i.bgz, %._crit_edge528.split.us.us.us ]
  %i.bhf = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv727.1 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 20
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhf, i64 16
  %indvars.iv.next730.1753 = or disjoint i64 %indvars.iv727.1, 1 ; 2 uses
  %i.bhi = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.1753 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 20
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhi, i64 16
  %indvars.iv.next730.1.1 = or disjoint i64 %indvars.iv727.1, 2 ; 2 uses
  %i.bhl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.1.1 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 20
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  %indvars.iv.next730.2.1 = or disjoint i64 %indvars.iv727.1, 3 ; 2 uses
  %i.bho = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.2.1 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 20
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bho, i64 16
  br label %.preheader432.us.us.us.1

.preheader432.us.us.us.1:                         ; preds = %.preheader432.us.us.us.1, %.preheader433.us.us.us.1
  %indvars.iv714.1 = phi i64 [ %indvars.iv.next715.1, %.preheader432.us.us.us.1 ], [ 0, %.preheader433.us.us.us.1 ] ; 9 uses
  %.2523.us.us.us.1 = phi i32 [ %i.bkd, %.preheader432.us.us.us.1 ], [ %.1316527.us.us.us.1, %.preheader433.us.us.us.1 ]
  %i.bhr = load ptr, ptr @img, align 8, !tbaa !11
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 10576
  %i.bht = getelementptr inbounds nuw [512 x i8], ptr %i.bhs, i64 %indvars.iv754 ; 4 uses
  %i.bhu = load i32, ptr %i.bhg, align 4, !tbaa !152
  %i.bhv = sext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.bhv
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !111
  %i.bhy = load i32, ptr %i.bhh, align 16, !tbaa !153
  %i.bhz = getelementptr inbounds nuw [32 x i8], ptr %i.bht, i64 %indvars.iv727.1
  %i.bia = sext i32 %i.bhy to i64
  %i.bib = getelementptr [2 x i8], ptr %i.bhx, i64 %indvars.iv714.1
  %i.bic = getelementptr [2 x i8], ptr %i.bib, i64 %i.bia
  %i.bid = getelementptr inbounds nuw [2 x i8], ptr %i.bhz, i64 %indvars.iv714.1
  %i.bie = load <4 x i16>, ptr %i.bic, align 2, !tbaa !125
  %i.bif = zext <4 x i16> %i.bie to <4 x i32>
  %i.big = load <4 x i16>, ptr %i.bid, align 2, !tbaa !125
  %i.bih = zext <4 x i16> %i.big to <4 x i32>
  %i.bii = sub nsw <4 x i32> %i.bif, %i.bih
  store <4 x i32> %i.bii, ptr @diff, align 16, !tbaa !9
  %i.bij = load i32, ptr %i.bhj, align 4, !tbaa !152
  %i.bik = sext i32 %i.bij to i64
  %i.bil = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.bik
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !111
  %i.bin = load i32, ptr %i.bhk, align 8, !tbaa !153
  %i.bio = getelementptr inbounds nuw [32 x i8], ptr %i.bht, i64 %indvars.iv.next730.1753
  %i.bip = sext i32 %i.bin to i64
  %i.biq = getelementptr [2 x i8], ptr %i.bim, i64 %indvars.iv714.1
  %i.bir = getelementptr [2 x i8], ptr %i.biq, i64 %i.bip
  %i.bis = getelementptr inbounds nuw [2 x i8], ptr %i.bio, i64 %indvars.iv714.1
  %i.bit = load <4 x i16>, ptr %i.bir, align 2, !tbaa !125
  %i.biu = zext <4 x i16> %i.bit to <4 x i32>
  %i.biv = load <4 x i16>, ptr %i.bis, align 2, !tbaa !125
  %i.biw = zext <4 x i16> %i.biv to <4 x i32>
  %i.bix = sub nsw <4 x i32> %i.biu, %i.biw
  store <4 x i32> %i.bix, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !9
  %i.biy = load i32, ptr %i.bhm, align 4, !tbaa !152
  %i.biz = sext i32 %i.biy to i64
  %i.bja = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.biz
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !111
  %i.bjc = load i32, ptr %i.bhn, align 16, !tbaa !153
  %i.bjd = getelementptr inbounds nuw [32 x i8], ptr %i.bht, i64 %indvars.iv.next730.1.1
  %i.bje = sext i32 %i.bjc to i64
  %i.bjf = getelementptr [2 x i8], ptr %i.bjb, i64 %indvars.iv714.1
  %i.bjg = getelementptr [2 x i8], ptr %i.bjf, i64 %i.bje
  %i.bjh = getelementptr inbounds nuw [2 x i8], ptr %i.bjd, i64 %indvars.iv714.1
  %i.bji = load <4 x i16>, ptr %i.bjg, align 2, !tbaa !125
  %i.bjj = zext <4 x i16> %i.bji to <4 x i32>
  %i.bjk = load <4 x i16>, ptr %i.bjh, align 2, !tbaa !125
  %i.bjl = zext <4 x i16> %i.bjk to <4 x i32>
  %i.bjm = sub nsw <4 x i32> %i.bjj, %i.bjl
  store <4 x i32> %i.bjm, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !9
  %i.bjn = load i32, ptr %i.bhp, align 4, !tbaa !152
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.bjo
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !111
  %i.bjr = load i32, ptr %i.bhq, align 8, !tbaa !153
  %i.bjs = getelementptr inbounds nuw [32 x i8], ptr %i.bht, i64 %indvars.iv.next730.2.1
  %i.bjt = sext i32 %i.bjr to i64
  %i.bju = getelementptr [2 x i8], ptr %i.bjq, i64 %indvars.iv714.1
  %i.bjv = getelementptr [2 x i8], ptr %i.bju, i64 %i.bjt
  %i.bjw = getelementptr inbounds nuw [2 x i8], ptr %i.bjs, i64 %indvars.iv714.1
  %i.bjx = load <4 x i16>, ptr %i.bjv, align 2, !tbaa !125
  %i.bjy = zext <4 x i16> %i.bjx to <4 x i32>
  %i.bjz = load <4 x i16>, ptr %i.bjw, align 2, !tbaa !125
  %i.bka = zext <4 x i16> %i.bjz to <4 x i32>
  %i.bkb = sub nsw <4 x i32> %i.bjy, %i.bka
  store <4 x i32> %i.bkb, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !9
  %i.bkc = call i32 @distortion4x4(ptr noundef nonnull @diff) #17
  %i.bkd = add nsw i32 %i.bkc, %.2523.us.us.us.1  ; 3 uses
  %indvars.iv.next715.1 = add nuw i64 %indvars.iv714.1, 4 ; 2 uses
  %indvars.1 = trunc i64 %indvars.iv.next715.1 to i32
  %5 = icmp sgt i32 %i.k, %indvars.1
  br i1 %5, label %.preheader432.us.us.us.1, label %._crit_edge524.us.us.us.1, !llvm.loop !265

._crit_edge524.us.us.us.1:                        ; preds = %.preheader432.us.us.us.1
  %indvars.iv.next728.1 = add nuw i64 %indvars.iv727.1, 4 ; 2 uses
  %indvars743.1 = trunc i64 %indvars.iv.next728.1 to i32
  %6 = icmp sgt i32 %i.m, %indvars743.1
  br i1 %6, label %.preheader433.us.us.us.1, label %.split537.us, !llvm.loop !266

.split537.us:                                     ; preds = %._crit_edge524.us.us.us.1, %bb.cl
  %.us-phi538 = phi i32 [ 0, %bb.cl ], [ %i.bkd, %._crit_edge524.us.us.us.1 ] ; 2 uses
  %i.bke = icmp slt i32 %.us-phi538, %.0314541
  %spec.select = select i1 %i.bke, i32 %i.bdy, i32 %.0317540
  %spec.select378 = call i32 @llvm.smin.i32(i32 %.us-phi538, i32 %.0314541)
  br label %bb.cm

bb.cm:                                            ; preds = %.split537.us, %bb.cj, %bb.ck, %bb.ch, %bb.cg
  %.1318 = phi i32 [ %.0317540, %bb.cg ], [ %.0317540, %bb.ch ], [ %spec.select, %.split537.us ], [ %.0317540, %bb.ck ], [ %.0317540, %bb.cj ] ; 2 uses
  %.1 = phi i32 [ %.0314541, %bb.cg ], [ %.0314541, %bb.ch ], [ %spec.select378, %.split537.us ], [ %.0314541, %bb.ck ], [ %.0314541, %bb.cj ]
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %exitcond758.not = icmp eq i64 %indvars.iv.next755, 4
  br i1 %exitcond758.not, label %bb.cn, label %bb.ce, !llvm.loop !267

bb.cn:                                            ; preds = %bb.cm
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  store i32 %.1318, ptr %i.bkf, align 8, !tbaa !57
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
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 4 uses
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
  %i.k = load ptr, ptr @getNeighbour, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = add i32 %i.m, -1
  call void %i.k(i32 noundef %i.e, i32 noundef -1, i32 noundef %i.n, i32 noundef 1, ptr noundef nonnull %i.l) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = load ptr, ptr @getNeighbour, align 8, !tbaa !11
  call void %i.o(i32 noundef %i.e, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %1) #17
  %i.p = load i32, ptr %1, align 4, !tbaa !149    ; 2 uses
  %i.q = load i32, ptr %2, align 16, !tbaa !149   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !149  ; 2 uses
  %i.t = load ptr, ptr @input, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load i32, ptr %i.u, align 8, !tbaa !113
  %.not112 = icmp eq i32 %i.v, 0
  br i1 %.not112, label %bb.o, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not113 = icmp eq i32 %i.p, 0
  br i1 %.not113, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr @img, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 14240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !150
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
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
  %i.am = load i32, ptr %i.al, align 8, !tbaa !149
  %.not118.epil = icmp eq i32 %i.am, 0
  br i1 %.not118.epil, label %.preheader123, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !150
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
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
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !149
  %.not118 = icmp eq i32 %i.ba, 0
  br i1 %.not118, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !150
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = and i32 %i.bg, %.sroa.0.0127
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = phi i32 [ %i.bh, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next191.1 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !149
  %.not118.1 = icmp eq i32 %i.bk, 0
  br i1 %.not118.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !150
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.br = and i32 %i.bq, %i.bi
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = phi i32 [ %i.br, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader123.loopexit.unr-lcssa, label %bb.f, !llvm.loop !274

bb.k:                                             ; preds = %.lr.ph133, %bb.m
  %indvars.iv195 = phi i64 [ %i.ax, %.lr.ph133 ], [ %indvars.iv.next196, %bb.m ]
  %.sroa.8.0132 = phi i32 [ 1, %.lr.ph133 ], [ %i.cc, %bb.m ]
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next196 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !149
  %.not117 = icmp eq i32 %i.bu, 0
  br i1 %.not117, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_1
