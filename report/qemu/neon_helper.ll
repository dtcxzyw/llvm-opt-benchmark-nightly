Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_uqshl_b:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -8
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i8 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 0, %i.n
  %i.q = lshr i32 %i.k, %i.p
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i8 %i.m, 8
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i32 %i.k, %i.n               ; 2 uses
  %i.t = icmp samesign ugt i32 %i.s, 255
  br i1 %i.t, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp eq i8 %i.j, 0
  br i1 %i.u, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.h, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.f ], [ %i.q, %bb.d ], [ 255, %bb.h ], [ 0, %bb.g ]
  %i.v = trunc nuw i32 %.3.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.v, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.g
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !27

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 16 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 2049) %i.i, i1 false)
  br label %.split18.us

.split.us:                                        ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %vector.memcheck124, label %.split.us.split

vector.memcheck124:                               ; preds = %.split.us
  %i.p = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.p, -16
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck124
  %min.iters.check125 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 8
  %n.vec127 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert128 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat129 = shufflevector <16 x i32> %broadcast.splatinsert128, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body130

vector.body130:                                   ; preds = %vector.ph126, %vector.body130
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next133, %vector.body130 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index131
  %wide.load132 = load <16 x i8>, ptr %i.r, align 1
  %i.s = zext <16 x i8> %wide.load132 to <16 x i32>
  %i.t = lshr <16 x i32> %i.s, %broadcast.splat129
  %i.u = trunc nuw <16 x i32> %i.t to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index131
  store <16 x i8> %i.u, ptr %i.v, align 1
  %index.next133 = add nuw i64 %index131, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.w, label %middle.block134, label %vector.body130, !llvm.loop !28

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %n.vec127, %i.i
  br i1 %cmp.n135, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block134
  %min.epilog.iters.check.not.not = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check.not.not, label %do_uqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph, !prof !10

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck124, %vec.epilog.iter.check
  %.016.us.us.ph = phi i64 [ %n.vec127, %vec.epilog.iter.check ], [ 0, %vector.memcheck124 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec127, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert137 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat138 = shufflevector <8 x i32> %broadcast.splatinsert137, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index139
  %wide.load140 = load <8 x i8>, ptr %i.x, align 1
  %i.y = zext <8 x i8> %wide.load140 to <8 x i32>
  %i.z = lshr <8 x i32> %i.y, %broadcast.splat138
  %i.aa = trunc nuw <8 x i32> %i.z to <8 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index139
  store <8 x i8> %i.aa, ptr %i.ab, align 1
  %index.next141 = add nuw i64 %index139, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next141, %i.i
  br i1 %i.ac, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !29

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader ], [ %i.be, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = lshr i32 %i.af, %i.n
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %i.am, %i.n
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = lshr i32 %i.at, %i.n
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = lshr i32 %i.ba, %i.n
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.be, %i.i
  br i1 %exitcond26.not.3, label %.split18.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !30

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 16
  br i1 %min.iters.check, label %.split.us.split.split.preheader149, label %vector.memcheck

.split.us.split.split.preheader149:               ; preds = %vector.memcheck, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bf = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.bg
  %bound0.a = icmp ult ptr %0, %i.bf
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound043 = icmp ult ptr %i.l, %4
  %bound144 = icmp ult ptr %1, %i.bf
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %0, %4
  %bound147 = icmp ult ptr %1, %i.bg
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.split.us.split.split.preheader149, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %wide.load = load <4 x i8>, ptr %i.bh, align 1, !alias.scope !43
  %wide.load50 = load <4 x i8>, ptr %i.bi, align 1, !alias.scope !43
  %i.bj = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.bk = icmp ne <4 x i8> %wide.load50, zeroinitializer ; 2 uses
  %i.bl = shufflevector <4 x i1> %i.bk, <4 x i1> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = bitcast <8 x i1> %i.bl to i8
  %.not = icmp eq i8 %i.bm, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.l, align 4, !alias.scope !44, !noalias !45
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bj to <4 x i8>
  %predphi65 = sext <4 x i1> %i.bk to <4 x i8>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store <4 x i8> %predphi, ptr %i.bn, align 1, !alias.scope !46, !noalias !43
  store <4 x i8> %predphi65, ptr %i.bo, align 1, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %i.i
  br i1 %i.bp, label %.split18.us, label %vector.body, !llvm.loop !35

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check81 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check81, label %.split.us.split.split.us.preheader146, label %vector.memcheck82

.split.us.split.split.us.preheader146:            ; preds = %vector.memcheck82, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck82:                                ; preds = %.split.us.split.split.us.preheader
  %i.bq = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound083 = icmp ult ptr %i.l, %i.br
  %bound083.a = icmp ult ptr %0, %i.bq
  %found.conflict85 = and i1 %bound083, %bound083.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound086 = icmp ult ptr %i.l, %5
  %bound187 = icmp ult ptr %1, %i.bq
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %found.conflict85, %found.conflict88
  %bound090 = icmp ult ptr %0, %5
  %bound191 = icmp ult ptr %1, %i.br
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  br i1 %conflict.rdx93, label %.split.us.split.split.us.preheader146, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck82
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %bb.e, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next118, %bb.e ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %index97 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %wide.load98 = load <4 x i8>, ptr %i.bs, align 1, !alias.scope !47
  %wide.load99 = load <4 x i8>, ptr %i.bt, align 1, !alias.scope !47
  %i.bu = zext <4 x i8> %wide.load98 to <4 x i32>
  %i.bv = zext <4 x i8> %wide.load99 to <4 x i32>
  %i.bw = shl nuw nsw <4 x i32> %i.bu, %broadcast.splat ; 2 uses
  %i.bx = shl nuw nsw <4 x i32> %i.bv, %broadcast.splat ; 2 uses
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = icmp samesign ugt <8 x i32> %i.by, splat (i32 255)
  %i.ca = bitcast <8 x i1> %i.bz to i8
  %.not144 = icmp eq i8 %i.ca, 0
  br i1 %.not144, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body96
  store i32 1, ptr %i.l, align 4, !alias.scope !48, !noalias !49
  br label %bb.e

bb.e:                                             ; preds = %vector.body96, %bb.d
  %predphi116 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bw, <4 x i32> splat (i32 255))
  %predphi117 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bx, <4 x i32> splat (i32 255))
  %i.cb = trunc nuw <4 x i32> %predphi116 to <4 x i8>
  %i.cc = trunc nuw <4 x i32> %predphi117 to <4 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %index97 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store <4 x i8> %i.cb, ptr %i.cd, align 1, !alias.scope !50, !noalias !47
  store <4 x i8> %i.cc, ptr %i.ce, align 1, !alias.scope !50, !noalias !47
  %index.next118 = add nuw i64 %index97, 8        ; 2 uses
  %i.cf = icmp eq i64 %index.next118, %i.i
  br i1 %i.cf, label %.split18.us, label %vector.body96, !llvm.loop !40

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader146
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader146 ], [ %i.cv, %do_uqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, %i.k             ; 2 uses
  %i.ck = icmp samesign ugt i32 %i.cj, 255
  br i1 %i.ck, label %bb.f, label %do_uqrshl_bhs.exit.us.us20

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.us20

do_uqrshl_bhs.exit.us.us20:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us21 = phi i32 [ 255, %bb.f ], [ %i.cj, %.split.us.split.split.us ]
  %i.cl = trunc nuw i32 %.3.i.us.us21 to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, %i.k             ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 255
  br i1 %i.cs, label %bb.g, label %do_uqrshl_bhs.exit.us.us20.1

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us20
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.us20.1

do_uqrshl_bhs.exit.us.us20.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us20
  %.3.i.us.us21.1 = phi i32 [ 255, %bb.g ], [ %i.cr, %do_uqrshl_bhs.exit.us.us20 ]
  %i.ct = trunc nuw i32 %.3.i.us.us21.1 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.cv, %i.i
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !41

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader149
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader149 ], [ %i.df, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i8 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.3.i.us, ptr %i.cz, align 1
  %i.da = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.da
  store i8 %.3.i.us.1, ptr %i.de, align 1
  %i.df = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.df, %i.i
  br i1 %exitcond.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !42

.split18.us:                                      ; preds = %bb.c, %do_uqrshl_bhs.exit.us.1, %bb.e, %do_uqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block134, %do_uqrshl_bhs.exit.preheader
  %i.dg = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.dg, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dh = add nuw nsw i32 %i.g, 8
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr %0, i64 %i.i
  %i.dk = xor i64 %i.i, -1
  %i.dl = add nsw i64 %i.dk, %i.di
  %i.dm = and i64 %i.dl, -8
  %i.dn = add nsw i64 %i.dm, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %i.dn, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_u16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.57.0.extract.shift = lshr i32 %1, 16     ; 3 uses
  %i.a = and i32 %1, 65535                        ; 3 uses
  %i.b = shl i32 %2, 24
  %i.c = ashr exact i32 %i.b, 24                  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -16
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.c
  %i.g = lshr i32 %i.a, %i.f
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.c, 16
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.a, %i.c               ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 65535
  br i1 %i.j, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.a, 0
  br i1 %i.k, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ 65535, %bb.g ], [ 0, %bb.f ]
  %i.l = shl i32 %2, 8
  %i.m = ashr i32 %i.l, 24                        ; 5 uses
  %.not.i11 = icmp sgt i32 %i.m, -16
  br i1 %.not.i11, label %bb.h, label %do_uqrshl_bhs.exit13

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = sub nsw i32 0, %i.m
  %i.p = lshr i32 %.sroa.57.0.extract.shift, %i.o
  br label %do_uqrshl_bhs.exit13

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i32 %i.m, 16
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i32 %.sroa.57.0.extract.shift, %i.m ; 2 uses
  %i.s = icmp samesign ugt i32 %i.r, 65535
  br i1 %i.s, label %bb.m, label %do_uqrshl_bhs.exit13
end_hunk_0
begin_hunk_1_@helper_neon_uqshl_h:bb.a

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sub nsw i32 0, %i.p
  %i.s = lshr i32 %i.l, %i.r
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %i.p, 16
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.l, %i.p               ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 65535
  br i1 %i.v, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i16 %i.k, 0
  br i1 %i.w, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.u, %bb.f ], [ %i.s, %bb.d ], [ 65535, %bb.h ], [ 0, %bb.g ]
  %i.x = trunc nuw i32 %.3.i to i16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.x, ptr %i.y, align 2
  %i.z = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !51

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.j = lshr exact i64 %i.i, 1                   ; 10 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 7 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -16
  %i.n = icmp samesign ult i32 %i.l, 16
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %0, i8 0, i64 range(i64 0, 2049) %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %vector.memcheck123, label %.split.us.split

vector.memcheck123:                               ; preds = %.split.us
  %i.q = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck123
  %min.iters.check124 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %n.vec126 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert127 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat128 = shufflevector <8 x i32> %broadcast.splatinsert127, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph125, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body129 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load131 = load <8 x i16>, ptr %i.r, align 2
  %wide.load132 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load131 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load132 to <8 x i32>
  %i.v = lshr <8 x i32> %i.t, %broadcast.splat128
  %i.w = lshr <8 x i32> %i.u, %broadcast.splat128
  %i.x = trunc nuw <8 x i32> %i.v to <8 x i16>
  %i.y = trunc nuw <8 x i32> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index130 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next133 = add nuw i64 %index130, 16      ; 2 uses
  %i.ab = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.ab, label %middle.block134, label %vector.body129, !llvm.loop !52

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %i.j, %n.vec126
  br i1 %cmp.n135, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block134
  %i.ac = and i64 %i.i, 24
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph, !prof !11

do_uqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck123, %vec.epilog.iter.check
  %.015.us.us.ph = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.memcheck123 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index139
  %wide.load140 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = zext <4 x i16> %wide.load140 to <4 x i32>
  %i.af = lshr <4 x i32> %i.ae, %broadcast.splat138
  %i.ag = trunc nuw <4 x i32> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index139
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next141, %i.j
  br i1 %i.ai, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !53

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader.new ], [ %i.bk, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = lshr i32 %i.al, %i.o
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = lshr i32 %i.as, %i.o
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = lshr i32 %i.az, %i.o
  %i.bb = trunc nuw i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = lshr i32 %i.bg, %i.o
  %i.bi = trunc nuw i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bd
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !54

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %.split.us.split.split.preheader148.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bl = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bm
  %bound0.a = icmp ult ptr %0, %i.bl
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound042 = icmp ult ptr %i.m, %4
  %bound143 = icmp ult ptr %1, %i.bl
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %4
  %bound146 = icmp ult ptr %1, %i.bm
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader148.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %wide.load = load <4 x i16>, ptr %i.bn, align 2, !alias.scope !67
  %wide.load49 = load <4 x i16>, ptr %i.bo, align 2, !alias.scope !67
  %i.bp = icmp ne <4 x i16> %wide.load, zeroinitializer ; 2 uses
  %i.bq = icmp ne <4 x i16> %wide.load49, zeroinitializer ; 2 uses
  %i.br = shufflevector <4 x i1> %i.bq, <4 x i1> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = bitcast <8 x i1> %i.br to i8
  %.not = icmp eq i8 %i.bs, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.m, align 4, !alias.scope !68, !noalias !69
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bp to <4 x i16>
  %predphi64 = sext <4 x i1> %i.bq to <4 x i16>
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store <4 x i16> %predphi, ptr %i.bt, align 2, !alias.scope !70, !noalias !67
  store <4 x i16> %predphi64, ptr %i.bu, align 2, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader148.new

.split.us.split.split.preheader148.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader146.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bw = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound082 = icmp ult ptr %i.m, %i.bx
  %bound082.a = icmp ult ptr %0, %i.bw
  %found.conflict84 = and i1 %bound082, %bound082.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound085 = icmp ult ptr %i.m, %5
  %bound186 = icmp ult ptr %1, %i.bw
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %5
  %bound190 = icmp ult ptr %1, %i.bx
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader146.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.j, 1073741816             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load97 = load <4 x i16>, ptr %i.by, align 2, !alias.scope !71
  %wide.load98 = load <4 x i16>, ptr %i.bz, align 2, !alias.scope !71
  %i.ca = zext <4 x i16> %wide.load97 to <4 x i32>
  %i.cb = zext <4 x i16> %wide.load98 to <4 x i32>
  %i.cc = shl nuw nsw <4 x i32> %i.ca, %broadcast.splat ; 2 uses
  %i.cd = shl nuw nsw <4 x i32> %i.cb, %broadcast.splat ; 2 uses
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = icmp samesign ugt <8 x i32> %i.ce, splat (i32 65535)
  %i.cg = bitcast <8 x i1> %i.cf to i8
  %.not144 = icmp eq i8 %i.cg, 0
  br i1 %.not144, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.m, align 4, !alias.scope !72, !noalias !73
  br label %bb.e

bb.e:                                             ; preds = %vector.body95, %bb.d
  %predphi115 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cc, <4 x i32> splat (i32 65535))
  %predphi116 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cd, <4 x i32> splat (i32 65535))
  %i.ch = trunc nuw <4 x i32> %predphi115 to <4 x i16>
  %i.ci = trunc nuw <4 x i32> %predphi116 to <4 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i16> %i.ch, ptr %i.cj, align 2, !alias.scope !74, !noalias !71
  store <4 x i16> %i.ci, ptr %i.ck, align 2, !alias.scope !74, !noalias !71
  %index.next117 = add nuw i64 %index96, 8        ; 2 uses
  %i.cl = icmp eq i64 %index.next117, %n.vec94
  br i1 %i.cl, label %middle.block118, label %vector.body95, !llvm.loop !64

middle.block118:                                  ; preds = %bb.e
  %cmp.n119 = icmp eq i64 %i.j, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader146.new

.split.us.split.split.us.preheader146.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader146.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader146.new ], [ %i.db, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, %i.l             ; 2 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 65535
  br i1 %i.cq, label %bb.f, label %do_uqrshl_bhs.exit.us.us19

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19

do_uqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ 65535, %bb.f ], [ %i.cp, %.split.us.split.split.us ]
  %i.cr = trunc nuw i32 %.3.i.us.us20 to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, %i.l             ; 2 uses
  %i.cy = icmp samesign ugt i32 %i.cx, 65535
  br i1 %i.cy, label %bb.g, label %do_uqrshl_bhs.exit.us.us19.1

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ 65535, %bb.g ], [ %i.cx, %do_uqrshl_bhs.exit.us.us19 ]
  %i.cz = trunc nuw i32 %.3.i.us.us20.1 to i16
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  store i16 %i.cz, ptr %i.da, align 2
  %i.db = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.db, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !65

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader148.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader148.new ], [ %i.dl, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i16 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.3.i.us, ptr %i.df, align 2
  %i.dg = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  store i16 %.3.i.us.1, ptr %i.dk, align 2
  %i.dl = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %i.j
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !66

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block134, %do_uqrshl_bhs.exit.preheader
  %i.dm = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.dm, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.dn = add nuw nsw i32 %i.g, 8
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %0, i64 %i.i
  %i.dq = xor i64 %i.i, -1
  %i.dr = add nsw i64 %i.dq, %i.do
  %i.ds = and i64 %i.dr, -8
  %i.dt = add nsw i64 %i.ds, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dp, i8 0, i64 %i.dt, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.y, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 24
  %i.o = ashr exact i32 %i.n, 24                  ; 6 uses
  %.not.i = icmp sgt i32 %i.o, -32
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i32 0, %i.o
  %i.r = lshr i32 %i.k, %i.q
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.o, 32
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl i32 %i.k, %i.o                       ; 2 uses
  %i.u = lshr exact i32 %i.t, %i.o
  %i.v = icmp eq i32 %i.u, %i.k
  br i1 %i.v, label %do_uqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.k, 0
  br i1 %i.w, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.t, %bb.f ], [ %i.r, %bb.d ], [ -1, %bb.h ], [ 0, %bb.g ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.x, align 4
  %i.y = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !75

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.z = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.z, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.aa = add nuw nsw i32 %i.e, 8
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %0, i64 %i.g
  %i.ad = xor i64 %i.g, -1
  %i.ae = add nsw i64 %i.ad, %i.ab
  %i.af = and i64 %i.ae, -8
  %i.ag = add nsw i64 %i.af, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ag, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 8 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 11 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 9 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -32
  %i.n = icmp samesign ult i32 %i.l, 32
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, i8 0, i64 range(i64 0, 2049) %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %do_uqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check123, %diff.check
  br i1 %or.cond, label %do_uqrshl_bhs.exit.us.us.preheader138, label %vector.ph125

vector.ph125:                                     ; preds = %do_uqrshl_bhs.exit.us.us.preheader
  %n.vec126 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body129 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load131 = load <4 x i32>, ptr %i.r, align 4
  %wide.load132 = load <4 x i32>, ptr %i.s, align 4
  %i.t = lshr <4 x i32> %wide.load131, %broadcast.splat128
  %i.u = lshr <4 x i32> %wide.load132, %broadcast.splat128
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index130 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %i.t, ptr %i.v, align 4
  store <4 x i32> %i.u, ptr %i.w, align 4
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.x, label %middle.block134, label %vector.body129, !llvm.loop !76

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %i.j, %n.vec126
  br i1 %cmp.n135, label %.split17.us, label %do_uqrshl_bhs.exit.us.us.preheader138

do_uqrshl_bhs.exit.us.us.preheader138:            ; preds = %do_uqrshl_bhs.exit.us.us.preheader, %middle.block134
  %.015.us.us.ph = phi i64 [ 0, %do_uqrshl_bhs.exit.us.us.preheader ], [ %n.vec126, %middle.block134 ] ; 3 uses
  %xtraiter145 = and i64 %i.j, 2                  ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol

do_uqrshl_bhs.exit.us.us.prol:                    ; preds = %do_uqrshl_bhs.exit.us.us.preheader138, %do_uqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ac, %do_uqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader138 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_uqrshl_bhs.exit.us.us.prol ], [ 0, %do_uqrshl_bhs.exit.us.us.preheader138 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, %i.o
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter145
  br i1 %prol.iter.cmp.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol, !llvm.loop !77

do_uqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_uqrshl_bhs.exit.us.us.prol, %do_uqrshl_bhs.exit.us.us.preheader138
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader138 ], [ %i.ac, %do_uqrshl_bhs.exit.us.us.prol ]
  %i.ad = sub nsw i64 %.015.us.us.ph, %i.j
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.split17.us, label %do_uqrshl_bhs.exit.us.us

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.ay, %do_uqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_uqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, %i.o
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = lshr i32 %i.al, %i.o
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = lshr i32 %i.aq, %i.o
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = lshr i32 %i.av, %i.o
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.ay, %i.j
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !78

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.us.split.split.preheader141.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.az = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.ba
  %bound0.a = icmp ult ptr %0, %i.az
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound042 = icmp ult ptr %i.m, %4
  %bound143 = icmp ult ptr %1, %i.az
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %4
  %bound146 = icmp ult ptr %1, %i.ba
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader141.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !alias.scope !91
  %wide.load49 = load <4 x i32>, ptr %i.bc, align 4, !alias.scope !91
  %i.bd = icmp ne <4 x i32> %wide.load, zeroinitializer ; 2 uses
  %i.be = icmp ne <4 x i32> %wide.load49, zeroinitializer ; 2 uses
  %i.bf = shufflevector <4 x i1> %i.be, <4 x i1> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bg = bitcast <8 x i1> %i.bf to i8
  %.not = icmp eq i8 %i.bg, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.m, align 4, !alias.scope !92, !noalias !93
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bd to <4 x i32>
  %predphi64 = sext <4 x i1> %i.be to <4 x i32>
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x i32> %predphi, ptr %i.bh, align 4, !alias.scope !94, !noalias !91
  store <4 x i32> %predphi64, ptr %i.bi, align 4, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader141.new

.split.us.split.split.preheader141.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader139.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bk = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bl = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound082 = icmp ult ptr %i.m, %i.bl
  %bound082.a = icmp ult ptr %0, %i.bk
  %found.conflict84 = and i1 %bound082, %bound082.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound085 = icmp ult ptr %i.m, %5
  %bound186 = icmp ult ptr %1, %i.bk
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %5
  %bound190 = icmp ult ptr %1, %i.bl
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader139.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.j, 536870904              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load97 = load <4 x i32>, ptr %i.bm, align 4, !alias.scope !95 ; 2 uses
  %wide.load98 = load <4 x i32>, ptr %i.bn, align 4, !alias.scope !95 ; 2 uses
  %i.bo = shl <4 x i32> %wide.load97, %broadcast.splat ; 2 uses
  %i.bp = shl <4 x i32> %wide.load98, %broadcast.splat ; 2 uses
  %i.bq = lshr exact <4 x i32> %i.bo, %broadcast.splat
  %i.br = lshr exact <4 x i32> %i.bp, %broadcast.splat
  %i.bs = icmp ne <4 x i32> %i.bq, %wide.load97   ; 2 uses
  %i.bt = icmp ne <4 x i32> %i.br, %wide.load98   ; 2 uses
  %i.bu = shufflevector <4 x i1> %i.bt, <4 x i1> %i.bs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = bitcast <8 x i1> %i.bu to i8
  %.not137 = icmp eq i8 %i.bv, 0
  br i1 %.not137, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.m, align 4, !alias.scope !96, !noalias !97
  br label %bb.e

bb.e:                                             ; preds = %vector.body95, %bb.d
  %predphi115 = select <4 x i1> %i.bs, <4 x i32> splat (i32 -1), <4 x i32> %i.bo
  %predphi116 = select <4 x i1> %i.bt, <4 x i32> splat (i32 -1), <4 x i32> %i.bp
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %predphi115, ptr %i.bw, align 4, !alias.scope !98, !noalias !95
  store <4 x i32> %predphi116, ptr %i.bx, align 4, !alias.scope !98, !noalias !95
  %index.next117 = add nuw i64 %index96, 8        ; 2 uses
  %i.by = icmp eq i64 %index.next117, %n.vec94
  br i1 %i.by, label %middle.block118, label %vector.body95, !llvm.loop !88

middle.block118:                                  ; preds = %bb.e
  %cmp.n119 = icmp eq i64 %i.j, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader139.new

.split.us.split.split.us.preheader139.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader139.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader139.new ], [ %i.cm, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us18
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = shl i32 %i.ca, %i.l                     ; 2 uses
  %i.cc = lshr exact i32 %i.cb, %i.l
  %i.cd = icmp eq i32 %i.cc, %i.ca
  br i1 %i.cd, label %do_uqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19

do_uqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ -1, %bb.f ], [ %i.cb, %.split.us.split.split.us ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.ce, align 4
  %i.cf = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = shl i32 %i.ch, %i.l                     ; 2 uses
  %i.cj = lshr exact i32 %i.ci, %i.l
  %i.ck = icmp eq i32 %i.cj, %i.ch
  br i1 %i.ck, label %do_uqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ -1, %bb.g ], [ %i.ci, %do_uqrshl_bhs.exit.us.us19 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  store i32 %.3.i.us.us20.1, ptr %i.cl, align 4
  %i.cm = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.cm, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !89

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader141.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader141.new ], [ %i.cw, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i32 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us
  store i32 %.3.i.us, ptr %i.cq, align 4
  %i.cr = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store i32 %.3.i.us.1, ptr %i.cv, align 4
  %i.cw = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !90

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block134, %do_uqrshl_bhs.exit.preheader
  %i.cx = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.cx, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.cy = add nuw nsw i32 %i.g, 8
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %0, i64 %i.i
  %i.db = xor i64 %i.i, -1
  %i.dc = add nsw i64 %i.db, %i.cz
  %i.dd = and i64 %i.dc, -8
  %i.de = add nsw i64 %i.dd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.da, i8 0, i64 %i.de, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.y, %do_uqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 56
  %i.o = ashr exact i64 %i.n, 56                  ; 6 uses
  %.not.i = icmp sgt i64 %i.o, -64
  br i1 %.not.i, label %bb.c, label %do_uqrshl_d.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.o
  %i.r = lshr i64 %i.k, %i.q
  br label %do_uqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i64 %i.o, 64
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.k, %i.o                       ; 2 uses
  %i.u = lshr exact i64 %i.t, %i.o
  %i.v = icmp eq i64 %i.u, %i.k
  br i1 %i.v, label %do_uqrshl_d.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %do_uqrshl_d.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
end_hunk_1
begin_hunk_2_@helper_neon_sqshl_b:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 20 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.o = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1
  %wide.load39 = load <16 x i8>, ptr %i.r, align 1
  %i.s = ashr <16 x i8> %wide.load, splat (i8 7)
  %i.t = ashr <16 x i8> %wide.load39, splat (i8 7)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <16 x i8> %i.s, ptr %i.u, align 1
  store <16 x i8> %i.t, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader, label %vec.epilog.vector.body.preheader, !prof !123

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index41.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader:                     ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index41 = phi i64 [ %index.next43, %vec.epilog.vector.body ], [ %index41.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index41
  %wide.load42 = load <8 x i8>, ptr %i.x, align 1
  %i.y = ashr <8 x i8> %wide.load42, splat (i8 7)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index41
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next43 = add nuw i64 %index41, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next43, %i.i
  br i1 %i.aa, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !106

.split.us:                                        ; preds = %bb.a
  %i.ab = icmp slt i32 %i.k, 0
  br i1 %i.ab, label %vector.memcheck138, label %.split.us.split

vector.memcheck138:                               ; preds = %.split.us
  %i.ac = sub i64 %i.b, %i.a
  %diff.check139 = icmp ugt i64 %i.ac, -16
  br i1 %diff.check139, label %do_sqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %vector.memcheck138
  %min.iters.check141 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check141, label %vec.epilog.ph156, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %i.ad = and i64 %i.i, 8
  %n.vec143 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert144 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat145 = shufflevector <16 x i32> %broadcast.splatinsert144, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body146

vector.body146:                                   ; preds = %vector.ph142, %vector.body146
  %index147 = phi i64 [ 0, %vector.ph142 ], [ %index.next149, %vector.body146 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index147
  %wide.load148 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = sext <16 x i8> %wide.load148 to <16 x i32>
  %i.ag = ashr <16 x i32> %i.af, %broadcast.splat145
  %i.ah = trunc nsw <16 x i32> %i.ag to <16 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index147
  store <16 x i8> %i.ah, ptr %i.ai, align 1
  %index.next149 = add nuw i64 %index147, 16      ; 2 uses
  %i.aj = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.aj, label %middle.block150, label %vector.body146, !llvm.loop !107

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %n.vec143, %i.i
  br i1 %cmp.n151, label %.split18.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  %min.epilog.iters.check155.not.not = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check155.not.not, label %do_sqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph156, !prof !10

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck138, %vec.epilog.iter.check153
  %.016.us.us.ph = phi i64 [ %n.vec143, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck138 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check153
  %vec.epilog.resume.val157 = phi i64 [ %n.vec143, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check140 ]
  %broadcast.splatinsert159 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat160 = shufflevector <8 x i32> %broadcast.splatinsert159, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body161

vec.epilog.vector.body161:                        ; preds = %vec.epilog.vector.body161, %vec.epilog.ph156
  %index162 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph156 ], [ %index.next164, %vec.epilog.vector.body161 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index162
  %wide.load163 = load <8 x i8>, ptr %i.ak, align 1
  %i.al = sext <8 x i8> %wide.load163 to <8 x i32>
  %i.am = ashr <8 x i32> %i.al, %broadcast.splat160
  %i.an = trunc nsw <8 x i32> %i.am to <8 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index162
  store <8 x i8> %i.an, ptr %i.ao, align 1
  %index.next164 = add nuw i64 %index162, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next164, %i.i
  br i1 %i.ap, label %.split18.us, label %vec.epilog.vector.body161, !llvm.loop !108

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader ], [ %i.br, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i32
  %i.at = ashr i32 %i.as, %i.n
  %i.au = trunc nsw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = sext i8 %i.ay to i32
  %i.ba = ashr i32 %i.az, %i.n
  %i.bb = trunc nsw i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i32
  %i.bh = ashr i32 %i.bg, %i.n
  %i.bi = trunc nsw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = sext i8 %i.bm to i32
  %i.bo = ashr i32 %i.bn, %i.n
  %i.bp = trunc nsw i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond27.not.3 = icmp eq i64 %i.br, %i.i
  br i1 %exitcond27.not.3, label %.split18.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !109

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check55 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check55, label %.split.us.split.split.preheader173, label %vector.memcheck56

.split.us.split.split.preheader173:               ; preds = %vector.memcheck56, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck56:                                ; preds = %.split.us.split.split.preheader
  %i.bs = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.bt
  %bound0.a = icmp ult ptr %0, %i.bs
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound057 = icmp ult ptr %i.l, %4
  %bound158 = icmp ult ptr %1, %i.bs
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %0, %4
  %bound161 = icmp ult ptr %1, %i.bt
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  br i1 %conflict.rdx63, label %.split.us.split.split.preheader173, label %vector.body66

vector.body66:                                    ; preds = %vector.memcheck56, %bb.c
  %index67 = phi i64 [ %index.next85, %bb.c ], [ 0, %vector.memcheck56 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %index67 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %wide.load68 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !124 ; 2 uses
  %wide.load69 = load <4 x i8>, ptr %i.bv, align 1, !alias.scope !124 ; 2 uses
  %i.bw = icmp ne <4 x i8> %wide.load68, zeroinitializer ; 2 uses
  %i.bx = icmp ne <4 x i8> %wide.load69, zeroinitializer ; 2 uses
  %i.by = shufflevector <4 x i1> %i.bx, <4 x i1> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = bitcast <8 x i1> %i.by to i8
  %.not = icmp eq i8 %i.bz, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body66
  store i32 1, ptr %i.l, align 4, !alias.scope !125, !noalias !126
  br label %bb.c

bb.c:                                             ; preds = %vector.body66, %bb.b
  %i.ca = icmp sgt <4 x i8> %wide.load68, splat (i8 -1)
  %i.cb = icmp sgt <4 x i8> %wide.load69, splat (i8 -1)
  %i.cc = select <4 x i1> %i.ca, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %i.cd = select <4 x i1> %i.cb, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %predphi = select <4 x i1> %i.bw, <4 x i8> %i.cc, <4 x i8> zeroinitializer
  %predphi84 = select <4 x i1> %i.bx, <4 x i8> %i.cd, <4 x i8> zeroinitializer
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %index67 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store <4 x i8> %predphi, ptr %i.ce, align 1, !alias.scope !127, !noalias !124
  store <4 x i8> %predphi84, ptr %i.cf, align 1, !alias.scope !127, !noalias !124
  %index.next85 = add nuw i64 %index67, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %i.i
  br i1 %i.cg, label %.split18.us, label %vector.body66, !llvm.loop !114

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check104 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check104, label %.split.us.split.split.us.preheader170, label %vector.memcheck105

.split.us.split.split.us.preheader170:            ; preds = %vector.memcheck105, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck105:                               ; preds = %.split.us.split.split.us.preheader
  %i.ch = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ci = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0106 = icmp ult ptr %i.l, %i.ci
  %bound0106.a = icmp ult ptr %0, %i.ch
  %found.conflict108 = and i1 %bound0106, %bound0106.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound0109 = icmp ult ptr %i.l, %5
  %bound1110 = icmp ult ptr %1, %i.ch
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  %bound0113 = icmp ult ptr %0, %5
  %bound1114 = icmp ult ptr %1, %i.ci
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.split.us.split.split.us.preheader170, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck105
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body119

vector.body119:                                   ; preds = %bb.e, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next131, %bb.e ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.cj, align 1, !alias.scope !128 ; 2 uses
  %i.ck = sext <4 x i8> %wide.load121 to <4 x i32>
  %i.cl = shl nsw <4 x i32> %i.ck, %broadcast.splat ; 2 uses
  %i.cm = add <4 x i32> %i.cl, splat (i32 -128)
  %i.cn = icmp ult <4 x i32> %i.cm, splat (i32 -256) ; 2 uses
  %i.co = bitcast <4 x i1> %i.cn to i4
  %.not168 = icmp eq i4 %i.co, 0
  br i1 %.not168, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body119
  store i32 1, ptr %i.l, align 4, !alias.scope !129, !noalias !130
  br label %bb.e

bb.e:                                             ; preds = %vector.body119, %bb.d
  %i.cp = icmp sgt <4 x i8> %wide.load121, splat (i8 -1)
  %i.cq = select <4 x i1> %i.cp, <4 x i32> splat (i32 127), <4 x i32> splat (i32 128)
  %predphi130 = select <4 x i1> %i.cn, <4 x i32> %i.cq, <4 x i32> %i.cl
  %i.cr = trunc <4 x i32> %predphi130 to <4 x i8>
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %index120
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !alias.scope !131, !noalias !128
  %index.next131 = add nuw i64 %index120, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next131, %i.i
  br i1 %i.ct, label %.split18.us, label %vector.body119, !llvm.loop !119

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader170
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader170 ], [ %i.dn, %do_sqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = sext i8 %i.cv to i32
  %i.cx = shl nsw i32 %i.cw, %i.k                 ; 2 uses
  %i.cy = add nsw i32 %i.cx, 128
  %.not.us.us = icmp ult i32 %i.cy, 256
  br i1 %.not.us.us, label %do_sqrshl_bhs.exit.us.us20, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.l, align 4
  %i.cz = icmp sgt i8 %i.cv, -1
  %i.da = select i1 %i.cz, i32 127, i32 128
  br label %do_sqrshl_bhs.exit.us.us20

do_sqrshl_bhs.exit.us.us20:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us21 = phi i32 [ %i.da, %bb.f ], [ %i.cx, %.split.us.split.split.us ]
  %i.db = trunc i32 %.3.i.us.us21 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = sext i8 %i.df to i32
  %i.dh = shl nsw i32 %i.dg, %i.k                 ; 2 uses
  %i.di = add nsw i32 %i.dh, 128
  %.not.us.us.1 = icmp ult i32 %i.di, 256
  br i1 %.not.us.us.1, label %do_sqrshl_bhs.exit.us.us20.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us20
  store i32 1, ptr %i.l, align 4
  %i.dj = icmp sgt i8 %i.df, -1
  %i.dk = select i1 %i.dj, i32 127, i32 128
  br label %do_sqrshl_bhs.exit.us.us20.1

do_sqrshl_bhs.exit.us.us20.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us20
  %.3.i.us.us21.1 = phi i32 [ %i.dk, %bb.g ], [ %i.dh, %do_sqrshl_bhs.exit.us.us20 ]
  %i.dl = trunc i32 %.3.i.us.us21.1 to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.dn, %i.i
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !120

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader173
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader173 ], [ %i.eb, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.dp = load i8, ptr %i.do, align 1             ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.l, align 4
  %i.dr = icmp sgt i8 %i.dp, -1
  %i.ds = select i1 %i.dr, i8 127, i8 -128
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i8 [ %i.ds, %bb.h ], [ 0, %.split.us.split.split ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.3.i.us, ptr %i.dt, align 1
  %i.du = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.l, align 4
  %i.dy = icmp sgt i8 %i.dw, -1
  %i.dz = select i1 %i.dy, i8 127, i8 -128
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ %i.dz, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.du
  store i8 %.3.i.us.1, ptr %i.ea, align 1
  %i.eb = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.eb, %i.i
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !121

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.preheader
  %.016 = phi i64 [ %.016.ph, %do_sqrshl_bhs.exit.preheader ], [ %i.ev, %do_sqrshl_bhs.exit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = ashr i8 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = or disjoint i64 %.016, 1                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = ashr i8 %i.ei, 7
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.eg
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = or disjoint i64 %.016, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = ashr i8 %i.en, 7
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = or disjoint i64 %.016, 3                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = ashr i8 %i.es, 7
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  store i8 %i.et, ptr %i.eu, align 1
  %i.ev = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ev, %i.i
  br i1 %exitcond.not.3, label %.split18.us, label %do_sqrshl_bhs.exit, !llvm.loop !122

.split18.us:                                      ; preds = %vec.epilog.vector.body, %do_sqrshl_bhs.exit, %bb.c, %do_sqrshl_bhs.exit.us.1, %bb.e, %do_sqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body161, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block150
  %i.ew = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.ew, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.ex = add nuw nsw i32 %i.g, 8
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %0, i64 %i.i
  %i.fa = xor i64 %i.i, -1
  %i.fb = add nsw i64 %i.fa, %i.ey
  %i.fc = and i64 %i.fb, -8
  %i.fd = add nsw i64 %i.fc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fd, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %1, 16                           ; 3 uses
  %i.b = ashr exact i32 %i.a, 16                  ; 3 uses
  %i.c = shl i32 %2, 24
  %i.d = ashr exact i32 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ashr i32 %i.a, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.d, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sub nsw i32 0, %i.d
  %i.i = ashr i32 %i.b, %i.h
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %i.d, 16
  br i1 %i.j, label %bb.f, label %bb.g

end_hunk_2
begin_hunk_3_@helper_neon_sqshl_h:bb.a
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.j = lshr exact i64 %i.i, 1                   ; 13 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 7 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -16
  %i.n = icmp samesign ult i32 %i.l, 16
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.p = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.p, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.j, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %wide.load38 = load <8 x i16>, ptr %i.r, align 2
  %i.s = ashr <8 x i16> %wide.load, splat (i16 15)
  %i.t = ashr <8 x i16> %wide.load38, splat (i16 15)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <8 x i16> %i.s, ptr %i.u, align 2
  store <8 x i16> %i.t, ptr %i.v, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.x = and i64 %i.i, 24
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader.new, label %vec.epilog.vector.body.preheader, !prof !11

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader.new:                 ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next42, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index40
  %wide.load41 = load <4 x i16>, ptr %i.y, align 2
  %i.z = ashr <4 x i16> %wide.load41, splat (i16 15)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index40
  store <4 x i16> %i.z, ptr %i.aa, align 2
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next42, %i.j
  br i1 %i.ab, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !134

.split.us:                                        ; preds = %bb.a
  %i.ac = icmp slt i32 %i.l, 0
  br i1 %i.ac, label %vector.memcheck137, label %.split.us.split

vector.memcheck137:                               ; preds = %.split.us
  %i.ad = sub i64 %i.b, %i.a
  %diff.check138 = icmp ugt i64 %i.ad, -32
  br i1 %diff.check138, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check139

vector.main.loop.iter.check139:                   ; preds = %vector.memcheck137
  %min.iters.check140 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check140, label %vec.epilog.ph156, label %vector.ph141

vector.ph141:                                     ; preds = %vector.main.loop.iter.check139
  %n.vec142 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert143 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat144 = shufflevector <8 x i32> %broadcast.splatinsert143, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.ph141, %vector.body145
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body145 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index146 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load147 = load <8 x i16>, ptr %i.ae, align 2
  %wide.load148 = load <8 x i16>, ptr %i.af, align 2
  %i.ag = sext <8 x i16> %wide.load147 to <8 x i32>
  %i.ah = sext <8 x i16> %wide.load148 to <8 x i32>
  %i.ai = ashr <8 x i32> %i.ag, %broadcast.splat144
  %i.aj = ashr <8 x i32> %i.ah, %broadcast.splat144
  %i.ak = trunc nsw <8 x i32> %i.ai to <8 x i16>
  %i.al = trunc nsw <8 x i32> %i.aj to <8 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index146 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <8 x i16> %i.ak, ptr %i.am, align 2
  store <8 x i16> %i.al, ptr %i.an, align 2
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.ao, label %middle.block150, label %vector.body145, !llvm.loop !135

middle.block150:                                  ; preds = %vector.body145
  %cmp.n151 = icmp eq i64 %i.j, %n.vec142
  br i1 %cmp.n151, label %.split17.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  %i.ap = and i64 %i.i, 24
  %min.epilog.iters.check155 = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check155, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph156, !prof !11

do_sqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck137, %vec.epilog.iter.check153
  %.015.us.us.ph = phi i64 [ %n.vec142, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck137 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check139, %vec.epilog.iter.check153
  %vec.epilog.resume.val157 = phi i64 [ %n.vec142, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check139 ]
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body161

vec.epilog.vector.body161:                        ; preds = %vec.epilog.vector.body161, %vec.epilog.ph156
  %index162 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph156 ], [ %index.next164, %vec.epilog.vector.body161 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index162
  %wide.load163 = load <4 x i16>, ptr %i.aq, align 2
  %i.ar = sext <4 x i16> %wide.load163 to <4 x i32>
  %i.as = ashr <4 x i32> %i.ar, %broadcast.splat160
  %i.at = trunc nsw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index162
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next164, %i.j
  br i1 %i.av, label %.split17.us, label %vec.epilog.vector.body161, !llvm.loop !136

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader.new ], [ %i.bx, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = sext i16 %i.ax to i32
  %i.az = ashr i32 %i.ay, %i.o
  %i.ba = trunc nsw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = ashr i32 %i.bf, %i.o
  %i.bh = trunc nsw i32 %i.bg to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = sext i16 %i.bl to i32
  %i.bn = ashr i32 %i.bm, %i.o
  %i.bo = trunc nsw i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = ashr i32 %i.bt, %i.o
  %i.bv = trunc nsw i32 %i.bu to i16
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.bv, ptr %i.bw, align 2
  %i.bx = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bx, %i.j
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !137

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check54 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check54, label %.split.us.split.split.preheader173.new, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.split.us.split.split.preheader
  %i.by = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bz
  %bound0.a = icmp ult ptr %0, %i.by
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound056 = icmp ult ptr %i.m, %4
  %bound157 = icmp ult ptr %1, %i.by
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %0, %4
  %bound160 = icmp ult ptr %1, %i.bz
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  br i1 %conflict.rdx62, label %.split.us.split.split.preheader173.new, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec64 = and i64 %i.j, 1073741816             ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %bb.c, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next84, %bb.c ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index66 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load67 = load <4 x i16>, ptr %i.ca, align 2, !alias.scope !151 ; 2 uses
  %wide.load68 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !151 ; 2 uses
  %i.cc = icmp ne <4 x i16> %wide.load67, zeroinitializer ; 2 uses
  %i.cd = icmp ne <4 x i16> %wide.load68, zeroinitializer ; 2 uses
  %i.ce = shufflevector <4 x i1> %i.cd, <4 x i1> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = bitcast <8 x i1> %i.ce to i8
  %.not = icmp eq i8 %i.cf, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body65
  store i32 1, ptr %i.m, align 4, !alias.scope !152, !noalias !153
  br label %bb.c

bb.c:                                             ; preds = %vector.body65, %bb.b
  %i.cg = icmp sgt <4 x i16> %wide.load67, splat (i16 -1)
  %i.ch = icmp sgt <4 x i16> %wide.load68, splat (i16 -1)
  %i.ci = select <4 x i1> %i.cg, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %i.cj = select <4 x i1> %i.ch, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %predphi = select <4 x i1> %i.cc, <4 x i16> %i.ci, <4 x i16> zeroinitializer
  %predphi83 = select <4 x i1> %i.cd, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index66 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store <4 x i16> %predphi, ptr %i.ck, align 2, !alias.scope !154, !noalias !151
  store <4 x i16> %predphi83, ptr %i.cl, align 2, !alias.scope !154, !noalias !151
  %index.next84 = add nuw i64 %index66, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next84, %n.vec64
  br i1 %i.cm, label %middle.block85, label %vector.body65, !llvm.loop !142

middle.block85:                                   ; preds = %bb.c
  %cmp.n86 = icmp eq i64 %i.j, %n.vec64
  br i1 %cmp.n86, label %.split17.us, label %.split.us.split.split.preheader173.new

.split.us.split.split.preheader173.new:           ; preds = %vector.memcheck55, %.split.us.split.split.preheader, %middle.block85
  %.015.us.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec64, %middle.block85 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check103 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check103, label %.split.us.split.split.us.preheader170.new, label %vector.memcheck104

.split.us.split.split.us.preheader170.new:        ; preds = %.split.us.split.split.us.preheader, %vector.memcheck104
  br label %.split.us.split.split.us

vector.memcheck104:                               ; preds = %.split.us.split.split.us.preheader
  %i.cn = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0105 = icmp ult ptr %i.m, %i.co
  %bound0105.a = icmp ult ptr %0, %i.cn
  %found.conflict107 = and i1 %bound0105, %bound0105.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound0108 = icmp ult ptr %i.m, %5
  %bound1109 = icmp ult ptr %1, %i.cn
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %found.conflict107, %found.conflict110
  %bound0112 = icmp ult ptr %0, %5
  %bound1113 = icmp ult ptr %1, %i.co
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  br i1 %conflict.rdx115, label %.split.us.split.split.us.preheader170.new, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body118

vector.body118:                                   ; preds = %bb.e, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next130, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index119
  %wide.load120 = load <4 x i16>, ptr %i.cp, align 2, !alias.scope !155 ; 2 uses
  %i.cq = sext <4 x i16> %wide.load120 to <4 x i32>
  %i.cr = shl nsw <4 x i32> %i.cq, %broadcast.splat ; 2 uses
  %i.cs = add <4 x i32> %i.cr, splat (i32 -32768)
  %i.ct = icmp ult <4 x i32> %i.cs, splat (i32 -65536) ; 2 uses
  %i.cu = bitcast <4 x i1> %i.ct to i4
  %.not168 = icmp eq i4 %i.cu, 0
  br i1 %.not168, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body118
  store i32 1, ptr %i.m, align 4, !alias.scope !156, !noalias !157
  br label %bb.e

bb.e:                                             ; preds = %vector.body118, %bb.d
  %i.cv = icmp sgt <4 x i16> %wide.load120, splat (i16 -1)
  %i.cw = select <4 x i1> %i.cv, <4 x i32> splat (i32 32767), <4 x i32> splat (i32 32768)
  %predphi129 = select <4 x i1> %i.ct, <4 x i32> %i.cw, <4 x i32> %i.cr
  %i.cx = trunc <4 x i32> %predphi129 to <4 x i16>
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index119
  store <4 x i16> %i.cx, ptr %i.cy, align 2, !alias.scope !158, !noalias !155
  %index.next130 = add nuw i64 %index119, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next130, %i.j
  br i1 %i.cz, label %.split17.us, label %vector.body118, !llvm.loop !147

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader170.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader170.new ], [ %i.dt, %do_sqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.us.preheader170.new ], [ %niter.next.1, %do_sqrshl_bhs.exit.us.us19.1 ]
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.db = load i16, ptr %i.da, align 2            ; 2 uses
  %i.dc = sext i16 %i.db to i32
  %i.dd = shl nsw i32 %i.dc, %i.l                 ; 2 uses
  %i.de = add nsw i32 %i.dd, 32768
  %.not.us.us = icmp ult i32 %i.de, 65536
  br i1 %.not.us.us, label %do_sqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  %i.df = icmp sgt i16 %i.db, -1
  %i.dg = select i1 %i.df, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.us.us19

do_sqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ %i.dg, %bb.f ], [ %i.dd, %.split.us.split.split.us ]
  %i.dh = trunc i32 %.3.i.us.us20 to i16
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.dh, ptr %i.di, align 2
  %i.dj = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2            ; 2 uses
  %i.dm = sext i16 %i.dl to i32
  %i.dn = shl nsw i32 %i.dm, %i.l                 ; 2 uses
  %i.do = add nsw i32 %i.dn, 32768
  %.not.us.us.1 = icmp ult i32 %i.do, 65536
  br i1 %.not.us.us.1, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  %i.dp = icmp sgt i16 %i.dl, -1
  %i.dq = select i1 %i.dp, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.us.us19.1

do_sqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ %i.dq, %bb.g ], [ %i.dn, %do_sqrshl_bhs.exit.us.us19 ]
  %i.dr = trunc i32 %.3.i.us.us20.1 to i16
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  store i16 %i.dr, ptr %i.ds, align 2
  %i.dt = add nuw nsw i64 %.015.us.us18, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.j
  br i1 %niter.ncmp.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !148

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader173.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader173.new ], [ %i.eh, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dv = load i16, ptr %i.du, align 2            ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  %i.dx = icmp sgt i16 %i.dv, -1
  %i.dy = select i1 %i.dx, i16 32767, i16 -32768
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i16 [ %i.dy, %bb.h ], [ 0, %.split.us.split.split ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.3.i.us, ptr %i.dz, align 2
  %i.ea = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  %i.ee = icmp sgt i16 %i.ec, -1
  %i.ef = select i1 %i.ee, i16 32767, i16 -32768
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ %i.ef, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ea
  store i16 %.3.i.us.1, ptr %i.eg, align 2
  %i.eh = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.eh, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !149

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.preheader.new
  %.015 = phi i64 [ %.015.ph, %do_sqrshl_bhs.exit.preheader.new ], [ %i.fb, %do_sqrshl_bhs.exit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = ashr i16 %i.ej, 15
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.ek, ptr %i.el, align 2
  %i.em = or disjoint i64 %.015, 1                ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = ashr i16 %i.eo, 15
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.em
  store i16 %i.ep, ptr %i.eq, align 2
  %i.er = or disjoint i64 %.015, 2                ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = ashr i16 %i.et, 15
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.er
  store i16 %i.eu, ptr %i.ev, align 2
  %i.ew = or disjoint i64 %.015, 3                ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = ashr i16 %i.ey, 15
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ew
  store i16 %i.ez, ptr %i.fa, align 2
  %i.fb = add nuw nsw i64 %.015, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fb, %i.j
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !150

.split17.us:                                      ; preds = %vec.epilog.vector.body, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %bb.e, %do_sqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body161, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block85, %middle.block150
  %i.fc = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.fc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.fd = add nuw nsw i32 %i.g, 8
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %0, i64 %i.i
  %i.fg = xor i64 %i.i, -1
  %i.fh = add nsw i64 %i.fg, %i.fe
  %i.fi = and i64 %i.fh, -8
  %i.fj = add nsw i64 %i.fi, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ff, i8 0, i64 %i.fj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ab, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 6 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 24
  %i.o = ashr exact i32 %i.n, 24                  ; 6 uses
  %.not.i = icmp sgt i32 %i.o, -32
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_3
begin_hunk_4_@helper_neon_sqshl_s:bb.a

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 16 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 9 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -32
  %i.n = icmp samesign ult i32 %i.l, 32
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_sqrshl_bhs.exit.preheader

do_sqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %do_sqrshl_bhs.exit.preheader165, label %vector.ph

vector.ph:                                        ; preds = %do_sqrshl_bhs.exit.preheader
  %n.vec = and i64 %i.j, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load38 = load <4 x i32>, ptr %i.r, align 4
  %i.s = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.t = ashr <4 x i32> %wide.load38, splat (i32 31)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 4
  store <4 x i32> %i.t, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_sqrshl_bhs.exit.preheader165

do_sqrshl_bhs.exit.preheader165:                  ; preds = %do_sqrshl_bhs.exit.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.j, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol

do_sqrshl_bhs.exit.prol:                          ; preds = %do_sqrshl_bhs.exit.preheader165, %do_sqrshl_bhs.exit.prol
  %.015.prol = phi i64 [ %i.ab, %do_sqrshl_bhs.exit.prol ], [ %.015.ph, %do_sqrshl_bhs.exit.preheader165 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_sqrshl_bhs.exit.prol ], [ 0, %do_sqrshl_bhs.exit.preheader165 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.prol
  %i.y = load i32, ptr %i.x, align 4
  %i.z = ashr i32 %i.y, 31
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.prol
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.015.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol, !llvm.loop !161

do_sqrshl_bhs.exit.prol.loopexit:                 ; preds = %do_sqrshl_bhs.exit.prol, %do_sqrshl_bhs.exit.preheader165
  %.015.unr = phi i64 [ %.015.ph, %do_sqrshl_bhs.exit.preheader165 ], [ %i.ab, %do_sqrshl_bhs.exit.prol ]
  %i.ac = sub nsw i64 %.015.ph, %i.j
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.split17.us, label %do_sqrshl_bhs.exit

.split.us:                                        ; preds = %bb.a
  %i.ae = icmp slt i32 %i.l, 0
  br i1 %i.ae, label %do_sqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check143 = icmp samesign ult i32 %.v.v.i, 24
  %i.af = sub i64 %i.a, %i.b
  %diff.check145 = icmp ugt i64 %i.af, -32
  %or.cond158 = or i1 %min.iters.check143, %diff.check145
  br i1 %or.cond158, label %do_sqrshl_bhs.exit.us.us.preheader160, label %vector.ph146

vector.ph146:                                     ; preds = %do_sqrshl_bhs.exit.us.us.preheader
  %n.vec147 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body150 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index151 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load152 = load <4 x i32>, ptr %i.ag, align 4
  %wide.load153 = load <4 x i32>, ptr %i.ah, align 4
  %i.ai = ashr <4 x i32> %wide.load152, %broadcast.splat149
  %i.aj = ashr <4 x i32> %wide.load153, %broadcast.splat149
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index151 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.ai, ptr %i.ak, align 4
  store <4 x i32> %i.aj, ptr %i.al, align 4
  %index.next154 = add nuw i64 %index151, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.am, label %middle.block155, label %vector.body150, !llvm.loop !162

middle.block155:                                  ; preds = %vector.body150
  %cmp.n156 = icmp eq i64 %i.j, %n.vec147
  br i1 %cmp.n156, label %.split17.us, label %do_sqrshl_bhs.exit.us.us.preheader160

do_sqrshl_bhs.exit.us.us.preheader160:            ; preds = %do_sqrshl_bhs.exit.us.us.preheader, %middle.block155
  %.015.us.us.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.us.us.preheader ], [ %n.vec147, %middle.block155 ] ; 3 uses
  %xtraiter173 = and i64 %i.j, 2                  ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol

do_sqrshl_bhs.exit.us.us.prol:                    ; preds = %do_sqrshl_bhs.exit.us.us.preheader160, %do_sqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ar, %do_sqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader160 ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %do_sqrshl_bhs.exit.us.us.prol ], [ 0, %do_sqrshl_bhs.exit.us.us.preheader160 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = ashr i32 %i.ao, %i.o
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol, !llvm.loop !163

do_sqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_sqrshl_bhs.exit.us.us.prol, %do_sqrshl_bhs.exit.us.us.preheader160
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader160 ], [ %i.ar, %do_sqrshl_bhs.exit.us.us.prol ]
  %i.as = sub nsw i64 %.015.us.us.ph, %i.j
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.split17.us, label %do_sqrshl_bhs.exit.us.us

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.bn, %do_sqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_sqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = ashr i32 %i.av, %i.o
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = ashr i32 %i.ba, %i.o
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = ashr i32 %i.bf, %i.o
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = ashr i32 %i.bk, %i.o
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bn, %i.j
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !164

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check50 = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check50, label %.split.us.split.split.preheader163.new, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.split.us.split.split.preheader
  %i.bo = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bp
  %bound0.a = icmp ult ptr %0, %i.bo
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound052 = icmp ult ptr %i.m, %4
  %bound153 = icmp ult ptr %1, %i.bo
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  %bound055 = icmp ult ptr %0, %4
  %bound156 = icmp ult ptr %1, %i.bp
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  br i1 %conflict.rdx58, label %.split.us.split.split.preheader163.new, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck51
  %n.vec60 = and i64 %i.j, 536870904              ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %bb.c, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next80, %bb.c ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index62 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load63 = load <4 x i32>, ptr %i.bq, align 4, !alias.scope !178 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %i.br, align 4, !alias.scope !178 ; 2 uses
  %i.bs = icmp ne <4 x i32> %wide.load63, zeroinitializer ; 2 uses
  %i.bt = icmp ne <4 x i32> %wide.load64, zeroinitializer ; 2 uses
  %i.bu = shufflevector <4 x i1> %i.bt, <4 x i1> %i.bs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = bitcast <8 x i1> %i.bu to i8
  %.not = icmp eq i8 %i.bv, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body61
  store i32 1, ptr %i.m, align 4, !alias.scope !179, !noalias !180
  br label %bb.c

bb.c:                                             ; preds = %vector.body61, %bb.b
  %i.bw = icmp sgt <4 x i32> %wide.load63, splat (i32 -1)
  %i.bx = icmp sgt <4 x i32> %wide.load64, splat (i32 -1)
  %i.by = select <4 x i1> %i.bw, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %i.bz = select <4 x i1> %i.bx, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %predphi = select <4 x i1> %i.bs, <4 x i32> %i.by, <4 x i32> zeroinitializer
  %predphi79 = select <4 x i1> %i.bt, <4 x i32> %i.bz, <4 x i32> zeroinitializer
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index62 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %predphi, ptr %i.ca, align 4, !alias.scope !181, !noalias !178
  store <4 x i32> %predphi79, ptr %i.cb, align 4, !alias.scope !181, !noalias !178
  %index.next80 = add nuw i64 %index62, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next80, %n.vec60
  br i1 %i.cc, label %middle.block81, label %vector.body61, !llvm.loop !169

middle.block81:                                   ; preds = %bb.c
  %cmp.n82 = icmp eq i64 %i.j, %n.vec60
  br i1 %cmp.n82, label %.split17.us, label %.split.us.split.split.preheader163.new

.split.us.split.split.preheader163.new:           ; preds = %vector.memcheck51, %.split.us.split.split.preheader, %middle.block81
  %.015.us.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec60, %middle.block81 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check99 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check99, label %.split.us.split.split.us.preheader161.new, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.split.us.split.split.us.preheader
  %i.cd = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %bound0101 = icmp ult ptr %i.m, %i.ce
  %bound0101.a = icmp ult ptr %0, %i.cd
  %found.conflict103 = and i1 %bound0101, %bound0101.a
  %5 = getelementptr i8, ptr %1, i64 %i.i         ; 2 uses
  %bound0104 = icmp ult ptr %i.m, %5
  %bound1105 = icmp ult ptr %1, %i.cd
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %found.conflict103, %found.conflict106
  %bound0108 = icmp ult ptr %0, %5
  %bound1109 = icmp ult ptr %1, %i.ce
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %.split.us.split.split.us.preheader161.new, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck100
  %n.vec113 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body114

vector.body114:                                   ; preds = %bb.e, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next136, %bb.e ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index115 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.cf, align 4, !alias.scope !182 ; 3 uses
  %wide.load117 = load <4 x i32>, ptr %i.cg, align 4, !alias.scope !182 ; 3 uses
  %i.ch = shl <4 x i32> %wide.load116, %broadcast.splat ; 2 uses
  %i.ci = shl <4 x i32> %wide.load117, %broadcast.splat ; 2 uses
  %i.cj = ashr exact <4 x i32> %i.ch, %broadcast.splat
  %i.ck = ashr exact <4 x i32> %i.ci, %broadcast.splat
  %i.cl = icmp ne <4 x i32> %i.cj, %wide.load116  ; 2 uses
  %i.cm = icmp ne <4 x i32> %i.ck, %wide.load117  ; 2 uses
  %i.cn = shufflevector <4 x i1> %i.cm, <4 x i1> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.co = bitcast <8 x i1> %i.cn to i8
  %.not159 = icmp eq i8 %i.co, 0
  br i1 %.not159, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body114
  store i32 1, ptr %i.m, align 4, !alias.scope !183, !noalias !184
  br label %bb.e

bb.e:                                             ; preds = %vector.body114, %bb.d
  %i.cp = icmp sgt <4 x i32> %wide.load116, splat (i32 -1)
  %i.cq = icmp sgt <4 x i32> %wide.load117, splat (i32 -1)
  %i.cr = select <4 x i1> %i.cp, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %i.cs = select <4 x i1> %i.cq, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %predphi134 = select <4 x i1> %i.cl, <4 x i32> %i.cr, <4 x i32> %i.ch
  %predphi135 = select <4 x i1> %i.cm, <4 x i32> %i.cs, <4 x i32> %i.ci
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index115 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %predphi134, ptr %i.ct, align 4, !alias.scope !185, !noalias !182
  store <4 x i32> %predphi135, ptr %i.cu, align 4, !alias.scope !185, !noalias !182
  %index.next136 = add nuw i64 %index115, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next136, %n.vec113
  br i1 %i.cv, label %middle.block137, label %vector.body114, !llvm.loop !174

middle.block137:                                  ; preds = %bb.e
  %cmp.n138 = icmp eq i64 %i.j, %n.vec113
  br i1 %cmp.n138, label %.split17.us, label %.split.us.split.split.us.preheader161.new

.split.us.split.split.us.preheader161.new:        ; preds = %vector.memcheck100, %.split.us.split.split.us.preheader, %middle.block137
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck100 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec113, %middle.block137 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader161.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader161.new ], [ %i.dn, %do_sqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us18
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = shl i32 %i.cx, %i.l                     ; 2 uses
  %i.cz = ashr exact i32 %i.cy, %i.l
  %i.da = icmp eq i32 %i.cz, %i.cx
  br i1 %i.da, label %do_sqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  %i.db = icmp sgt i32 %i.cx, -1
  %i.dc = select i1 %i.db, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.us19

do_sqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ %i.dc, %bb.f ], [ %i.cy, %.split.us.split.split.us ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.dd, align 4
  %i.de = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = shl i32 %i.dg, %i.l                     ; 2 uses
  %i.di = ashr exact i32 %i.dh, %i.l
  %i.dj = icmp eq i32 %i.di, %i.dg
  br i1 %i.dj, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  %i.dk = icmp sgt i32 %i.dg, -1
  %i.dl = select i1 %i.dk, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.us19.1

do_sqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ %i.dl, %bb.g ], [ %i.dh, %do_sqrshl_bhs.exit.us.us19 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  store i32 %.3.i.us.us20.1, ptr %i.dm, align 4
  %i.dn = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.dn, %i.j
  br i1 %exitcond25.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !175

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader163.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader163.new ], [ %i.eb, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  %i.dr = icmp sgt i32 %i.dp, -1
  %i.ds = select i1 %i.dr, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i32 [ %i.ds, %bb.h ], [ 0, %.split.us.split.split ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us
  store i32 %.3.i.us, ptr %i.dt, align 4
  %i.du = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  %i.dy = icmp sgt i32 %i.dw, -1
  %i.dz = select i1 %i.dy, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ %i.dz, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  store i32 %.3.i.us.1, ptr %i.ea, align 4
  %i.eb = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.eb, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !176

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit.prol.loopexit, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ %i.ev, %do_sqrshl_bhs.exit ], [ %.015.unr, %do_sqrshl_bhs.exit.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = ashr i32 %i.ed, 31
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = ashr i32 %i.ei, 31
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eg
  store i32 %i.ej, ptr %i.ek, align 4
  %i.el = add nuw nsw i64 %.015, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = ashr i32 %i.en, 31
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = add nuw nsw i64 %.015, 3                ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4
  %i.et = ashr i32 %i.es, 31
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eq
  store i32 %i.et, ptr %i.eu, align 4
  %i.ev = add nuw nsw i64 %.015, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ev, %i.j
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !177

.split17.us:                                      ; preds = %do_sqrshl_bhs.exit.prol.loopexit, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %do_sqrshl_bhs.exit.us.us19.1, %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block81, %middle.block137, %middle.block155
  %i.ew = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.ew, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ex = add nuw nsw i32 %i.g, 8
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %0, i64 %i.i
  %i.fa = xor i64 %i.i, -1
  %i.fb = add nsw i64 %i.fa, %i.ey
  %i.fc = and i64 %i.fb, -8
  %i.fd = add nsw i64 %i.fc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fd, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
end_hunk_4
begin_hunk_5_@helper_neon_qshlu_s8:bb.a
bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.d, -8
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i32 %i.d, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i32 0, %i.d
  %i.i = lshr i32 %i.b, %i.h
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i32 %i.d, 8
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = shl nuw nsw i32 %i.b, %i.d               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 255
  br i1 %i.l, label %bb.i, label %do_suqrshl_bhs.exit

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.g ], [ %i.i, %bb.e ], [ 255, %bb.i ], [ 0, %bb.h ]
  %i.m = shl i32 %1, 16
  %i.n = ashr i32 %i.m, 24                        ; 4 uses
  %i.o = shl i32 %2, 16
  %i.p = ashr i32 %i.o, 24                        ; 5 uses
  %i.q = icmp slt i32 %i.n, 0
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit19

bb.k:                                             ; preds = %do_suqrshl_bhs.exit
  %.not.i.i17 = icmp sgt i32 %i.p, -8
  br i1 %.not.i.i17, label %bb.l, label %do_suqrshl_bhs.exit19

bb.l:                                             ; preds = %bb.k
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = sub nsw i32 0, %i.p
  %i.t = lshr i32 %i.n, %i.s
  br label %do_suqrshl_bhs.exit19

bb.n:                                             ; preds = %bb.l
  %i.u = icmp samesign ult i32 %i.p, 8
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.v = shl nuw nsw i32 %i.n, %i.p               ; 2 uses
  %i.w = icmp samesign ugt i32 %i.v, 255
  br i1 %i.w, label %bb.q, label %do_suqrshl_bhs.exit19

bb.p:                                             ; preds = %bb.n
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %do_suqrshl_bhs.exit19, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit19

do_suqrshl_bhs.exit19:                            ; preds = %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i18 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.v, %bb.o ], [ %i.t, %bb.m ], [ 255, %bb.q ], [ 0, %bb.p ]
  %i.x = shl i32 %1, 8
  %i.y = ashr i32 %i.x, 24                        ; 4 uses
  %i.z = shl i32 %2, 8
  %i.aa = ashr i32 %i.z, 24                       ; 5 uses
  %i.ab = icmp slt i32 %i.y, 0
  br i1 %i.ab, label %bb.r, label %bb.s

bb.r:                                             ; preds = %do_suqrshl_bhs.exit19
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit22

bb.s:                                             ; preds = %do_suqrshl_bhs.exit19
  %.not.i.i20 = icmp sgt i32 %i.aa, -8
  br i1 %.not.i.i20, label %bb.t, label %do_suqrshl_bhs.exit22

bb.t:                                             ; preds = %bb.s
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ad = sub nsw i32 0, %i.aa
  %i.ae = lshr i32 %i.y, %i.ad
  br label %do_suqrshl_bhs.exit22

bb.v:                                             ; preds = %bb.t
  %i.af = icmp samesign ult i32 %i.aa, 8
  br i1 %i.af, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ag = shl nuw nsw i32 %i.y, %i.aa             ; 2 uses
  %i.ah = icmp samesign ugt i32 %i.ag, 255
  br i1 %i.ah, label %bb.y, label %do_suqrshl_bhs.exit22

bb.x:                                             ; preds = %bb.v
  %.not27 = icmp eq i32 %i.y, 0
  br i1 %.not27, label %do_suqrshl_bhs.exit22, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit22

do_suqrshl_bhs.exit22:                            ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.x, %bb.y
  %.0.i21 = phi i32 [ 0, %bb.r ], [ 0, %bb.s ], [ %i.ag, %bb.w ], [ %i.ae, %bb.u ], [ 255, %bb.y ], [ 0, %bb.x ]
  %i.ai = ashr i32 %1, 24                         ; 4 uses
  %i.aj = ashr i32 %2, 24                         ; 5 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %do_suqrshl_bhs.exit22
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit25

bb.aa:                                            ; preds = %do_suqrshl_bhs.exit22
  %.not.i.i23 = icmp sgt i32 %i.aj, -8
  br i1 %.not.i.i23, label %bb.ab, label %do_suqrshl_bhs.exit25

bb.ab:                                            ; preds = %bb.aa
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.am = sub nsw i32 0, %i.aj
  %i.an = lshr i32 %i.ai, %i.am
  br label %do_suqrshl_bhs.exit25

bb.ad:                                            ; preds = %bb.ab
  %i.ao = icmp samesign ult i32 %i.aj, 8
  br i1 %i.ao, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ap = shl nuw nsw i32 %i.ai, %i.aj            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 255
  br i1 %i.aq, label %bb.ag, label %do_suqrshl_bhs.exit25

bb.af:                                            ; preds = %bb.ad
  %.not28 = icmp eq i32 %i.ai, 0
  br i1 %.not28, label %do_suqrshl_bhs.exit25, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit25

do_suqrshl_bhs.exit25:                            ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ae, %bb.af, %bb.ag
  %.0.i24 = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ %i.ap, %bb.ae ], [ %i.an, %bb.ac ], [ 255, %bb.ag ], [ 0, %bb.af ]
  %.sroa.7.0.insert.ext = shl nuw i32 %.0.i24, 24
  %.sroa.6.0.insert.ext = shl nuw nsw i32 %.0.i21, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %.0.i18, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.insert, %.0.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 18 uses
  %i.h = shl i32 %3, 14
  %i.i = ashr i32 %i.h, 24                        ; 7 uses
  %i.j = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.i, -8
  %i.k = icmp samesign ult i32 %i.i, 8
  %i.l = sub nsw i32 0, %i.i                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 16
  br i1 %min.iters.check, label %.split.preheader242, label %vector.memcheck

.split.preheader242:                              ; preds = %vector.memcheck, %.split.preheader
  br label %.split

vector.memcheck:                                  ; preds = %.split.preheader
  %i.m = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.n
  %bound0.a = icmp ult ptr %0, %i.m
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound051 = icmp ult ptr %i.j, %4
  %bound152 = icmp ult ptr %1, %i.m
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %0, %4
  %bound155 = icmp ult ptr %1, %i.n
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  br i1 %conflict.rdx57, label %.split.preheader242, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %wide.load = load <4 x i8>, ptr %i.o, align 1, !alias.scope !218
  %wide.load58 = load <4 x i8>, ptr %i.p, align 1, !alias.scope !218
  %i.q = icmp slt <4 x i8> %wide.load, zeroinitializer
  %i.r = icmp slt <4 x i8> %wide.load58, zeroinitializer
  %i.s = shufflevector <4 x i1> %i.r, <4 x i1> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = bitcast <8 x i1> %i.s to i8
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.j, align 4, !alias.scope !219, !noalias !220
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store <4 x i8> zeroinitializer, ptr %i.u, align 1, !alias.scope !221, !noalias !218
  store <4 x i8> zeroinitializer, ptr %i.v, align 1, !alias.scope !221, !noalias !218
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %i.g
  br i1 %i.w, label %.split18.us, label %vector.body, !llvm.loop !198

.split.us:                                        ; preds = %bb.a
  %i.x = icmp slt i32 %i.i, 0
  br i1 %i.x, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check188 = icmp samesign ult i32 %.v.v.i, 16
  br i1 %min.iters.check188, label %.split.us.split.us.preheader234, label %vector.memcheck189

.split.us.split.us.preheader234:                  ; preds = %vector.memcheck189, %.split.us.split.us.preheader
  br label %.split.us.split.us

vector.memcheck189:                               ; preds = %.split.us.split.us.preheader
  %i.y = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %bound0190 = icmp ult ptr %i.j, %i.z
  %bound0190.a = icmp ult ptr %0, %i.y
  %found.conflict192 = and i1 %bound0190, %bound0190.a
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0193 = icmp ult ptr %i.j, %5
  %bound1194 = icmp ult ptr %1, %i.y
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  %bound0197 = icmp ult ptr %0, %5
  %bound1198 = icmp ult ptr %1, %i.z
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  br i1 %conflict.rdx200, label %.split.us.split.us.preheader234, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck189
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %bb.e, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next227, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index206 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %wide.load207 = load <4 x i8>, ptr %i.aa, align 1, !alias.scope !222 ; 2 uses
  %wide.load208 = load <4 x i8>, ptr %i.ab, align 1, !alias.scope !222 ; 2 uses
  %i.ac = icmp slt <4 x i8> %wide.load207, zeroinitializer ; 2 uses
  %i.ad = icmp slt <4 x i8> %wide.load208, zeroinitializer ; 2 uses
  %i.ae = zext nneg <4 x i8> %wide.load207 to <4 x i32>
  %i.af = zext nneg <4 x i8> %wide.load208 to <4 x i32>
  %i.ag = lshr <4 x i32> %i.ae, %broadcast.splat204
  %i.ah = lshr <4 x i32> %i.af, %broadcast.splat204
  %i.ai = trunc nuw nsw <4 x i32> %i.ag to <4 x i8>
  %i.aj = trunc nuw nsw <4 x i32> %i.ah to <4 x i8>
  %i.ak = shufflevector <4 x i1> %i.ad, <4 x i1> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.al = bitcast <8 x i1> %i.ak to i8
  %.not233 = icmp eq i8 %i.al, 0
  br i1 %.not233, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body205
  store i32 1, ptr %i.j, align 4, !alias.scope !223, !noalias !224
  br label %bb.e

bb.e:                                             ; preds = %vector.body205, %bb.d
  %predphi225 = select <4 x i1> %i.ac, <4 x i8> zeroinitializer, <4 x i8> %i.ai
  %predphi226 = select <4 x i1> %i.ad, <4 x i8> zeroinitializer, <4 x i8> %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %index206 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store <4 x i8> %predphi225, ptr %i.am, align 1, !alias.scope !225, !noalias !222
  store <4 x i8> %predphi226, ptr %i.an, align 1, !alias.scope !225, !noalias !222
  %index.next227 = add nuw i64 %index206, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next227, %i.g
  br i1 %i.ao, label %.split18.us, label %vector.body205, !llvm.loop !203

.split.us.split.us:                               ; preds = %do_suqrshl_bhs.exit.us.us.1, %.split.us.split.us.preheader234
  %.016.us.us = phi i64 [ 0, %.split.us.split.us.preheader234 ], [ %i.be, %do_suqrshl_bhs.exit.us.us.1 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.split.us
  %i.as = zext nneg i8 %i.aq to i32
  %i.at = lshr i32 %i.as, %i.l
  %i.au = trunc nuw nsw i32 %i.at to i8
  br label %do_suqrshl_bhs.exit.us.us

bb.g:                                             ; preds = %.split.us.split.us
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us

do_suqrshl_bhs.exit.us.us:                        ; preds = %bb.g, %bb.f
  %.0.i.us.us = phi i8 [ 0, %bb.g ], [ %i.au, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %.0.i.us.us, ptr %i.av, align 1
  %i.aw = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = icmp slt i8 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  %i.ba = zext nneg i8 %i.ay to i32
  %i.bb = lshr i32 %i.ba, %i.l
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  br label %do_suqrshl_bhs.exit.us.us.1

bb.i:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us.1

do_suqrshl_bhs.exit.us.us.1:                      ; preds = %bb.i, %bb.h
  %.0.i.us.us.1 = phi i8 [ 0, %bb.i ], [ %i.bc, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i8 %.0.i.us.us.1, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %.016.us.us, 2          ; 2 uses
  %exitcond27.not.1 = icmp eq i64 %i.be, %i.g
  br i1 %exitcond27.not.1, label %.split18.us, label %.split.us.split.us, !llvm.loop !204

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.k, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check88 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check88, label %.split.us.split.split.preheader239, label %vector.memcheck89

.split.us.split.split.preheader239:               ; preds = %vector.memcheck89, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck89:                                ; preds = %.split.us.split.split.preheader
  %i.bf = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound090 = icmp ult ptr %i.j, %i.bg
  %bound090.a = icmp ult ptr %0, %i.bf
  %found.conflict92 = and i1 %bound090, %bound090.a
  %6 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound093 = icmp ult ptr %i.j, %6
  %bound194 = icmp ult ptr %1, %i.bf
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  %bound097 = icmp ult ptr %0, %6
  %bound198 = icmp ult ptr %1, %i.bg
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  br i1 %conflict.rdx100, label %.split.us.split.split.preheader239, label %vector.body103

vector.body103:                                   ; preds = %vector.memcheck89, %bb.k
  %index104 = phi i64 [ %index.next123, %bb.k ], [ 0, %vector.memcheck89 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %index104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %wide.load105 = load <4 x i8>, ptr %i.bh, align 1, !alias.scope !226 ; 2 uses
  %wide.load106 = load <4 x i8>, ptr %i.bi, align 1, !alias.scope !226 ; 2 uses
  %i.bj = icmp sgt <4 x i8> %wide.load105, zeroinitializer
  %i.bk = icmp sgt <4 x i8> %wide.load106, zeroinitializer
  %i.bl = icmp ne <4 x i8> %wide.load105, zeroinitializer
  %i.bm = icmp ne <4 x i8> %wide.load106, zeroinitializer
  %i.bn = shufflevector <4 x i1> %i.bm, <4 x i1> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %.not231 = icmp eq i8 %i.bo, 0
  br i1 %.not231, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vector.body103
  store i32 1, ptr %i.j, align 4, !alias.scope !227, !noalias !228
  br label %bb.k

bb.k:                                             ; preds = %vector.body103, %bb.j
  %i.bp = sext <4 x i1> %i.bj to <4 x i8>
  %i.bq = sext <4 x i1> %i.bk to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %index104 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store <4 x i8> %i.bp, ptr %i.br, align 1, !alias.scope !229, !noalias !226
  store <4 x i8> %i.bq, ptr %i.bs, align 1, !alias.scope !229, !noalias !226
  %index.next123 = add nuw i64 %index104, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next123, %i.g
  br i1 %i.bt, label %.split18.us, label %vector.body103, !llvm.loop !209

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check142 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check142, label %.split.us.split.split.us.preheader236, label %vector.memcheck143

.split.us.split.split.us.preheader236:            ; preds = %vector.memcheck143, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck143:                               ; preds = %.split.us.split.split.us.preheader
  %i.bu = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound0144 = icmp ult ptr %i.j, %i.bv
  %bound0144.a = icmp ult ptr %0, %i.bu
  %found.conflict146 = and i1 %bound0144, %bound0144.a
  %7 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0147 = icmp ult ptr %i.j, %7
  %bound1148 = icmp ult ptr %1, %i.bu
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  %bound0151 = icmp ult ptr %0, %7
  %bound1152 = icmp ult ptr %1, %i.bv
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %.split.us.split.split.us.preheader236, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck143
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body157

vector.body157:                                   ; preds = %bb.m, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next169, %bb.m ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %index158
  %wide.load159 = load <4 x i8>, ptr %i.bw, align 1, !alias.scope !230 ; 2 uses
  %i.bx = icmp slt <4 x i8> %wide.load159, zeroinitializer ; 2 uses
  %i.by = xor <4 x i1> %i.bx, splat (i1 true)
  %i.bz = zext nneg <4 x i8> %wide.load159 to <4 x i32>
  %i.ca = shl nuw nsw <4 x i32> %i.bz, %broadcast.splat ; 2 uses
  %i.cb = icmp samesign ugt <4 x i32> %i.ca, splat (i32 255) ; 2 uses
  %i.cc = select <4 x i1> %i.by, <4 x i1> %i.cb, <4 x i1> zeroinitializer
  %i.cd = select <4 x i1> %i.bx, <4 x i1> splat (i1 true), <4 x i1> %i.cb ; 2 uses
  %predphi = select <4 x i1> %i.cc, <4 x i32> splat (i32 255), <4 x i32> zeroinitializer
  %i.ce = bitcast <4 x i1> %i.cd to i4
  %.not232 = icmp eq i4 %i.ce, 0
  br i1 %.not232, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body157
  store i32 1, ptr %i.j, align 4, !alias.scope !231, !noalias !232
  br label %bb.m

bb.m:                                             ; preds = %vector.body157, %bb.l
  %predphi168 = select <4 x i1> %i.cd, <4 x i32> %predphi, <4 x i32> %i.ca
  %i.cf = trunc nuw <4 x i32> %predphi168 to <4 x i8>
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %index158
  store <4 x i8> %i.cf, ptr %i.cg, align 1, !alias.scope !233, !noalias !230
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next169, %i.g
  br i1 %i.ch, label %.split18.us, label %vector.body157, !llvm.loop !214

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader236
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader236 ], [ %i.cz, %do_suqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %i.ck = icmp slt i8 %i.cj, 0
  br i1 %i.ck, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cl = zext nneg i8 %i.cj to i32
  %i.cm = shl nuw nsw i32 %i.cl, %i.i             ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.cm, 255
  br i1 %i.cn, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us21.ph = phi i32 [ 255, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20:                      ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split, %bb.n
  %.0.i.us.us21 = phi i32 [ %i.cm, %bb.n ], [ %.0.i.us.us21.ph, %do_suqrshl_bhs.exit.us.us20.sink.split ]
  %i.co = trunc nuw i32 %.0.i.us.us21 to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = icmp slt i8 %i.cs, 0
  br i1 %i.ct, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us20
  %i.cu = zext nneg i8 %i.cs to i32
  %i.cv = shl nuw nsw i32 %i.cu, %i.i             ; 2 uses
  %i.cw = icmp samesign ugt i32 %i.cv, 255
  br i1 %i.cw, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us20
  %.0.i.us.us21.ph.1 = phi i32 [ 255, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us20 ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.1:                    ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split.1, %bb.o
  %.0.i.us.us21.1 = phi i32 [ %i.cv, %bb.o ], [ %.0.i.us.us21.ph.1, %do_suqrshl_bhs.exit.us.us20.sink.split.1 ]
  %i.cx = trunc nuw i32 %.0.i.us.us21.1 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.cz, %i.g
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !215

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader239
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader239 ], [ %i.dj, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.db = load i8, ptr %i.da, align 1             ; 2 uses
  %i.dc = icmp slt i8 %i.db, 0
  br i1 %i.dc, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i8 %i.db, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i8 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i8 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.0.i.us, ptr %i.dd, align 1
  %i.de = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %i.dh = icmp slt i8 %i.dg, 0
  br i1 %i.dh, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i8 %i.dg, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i8 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i8 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.de
  store i8 %.0.i.us.1, ptr %i.di, align 1
  %i.dj = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.dj, %i.g
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !216

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader242
  %.016 = phi i64 [ 0, %.split.preheader242 ], [ %i.dt, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp slt i8 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 0, ptr %i.dn, align 1
  %i.do = or disjoint i64 %.016, 1                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp slt i8 %i.dq, 0
  br i1 %i.dr, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.do
  store i8 0, ptr %i.ds, align 1
  %i.dt = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dt, %i.g
  br i1 %exitcond.not.1, label %.split18.us, label %.split, !llvm.loop !217

.split18.us:                                      ; preds = %bb.c, %do_suqrshl_bhs.exit.1, %bb.k, %do_suqrshl_bhs.exit.us.1, %bb.m, %do_suqrshl_bhs.exit.us.us20.1, %bb.e, %do_suqrshl_bhs.exit.us.us.1
  %i.du = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.du, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dv = add nuw nsw i32 %i.e, 8
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr i8, ptr %0, i64 %i.g
  %i.dy = xor i64 %i.g, -1
  %i.dz = add nsw i64 %i.dy, %i.dw
  %i.ea = and i64 %i.dz, -8
  %i.eb = add nsw i64 %i.ea, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %i.eb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %1, 16                           ; 2 uses
  %i.b = ashr exact i32 %i.a, 16                  ; 3 uses
  %i.c = shl i32 %2, 24
  %i.d = ashr exact i32 %i.c, 24                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.d, -16
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i32 %i.d, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i32 0, %i.d
  %i.i = lshr i32 %i.b, %i.h
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i32 %i.d, 16
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = shl nuw nsw i32 %i.b, %i.d               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.i, label %do_suqrshl_bhs.exit

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.k, %bb.g ], [ %i.i, %bb.e ], [ 65535, %bb.i ], [ 0, %bb.h ]
  %i.m = ashr i32 %1, 16                          ; 4 uses
  %i.n = shl i32 %2, 8
  %i.o = ashr i32 %i.n, 24                        ; 5 uses
  %i.p = icmp slt i32 %i.m, 0
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit13

bb.k:                                             ; preds = %do_suqrshl_bhs.exit
  %.not.i.i11 = icmp sgt i32 %i.o, -16
  br i1 %.not.i.i11, label %bb.l, label %do_suqrshl_bhs.exit13

bb.l:                                             ; preds = %bb.k
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.r = sub nsw i32 0, %i.o
  %i.s = lshr i32 %i.m, %i.r
  br label %do_suqrshl_bhs.exit13

bb.n:                                             ; preds = %bb.l
  %i.t = icmp samesign ult i32 %i.o, 16
  br i1 %i.t, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.u = shl nuw nsw i32 %i.m, %i.o               ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 65535
  br i1 %i.v, label %bb.q, label %do_suqrshl_bhs.exit13

bb.p:                                             ; preds = %bb.n
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %do_suqrshl_bhs.exit13, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.e, align 4
  br label %do_suqrshl_bhs.exit13

do_suqrshl_bhs.exit13:                            ; preds = %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i12 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.u, %bb.o ], [ %i.s, %bb.m ], [ 65535, %bb.q ], [ 0, %bb.p ]
  %.sroa.5.0.insert.ext = shl nuw i32 %.0.i12, 16
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.ext, %.0.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 11 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 11 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 7 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.j, -16
  %i.l = icmp samesign ult i32 %i.j, 16
  %i.m = sub nsw i32 0, %i.j                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %.split.preheader239.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.preheader
  %i.n = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.o
  %bound0.a = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound050 = icmp ult ptr %i.k, %4
  %bound151 = icmp ult ptr %1, %i.n
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  %bound053 = icmp ult ptr %0, %4
  %bound154 = icmp ult ptr %1, %i.o
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  br i1 %conflict.rdx56, label %.split.preheader239.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %wide.load = load <4 x i16>, ptr %i.p, align 2, !alias.scope !258
  %wide.load57 = load <4 x i16>, ptr %i.q, align 2, !alias.scope !258
  %i.r = icmp slt <4 x i16> %wide.load, zeroinitializer
  %i.s = icmp slt <4 x i16> %wide.load57, zeroinitializer
  %i.t = shufflevector <4 x i1> %i.s, <4 x i1> %i.r, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = bitcast <8 x i1> %i.t to i8
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !259, !noalias !260
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store <4 x i16> zeroinitializer, ptr %i.v, align 2, !alias.scope !261, !noalias !258
  store <4 x i16> zeroinitializer, ptr %i.w, align 2, !alias.scope !261, !noalias !258
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.preheader239.new

.split.preheader239.new:                          ; preds = %vector.memcheck, %.split.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.y = icmp slt i32 %i.j, 0
  br i1 %i.y, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check187 = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check187, label %.split.us.split.us.preheader233.new, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.split.us.split.us.preheader
  %i.z = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound0189 = icmp ult ptr %i.k, %i.aa
  %bound0189.a = icmp ult ptr %0, %i.z
  %found.conflict191 = and i1 %bound0189, %bound0189.a
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0192 = icmp ult ptr %i.k, %5
  %bound1193 = icmp ult ptr %1, %i.z
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  %bound0196 = icmp ult ptr %0, %5
  %bound1197 = icmp ult ptr %1, %i.aa
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  br i1 %conflict.rdx199, label %.split.us.split.us.preheader233.new, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck188
  %n.vec201 = and i64 %i.h, 1073741816            ; 3 uses
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %bb.e, %vector.ph200
  %index205 = phi i64 [ 0, %vector.ph200 ], [ %index.next226, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index205 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load206 = load <4 x i16>, ptr %i.ab, align 2, !alias.scope !262 ; 2 uses
  %wide.load207 = load <4 x i16>, ptr %i.ac, align 2, !alias.scope !262 ; 2 uses
  %i.ad = icmp slt <4 x i16> %wide.load206, zeroinitializer ; 2 uses
  %i.ae = icmp slt <4 x i16> %wide.load207, zeroinitializer ; 2 uses
  %i.af = zext nneg <4 x i16> %wide.load206 to <4 x i32>
  %i.ag = zext nneg <4 x i16> %wide.load207 to <4 x i32>
  %i.ah = lshr <4 x i32> %i.af, %broadcast.splat203
  %i.ai = lshr <4 x i32> %i.ag, %broadcast.splat203
  %i.aj = trunc nuw nsw <4 x i32> %i.ah to <4 x i16>
  %i.ak = trunc nuw nsw <4 x i32> %i.ai to <4 x i16>
  %i.al = shufflevector <4 x i1> %i.ae, <4 x i1> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = bitcast <8 x i1> %i.al to i8
  %.not232 = icmp eq i8 %i.am, 0
  br i1 %.not232, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body204
  store i32 1, ptr %i.k, align 4, !alias.scope !263, !noalias !264
  br label %bb.e

bb.e:                                             ; preds = %vector.body204, %bb.d
  %predphi224 = select <4 x i1> %i.ad, <4 x i16> zeroinitializer, <4 x i16> %i.aj
  %predphi225 = select <4 x i1> %i.ae, <4 x i16> zeroinitializer, <4 x i16> %i.ak
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index205 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <4 x i16> %predphi224, ptr %i.an, align 2, !alias.scope !265, !noalias !262
  store <4 x i16> %predphi225, ptr %i.ao, align 2, !alias.scope !265, !noalias !262
  %index.next226 = add nuw i64 %index205, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next226, %n.vec201
  br i1 %i.ap, label %middle.block227, label %vector.body204, !llvm.loop !243

middle.block227:                                  ; preds = %bb.e
  %cmp.n228 = icmp eq i64 %i.h, %n.vec201
  br i1 %cmp.n228, label %.split17.us, label %.split.us.split.us.preheader233.new

.split.us.split.us.preheader233.new:              ; preds = %vector.memcheck188, %.split.us.split.us.preheader, %middle.block227
  %.015.us.us.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.split.us.split.us.preheader ], [ %n.vec201, %middle.block227 ]
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %do_suqrshl_bhs.exit.us.us.1, %.split.us.split.us.preheader233.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %.split.us.split.us.preheader233.new ], [ %i.bf, %do_suqrshl_bhs.exit.us.us.1 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = icmp slt i16 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.split.us
  %i.at = zext nneg i16 %i.ar to i32
  %i.au = lshr i32 %i.at, %i.m
  %i.av = trunc nuw nsw i32 %i.au to i16
  br label %do_suqrshl_bhs.exit.us.us

bb.g:                                             ; preds = %.split.us.split.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us

do_suqrshl_bhs.exit.us.us:                        ; preds = %bb.g, %bb.f
  %.0.i.us.us = phi i16 [ 0, %bb.g ], [ %i.av, %bb.f ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %.0.i.us.us, ptr %i.aw, align 2
  %i.ax = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %i.ba = icmp slt i16 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  %i.bb = zext nneg i16 %i.az to i32
  %i.bc = lshr i32 %i.bb, %i.m
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  br label %do_suqrshl_bhs.exit.us.us.1

bb.i:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us.1

do_suqrshl_bhs.exit.us.us.1:                      ; preds = %bb.i, %bb.h
  %.0.i.us.us.1 = phi i16 [ 0, %bb.i ], [ %i.bd, %bb.h ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ax
  store i16 %.0.i.us.us.1, ptr %i.be, align 2
  %i.bf = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.bf, %i.h
  br i1 %exitcond26.not.1, label %.split17.us, label %.split.us.split.us, !llvm.loop !244

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check87 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check87, label %.split.us.split.split.preheader237.new, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.split.us.split.split.preheader
  %i.bg = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound089 = icmp ult ptr %i.k, %i.bh
  %bound089.a = icmp ult ptr %0, %i.bg
  %found.conflict91 = and i1 %bound089, %bound089.a
  %6 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound092 = icmp ult ptr %i.k, %6
  %bound193 = icmp ult ptr %1, %i.bg
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %found.conflict91, %found.conflict94
  %bound096 = icmp ult ptr %0, %6
  %bound197 = icmp ult ptr %1, %i.bh
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  br i1 %conflict.rdx99, label %.split.us.split.split.preheader237.new, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %n.vec101 = and i64 %i.h, 1073741816            ; 3 uses
  br label %vector.body102

vector.body102:                                   ; preds = %bb.k, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next122, %bb.k ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index103 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.load104 = load <4 x i16>, ptr %i.bi, align 2, !alias.scope !266 ; 2 uses
  %wide.load105 = load <4 x i16>, ptr %i.bj, align 2, !alias.scope !266 ; 2 uses
  %i.bk = icmp sgt <4 x i16> %wide.load104, zeroinitializer
  %i.bl = icmp sgt <4 x i16> %wide.load105, zeroinitializer
  %i.bm = icmp ne <4 x i16> %wide.load104, zeroinitializer
  %i.bn = icmp ne <4 x i16> %wide.load105, zeroinitializer
  %i.bo = shufflevector <4 x i1> %i.bn, <4 x i1> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bp = bitcast <8 x i1> %i.bo to i8
  %.not230 = icmp eq i8 %i.bp, 0
  br i1 %.not230, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vector.body102
  store i32 1, ptr %i.k, align 4, !alias.scope !267, !noalias !268
  br label %bb.k

bb.k:                                             ; preds = %vector.body102, %bb.j
  %i.bq = sext <4 x i1> %i.bk to <4 x i16>
  %i.br = sext <4 x i1> %i.bl to <4 x i16>
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index103 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <4 x i16> %i.bq, ptr %i.bs, align 2, !alias.scope !269, !noalias !266
  store <4 x i16> %i.br, ptr %i.bt, align 2, !alias.scope !269, !noalias !266
  %index.next122 = add nuw i64 %index103, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next122, %n.vec101
  br i1 %i.bu, label %middle.block123, label %vector.body102, !llvm.loop !249

middle.block123:                                  ; preds = %bb.k
  %cmp.n124 = icmp eq i64 %i.h, %n.vec101
  br i1 %cmp.n124, label %.split17.us, label %.split.us.split.split.preheader237.new

.split.us.split.split.preheader237.new:           ; preds = %vector.memcheck88, %.split.us.split.split.preheader, %middle.block123
  %.015.us.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec101, %middle.block123 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check141 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check141, label %.split.us.split.split.us.preheader234.new, label %vector.memcheck142

.split.us.split.split.us.preheader234.new:        ; preds = %.split.us.split.split.us.preheader, %vector.memcheck142
  br label %.split.us.split.split.us

vector.memcheck142:                               ; preds = %.split.us.split.split.us.preheader
  %i.bv = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound0143 = icmp ult ptr %i.k, %i.bw
  %bound0143.a = icmp ult ptr %0, %i.bv
  %found.conflict145 = and i1 %bound0143, %bound0143.a
  %7 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0146 = icmp ult ptr %i.k, %7
  %bound1147 = icmp ult ptr %1, %i.bv
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %found.conflict145, %found.conflict148
  %bound0150 = icmp ult ptr %0, %7
  %bound1151 = icmp ult ptr %1, %i.bw
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %.split.us.split.split.us.preheader234.new, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck142
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body156

vector.body156:                                   ; preds = %bb.m, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next168, %bb.m ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index157
  %wide.load158 = load <4 x i16>, ptr %i.bx, align 2, !alias.scope !270 ; 2 uses
  %i.by = icmp slt <4 x i16> %wide.load158, zeroinitializer ; 2 uses
  %i.bz = xor <4 x i1> %i.by, splat (i1 true)
  %i.ca = zext nneg <4 x i16> %wide.load158 to <4 x i32>
  %i.cb = shl nuw nsw <4 x i32> %i.ca, %broadcast.splat ; 2 uses
  %i.cc = icmp samesign ugt <4 x i32> %i.cb, splat (i32 65535) ; 2 uses
  %i.cd = select <4 x i1> %i.bz, <4 x i1> %i.cc, <4 x i1> zeroinitializer
  %i.ce = select <4 x i1> %i.by, <4 x i1> splat (i1 true), <4 x i1> %i.cc ; 2 uses
  %predphi = select <4 x i1> %i.cd, <4 x i32> splat (i32 65535), <4 x i32> zeroinitializer
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %.not231 = icmp eq i4 %i.cf, 0
  br i1 %.not231, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body156
  store i32 1, ptr %i.k, align 4, !alias.scope !271, !noalias !272
  br label %bb.m

bb.m:                                             ; preds = %vector.body156, %bb.l
  %predphi167 = select <4 x i1> %i.ce, <4 x i32> %predphi, <4 x i32> %i.cb
  %i.cg = trunc nuw <4 x i32> %predphi167 to <4 x i16>
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index157
  store <4 x i16> %i.cg, ptr %i.ch, align 2, !alias.scope !273, !noalias !270
  %index.next168 = add nuw i64 %index157, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next168, %i.h
  br i1 %i.ci, label %.split17.us, label %vector.body156, !llvm.loop !254

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader234.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader234.new ], [ %i.da, %do_suqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.us.preheader234.new ], [ %niter.next.1, %do_suqrshl_bhs.exit.us.us19.1 ]
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.ck = load i16, ptr %i.cj, align 2            ; 2 uses
  %i.cl = icmp slt i16 %i.ck, 0
  br i1 %i.cl, label %do_suqrshl_bhs.exit.us.us19.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cm = zext nneg i16 %i.ck to i32
  %i.cn = shl nuw nsw i32 %i.cm, %i.j             ; 2 uses
  %i.co = icmp samesign ugt i32 %i.cn, 65535
  br i1 %i.co, label %do_suqrshl_bhs.exit.us.us19.sink.split, label %do_suqrshl_bhs.exit.us.us19

do_suqrshl_bhs.exit.us.us19.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us20.ph = phi i32 [ 65535, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us19

do_suqrshl_bhs.exit.us.us19:                      ; preds = %do_suqrshl_bhs.exit.us.us19.sink.split, %bb.n
  %.0.i.us.us20 = phi i32 [ %i.cn, %bb.n ], [ %.0.i.us.us20.ph, %do_suqrshl_bhs.exit.us.us19.sink.split ]
  %i.cp = trunc nuw i32 %.0.i.us.us20 to i16
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.cp, ptr %i.cq, align 2
  %i.cr = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.cu = icmp slt i16 %i.ct, 0
  br i1 %i.cu, label %do_suqrshl_bhs.exit.us.us19.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us19
  %i.cv = zext nneg i16 %i.ct to i32
  %i.cw = shl nuw nsw i32 %i.cv, %i.j             ; 2 uses
  %i.cx = icmp samesign ugt i32 %i.cw, 65535
  br i1 %i.cx, label %do_suqrshl_bhs.exit.us.us19.sink.split.1, label %do_suqrshl_bhs.exit.us.us19.1

do_suqrshl_bhs.exit.us.us19.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us19
  %.0.i.us.us20.ph.1 = phi i32 [ 65535, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us19 ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us19.1

do_suqrshl_bhs.exit.us.us19.1:                    ; preds = %do_suqrshl_bhs.exit.us.us19.sink.split.1, %bb.o
  %.0.i.us.us20.1 = phi i32 [ %i.cw, %bb.o ], [ %.0.i.us.us20.ph.1, %do_suqrshl_bhs.exit.us.us19.sink.split.1 ]
  %i.cy = trunc nuw i32 %.0.i.us.us20.1 to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  store i16 %i.cy, ptr %i.cz, align 2
  %i.da = add nuw nsw i64 %.015.us.us18, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !255

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader237.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader237.new ], [ %i.dk, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dc = load i16, ptr %i.db, align 2            ; 2 uses
  %i.dd = icmp slt i16 %i.dc, 0
  br i1 %i.dd, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i16 %i.dc, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i16 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i16 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.0.i.us, ptr %i.de, align 2
  %i.df = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2            ; 2 uses
  %i.di = icmp slt i16 %i.dh, 0
  br i1 %i.di, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i16 %i.dh, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i16 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i16 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.df
  store i16 %.0.i.us.1, ptr %i.dj, align 2
  %i.dk = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.dk, %i.h
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !256

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader239.new
  %.015 = phi i64 [ %.015.ph, %.split.preheader239.new ], [ %i.du, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.dm = load i16, ptr %i.dl, align 2
  %i.dn = icmp slt i16 %i.dm, 0
  br i1 %i.dn, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 0, ptr %i.do, align 2
  %i.dp = or disjoint i64 %.015, 1                ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = icmp slt i16 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dp
  store i16 0, ptr %i.dt, align 2
  %i.du = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.du, %i.h
  br i1 %exitcond.not.1, label %.split17.us, label %.split, !llvm.loop !257

.split17.us:                                      ; preds = %do_suqrshl_bhs.exit.1, %do_suqrshl_bhs.exit.us.1, %bb.m, %do_suqrshl_bhs.exit.us.us19.1, %do_suqrshl_bhs.exit.us.us.1, %middle.block, %middle.block123, %middle.block227
  %i.dv = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dv, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.dw = add nuw nsw i32 %i.e, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr i8, ptr %0, i64 %i.g
  %i.dz = xor i64 %i.g, -1
  %i.ea = add nsw i64 %i.dz, %i.dx
  %i.eb = and i64 %i.ea, -8
  %i.ec = add nsw i64 %i.eb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dy, i8 0, i64 %i.ec, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 24
  %i.b = ashr exact i32 %i.a, 24                  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.b, -32
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %i.b
  %i.g = lshr i32 %1, %i.f
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %i.b, 32
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = shl i32 %1, %i.b                         ; 2 uses
  %i.j = lshr exact i32 %i.i, %i.b
  %.not2 = icmp eq i32 %i.j, %1
  br i1 %.not2, label %do_suqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ -1, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qshlu_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %2, 56
  %i.b = ashr exact i64 %i.a, 56                  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_d.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i64 %i.b, -64
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_d.exit

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i64 0, %i.b
  %i.g = lshr i64 %1, %i.f
  br label %do_suqrshl_d.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i64 %i.b, 64
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = shl i64 %1, %i.b                         ; 2 uses
  %i.j = lshr exact i64 %i.i, %i.b
  %.not2 = icmp eq i64 %i.j, %1
  br i1 %.not2, label %do_suqrshl_d.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %do_suqrshl_d.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_d.exit

do_suqrshl_d.exit:                                ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.g, %bb.e ], [ -1, %bb.i ], [ %i.i, %bb.g ]
  ret i64 %.0.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 11 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 12 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 9 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.j, -32
  %i.l = icmp samesign ult i32 %i.j, 32
  %i.m = sub nsw i32 0, %i.j                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.preheader239.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.preheader
  %i.n = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.o
  %bound0.a = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound051 = icmp ult ptr %i.k, %4
  %bound152 = icmp ult ptr %1, %i.n
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %0, %4
  %bound155 = icmp ult ptr %1, %i.o
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  br i1 %conflict.rdx57, label %.split.preheader239.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.q = load <8 x i32>, ptr %i.p, align 4, !alias.scope !298
  %i.r = shufflevector <8 x i32> %i.q, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.s = icmp slt <8 x i32> %i.r, zeroinitializer
  %i.t = bitcast <8 x i1> %i.s to i8
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !299, !noalias !300
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> zeroinitializer, ptr %i.u, align 4, !alias.scope !301, !noalias !298
  store <4 x i32> zeroinitializer, ptr %i.v, align 4, !alias.scope !301, !noalias !298
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split18.us, label %.split.preheader239.new

.split.preheader239.new:                          ; preds = %vector.memcheck, %.split.preheader, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.x = icmp slt i32 %i.j, 0
  br i1 %i.x, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check188 = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check188, label %.split.us.split.us.preheader234.new, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.split.us.split.us.preheader
  %i.y = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %bound0190 = icmp ult ptr %i.k, %i.z
  %bound0190.a = icmp ult ptr %0, %i.y
  %found.conflict192 = and i1 %bound0190, %bound0190.a
  %5 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0193 = icmp ult ptr %i.k, %5
  %bound1194 = icmp ult ptr %1, %i.y
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  %bound0197 = icmp ult ptr %0, %5
  %bound1198 = icmp ult ptr %1, %i.z
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  br i1 %conflict.rdx200, label %.split.us.split.us.preheader234.new, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck189
  %n.vec202 = and i64 %i.h, 536870904             ; 3 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %bb.e, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next227, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index206 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load207 = load <4 x i32>, ptr %i.aa, align 4, !alias.scope !302 ; 2 uses
  %wide.load208 = load <4 x i32>, ptr %i.ab, align 4, !alias.scope !302 ; 2 uses
  %i.ac = icmp slt <4 x i32> %wide.load207, zeroinitializer ; 2 uses
  %i.ad = icmp slt <4 x i32> %wide.load208, zeroinitializer ; 2 uses
  %i.ae = lshr <4 x i32> %wide.load207, %broadcast.splat204
  %i.af = lshr <4 x i32> %wide.load208, %broadcast.splat204
  %i.ag = shufflevector <4 x i1> %i.ad, <4 x i1> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = bitcast <8 x i1> %i.ag to i8
  %.not233 = icmp eq i8 %i.ah, 0
  br i1 %.not233, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body205
  store i32 1, ptr %i.k, align 4, !alias.scope !303, !noalias !304
  br label %bb.e

bb.e:                                             ; preds = %vector.body205, %bb.d
  %predphi225 = select <4 x i1> %i.ac, <4 x i32> zeroinitializer, <4 x i32> %i.ae
  %predphi226 = select <4 x i1> %i.ad, <4 x i32> zeroinitializer, <4 x i32> %i.af
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index206 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %predphi225, ptr %i.ai, align 4, !alias.scope !305, !noalias !302
  store <4 x i32> %predphi226, ptr %i.aj, align 4, !alias.scope !305, !noalias !302
  %index.next227 = add nuw i64 %index206, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next227, %n.vec202
  br i1 %i.ak, label %middle.block228, label %vector.body205, !llvm.loop !283

middle.block228:                                  ; preds = %bb.e
  %cmp.n229 = icmp eq i64 %i.h, %n.vec202
  br i1 %cmp.n229, label %.split18.us, label %.split.us.split.us.preheader234.new

.split.us.split.us.preheader234.new:              ; preds = %vector.memcheck189, %.split.us.split.us.preheader, %middle.block228
  %.016.us.us.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.split.us.split.us.preheader ], [ %n.vec202, %middle.block228 ]
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %do_suqrshl_bhs.exit.us.us.1, %.split.us.split.us.preheader234.new
  %.016.us.us = phi i64 [ %.016.us.us.ph, %.split.us.split.us.preheader234.new ], [ %i.aw, %do_suqrshl_bhs.exit.us.us.1 ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us.us
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.split.us
  %i.ao = lshr i32 %i.am, %i.m
  br label %do_suqrshl_bhs.exit.us.us

bb.g:                                             ; preds = %.split.us.split.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us

do_suqrshl_bhs.exit.us.us:                        ; preds = %bb.g, %bb.f
  %.0.i.us.us = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.f ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us.us
  store i32 %.0.i.us.us, ptr %i.ap, align 4
  %i.aq = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  %i.au = lshr i32 %i.as, %i.m
  br label %do_suqrshl_bhs.exit.us.us.1

bb.i:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us.1

do_suqrshl_bhs.exit.us.us.1:                      ; preds = %bb.i, %bb.h
  %.0.i.us.us.1 = phi i32 [ 0, %bb.i ], [ %i.au, %bb.h ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  store i32 %.0.i.us.us.1, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.016.us.us, 2          ; 2 uses
  %exitcond27.not.1 = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond27.not.1, label %.split18.us, label %.split.us.split.us, !llvm.loop !284

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check88 = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check88, label %.split.us.split.split.preheader237.new, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.split.us.split.split.preheader
  %i.ax = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound090 = icmp ult ptr %i.k, %i.ay
  %bound090.a = icmp ult ptr %0, %i.ax
  %found.conflict92 = and i1 %bound090, %bound090.a
  %6 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound093 = icmp ult ptr %i.k, %6
  %bound194 = icmp ult ptr %1, %i.ax
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  %bound097 = icmp ult ptr %0, %6
  %bound198 = icmp ult ptr %1, %i.ay
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  br i1 %conflict.rdx100, label %.split.us.split.split.preheader237.new, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck89
  %n.vec102 = and i64 %i.h, 536870904             ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %bb.k, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next123, %bb.k ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load105 = load <4 x i32>, ptr %i.az, align 4, !alias.scope !306 ; 2 uses
  %wide.load106 = load <4 x i32>, ptr %i.ba, align 4, !alias.scope !306 ; 2 uses
  %i.bb = icmp sgt <4 x i32> %wide.load105, zeroinitializer
  %i.bc = icmp sgt <4 x i32> %wide.load106, zeroinitializer
  %i.bd = shufflevector <4 x i32> %wide.load106, <4 x i32> %wide.load105, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = icmp ne <8 x i32> %i.bd, zeroinitializer
  %i.bf = bitcast <8 x i1> %i.be to i8
  %.not231 = icmp eq i8 %i.bf, 0
  br i1 %.not231, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vector.body103
  store i32 1, ptr %i.k, align 4, !alias.scope !307, !noalias !308
  br label %bb.k

bb.k:                                             ; preds = %vector.body103, %bb.j
  %i.bg = sext <4 x i1> %i.bb to <4 x i32>
  %i.bh = sext <4 x i1> %i.bc to <4 x i32>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %i.bg, ptr %i.bi, align 4, !alias.scope !309, !noalias !306
  store <4 x i32> %i.bh, ptr %i.bj, align 4, !alias.scope !309, !noalias !306
  %index.next123 = add nuw i64 %index104, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next123, %n.vec102
  br i1 %i.bk, label %middle.block124, label %vector.body103, !llvm.loop !289

middle.block124:                                  ; preds = %bb.k
  %cmp.n125 = icmp eq i64 %i.h, %n.vec102
  br i1 %cmp.n125, label %.split18.us, label %.split.us.split.split.preheader237.new

.split.us.split.split.preheader237.new:           ; preds = %vector.memcheck89, %.split.us.split.split.preheader, %middle.block124
  %.016.us.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec102, %middle.block124 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check142 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check142, label %.split.us.split.split.us.preheader235.new, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.split.us.split.split.us.preheader
  %i.bl = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %bound0144 = icmp ult ptr %i.k, %i.bm
  %bound0144.a = icmp ult ptr %0, %i.bl
  %found.conflict146 = and i1 %bound0144, %bound0144.a
  %7 = getelementptr i8, ptr %1, i64 %i.g         ; 2 uses
  %bound0147 = icmp ult ptr %i.k, %7
  %bound1148 = icmp ult ptr %1, %i.bl
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  %bound0151 = icmp ult ptr %0, %7
  %bound1152 = icmp ult ptr %1, %i.bm
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %.split.us.split.split.us.preheader235.new, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck143
  %n.vec156 = and i64 %i.h, 536870908             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %bb.m, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next169, %bb.m ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index158
  %wide.load159 = load <4 x i32>, ptr %i.bn, align 4, !alias.scope !310 ; 3 uses
  %i.bo = icmp slt <4 x i32> %wide.load159, zeroinitializer ; 2 uses
  %i.bp = xor <4 x i1> %i.bo, splat (i1 true)
  %i.bq = shl <4 x i32> %wide.load159, %broadcast.splat ; 2 uses
  %i.br = lshr exact <4 x i32> %i.bq, %broadcast.splat
  %i.bs = icmp ne <4 x i32> %i.br, %wide.load159  ; 2 uses
  %i.bt = select <4 x i1> %i.bp, <4 x i1> %i.bs, <4 x i1> zeroinitializer
  %i.bu = select <4 x i1> %i.bo, <4 x i1> splat (i1 true), <4 x i1> %i.bs ; 2 uses
  %predphi = sext <4 x i1> %i.bt to <4 x i32>
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %.not232 = icmp eq i4 %i.bv, 0
  br i1 %.not232, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body157
  store i32 1, ptr %i.k, align 4, !alias.scope !311, !noalias !312
  br label %bb.m

bb.m:                                             ; preds = %vector.body157, %bb.l
  %predphi168 = select <4 x i1> %i.bu, <4 x i32> %predphi, <4 x i32> %i.bq
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index158
  store <4 x i32> %predphi168, ptr %i.bw, align 4, !alias.scope !313, !noalias !310
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next169, %n.vec156
  br i1 %i.bx, label %middle.block170, label %vector.body157, !llvm.loop !294

middle.block170:                                  ; preds = %bb.m
  %cmp.n171 = icmp eq i64 %i.h, %n.vec156
  br i1 %cmp.n171, label %.split18.us, label %.split.us.split.split.us.preheader235.new

.split.us.split.split.us.preheader235.new:        ; preds = %vector.memcheck143, %.split.us.split.split.us.preheader, %middle.block170
  %.016.us.us19.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec156, %middle.block170 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader235.new
  %.016.us.us19 = phi i64 [ %.016.us.us19.ph, %.split.us.split.split.us.preheader235.new ], [ %i.cl, %do_suqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us.us19
  %i.bz = load i32, ptr %i.by, align 4            ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cb = shl i32 %i.bz, %i.j                     ; 2 uses
  %i.cc = lshr exact i32 %i.cb, %i.j
  %.not15.us.us = icmp eq i32 %i.cc, %i.bz
  br i1 %.not15.us.us, label %do_suqrshl_bhs.exit.us.us20, label %do_suqrshl_bhs.exit.us.us20.sink.split

do_suqrshl_bhs.exit.us.us20.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us21.ph = phi i32 [ -1, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20:                      ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split, %bb.n
  %.0.i.us.us21 = phi i32 [ %i.cb, %bb.n ], [ %.0.i.us.us21.ph, %do_suqrshl_bhs.exit.us.us20.sink.split ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us.us19
  store i32 %.0.i.us.us21, ptr %i.cd, align 4
  %i.ce = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us20
  %i.ci = shl i32 %i.cg, %i.j                     ; 2 uses
  %i.cj = lshr exact i32 %i.ci, %i.j
  %.not15.us.us.1 = icmp eq i32 %i.cj, %i.cg
  br i1 %.not15.us.us.1, label %do_suqrshl_bhs.exit.us.us20.1, label %do_suqrshl_bhs.exit.us.us20.sink.split.1

do_suqrshl_bhs.exit.us.us20.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us20
  %.0.i.us.us21.ph.1 = phi i32 [ -1, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us20 ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.1:                    ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split.1, %bb.o
  %.0.i.us.us21.1 = phi i32 [ %i.ci, %bb.o ], [ %.0.i.us.us21.ph.1, %do_suqrshl_bhs.exit.us.us20.sink.split.1 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce
  store i32 %.0.i.us.us21.1, ptr %i.ck, align 4
  %i.cl = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.cl, %i.h
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !295

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader237.new
  %.016.us = phi i64 [ %.016.us.ph, %.split.us.split.split.preheader237.new ], [ %i.cv, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i32 %i.cn, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i32 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i32 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us
  store i32 %.0.i.us, ptr %i.cp, align 4
  %i.cq = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i32 %i.cs, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i32 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i32 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cq
  store i32 %.0.i.us.1, ptr %i.cu, align 4
  %i.cv = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.cv, %i.h
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !296

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader239.new
  %.016 = phi i64 [ %.016.ph, %.split.preheader239.new ], [ %i.df, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 0, ptr %i.cz, align 4
  %i.da = or disjoint i64 %.016, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da
  store i32 0, ptr %i.de, align 4
  %i.df = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.df, %i.h
  br i1 %exitcond.not.1, label %.split18.us, label %.split, !llvm.loop !297

.split18.us:                                      ; preds = %do_suqrshl_bhs.exit.1, %do_suqrshl_bhs.exit.us.1, %do_suqrshl_bhs.exit.us.us20.1, %do_suqrshl_bhs.exit.us.us.1, %middle.block, %middle.block124, %middle.block170, %middle.block228
  %i.dg = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dg, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dh = add nuw nsw i32 %i.e, 8
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr %0, i64 %i.g
  %i.dk = xor i64 %i.g, -1
  %i.dl = add nsw i64 %i.dk, %i.di
  %i.dm = and i64 %i.dl, -8
  %i.dn = add nsw i64 %i.dm, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %i.dn, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
end_hunk_5
