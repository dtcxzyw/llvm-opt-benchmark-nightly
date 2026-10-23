Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManCheckConst:bb.a
  br i1 %i.fr, label %bb.au, label %.preheader

.preheader:                                       ; preds = %Vec_PtrFree.exit
  %i.fs = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  %.val = load i32, ptr %i.ft, align 4, !tbaa !47 ; 4 uses
  %i.fu = icmp sgt i32 %.val, 0
  br i1 %i.fu, label %.lr.ph145, label %.critedge4

.lr.ph145:                                        ; preds = %.preheader
  %i.fv = getelementptr i8, ptr %i.fs, i64 8
  %.val102 = load ptr, ptr %i.fv, align 8, !tbaa !48 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fw = icmp eq i32 %.val, 1
  br i1 %i.fw, label %.epil.preheader, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.aw

bb.au:                                            ; preds = %Vec_PtrFree.exit
  %i.fx = load ptr, ptr %0, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !102
  %.not97 = icmp eq i32 %i.fz, 0
  br i1 %.not97, label %.loopexit.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.fq, i32 noundef %1) ; 0 uses
  br label %.loopexit.sink.split

bb.aw:                                            ; preds = %bb.aw, %.lr.ph145.new
  %indvars.iv162 = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next163.1, %bb.aw ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph145.new ], [ %niter.next.1, %bb.aw ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val102, i64 %indvars.iv162
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !14 ; 2 uses
  %i.gd = and i32 %i.gc, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = ashr i32 %i.gc, 6
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gh ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !89
  %i.gk = or i64 %i.gf, %i.gj
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !89
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val102, i64 %indvars.iv162
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !14 ; 2 uses
  %i.go = and i32 %i.gn, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = ashr i32 %i.gn, 6
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gs ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !89
  %i.gv = or i64 %i.gq, %i.gu
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !89
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge4.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !248

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.aw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph145
  %indvars.iv162.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next163.1, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod182 = trunc i32 %.val to i1
  call void @llvm.assume(i1 %lcmp.mod182)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val102, i64 %indvars.iv162.epil.init
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14 ; 2 uses
  %i.gy = and i32 %i.gx, 63
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw i64 1, %i.gz
  %i.hb = ashr i32 %i.gx, 6
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !89
  %i.hf = or i64 %i.ha, %i.he
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !89
  br label %.critedge4

.critedge4:                                       ; preds = %.epil.preheader, %.critedge4.loopexit.unr-lcssa, %.preheader
  call void @Sbd_ManPropagateControl(ptr noundef nonnull %0, i32 noundef %1)
  %i.hg = load i64, ptr %i.j, align 8, !tbaa !89  ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %.critedge4
  %indvars.iv166 = phi i64 [ 0, %.critedge4 ], [ %indvars.iv.next167.1, %bb.bb ] ; 5 uses
  %i.hh = shl nuw i64 1, %indvars.iv166
  %i.hi = and i64 %i.hg, %i.hh
  %.not96 = icmp eq i64 %i.hi, 0
  br i1 %.not96, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hj = load i64, ptr %i.g, align 8, !tbaa !89
  %i.hk = lshr i64 %i.hj, %indvars.iv166
  %i.hl = and i64 %i.hk, 1
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !14
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !14
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.hp = shl nuw i64 2, %indvars.iv166
  %i.hq = and i64 %i.hg, %i.hp
  %.not96.1 = icmp eq i64 %i.hq, 0
  br i1 %.not96.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1
  %i.hr = load i64, ptr %i.g, align 8, !tbaa !89
  %i.hs = lshr i64 %i.hr, %indvars.iv.next167
  %i.ht = and i64 %i.hs, 1
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !14
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !14
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond169.not.1 = icmp eq i64 %indvars.iv.next167.1, 64
  br i1 %exitcond169.not.1, label %.loopexit, label %bb.ax, !llvm.loop !249

.loopexit.sink.split:                             ; preds = %bb.au, %bb.av, %Abc_Clock.exit115
  %.091.ph = phi i32 [ 0, %Abc_Clock.exit115 ], [ %i.fq, %bb.av ], [ %i.fq, %bb.au ]
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !67
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %.val105 = load ptr, ptr %i.hz, align 8, !tbaa !48
  %i.ia = getelementptr inbounds [4 x i8], ptr %.val105, i64 %i.n
  store i32 0, ptr %i.ia, align 4, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !14
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %.loopexit.sink.split, %bb.r
  %.091 = phi i32 [ %.091.ph, %.loopexit.sink.split ], [ -1, %bb.r ], [ -1, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.091
}

declare ptr @Sbd_ManSatSolver(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @Sbd_ManCollectConstants(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Sbd_ManPrintObj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val243 = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val243, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 18 uses
  %.not274 = icmp slt i32 %i.f, 0                 ; 6 uses
  br i1 %.not274, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = add nuw i32 %i.f, 1
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val242 = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val242, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !104
  %.val252 = load ptr, ptr %0, align 8, !tbaa !64
  %.val253 = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.p = getelementptr i8, ptr %.val252, i64 32
  %.val252.val = load i32, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr i8, ptr %.val253, i64 8
  %.val253.val = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.r = mul nsw i32 %.val252.val, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val253.val, i64 %i.s
  tail call void @Extra_PrintBinary(ptr noundef %i.o, ptr noundef %i.t, i32 noundef 64) #33
  %putchar225 = tail call i32 @putchar(i32 10)    ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !251

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val229 = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1, i32 noundef %.val229) ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  br i1 %.not274, label %.critedge2, label %.lr.ph278

.lr.ph278:                                        ; preds = %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = zext nneg i32 %i.f to i64               ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge2.loopexit.peel.begin, label %.lr.ph278.split

.lr.ph278.split:                                  ; preds = %.lr.ph278
  %i.ai = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph278.split, %bb.e
  %indvars.iv315 = phi i64 [ 0, %.lr.ph278.split ], [ %indvars.iv.next316, %bb.e ] ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val241 = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val241, i64 %indvars.iv315
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = icmp eq i64 %indvars.iv315, %i.ah
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %putchar224 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val240 = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val240, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.as) ; 0 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 3 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %i.ai
  br i1 %exitcond319.not, label %.critedge2.loopexit.peel.begin, label %bb.c, !llvm.loop !252

.critedge2.loopexit.peel.begin:                   ; preds = %.lr.ph278, %bb.e
  %i.au = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next316, %bb.e ] ; 2 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val241.peel = load ptr, ptr %i.aw, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val241.peel, i64 %i.au
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = icmp eq i64 %i.au, %i.ah
  br i1 %i.az, label %bb.f, label %.critedge2.loopexit.peel.next

bb.f:                                             ; preds = %.critedge2.loopexit.peel.begin
  %putchar224.peel = tail call i32 @putchar(i32 32) ; 0 uses
  br label %.critedge2.loopexit.peel.next

.critedge2.loopexit.peel.next:                    ; preds = %bb.f, %.critedge2.loopexit.peel.begin
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val240.peel = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.bc = sext i32 %i.ay to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val240.peel, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.be) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit.peel.next, %.critedge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %putchar184 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.bg = icmp sgt i32 %i.f, 98
  br i1 %i.bg, label %.split, label %bb.k

.split:                                           ; preds = %.critedge2
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bj = zext nneg i32 %i.f to i64               ; 2 uses
  %i.bk = zext nneg i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.i
  %indvars.iv320 = phi i64 [ 0, %.split ], [ %indvars.iv.next321, %bb.i ] ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val239 = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val239, i64 %indvars.iv320
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = icmp eq i64 %indvars.iv320, %i.bj
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %putchar223 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bq = sdiv i32 %i.bo, 100
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bq) ; 0 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 4 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %i.bk
  br i1 %exitcond324.not, label %.critedge4.peel.begin, label %bb.g, !llvm.loop !253

.critedge4.peel.begin:                            ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val239.peel = load ptr, ptr %i.bt, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val239.peel, i64 %indvars.iv.next321
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = icmp eq i64 %indvars.iv.next321, %i.bj
  br i1 %i.bw, label %bb.j, label %.critedge4.peel.next

bb.j:                                             ; preds = %.critedge4.peel.begin
  %putchar223.peel = tail call i32 @putchar(i32 32) ; 0 uses
  br label %.critedge4.peel.next

.critedge4.peel.next:                             ; preds = %bb.j, %.critedge4.peel.begin
  %i.bx = sdiv i32 %i.bv, 100
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bx) ; 0 uses
  %putchar186 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge4.peel.next, %.critedge2
  %i.bz = icmp sgt i32 %i.f, 8
  br i1 %i.bz, label %.split330, label %bb.o

.split330:                                        ; preds = %bb.k
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cc = zext nneg i32 %i.f to i64
  %i.cd = zext nneg i32 %i.f to i64               ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.split330, %bb.n
  %indvars.iv325 = phi i64 [ 0, %.split330 ], [ %indvars.iv.next326, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !81
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val238 = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val238, i64 %indvars.iv325
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = icmp eq i64 %indvars.iv325, %i.cc
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %putchar222 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cj = srem i32 %i.ch, 100
  %.lhs.trunc = trunc nsw i32 %i.cj to i8
  %i.ck = sdiv i8 %.lhs.trunc, 10
  %.sext = sext i8 %i.ck to i32
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.sext) ; 0 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %i.cd
  br i1 %exitcond329.not, label %.critedge6.peel.next, label %bb.l, !llvm.loop !254

.critedge6.peel.next:                             ; preds = %bb.n
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !81
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %.val238.peel = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val238.peel, i64 %i.cd
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %putchar222.peel = tail call i32 @putchar(i32 32) ; 0 uses
  %i.cq = srem i32 %i.cp, 100
  %.lhs.trunc.peel = trunc nsw i32 %i.cq to i8
  %i.cr = sdiv i8 %.lhs.trunc.peel, 10
  %.sext.peel = sext i8 %i.cr to i32
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.sext.peel) ; 0 uses
  %putchar188 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge6.peel.next, %bb.k
  %i.ct = icmp sgt i32 %i.f, -1
  br i1 %i.ct, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cw = zext nneg i32 %i.f to i64               ; 2 uses
  %.not409 = icmp eq i32 %i.f, 0
  br i1 %.not409, label %.critedge8.peel.begin, label %.split404

.split404:                                        ; preds = %bb.p
  %i.cx = zext nneg i32 %i.f to i64
  br label %bb.q

bb.q:                                             ; preds = %.split404, %bb.s
  %indvars.iv333 = phi i64 [ 0, %.split404 ], [ %indvars.iv.next334, %bb.s ] ; 3 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !81
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %.val237 = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val237, i64 %indvars.iv333
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14
  %i.dc = icmp eq i64 %indvars.iv333, %i.cw
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %putchar221 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = srem i32 %i.db, 10
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dd) ; 0 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 3 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %i.cx
  br i1 %exitcond337.not, label %.critedge8.peel.begin, label %bb.q, !llvm.loop !255

.critedge8.peel.begin:                            ; preds = %bb.p, %bb.s
  %i.df = phi i64 [ 0, %bb.p ], [ %indvars.iv.next334, %bb.s ] ; 2 uses
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !81
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %.val237.peel = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.val237.peel, i64 %i.df
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = icmp eq i64 %i.df, %i.cw
  br i1 %i.dk, label %bb.t, label %.critedge8.peel.next

bb.t:                                             ; preds = %.critedge8.peel.begin
  %putchar221.peel = tail call i32 @putchar(i32 32) ; 0 uses
  br label %.critedge8.peel.next

.critedge8.peel.next:                             ; preds = %bb.t, %.critedge8.peel.begin
  %i.dl = srem i32 %i.dj, 10
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dl) ; 0 uses
  %putchar190 = tail call i32 @putchar(i32 10)    ; 0 uses
  %putchar191 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge8.peel.next, %bb.o
  %i.dn = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !16 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph296, label %._crit_edge

.lr.ph296:                                        ; preds = %bb.u
  %i.dr = getelementptr i8, ptr %0, i64 72        ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.dt = getelementptr i8, ptr %0, i64 56        ; 5 uses
  %i.du = getelementptr i8, ptr %0, i64 80
  %i.dv = zext i32 %i.f to i64                    ; 6 uses
  %i.dw = add i32 %i.f, 1                         ; 4 uses
  %wide.trip.count341 = zext i32 %i.dw to i64
  %wide.trip.count346 = zext i32 %i.dw to i64     ; 2 uses
  %wide.trip.count351 = zext i32 %i.dw to i64
  %wide.trip.count356 = zext i32 %i.dw to i64
  %i.dx = add nsw i64 %wide.trip.count346, -1     ; 2 uses
  %.not410 = icmp eq i64 %i.dx, 0
  %i.dy = add nsw i64 %wide.trip.count341, -2
  %.not411 = icmp eq i64 %i.dx, 0
  %i.dz = add nsw i64 %wide.trip.count351, -2
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph296, %bb.bu
  %i.ea = phi ptr [ %i.dn, %.lr.ph296 ], [ %i.ne, %bb.bu ]
  %i.eb = phi i32 [ %i.dp, %.lr.ph296 ], [ %i.nh, %bb.bu ]
  %.0180294 = phi i32 [ 0, %.lr.ph296 ], [ %i.nf, %bb.bu ] ; 9 uses
  %.val261 = load ptr, ptr %i.dr, align 8, !tbaa !76
  %i.ec = getelementptr i8, ptr %.val261, i64 8
  %.val261.val = load ptr, ptr %i.ec, align 8, !tbaa !74
  %i.ed = mul nsw i32 %i.eb, %1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %.val261.val, i64 %i.ee
  %i.eg = lshr i32 %.0180294, 6
  %i.eh = zext nneg i32 %i.eg to i64              ; 16 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !89
  %i.ek = and i32 %.0180294, 63
  %i.el = zext nneg i32 %i.ek to i64              ; 10 uses
  %i.em = shl nuw i64 1, %i.el                    ; 7 uses
  %i.en = and i64 %i.ej, %i.em
  %.not199 = icmp eq i64 %i.en, 0
  br i1 %.not199, label %bb.bu, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0180294) ; 0 uses
  br i1 %.not274, label %.critedge12.critedge, label %.lr.ph284.preheader

.lr.ph284.preheader:                              ; preds = %bb.w
  br i1 %.not410, label %.lr.ph284.peel, label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %bb.al
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %bb.al ], [ 0, %.lr.ph284.preheader ] ; 4 uses
  %i.ep = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %.val236 = load ptr, ptr %i.eq, align 8, !tbaa !48
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val236, i64 %indvars.iv338
  %i.es = load i32, ptr %i.er, align 4, !tbaa !14
  %.val250 = load ptr, ptr %0, align 8, !tbaa !64
  %.val251 = load ptr, ptr %i.dt, align 8, !tbaa !76
  %i.et = getelementptr i8, ptr %.val250, i64 32
  %.val250.val = load i32, ptr %i.et, align 4, !tbaa !16
  %i.eu = getelementptr i8, ptr %.val251, i64 8
  %.val251.val = load ptr, ptr %i.eu, align 8, !tbaa !74
  %i.ev = mul nsw i32 %.val250.val, %i.es
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %.val251.val, i64 %i.ew ; 2 uses
  %.val259 = load ptr, ptr %i.dr, align 8, !tbaa !76
  %i.ey = getelementptr i8, ptr %.val259, i64 8
  %.val259.val = load ptr, ptr %i.ey, align 8, !tbaa !74
  %i.ez = getelementptr inbounds [8 x i8], ptr %.val259.val, i64 %i.ew ; 2 uses
  %i.fa = icmp eq i64 %indvars.iv338, %i.dv
  br i1 %i.fa, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %.lr.ph284
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.eh
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !89
  %i.fd = and i64 %i.fc, %i.em
  %.not217 = icmp eq i64 %i.fd, 0
  br i1 %.not217, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.eh
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !89
  %i.fg = lshr i64 %i.ff, %i.el
  %i.fh = and i64 %i.fg, 1
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !87 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !47 ; 7 uses
  %i.fm = load i32, ptr %i.fj, align 8, !tbaa !49
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %i.fo = icmp slt i32 %i.fl, 16
  br i1 %i.fo, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.fq, null
  br i1 %.not9.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fq, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fs = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.ac, %bb.ab
  %i.ft = phi ptr [ %i.fr, %bb.ab ], [ %i.fs, %bb.ac ]
  store ptr %i.ft, ptr %i.fp, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ad:                                            ; preds = %bb.z
  %i.fu = icmp samesign ult i32 %i.fl, 1073741823
  %i.fv = shl nuw nsw i32 %i.fl, 1
  %spec.select.i = select i1 %i.fu, i32 %i.fv, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.fl, %spec.select.i
  br i1 %.not.i9.i, label %bb.ae, label %Vec_IntPush.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.fx, null
  %i.fy = zext nneg i32 %spec.select.i to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = tail call ptr @realloc(ptr noundef nonnull %i.fx, i64 noundef %i.fz) #34
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.gb = tail call noalias ptr @malloc(i64 noundef %i.fz) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gc = phi ptr [ %i.ga, %bb.af ], [ %i.gb, %bb.ag ]
  store ptr %i.gc, ptr %i.fw, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ah, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ah ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.fj, align 8, !tbaa !49
  %.pre = load i32, ptr %i.fk, align 4, !tbaa !47
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.y, %bb.ad, %Vec_IntGrow.exit11.sink.split.i
  %i.gd = phi i32 [ %i.fl, %bb.y ], [ %i.fl, %bb.ad ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !48
  %i.gg = add nsw i32 %i.gd, 1
  store i32 %i.gg, ptr %i.fk, align 4, !tbaa !47
  %i.gh = sext i32 %i.gd to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gh
  store i32 %.0180294, ptr %i.gi, align 4, !tbaa !14
  br label %bb.ai

bb.ai:                                            ; preds = %Vec_IntPush.exit, %bb.x
  %putchar218 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph284
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.eh
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !89
  %i.gl = and i64 %i.gk, %i.em
  %.not219 = icmp eq i64 %i.gl, 0
  br i1 %.not219, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.eh
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !89
  %i.go = lshr i64 %i.gn, %i.el
  %i.gp = trunc i64 %i.go to i32
  %i.gq = and i32 %i.gp, 1
  %i.gr = or disjoint i32 %i.gq, 48
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.gs = phi i32 [ %i.gr, %bb.ak ], [ 46, %bb.aj ]
  %putchar220 = tail call i32 @putchar(i32 %i.gs) ; 0 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv338, %i.dy
  br i1 %exitcond342.not, label %.lr.ph284.peel, label %.lr.ph284, !llvm.loop !256

.lr.ph284.peel:                                   ; preds = %.lr.ph284.preheader, %bb.al
  %i.gt = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next339, %bb.al ] ; 2 uses
  %i.gu = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %.val236.peel = load ptr, ptr %i.gv, align 8, !tbaa !48
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val236.peel, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14
  %.val250.peel = load ptr, ptr %0, align 8, !tbaa !64
  %.val251.peel = load ptr, ptr %i.dt, align 8, !tbaa !76
  %i.gy = getelementptr i8, ptr %.val250.peel, i64 32
  %.val250.val.peel = load i32, ptr %i.gy, align 4, !tbaa !16
  %i.gz = getelementptr i8, ptr %.val251.peel, i64 8
  %.val251.val.peel = load ptr, ptr %i.gz, align 8, !tbaa !74
  %i.ha = mul nsw i32 %.val250.val.peel, %i.gx
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.val251.val.peel, i64 %i.hb ; 2 uses
  %.val259.peel = load ptr, ptr %i.dr, align 8, !tbaa !76
  %i.hd = getelementptr i8, ptr %.val259.peel, i64 8
  %.val259.val.peel = load ptr, ptr %i.hd, align 8, !tbaa !74
  %i.he = getelementptr inbounds [8 x i8], ptr %.val259.val.peel, i64 %i.hb ; 2 uses
  %i.hf = icmp eq i64 %i.gt, %i.dv
  br i1 %i.hf, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %.lr.ph284.peel
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.eh
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !89
  %i.hi = and i64 %i.hh, %i.em
  %.not217.peel = icmp eq i64 %i.hi, 0
  br i1 %.not217.peel, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.eh
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !89
  %i.hl = lshr i64 %i.hk, %i.el
  %i.hm = and i64 %i.hl, 1
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !87 ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !47 ; 7 uses
  %i.hr = load i32, ptr %i.ho, align 8, !tbaa !49
  %i.hs = icmp eq i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ao, label %Vec_IntPush.exit.peel

bb.ao:                                            ; preds = %bb.an
  %i.ht = icmp slt i32 %i.hq, 16
  br i1 %i.ht, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hu = icmp samesign ult i32 %i.hq, 1073741823
  %i.hv = shl nuw nsw i32 %i.hq, 1
  %spec.select.i.peel = select i1 %i.hu, i32 %i.hv, i32 2147483647 ; 3 uses
  %.not.i9.i.peel = icmp samesign ult i32 %i.hq, %spec.select.i.peel
  br i1 %.not.i9.i.peel, label %bb.aq, label %Vec_IntPush.exit.peel

bb.aq:                                            ; preds = %bb.ap
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i.peel = icmp eq ptr %i.hx, null
  %i.hy = zext nneg i32 %spec.select.i.peel to i64
  %i.hz = shl nuw nsw i64 %i.hy, 2                ; 2 uses
  br i1 %.not9.i10.i.peel, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = tail call ptr @realloc(ptr noundef nonnull %i.hx, i64 noundef %i.hz) #34
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ib = tail call noalias ptr @malloc(i64 noundef %i.hz) #31
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ic = phi ptr [ %i.ia, %bb.ar ], [ %i.ib, %bb.as ]
  store ptr %i.ic, ptr %i.hw, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i.peel

bb.au:                                            ; preds = %bb.ao
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i.peel = icmp eq ptr %i.ie, null
  br i1 %.not9.i.i.peel, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ie, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i.peel

bb.aw:                                            ; preds = %bb.au
  %i.ig = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i.peel

Vec_IntGrow.exit.i.peel:                          ; preds = %bb.aw, %bb.av
  %i.ih = phi ptr [ %i.if, %bb.av ], [ %i.ig, %bb.aw ]
  store ptr %i.ih, ptr %i.id, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i.peel

Vec_IntGrow.exit11.sink.split.i.peel:             ; preds = %Vec_IntGrow.exit.i.peel, %bb.at
  %spec.select.sink.i.peel = phi i32 [ %spec.select.i.peel, %bb.at ], [ 16, %Vec_IntGrow.exit.i.peel ]
  store i32 %spec.select.sink.i.peel, ptr %i.ho, align 8, !tbaa !49
  %.pre.peel = load i32, ptr %i.hp, align 4, !tbaa !47
  br label %Vec_IntPush.exit.peel

Vec_IntPush.exit.peel:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.peel, %bb.ap, %bb.an
  %i.ii = phi i32 [ %i.hq, %bb.an ], [ %i.hq, %bb.ap ], [ %.pre.peel, %Vec_IntGrow.exit11.sink.split.i.peel ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48
  %i.il = add nsw i32 %i.ii, 1
  store i32 %i.il, ptr %i.hp, align 4, !tbaa !47
  %i.im = sext i32 %i.ii to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.im
  store i32 %.0180294, ptr %i.in, align 4, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_IntPush.exit.peel, %bb.am
  %putchar218.peel = tail call i32 @putchar(i32 32) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph284.peel
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.eh
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !89
  %i.iq = and i64 %i.ip, %i.em
  %.not219.peel = icmp eq i64 %i.iq, 0
  br i1 %.not219.peel, label %.critedge10.peel.next, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.eh
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !89
  %i.it = lshr i64 %i.is, %i.el
  %i.iu = trunc i64 %i.it to i32
  %i.iv = and i32 %i.iu, 1
  %i.iw = or disjoint i32 %i.iv, 48
  br label %.critedge10.peel.next

.critedge10.peel.next:                            ; preds = %bb.az, %bb.ay
  %i.ix = phi i32 [ %i.iw, %bb.az ], [ 46, %bb.ay ]
  %putchar220.peel = tail call i32 @putchar(i32 %i.ix) ; 0 uses
  %putchar201 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.iy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0180294) ; 0 uses
  br label %.lr.ph287

.lr.ph287:                                        ; preds = %.critedge10.peel.next, %bb.bo
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %bb.bo ], [ 0, %.critedge10.peel.next ] ; 3 uses
  %i.iz = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  %.val235 = load ptr, ptr %i.ja, align 8, !tbaa !48
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.val235, i64 %indvars.iv343
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !14
  %.val248 = load ptr, ptr %0, align 8, !tbaa !64
  %.val249 = load ptr, ptr %i.dt, align 8, !tbaa !76
  %i.jd = getelementptr i8, ptr %.val248, i64 32
  %.val248.val = load i32, ptr %i.jd, align 4, !tbaa !16
  %i.je = getelementptr i8, ptr %.val249, i64 8
  %.val249.val = load ptr, ptr %i.je, align 8, !tbaa !74
  %i.jf = mul nsw i32 %.val248.val, %i.jc
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %.val249.val, i64 %i.jg ; 2 uses
  %.val263 = load ptr, ptr %i.du, align 8, !tbaa !76
  %i.ji = getelementptr i8, ptr %.val263, i64 8
  %.val263.val = load ptr, ptr %i.ji, align 8, !tbaa !74
  %i.jj = getelementptr inbounds [8 x i8], ptr %.val263.val, i64 %i.jg ; 2 uses
  %i.jk = icmp eq i64 %indvars.iv343, %i.dv
  br i1 %i.jk, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %.lr.ph287
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.eh
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !89
  %i.jn = and i64 %i.jm, %i.em
  %.not213 = icmp eq i64 %i.jn, 0
  br i1 %.not213, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.eh
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !89
  %i.jq = lshr i64 %i.jp, %i.el
  %i.jr = and i64 %i.jq, 1
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !87 ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 3 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !47 ; 7 uses
  %i.jw = load i32, ptr %i.jt, align 8, !tbaa !49
  %i.jx = icmp eq i32 %i.jv, %i.jw
  br i1 %i.jx, label %bb.bc, label %Vec_IntPush.exit271

bb.bc:                                            ; preds = %bb.bb
  %i.jy = icmp slt i32 %i.jv, 16
  br i1 %i.jy, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i269 = icmp eq ptr %i.ka, null
  br i1 %.not9.i.i269, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ka, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i270

bb.bf:                                            ; preds = %bb.bd
  %i.kc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i270

Vec_IntGrow.exit.i270:                            ; preds = %bb.bf, %bb.be
  %i.kd = phi ptr [ %i.kb, %bb.be ], [ %i.kc, %bb.bf ]
  store ptr %i.kd, ptr %i.jz, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i267

bb.bg:                                            ; preds = %bb.bc
  %i.ke = icmp samesign ult i32 %i.jv, 1073741823
  %i.kf = shl nuw nsw i32 %i.jv, 1
  %spec.select.i264 = select i1 %i.ke, i32 %i.kf, i32 2147483647 ; 3 uses
  %.not.i9.i265 = icmp samesign ult i32 %i.jv, %spec.select.i264
  br i1 %.not.i9.i265, label %bb.bh, label %Vec_IntPush.exit271

bb.bh:                                            ; preds = %bb.bg
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i266 = icmp eq ptr %i.kh, null
  %i.ki = zext nneg i32 %spec.select.i264 to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2                ; 2 uses
  br i1 %.not9.i10.i266, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kk = tail call ptr @realloc(ptr noundef nonnull %i.kh, i64 noundef %i.kj) #34
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.kj) #31
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.km = phi ptr [ %i.kk, %bb.bi ], [ %i.kl, %bb.bj ]
  store ptr %i.km, ptr %i.kg, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i267

Vec_IntGrow.exit11.sink.split.i267:               ; preds = %bb.bk, %Vec_IntGrow.exit.i270
  %spec.select.sink.i268 = phi i32 [ %spec.select.i264, %bb.bk ], [ 16, %Vec_IntGrow.exit.i270 ]
  store i32 %spec.select.sink.i268, ptr %i.jt, align 8, !tbaa !49
  %.pre374 = load i32, ptr %i.ju, align 4, !tbaa !47
  br label %Vec_IntPush.exit271

Vec_IntPush.exit271:                              ; preds = %bb.bb, %bb.bg, %Vec_IntGrow.exit11.sink.split.i267
  %i.kn = phi i32 [ %i.jv, %bb.bb ], [ %i.jv, %bb.bg ], [ %.pre374, %Vec_IntGrow.exit11.sink.split.i267 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !48
  %i.kq = add nsw i32 %i.kn, 1
  store i32 %i.kq, ptr %i.ju, align 4, !tbaa !47
  %i.kr = sext i32 %i.kn to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kr
  store i32 %.0180294, ptr %i.ks, align 4, !tbaa !14
  br label %bb.bl

bb.bl:                                            ; preds = %Vec_IntPush.exit271, %bb.ba
  %putchar214 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph287
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.eh
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !89
  %i.kv = and i64 %i.ku, %i.em
  %.not215 = icmp eq i64 %i.kv, 0
  br i1 %.not215, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.eh
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !89
  %i.ky = lshr i64 %i.kx, %i.el
  %i.kz = trunc i64 %i.ky to i32
  %i.la = and i32 %i.kz, 1
  %i.lb = or disjoint i32 %i.la, 48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.lc = phi i32 [ %i.lb, %bb.bn ], [ 46, %bb.bm ]
  %putchar216 = tail call i32 @putchar(i32 %i.lc) ; 0 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %.critedge12, label %.lr.ph287, !llvm.loop !257

.critedge12.critedge:                             ; preds = %bb.w
  %putchar201.c = tail call i32 @putchar(i32 10)  ; 0 uses
  %i.ld = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0180294) ; 0 uses
  br label %.critedge12

.critedge12:                                      ; preds = %bb.bo, %.critedge12.critedge
  %putchar203 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.le = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  br i1 %.not274, label %.critedge16.critedge, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %.critedge12
  br i1 %.not411, label %.lr.ph290.peel, label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %bb.bq
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %bb.bq ], [ 0, %.lr.ph290.preheader ] ; 4 uses
  %i.lf = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.lg = getelementptr i8, ptr %i.lf, i64 8
  %.val234 = load ptr, ptr %i.lg, align 8, !tbaa !48
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.val234, i64 %indvars.iv348
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !14
  %.val246 = load ptr, ptr %0, align 8, !tbaa !64
  %.val247 = load ptr, ptr %i.dt, align 8, !tbaa !76
  %i.lj = getelementptr i8, ptr %.val246, i64 32
  %.val246.val = load i32, ptr %i.lj, align 4, !tbaa !16
  %i.lk = getelementptr i8, ptr %.val247, i64 8
  %.val247.val = load ptr, ptr %i.lk, align 8, !tbaa !74
  %i.ll = mul nsw i32 %.val246.val, %i.li
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %.val247.val, i64 %i.lm
  %i.lo = icmp eq i64 %indvars.iv348, %i.dv
  br i1 %i.lo, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph290
  %putchar211 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph290
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.eh
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !89
  %i.lr = lshr i64 %i.lq, %i.el
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = and i32 %i.ls, 1
  %i.lu = or disjoint i32 %i.lt, 48
  %putchar212 = tail call i32 @putchar(i32 %i.lu) ; 0 uses
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond352.not = icmp eq i64 %indvars.iv348, %i.dz
  br i1 %exitcond352.not, label %.lr.ph290.peel, label %.lr.ph290, !llvm.loop !258

.lr.ph290.peel:                                   ; preds = %.lr.ph290.preheader, %bb.bq
  %i.lv = phi i64 [ 0, %.lr.ph290.preheader ], [ %indvars.iv.next349, %bb.bq ] ; 2 uses
  %i.lw = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  %.val234.peel = load ptr, ptr %i.lx, align 8, !tbaa !48
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val234.peel, i64 %i.lv
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !14
  %.val246.peel = load ptr, ptr %0, align 8, !tbaa !64
  %.val247.peel = load ptr, ptr %i.dt, align 8, !tbaa !76
  %i.ma = getelementptr i8, ptr %.val246.peel, i64 32
  %.val246.val.peel = load i32, ptr %i.ma, align 4, !tbaa !16
  %i.mb = getelementptr i8, ptr %.val247.peel, i64 8
  %.val247.val.peel = load ptr, ptr %i.mb, align 8, !tbaa !74
  %i.mc = mul nsw i32 %.val246.val.peel, %i.lz
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %.val247.val.peel, i64 %i.md
  %i.mf = icmp eq i64 %i.lv, %i.dv
  br i1 %i.mf, label %bb.br, label %.critedge14.peel.next

bb.br:                                            ; preds = %.lr.ph290.peel
  %putchar211.peel = tail call i32 @putchar(i32 32) ; 0 uses
  br label %.critedge14.peel.next

.critedge14.peel.next:                            ; preds = %bb.br, %.lr.ph290.peel
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.eh
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !89
  %i.mi = lshr i64 %i.mh, %i.el
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = and i32 %i.mj, 1
  %i.ml = or disjoint i32 %i.mk, 48
  %putchar212.peel = tail call i32 @putchar(i32 %i.ml) ; 0 uses
  %putchar205 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.mm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.critedge14.peel.next, %bb.bt
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %bb.bt ], [ 0, %.critedge14.peel.next ] ; 3 uses
  %i.mn = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.mo = getelementptr i8, ptr %i.mn, i64 8
  %.val233 = load ptr, ptr %i.mo, align 8, !tbaa !48
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.val233, i64 %indvars.iv353
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !14
  %.val256 = load ptr, ptr %0, align 8, !tbaa !64
  %.val257 = load ptr, ptr %i.dr, align 8, !tbaa !76
  %i.mr = getelementptr i8, ptr %.val256, i64 32
  %.val256.val = load i32, ptr %i.mr, align 4, !tbaa !16
  %i.ms = getelementptr i8, ptr %.val257, i64 8
  %.val257.val = load ptr, ptr %i.ms, align 8, !tbaa !74
  %i.mt = mul nsw i32 %.val256.val, %i.mq
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [8 x i8], ptr %.val257.val, i64 %i.mu
  %i.mw = icmp eq i64 %indvars.iv353, %i.dv
  br i1 %i.mw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph293
  %putchar209 = tail call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph293
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.eh
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !89
  %i.mz = lshr i64 %i.my, %i.el
  %i.na = trunc i64 %i.mz to i32
  %i.nb = and i32 %i.na, 1
  %i.nc = or disjoint i32 %i.nb, 48
  %putchar210 = tail call i32 @putchar(i32 %i.nc) ; 0 uses
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %.critedge16, label %.lr.ph293, !llvm.loop !259

.critedge16.critedge:                             ; preds = %.critedge12
  %putchar205.c = tail call i32 @putchar(i32 10)  ; 0 uses
  %i.nd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %.critedge16

.critedge16:                                      ; preds = %bb.bt, %.critedge16.critedge
  %putchar207 = tail call i32 @putchar(i32 10)    ; 0 uses
  %putchar208 = tail call i32 @putchar(i32 10)    ; 0 uses
  %.pre375 = load ptr, ptr %0, align 8, !tbaa !64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.v, %.critedge16
  %i.ne = phi ptr [ %i.ea, %bb.v ], [ %.pre375, %.critedge16 ] ; 2 uses
  %i.nf = add nuw nsw i32 %.0180294, 1            ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !16 ; 2 uses
  %i.ni = shl nsw i32 %i.nh, 6
  %i.nj = icmp slt i32 %i.nf, %i.ni
  br i1 %i.nj, label %bb.v, label %._crit_edge, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.bu, %bb.u
  %i.nk = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.nl = getelementptr i8, ptr %i.nk, i64 4
  %.val228 = load i32, ptr %i.nl, align 4, !tbaa !47
  %i.nm = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.nn = getelementptr i8, ptr %i.nm, i64 4
  %.val227 = load i32, ptr %i.nn, align 4, !tbaa !47
  %i.no = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.val228, i32 noundef %.val227) ; 0 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !88
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store i32 0, ptr %i.nr, align 4, !tbaa !75
  %i.ns = load ptr, ptr %i.u, align 8, !tbaa !87  ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 4
  %.val226309 = load i32, ptr %i.nt, align 4, !tbaa !47
  %i.nu = icmp sgt i32 %.val226309, 0
  br i1 %i.nu, label %.lr.ph312, label %.critedge18

.lr.ph312:                                        ; preds = %._crit_edge
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.nw = getelementptr i8, ptr %0, i64 56
  %i.nx = getelementptr i8, ptr %0, i64 72
  %i.ny = add nuw i32 %i.f, 1                     ; 2 uses
  %.pre376 = load ptr, ptr %i.x, align 8, !tbaa !87 ; 2 uses
  %wide.trip.count361 = zext i32 %i.ny to i64
  %wide.trip.count366 = zext i32 %i.ny to i64
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph312, %.critedge20
  %i.nz = phi ptr [ %i.ns, %.lr.ph312 ], [ %i.rp, %.critedge20 ] ; 2 uses
  %i.oa = phi ptr [ %.pre376, %.lr.ph312 ], [ %i.rq, %.critedge20 ] ; 2 uses
  %i.ob = phi ptr [ %.pre376, %.lr.ph312 ], [ %i.rr, %.critedge20 ] ; 3 uses
  %indvars.iv371 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next372, %.critedge20 ] ; 2 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 4
  %.val305 = load i32, ptr %i.oc, align 4, !tbaa !47
  %i.od = icmp sgt i32 %.val305, 0
  br i1 %i.od, label %.lr.ph308, label %.critedge20

.lr.ph308:                                        ; preds = %bb.bv
  %i.oe = getelementptr i8, ptr %i.nz, i64 8
  %.val232 = load ptr, ptr %i.oe, align 8, !tbaa !48
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.val232, i64 %indvars.iv371
  %i.og = load i32, ptr %i.of, align 4, !tbaa !14 ; 2 uses
  %i.oh = ashr i32 %i.og, 6
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = and i32 %i.og, 63
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = shl nuw i64 1, %i.ok
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph308, %Vec_WrdPushUnique.exit.thread
  %i.om = phi ptr [ %i.oa, %.lr.ph308 ], [ %i.rk, %Vec_WrdPushUnique.exit.thread ]
  %indvars.iv368 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next369, %Vec_WrdPushUnique.exit.thread ] ; 2 uses
  %i.on = phi ptr [ %i.ob, %.lr.ph308 ], [ %i.rk, %Vec_WrdPushUnique.exit.thread ]
  br i1 %.not274, label %.critedge22, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.bw
  %i.oo = getelementptr i8, ptr %i.on, i64 8
  %.val231 = load ptr, ptr %i.oo, align 8, !tbaa !48
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.val231, i64 %indvars.iv368
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !14 ; 2 uses
  %i.or = load ptr, ptr %i.nv, align 8, !tbaa !81
  %i.os = getelementptr i8, ptr %i.or, i64 8
  %.val230 = load ptr, ptr %i.os, align 8, !tbaa !48
  %.val244 = load ptr, ptr %0, align 8, !tbaa !64
  %.val245 = load ptr, ptr %i.nw, align 8, !tbaa !76
  %i.ot = getelementptr i8, ptr %.val244, i64 32
  %.val244.val = load i32, ptr %i.ot, align 4, !tbaa !16
  %i.ou = getelementptr i8, ptr %.val245, i64 8
  %.val245.val = load ptr, ptr %i.ou, align 8, !tbaa !74
  %.val255 = load ptr, ptr %i.nx, align 8, !tbaa !76
  %i.ov = getelementptr i8, ptr %.val255, i64 8
  %.val255.val = load ptr, ptr %i.ov, align 8, !tbaa !74
  %i.ow = ashr i32 %i.oq, 6
  %i.ox = sext i32 %i.ow to i64                   ; 2 uses
  %i.oy = and i32 %i.oq, 63
  %i.oz = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pa = shl nuw i64 1, %i.oz
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph300, %bb.cb
  %indvars.iv358 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next359, %bb.cb ] ; 3 uses
  %i.pb = phi i64 [ 0, %.lr.ph300 ], [ %i.pz, %bb.cb ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.val230, i64 %indvars.iv358
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !14
  %i.pe = mul nsw i32 %.val244.val, %i.pd
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %.val245.val, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %.val255.val, i64 %i.pf ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.oi
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !89
  %i.pk = and i64 %i.pj, %i.ol
  %.not196 = icmp eq i64 %i.pk, 0
  br i1 %.not196, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.ox
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !89
  %i.pn = and i64 %i.pm, %i.pa
  %.not197 = icmp eq i64 %i.pn, 0
  br i1 %.not197, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.po = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.oi
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !89
  %i.pq = lshr i64 %i.pp, %i.ok
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.ox
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !89
  %i.pt = lshr i64 %i.ps, %i.oz
  %i.pu = xor i64 %i.pt, %i.pq
  %i.pv = and i64 %i.pu, 1
  %.not198 = icmp eq i64 %i.pv, 0
  br i1 %.not198, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pw = and i64 %indvars.iv358, 63
  %i.px = shl nuw i64 1, %i.pw
  %i.py = xor i64 %i.pb, %i.px
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.pz = phi i64 [ %i.py, %bb.ca ], [ %i.pb, %bb.bz ], [ %i.pb, %bb.by ], [ %i.pb, %bb.bx ] ; 2 uses
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %.critedge22, label %bb.bx, !llvm.loop !261

.critedge22:                                      ; preds = %bb.cb, %bb.bw
  %.lcssa = phi i64 [ 0, %bb.bw ], [ %i.pz, %bb.cb ] ; 3 uses
  %i.qa = load ptr, ptr %i.np, align 8, !tbaa !88 ; 7 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4 ; 3 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !75 ; 9 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge22
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !74
  %wide.trip.count.i = zext nneg i32 %i.qc to i64
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cd, !llvm.loop !262

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cc ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv.i
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !89
  %i.qi = icmp eq i64 %i.qh, %.lcssa
  br i1 %i.qi, label %Vec_WrdPushUnique.exit.thread, label %bb.cc

._crit_edge.i:                                    ; preds = %bb.cc, %.critedge22
  %i.qj = load i32, ptr %i.qa, align 8, !tbaa !73
  %i.qk = icmp eq i32 %i.qc, %i.qj
  br i1 %i.qk, label %bb.ce, label %Vec_WrdPushUnique.exit

bb.ce:                                            ; preds = %._crit_edge.i
  %i.ql = icmp slt i32 %i.qc, 16
  br i1 %i.ql, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !74 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.qn, null
  br i1 %.not9.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qo = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.qn, i64 noundef 128) #34
  br label %Vec_WrdGrow.exit.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.qp = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_WrdGrow.exit.i.i

Vec_WrdGrow.exit.i.i:                             ; preds = %bb.ch, %bb.cg
  %i.qq = phi ptr [ %i.qo, %bb.cg ], [ %i.qp, %bb.ch ]
  store ptr %i.qq, ptr %i.qm, align 8, !tbaa !74
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.ci:                                            ; preds = %bb.ce
  %i.qr = icmp samesign ult i32 %i.qc, 1073741823
  %i.qs = shl nuw nsw i32 %i.qc, 1
  %spec.select.i.i = select i1 %i.qr, i32 %i.qs, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.qc, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.cj, label %Vec_WrdPushUnique.exit
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v6i64
!57 = !{!55, !34, i64 8}
!58 = !{!"p1 _ZTS10Sbd_Par_t_", !18, i64 0}
!59 = !{!"p1 _ZTS10Sbd_Sto_t_", !18, i64 0}
!60 = !{!"p1 _ZTS10Sbd_Srv_t_", !18, i64 0}
!61 = !{!"p1 _ZTS12sat_solver_t", !18, i64 0}
!62 = !{!"Sbd_Man_t_", !58, i64 0, !30, i64 8, !25, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !10, i64 56, !22, i64 88, !22, i64 96, !22, i64 104, !10, i64 112, !11, i64 136, !11, i64 140, !34, i64 144, !34, i64 152, !34, i64 160, !34, i64 168, !34, i64 176, !34, i64 184, !34, i64 192, !34, i64 200, !34, i64 208, !59, i64 216, !60, i64 224, !11, i64 232, !11, i64 236, !22, i64 240, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !22, i64 280, !22, i64 288, !25, i64 296, !10, i64 304, !35, i64 320, !61, i64 328}
!63 = !{!62, !34, i64 208}
!64 = !{!62, !58, i64 0}
!65 = !{!62, !30, i64 8}
!66 = !{!62, !25, i64 16}
!67 = !{!62, !22, i64 24}
!68 = !{!15, !11, i64 0}
!69 = !{!62, !22, i64 32}
!70 = !{!62, !22, i64 48}
!71 = !{!"p1 long", !18, i64 0}
!72 = !{!"Vec_Wrd_t_", !11, i64 0, !11, i64 4, !71, i64 8}
!73 = !{!72, !11, i64 0}
!74 = !{!72, !71, i64 8}
!75 = !{!72, !11, i64 4}
!76 = !{!35, !35, i64 0}
!77 = !{!62, !22, i64 88}
!78 = !{!62, !22, i64 96}
!79 = !{!62, !22, i64 104}
!80 = !{!62, !22, i64 248}
!81 = !{!62, !22, i64 256}
!82 = !{!62, !22, i64 264}
!83 = !{!62, !22, i64 272}
!84 = !{!62, !22, i64 280}
!85 = !{!62, !22, i64 288}
!86 = !{!62, !25, i64 296}
!87 = !{!22, !22, i64 0}
!88 = !{!62, !35, i64 320}
!89 = !{!34, !34, i64 0}
!90 = !{!15, !11, i64 8}
!91 = !{!15, !11, i64 12}
!92 = !{!62, !60, i64 224}
!93 = !{!62, !59, i64 216}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!62, !34, i64 144}
!96 = !{!38, !11, i64 176}
!97 = !{!38, !21, i64 624}
!98 = !{!62, !11, i64 232}
!99 = !{!62, !22, i64 240}
!100 = !{!62, !61, i64 328}
!101 = !{!62, !34, i64 168}
!102 = !{!15, !11, i64 64}
!103 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"llvm.loop.peeled.count", i32 1}
!106 = !{!15, !11, i64 60}
!107 = !{!62, !34, i64 160}
!108 = !{!62, !34, i64 176}
!109 = !{!"Sbd_Str_t_", !11, i64 0, !11, i64 4, !10, i64 8, !34, i64 48}
!110 = !{!109, !11, i64 0}
!111 = !{!109, !11, i64 4}
!112 = !{!109, !34, i64 48}
!113 = !{!62, !34, i64 184}
!114 = !{!15, !11, i64 4}
!115 = !{!38, !11, i64 48}
!116 = !{!38, !21, i64 40}
!117 = !{!62, !34, i64 152}
!118 = !{!62, !22, i64 40}
!119 = !{!38, !22, i64 264}
!120 = !{!"Gia_Obj_t_", !11, i64 0, !11, i64 3, !11, i64 3, !11, i64 3, !11, i64 4, !11, i64 7, !11, i64 7, !11, i64 7, !11, i64 8}
!121 = !{!120, !11, i64 8}
!122 = !{!62, !11, i64 140}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50, !53, !54}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50, !53, !54}
!128 = distinct !{!128, !50, !53}
!129 = distinct !{!129, !50, !53}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !50}
!132 = !{!44, !11, i64 0}
!133 = !{!44, !11, i64 4}
!134 = !{!38, !21, i64 144}
!135 = !{!38, !22, i64 160}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = !{!15, !11, i64 16}
!140 = !{!15, !11, i64 20}
!141 = !{!15, !11, i64 40}
!142 = !{!61, !61, i64 0}
!143 = distinct !{!143, i1 false, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = distinct !{!147, !143}
!148 = distinct !{!148, !143}
!149 = distinct !{!149, !143}
!150 = distinct !{!150, !50, !53, !54}
!151 = distinct !{!151, !50, !53}
!152 = !{!144}
!153 = !{!145}
!154 = !{!149, !148, !147, !144, !146}
!155 = !{!149}
!156 = !{!148, !147, !144, !146}
!157 = !{!146}
!158 = !{!148}
!159 = !{!147, !144, !146}
!160 = !{!147}
!161 = !{!144, !146}
!162 = distinct !{!162, !50, !53, !54}
!163 = distinct !{!163, !94}
!164 = distinct !{!164, !50, !53}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !165}
!169 = distinct !{!169, !165}
!170 = distinct !{!170, !165}
!171 = distinct !{!171, !165}
!172 = distinct !{!172, !50, !53, !54}
!173 = distinct !{!173, !50, !53}
!174 = distinct !{!174, !50}
!175 = distinct !{!175, !50}
!176 = distinct !{!176, !94}
!177 = !{!166}
!178 = !{!167}
!179 = !{!171, !170, !169, !166, !168}
!180 = !{!171}
!181 = !{!170, !169, !166, !168}
!182 = !{!168}
!183 = !{!170}
!184 = !{!169, !166, !168}
!185 = !{!169}
!186 = !{!166, !168}
!187 = distinct !{!187, !50}
!188 = distinct !{!188, !94}
!189 = distinct !{!189, !50}
!190 = distinct !{!190, !50}
!191 = distinct !{!191, !50}
!192 = distinct !{!192, !50}
!193 = !{!62, !11, i64 236}
!194 = distinct !{!194, !50, !53, !54}
!195 = distinct !{!195, !50, !53, !54}
!196 = distinct !{!196, !94}
!197 = distinct !{!197, !50, !53}
!198 = distinct !{!198, !50, !53}
!199 = distinct !{!199, !50, !53, !54}
!200 = distinct !{!200, !50, !53, !54}
!201 = distinct !{!201, !94}
!202 = distinct !{!202, !50, !53}
!203 = distinct !{!203, !50, !53}
!204 = distinct !{!204, !50, !53, !54}
!205 = distinct !{!205, !50, !53, !54}
!206 = distinct !{!206, !50, !53}
!207 = distinct !{!207, !50, !53}
!208 = distinct !{!208, !50, !53, !54}
!209 = distinct !{!209, !50, !53, !54}
!210 = distinct !{!210, !94}
!211 = distinct !{!211, !50, !53}
!212 = distinct !{!212, !50, !53}
!213 = distinct !{!213, !50, !53, !54}
!214 = distinct !{!214, !50, !53, !54}
!215 = distinct !{!215, !50, !53}
!216 = distinct !{!216, !50, !53}
!217 = distinct !{!217, !50, !53, !54}
!218 = distinct !{!218, !50, !53, !54}
!219 = distinct !{!219, !94}
!220 = distinct !{!220, !50, !53}
!221 = distinct !{!221, !50, !53}
!222 = distinct !{!222, !50, !53, !54}
!223 = distinct !{!223, !94}
!224 = distinct !{!224, !50, !53, !54}
!225 = distinct !{!225, !94}
!226 = distinct !{!226, !50, !53}
!227 = distinct !{!227, !50, !53}
!228 = distinct !{!228, !50, !53, !54}
!229 = distinct !{!229, !94}
!230 = distinct !{!230, !50, !53}
!231 = distinct !{!231, !50}
!232 = distinct !{!232, !50}
!233 = distinct !{!233, i1 false, !"LVerDomain"}
!234 = distinct !{!234, !233}
!235 = distinct !{!235, !233}
!236 = distinct !{!236, !233}
!237 = distinct !{!237, !50, !53, !54}
!238 = distinct !{!238, !50, !53}
!239 = distinct !{!239, !50}
!240 = !{!15, !11, i64 24}
!241 = !{!234}
!242 = !{!235}
!243 = !{!236}
!244 = !{!234, !235}
!245 = distinct !{!245, !50}
!246 = distinct !{!246, !50}
!247 = distinct !{!247, !50}
!248 = distinct !{!248, !50}
!249 = distinct !{!249, !50}
!250 = !{!18, !18, i64 0}
!251 = distinct !{!251, !50}
!252 = distinct !{!252, !50, !105}
!253 = distinct !{!253, !50, !105}
!254 = distinct !{!254, !50, !105}
!255 = distinct !{!255, !50, !105}
!256 = distinct !{!256, !50, !105}
!257 = distinct !{!257, !50}
!258 = distinct !{!258, !50, !105}
!259 = distinct !{!259, !50}
!260 = distinct !{!260, !50}
!261 = distinct !{!261, !50}
!262 = distinct !{!262, !50}
!263 = distinct !{!263, !50}
!264 = distinct !{!264, !50}
!265 = distinct !{!265, !50}
!266 = distinct !{!266, !50}
!267 = distinct !{!267, !50}
!268 = distinct !{!268, !50, !105}
!269 = distinct !{!269, !50}
!270 = distinct !{!270, !50}
!271 = distinct !{!271, !50}
!272 = distinct !{!272, !50}
!273 = distinct !{!273, !50}
!274 = distinct !{!274, !50}
!275 = distinct !{!275, !50}
!276 = distinct !{!276, !50}
!277 = distinct !{!277, !50}
!278 = distinct !{!278, !50}
!279 = distinct !{!279, !50}
!280 = distinct !{!280, !50}
!281 = distinct !{!281, !50}
!282 = distinct !{!282, !50}
!283 = distinct !{!283, !50}
!284 = distinct !{!284, !50}
!285 = distinct !{!285, !50}
!286 = distinct !{!286, !50}
!287 = distinct !{!287, !50}
!288 = distinct !{!288, !50}
!289 = distinct !{!289, !50}
!290 = distinct !{!290, !50}
!291 = distinct !{!291, !50}
!292 = distinct !{!292, !50}
!293 = distinct !{!293, !50}
!294 = distinct !{!294, !50}
!295 = distinct !{!295, !50, !53, !54}
!296 = distinct !{!296, !50}
!297 = distinct !{!297, !50, !53, !54}
!298 = distinct !{!298, !50, !54, !53}
!299 = distinct !{!299, !50, !54, !53}
!300 = distinct !{!300, !50}
!301 = distinct !{!301, !50}
!302 = distinct !{!302, !50}
!303 = distinct !{!303, !50}
!304 = distinct !{!304, !50}
!305 = distinct !{!305, !50}
!306 = distinct !{!306, !50}
!307 = !{!15, !11, i64 56}
!308 = distinct !{!308, !50}
!309 = distinct !{!309, !50}
!310 = distinct !{!310, !50}
!311 = distinct !{!311, !50}
!312 = distinct !{!312, !50}
!313 = distinct !{!313, !50}
!314 = distinct !{!314, !50}
!315 = distinct !{!315, !50}
!316 = distinct !{!316, !50}
!317 = distinct !{!317, !50}
!318 = distinct !{!318, !50}
!319 = distinct !{!319, !50}
!320 = distinct !{!320, !50}
!321 = distinct !{!321, !50, !53, !54}
!322 = distinct !{!322, !50, !54, !53}
!323 = distinct !{!323, !50}
!324 = distinct !{!324, !50, !53, !54}
!325 = distinct !{!325, !50, !54, !53}
!326 = distinct !{!326, !50}
!327 = distinct !{!327, !50}
!328 = distinct !{!328, !50, !53, !54}
!329 = distinct !{!329, !50, !54, !53}
!330 = distinct !{!330, !50, !53, !54}
!331 = distinct !{!331, !50, !54, !53}
!332 = distinct !{!332, !50}
!333 = distinct !{!333, !50}
!334 = distinct !{!334, !50}
!335 = distinct !{!335, !50, !53, !54}
!336 = distinct !{!336, !50, !54, !53}
!337 = distinct !{!337, !50, !53, !54}
!338 = distinct !{!338, !50, !54, !53}
!339 = distinct !{!339, !50, !53, !54}
!340 = distinct !{!340, !50, !54, !53}
!341 = distinct !{!341, !50}
!342 = distinct !{!342, !50}
!343 = distinct !{!343, !50}
!344 = distinct !{!344, !50}
!345 = distinct !{!345, !50, !53, !54}
!346 = distinct !{!346, !50, !53, !54}
!347 = distinct !{!347, !50, !53}
!348 = distinct !{!348, !50, !53}
!349 = distinct !{!349, !50, !53, !54}
!350 = distinct !{!350, !50, !53, !54}
!351 = distinct !{!351, !50, !53}
!352 = distinct !{!352, !50, !53}
!353 = distinct !{!353, !50, !53, !54}
!354 = distinct !{!354, !50, !53, !54}
!355 = distinct !{!355, !50, !53}
!356 = distinct !{!356, !50, !53}
!357 = distinct !{!357, !50, !53, !54}
!358 = distinct !{!358, !50, !53, !54}
!359 = distinct !{!359, !50, !53}
!360 = distinct !{!360, !50, !53}
!361 = distinct !{!361, !50, !53, !54}
!362 = distinct !{!362, !50, !53, !54}
!363 = distinct !{!363, !50, !53}
!364 = distinct !{!364, !50, !53}
!365 = distinct !{!365, !50}
!366 = distinct !{!366, !50}
!367 = distinct !{!367, !50}
!368 = distinct !{!368, !50}
!369 = distinct !{!369, !50}
!370 = distinct !{!370, !50}
!371 = distinct !{!371, !50}
!372 = distinct !{!372, !50}
!373 = distinct !{!373, !50}
!374 = distinct !{!374, !50}
!375 = distinct !{!375, !50}
!376 = distinct !{!376, !50}
!377 = distinct !{!377, !50}
!378 = distinct !{!378, !50}
!379 = distinct !{!379, !50}
!380 = distinct !{!380, !50}
!381 = distinct !{!381, !50}
!382 = distinct !{!382, !50}
!383 = distinct !{!383, !50}
!384 = distinct !{!384, !50}
!385 = distinct !{!385, !50}
!386 = distinct !{!386, !50}
!387 = distinct !{!387, !50}
!388 = distinct !{!388, !50}
!389 = distinct !{!389, !50}
!390 = !{!38, !19, i64 0}
!391 = !{!38, !19, i64 8}
!392 = !{!38, !21, i64 232}
!393 = !{!38, !11, i64 16}
!394 = distinct !{!394, !50, !53, !54}
!395 = distinct !{!395, !50, !54, !53}
!396 = !{!15, !11, i64 44}
!397 = distinct !{!397, !50}
!398 = distinct !{!398, !50}
!399 = distinct !{!399, !50}
!400 = !{!15, !11, i64 48}
!401 = !{!38, !18, i64 752}
!402 = !{!62, !11, i64 136}
!403 = !{!62, !34, i64 200}
!404 = distinct !{!404, i1 true, !"vprintf"}
!405 = distinct !{!405, !404, !"vprintf: argument 0"}
!406 = distinct !{null}
!407 = !{!405}
!408 = distinct !{!408, !94}
!409 = distinct !{!409, !50}
!410 = distinct !{!410, !50}
!411 = !{!38, !11, i64 28}
!412 = !{!38, !11, i64 820}
end_hunk_1
