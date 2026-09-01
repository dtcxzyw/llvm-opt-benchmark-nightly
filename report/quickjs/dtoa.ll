Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@mpb_shr_round:bb.a
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
  br i1 %min.iters.check, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !14
  %wide.load172 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !14
  %i.bw = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bx = or <4 x i32> %wide.load172, %vec.phi171 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085128.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader198, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader198 ] ; 2 uses
  %.085128 = phi i32 [ %i.cc, %.lr.ph ], [ %.085128.ph, %.lr.ph.preheader198 ]
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
  %i.cr = sub nuw nsw i32 %.pre, %i.co            ; 6 uses
  store i32 %i.cr, ptr %0, align 4, !tbaa !14
  %.not168 = icmp eq i32 %i.cr, 0
  br i1 %.not168, label %mpb_renorm.exit112, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ct = zext nneg i32 %i.co to i64
  %wide.trip.count143 = zext nneg i32 %i.cr to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.cr, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph131
  %n.vec176 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index178 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !14
  %wide.load180 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !14
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index178 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load179, ptr %i.cw, align 4, !tbaa !14
  store <4 x i32> %wide.load180, ptr %i.cx, align 4, !tbaa !14
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.cy, label %middle.block182, label %vector.body177, !llvm.loop !33

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count143
  br i1 %cmp.n183, label %.loopexit, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph131, %middle.block182
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph131 ], [ %n.vec176, %middle.block182 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph173 ], [ %indvars.iv140.ph, %scalar.ph173.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv140
  %i.cz = load i32, ptr %gep, align 4, !tbaa !14
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv140
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !14
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.loopexit, label %scalar.ph173, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph173, %middle.block182, %bb.o
  %i.db = phi i32 [ %.pre, %bb.o ], [ %i.cr, %middle.block182 ], [ %i.cr, %scalar.ph173 ] ; 2 uses
  %.not99 = icmp eq i32 %i.cp, 0
  br i1 %.not99, label %mpb_renorm.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.loopexit
  %i.dc = zext nneg i32 %i.db to i64
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %.016.i = phi i32 [ %i.de, %.lr.ph.i109 ], [ 0, %.lr.ph.i109.preheader ]
  %.014.in15.i = phi i64 [ %.014.i, %.lr.ph.i109 ], [ %i.dc, %.lr.ph.i109.preheader ] ; 3 uses
  %.014.i = add nsw i64 %.014.in15.i, -1
  %i.dd = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14 ; 2 uses
  %i.df = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.de, i32 range(i32 1, 32) %1)
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !14
  %i.dg = icmp samesign ugt i64 %.014.in15.i, 1
  br i1 %i.dg, label %.lr.ph.i109, label %mp_shr.exit, !llvm.loop !35

mp_shr.exit:                                      ; preds = %.lr.ph.i109
  %.pr.i110.pr = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp sgt i32 %.pr.i110.pr, 1
  br i1 %i.dh, label %.lr.ph.i111, label %mpb_renorm.exit112

.lr.ph.i111:                                      ; preds = %mp_shr.exit, %bb.q
  %i.di = phi i32 [ %i.dn, %bb.q ], [ %.pr.i110.pr, %mp_shr.exit ] ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !14
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %mpb_renorm.exit112

bb.q:                                             ; preds = %.lr.ph.i111
  %i.dn = add nsw i32 %i.di, -1                   ; 3 uses
  store i32 %i.dn, ptr %0, align 4, !tbaa !14
  %i.do = icmp sgt i32 %i.di, 2
  br i1 %i.do, label %.lr.ph.i111, label %mpb_renorm.exit112, !llvm.loop !19

mpb_renorm.exit112:                               ; preds = %bb.q, %.lr.ph.i111, %bb.p, %mp_shr.exit, %.loopexit
  %i.dp = phi i32 [ 0, %bb.p ], [ %.pr.i110.pr, %mp_shr.exit ], [ %i.db, %.loopexit ], [ %i.dn, %bb.q ], [ %i.di, %.lr.ph.i111 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %mpb_renorm.exit112
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dr = sext i32 %i.dp to i64                   ; 2 uses
  %i.ds = icmp eq i32 %i.dp, 0
  br i1 %i.ds, label %mp_add_ui.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.r, %.lr.ph.i113
  %.01415.i = phi i64 [ %4, %.lr.ph.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.01415.i ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %3 = icmp eq i32 %i.dv, 0                       ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !14
  %4 = add nuw i64 %.01415.i, 1                   ; 2 uses
  %5 = icmp ult i64 %4, %i.dr
  %or.cond.not.i = select i1 %5, i1 %3, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i113, label %mp_add_ui.exit, !llvm.loop !36

mp_add_ui.exit:                                   ; preds = %.lr.ph.i113
  br i1 %3, label %mp_add_ui.exit.thread, label %bb.s

mp_add_ui.exit.thread:                            ; preds = %bb.r, %mp_add_ui.exit
  %i.dw = add nsw i32 %i.dp, 1
  store i32 %i.dw, ptr %0, align 4, !tbaa !14
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 1, ptr %i.dx, align 4, !tbaa !14
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
  br i1 %or.cond248, label %.preheader477, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %.preheader477
  %i.z = and i8 %i.x, -2
  %switch = icmp eq i8 %i.z, 56
  br i1 %switch, label %.thread386, label %.thread370

.thread370:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.2358 = phi ptr [ %i.j, %bb.f ], [ %i.s, %bb.n ], [ %i.o, %bb.k ], [ %i.g, %.critedge ] ; 3 uses
  %.1205 = phi i32 [ 16, %bb.f ], [ 2, %bb.n ], [ 8, %bb.k ], [ 8, %.critedge ] ; 2 uses
  %.0185 = phi i32 [ %i.c, %bb.f ], [ %i.c, %bb.n ], [ %i.c, %bb.k ], [ 256, %.critedge ]
  %i.aa = load i8, ptr %.2358, align 1, !tbaa !8  ; 3 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.ac, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread370
  %i.ad = add i8 %i.aa, -65
  %or.cond3.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = add nsw i32 %i.ab, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.af = add i8 %i.aa, -97
  %or.cond5.i = icmp ult i8 %i.af, 26
  %i.ag = add nsw i32 %i.ab, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ag, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread370, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ae, %bb.r ], [ %i.ac, %.thread370 ]
  %.not238 = icmp slt i32 %.0.i, %.1205
  br i1 %.not238, label %.thread386, label %.thread415

bb.t:                                             ; preds = %bb.c
  %i.ah = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ah, 0
  br i1 %.not233, label %bb.u, label %.thread368

bb.u:                                             ; preds = %bb.t
  %scevgep.i = getelementptr i8, ptr %.0356, i64 8
  %.not14.i = icmp eq i8 %i.e, 73
  br i1 %.not14.i, label %bb.v, label %.thread368

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %.0356, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %.not14.1.i = icmp eq i8 %i.aj, 110
  br i1 %.not14.1.i, label %bb.w, label %.thread368

bb.w:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %.not14.2.i = icmp eq i8 %i.al, 102
  br i1 %.not14.2.i, label %bb.x, label %.thread368

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %.0356, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not14.3.i = icmp eq i8 %i.an, 105
  br i1 %.not14.3.i, label %bb.y, label %.thread368

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %.0356, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %.not14.4.i = icmp eq i8 %i.ap, 110
  br i1 %.not14.4.i, label %bb.z, label %.thread368

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.0356, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %.not14.5.i = icmp eq i8 %i.ar, 105
  br i1 %.not14.5.i, label %bb.aa, label %.thread368
end_hunk_0
