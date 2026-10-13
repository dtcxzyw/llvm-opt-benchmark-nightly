Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_qshl_u8:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.e ], [ %i.g, %bb.c ], [ 255, %bb.g ], [ 0, %bb.f ]
  %i.l = and i32 %.sroa.59.0.extract.shift, 255   ; 3 uses
  %i.m = shl i32 %2, 16
  %i.n = ashr i32 %i.m, 24                        ; 5 uses
  %.not.i17 = icmp sgt i32 %i.n, -8
  br i1 %.not.i17, label %bb.h, label %do_uqrshl_bhs.exit19

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = sub nsw i32 0, %i.n
  %i.q = lshr i32 %i.l, %i.p
  br label %do_uqrshl_bhs.exit19

bb.j:                                             ; preds = %bb.h
  %i.r = icmp samesign ult i32 %i.n, 8
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = shl nuw nsw i32 %i.l, %i.n               ; 2 uses
  %i.t = icmp samesign ugt i32 %i.s, 255
  br i1 %i.t, label %bb.m, label %do_uqrshl_bhs.exit19

bb.l:                                             ; preds = %bb.j
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %do_uqrshl_bhs.exit19, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit19

do_uqrshl_bhs.exit19:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i18 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.s, %bb.k ], [ %i.q, %bb.i ], [ 255, %bb.m ], [ 0, %bb.l ]
  %i.v = and i32 %.sroa.610.0.extract.shift, 255  ; 3 uses
  %i.w = shl i32 %2, 8
  %i.x = ashr i32 %i.w, 24                        ; 5 uses
  %.not.i20 = icmp sgt i32 %i.x, -8
  br i1 %.not.i20, label %bb.n, label %do_uqrshl_bhs.exit22

bb.n:                                             ; preds = %do_uqrshl_bhs.exit19
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = sub nsw i32 0, %i.x
  %i.aa = lshr i32 %i.v, %i.z
  br label %do_uqrshl_bhs.exit22

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp samesign ult i32 %i.x, 8
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = shl nuw nsw i32 %i.v, %i.x              ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.ac, 255
  br i1 %i.ad, label %bb.s, label %do_uqrshl_bhs.exit22

bb.r:                                             ; preds = %bb.p
  %i.ae = icmp eq i32 %i.v, 0
  br i1 %i.ae, label %do_uqrshl_bhs.exit22, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit22

do_uqrshl_bhs.exit22:                             ; preds = %do_uqrshl_bhs.exit19, %bb.o, %bb.q, %bb.r, %bb.s
  %.3.i21 = phi i32 [ 0, %do_uqrshl_bhs.exit19 ], [ %i.ac, %bb.q ], [ %i.aa, %bb.o ], [ 255, %bb.s ], [ 0, %bb.r ]
  %i.af = ashr i32 %2, 24                         ; 5 uses
  %.not.i23 = icmp sgt i32 %i.af, -8
  br i1 %.not.i23, label %bb.t, label %do_uqrshl_bhs.exit25

bb.t:                                             ; preds = %do_uqrshl_bhs.exit22
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ah = sub nsw i32 0, %i.af
  %i.ai = lshr i32 %.sroa.711.0.extract.shift, %i.ah
  br label %do_uqrshl_bhs.exit25

bb.v:                                             ; preds = %bb.t
  %i.aj = icmp samesign ult i32 %i.af, 8
  br i1 %i.aj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ak = shl nuw nsw i32 %.sroa.711.0.extract.shift, %i.af ; 2 uses
  %i.al = icmp samesign ugt i32 %i.ak, 255
  br i1 %i.al, label %bb.y, label %do_uqrshl_bhs.exit25

bb.x:                                             ; preds = %bb.v
  %i.am = icmp eq i32 %.sroa.711.0.extract.shift, 0
  br i1 %i.am, label %do_uqrshl_bhs.exit25, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit25

do_uqrshl_bhs.exit25:                             ; preds = %do_uqrshl_bhs.exit22, %bb.u, %bb.w, %bb.x, %bb.y
  %.3.i24 = phi i32 [ 0, %do_uqrshl_bhs.exit22 ], [ %i.ak, %bb.w ], [ %i.ai, %bb.u ], [ 255, %bb.y ], [ 0, %bb.x ]
  %.sroa.7.0.insert.ext = shl nuw i32 %.3.i24, 24
  %.sroa.6.0.insert.ext = shl nuw nsw i32 %.3.i21, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %.3.i18, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.insert, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
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
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.x, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
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
  %i.i = zext nneg i32 %.v.i to i64               ; 16 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split18.us

.split.us:                                        ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %vector.memcheck122, label %.split.us.split

vector.memcheck122:                               ; preds = %.split.us
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -16
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck122
  %min.iters.check124 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 8
  %n.vec126 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph125, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body129 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index130
  %wide.load131 = load <16 x i8>, ptr %i.r, align 1
  %i.s = zext <16 x i8> %wide.load131 to <16 x i32>
  %i.t = lshr <16 x i32> %i.s, %broadcast.splat128
  %i.u = trunc nuw <16 x i32> %i.t to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index130
  store <16 x i8> %i.u, ptr %i.v, align 1
  %index.next132 = add nuw i64 %index130, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.w, label %middle.block133, label %vector.body129, !llvm.loop !28

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %n.vec126, %i.i
  br i1 %cmp.n134, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check.not.not = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check.not.not, label %do_uqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph, !prof !10

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck122, %vec.epilog.iter.check
  %.016.us.us.ph = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.memcheck122 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index138
  %wide.load139 = load <8 x i8>, ptr %i.x, align 1
  %i.y = zext <8 x i8> %wide.load139 to <8 x i32>
  %i.z = lshr <8 x i32> %i.y, %broadcast.splat137
  %i.aa = trunc nuw <8 x i32> %i.z to <8 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index138
  store <8 x i8> %i.aa, ptr %i.ab, align 1
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next140, %i.i
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
  br i1 %min.iters.check, label %.split.us.split.split.preheader148, label %vector.memcheck

.split.us.split.split.preheader148:               ; preds = %vector.memcheck, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bf = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.bg
  %bound1 = icmp ult ptr %0, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %i.l, %i.bh
  %bound144 = icmp ult ptr %1, %i.bf
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %0, %i.bh
  %bound147 = icmp ult ptr %1, %i.bg
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.split.us.split.split.preheader148, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load = load <4 x i8>, ptr %i.bi, align 1, !alias.scope !43
  %wide.load50 = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !43
  %i.bk = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.bl = icmp ne <4 x i8> %wide.load50, zeroinitializer ; 2 uses
  %i.bm = shufflevector <4 x i1> %i.bl, <4 x i1> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = bitcast <8 x i1> %i.bm to i8
  %.not = icmp eq i8 %i.bn, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.l, align 4, !alias.scope !44, !noalias !45
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bk to <4 x i8>
  %predphi65 = sext <4 x i1> %i.bl to <4 x i8>
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store <4 x i8> %predphi, ptr %i.bo, align 1, !alias.scope !46, !noalias !43
  store <4 x i8> %predphi65, ptr %i.bp, align 1, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %i.i
  br i1 %i.bq, label %.split18.us, label %vector.body, !llvm.loop !35

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check81 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check81, label %.split.us.split.split.us.preheader145, label %vector.memcheck82

.split.us.split.split.us.preheader145:            ; preds = %vector.memcheck82, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck82:                                ; preds = %.split.us.split.split.us.preheader
  %i.br = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound083 = icmp ult ptr %i.l, %i.bs
  %bound184 = icmp ult ptr %0, %i.br
  %found.conflict85 = and i1 %bound083, %bound184
  %bound086 = icmp ult ptr %i.l, %i.bt
  %bound187 = icmp ult ptr %1, %i.br
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %found.conflict85, %found.conflict88
  %bound090 = icmp ult ptr %0, %i.bt
  %bound191 = icmp ult ptr %1, %i.bs
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  br i1 %conflict.rdx93, label %.split.us.split.split.us.preheader145, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck82
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %bb.e, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next118, %bb.e ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %index97 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %wide.load98 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !47
  %wide.load99 = load <4 x i8>, ptr %i.bv, align 1, !alias.scope !47
  %i.bw = zext <4 x i8> %wide.load98 to <4 x i32>
  %i.bx = zext <4 x i8> %wide.load99 to <4 x i32>
  %i.by = shl nuw nsw <4 x i32> %i.bw, %broadcast.splat ; 2 uses
  %i.bz = shl nuw nsw <4 x i32> %i.bx, %broadcast.splat ; 2 uses
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cb = icmp samesign ugt <8 x i32> %i.ca, splat (i32 255)
  %i.cc = bitcast <8 x i1> %i.cb to i8
  %.not143 = icmp eq i8 %i.cc, 0
  br i1 %.not143, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body96
  store i32 1, ptr %i.l, align 4, !alias.scope !48, !noalias !49
  br label %bb.e

bb.e:                                             ; preds = %vector.body96, %bb.d
end_hunk_0
begin_hunk_1_@helper_neon_uqshli_b:bb.a
  %i.dc = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  store i8 %.3.i.us.1, ptr %i.dg, align 1
  %i.dh = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.i
  br i1 %exitcond.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !42

.split18.us:                                      ; preds = %bb.c, %do_uqrshl_bhs.exit.us.1, %bb.e, %do_uqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.di = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.di, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dj = add nuw nsw i32 %i.g, 8
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr %0, i64 %i.i
  %i.dm = xor i64 %i.i, -1
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = and i64 %i.dn, -8
  %i.dp = add nsw i64 %i.do, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %i.dp, i1 false)
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

bb.l:                                             ; preds = %bb.j
  %i.t = icmp eq i32 %.sroa.57.0.extract.shift, 0
  br i1 %i.t, label %do_uqrshl_bhs.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.d, align 4
  br label %do_uqrshl_bhs.exit13

do_uqrshl_bhs.exit13:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i12 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.r, %bb.k ], [ %i.p, %bb.i ], [ 65535, %bb.m ], [ 0, %bb.l ]
  %.sroa.5.0.insert.ext = shl nuw i32 %.3.i12, 16
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.ext, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
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
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.z, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -16
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %vector.memcheck121, label %.split.us.split

vector.memcheck121:                               ; preds = %.split.us
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck121
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check
  %n.vec125 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert126 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat127 = shufflevector <8 x i32> %broadcast.splatinsert126, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph124, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index129 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load130 = load <8 x i16>, ptr %i.r, align 2
  %wide.load131 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load130 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load131 to <8 x i32>
  %i.v = lshr <8 x i32> %i.t, %broadcast.splat127
  %i.w = lshr <8 x i32> %i.u, %broadcast.splat127
  %i.x = trunc nuw <8 x i32> %i.v to <8 x i16>
  %i.y = trunc nuw <8 x i32> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index129 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next132 = add nuw i64 %index129, 16      ; 2 uses
  %i.ab = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.ab, label %middle.block133, label %vector.body128, !llvm.loop !52

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.j, %n.vec125
  br i1 %cmp.n134, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %i.ac = and i64 %i.i, 24
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph, !prof !11

do_uqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck121, %vec.epilog.iter.check
  %.015.us.us.ph = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.memcheck121 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index138
  %wide.load139 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = zext <4 x i16> %wide.load139 to <4 x i32>
  %i.af = lshr <4 x i32> %i.ae, %broadcast.splat137
  %i.ag = trunc nuw <4 x i32> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index138
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next140, %i.j
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
  br i1 %min.iters.check, label %.split.us.split.split.preheader147.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bl = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bm
  %bound1 = icmp ult ptr %0, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.m, %i.bn
  %bound143 = icmp ult ptr %1, %i.bl
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %i.bn
  %bound146 = icmp ult ptr %1, %i.bm
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader147.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load = load <4 x i16>, ptr %i.bo, align 2, !alias.scope !67
  %wide.load49 = load <4 x i16>, ptr %i.bp, align 2, !alias.scope !67
  %i.bq = icmp ne <4 x i16> %wide.load, zeroinitializer ; 2 uses
  %i.br = icmp ne <4 x i16> %wide.load49, zeroinitializer ; 2 uses
  %i.bs = shufflevector <4 x i1> %i.br, <4 x i1> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = bitcast <8 x i1> %i.bs to i8
  %.not = icmp eq i8 %i.bt, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.m, align 4, !alias.scope !68, !noalias !69
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bq to <4 x i16>
  %predphi64 = sext <4 x i1> %i.br to <4 x i16>
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <4 x i16> %predphi, ptr %i.bu, align 2, !alias.scope !70, !noalias !67
  store <4 x i16> %predphi64, ptr %i.bv, align 2, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader147.new

.split.us.split.split.preheader147.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader145.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bx = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound082 = icmp ult ptr %i.m, %i.by
  %bound183 = icmp ult ptr %0, %i.bx
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.m, %i.bz
  %bound186 = icmp ult ptr %1, %i.bx
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %i.bz
  %bound190 = icmp ult ptr %1, %i.by
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader145.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.j, 1073741816             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load97 = load <4 x i16>, ptr %i.ca, align 2, !alias.scope !71
  %wide.load98 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !71
  %i.cc = zext <4 x i16> %wide.load97 to <4 x i32>
end_hunk_1
begin_hunk_2_@helper_neon_qshl_s8:bb.a
  %i.z = add nsw i32 %i.y, 128
  %.not29 = icmp ult i32 %i.z, 256
  br i1 %.not29, label %do_sqrshl_bhs.exit20, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = icmp eq i32 %i.q, 0
  br i1 %i.aa, label %do_sqrshl_bhs.exit20, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 1, ptr %i.e, align 4
  %i.ab = icmp sgt i32 %i.q, -1
  %i.ac = select i1 %i.ab, i32 127, i32 128
  br label %do_sqrshl_bhs.exit20

do_sqrshl_bhs.exit20:                             ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %.3.i18 = phi i32 [ %i.t, %bb.i ], [ 0, %bb.n ], [ %i.y, %bb.m ], [ %i.w, %bb.k ], [ %i.ac, %bb.o ]
  %i.ad = shl i32 %1, 8                           ; 2 uses
  %i.ae = ashr i32 %i.ad, 24                      ; 4 uses
  %i.af = shl i32 %2, 8
  %i.ag = ashr i32 %i.af, 24                      ; 5 uses
  %.not.i21 = icmp sgt i32 %i.ag, -8
  br i1 %.not.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %do_sqrshl_bhs.exit20
  %i.ah = ashr i32 %i.ad, 31
  br label %do_sqrshl_bhs.exit24

bb.q:                                             ; preds = %do_sqrshl_bhs.exit20
  %i.ai = icmp slt i32 %i.ag, 0
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = sub nsw i32 0, %i.ag
  %i.ak = ashr i32 %i.ae, %i.aj
  br label %do_sqrshl_bhs.exit24

bb.s:                                             ; preds = %bb.q
  %i.al = icmp samesign ult i32 %i.ag, 8
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.am = shl nsw i32 %i.ae, %i.ag                ; 2 uses
  %i.an = add nsw i32 %i.am, 128
  %.not30 = icmp ult i32 %i.an, 256
  br i1 %.not30, label %do_sqrshl_bhs.exit24, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ao = icmp eq i32 %i.ae, 0
  br i1 %i.ao, label %do_sqrshl_bhs.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 1, ptr %i.e, align 4
  %i.ap = icmp sgt i32 %i.ae, -1
  %i.aq = select i1 %i.ap, i32 127, i32 128
  br label %do_sqrshl_bhs.exit24

do_sqrshl_bhs.exit24:                             ; preds = %bb.p, %bb.r, %bb.t, %bb.u, %bb.v
  %.3.i22 = phi i32 [ %i.ah, %bb.p ], [ 0, %bb.u ], [ %i.am, %bb.t ], [ %i.ak, %bb.r ], [ %i.aq, %bb.v ]
  %i.ar = ashr i32 %1, 24                         ; 4 uses
  %i.as = ashr i32 %2, 24                         ; 5 uses
  %.not.i25 = icmp sgt i32 %i.as, -8
  br i1 %.not.i25, label %bb.x, label %bb.w

bb.w:                                             ; preds = %do_sqrshl_bhs.exit24
  %i.at = ashr i32 %1, 31
  br label %do_sqrshl_bhs.exit28

bb.x:                                             ; preds = %do_sqrshl_bhs.exit24
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.av = sub nsw i32 0, %i.as
  %i.aw = ashr i32 %i.ar, %i.av
  br label %do_sqrshl_bhs.exit28

bb.z:                                             ; preds = %bb.x
  %i.ax = icmp samesign ult i32 %i.as, 8
  br i1 %i.ax, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ay = shl nsw i32 %i.ar, %i.as                ; 2 uses
  %i.az = add nsw i32 %i.ay, 128
  %.not31 = icmp ult i32 %i.az, 256
  br i1 %.not31, label %do_sqrshl_bhs.exit28, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ba = icmp eq i32 %i.ar, 0
  br i1 %i.ba, label %do_sqrshl_bhs.exit28, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i32 1, ptr %i.e, align 4
  %i.bb = icmp sgt i32 %i.ar, -1
  %i.bc = select i1 %i.bb, i32 127, i32 128
  br label %do_sqrshl_bhs.exit28

do_sqrshl_bhs.exit28:                             ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.3.i26 = phi i32 [ %i.at, %bb.w ], [ 0, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.aw, %bb.y ], [ %i.bc, %bb.ac ]
  %.sroa.7.0.insert.ext = shl i32 %.3.i26, 24
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i22, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i18, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.ext = and i32 %.3.i, 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
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
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.aa, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %i.k = sext i8 %i.j to i32                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ashr i32 %i.k, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp slt i8 %i.m, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i32 0, %i.n
  %i.r = ashr i32 %i.k, %i.q
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i8 %i.m, 8
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nsw i32 %i.k, %i.n                   ; 2 uses
  %i.u = add nsw i32 %i.t, 128
  %.not = icmp ult i32 %i.u, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.j, 0
  br i1 %i.v, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.h, align 4
  %i.w = icmp sgt i8 %i.j, -1
  %i.x = select i1 %i.w, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.o, %bb.c ], [ 0, %bb.h ], [ %i.t, %bb.g ], [ %i.r, %bb.e ], [ %i.x, %bb.i ]
  %i.y = trunc i32 %.3.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.g
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !104

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ac = add nuw nsw i32 %i.e, 8
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.g
  %i.af = xor i64 %i.g, -1
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = and i64 %i.ag, -8
  %i.ai = add nsw i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
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
  %i.i = zext nneg i32 %.v.i to i64               ; 20 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.o = sub i64 %i.a, %i.b
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
  br i1 %i.ab, label %vector.memcheck135, label %.split.us.split

vector.memcheck135:                               ; preds = %.split.us
  %i.ac = sub i64 %i.a, %i.b
  %diff.check136 = icmp ugt i64 %i.ac, -16
  br i1 %diff.check136, label %do_sqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check138

vector.main.loop.iter.check138:                   ; preds = %vector.memcheck135
  %min.iters.check139 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check139, label %vec.epilog.ph155, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check138
  %i.ad = and i64 %i.i, 8
  %n.vec141 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert142 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat143 = shufflevector <16 x i32> %broadcast.splatinsert142, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body144

vector.body144:                                   ; preds = %vector.ph140, %vector.body144
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index145
  %wide.load146 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = sext <16 x i8> %wide.load146 to <16 x i32>
  %i.ag = ashr <16 x i32> %i.af, %broadcast.splat143
  %i.ah = trunc nsw <16 x i32> %i.ag to <16 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index145
  store <16 x i8> %i.ah, ptr %i.ai, align 1
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.aj = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.aj, label %middle.block148, label %vector.body144, !llvm.loop !107

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %n.vec141, %i.i
  br i1 %cmp.n149, label %.split18.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154.not.not = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check154.not.not, label %do_sqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph155, !prof !10

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck135, %vec.epilog.iter.check153
  %.016.us.us.ph = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck135 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check138, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check138 ]
  %broadcast.splatinsert157 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat158 = shufflevector <8 x i32> %broadcast.splatinsert157, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index160
  %wide.load161 = load <8 x i8>, ptr %i.ak, align 1
  %i.al = sext <8 x i8> %wide.load161 to <8 x i32>
  %i.am = ashr <8 x i32> %i.al, %broadcast.splat158
  %i.an = trunc nsw <8 x i32> %i.am to <8 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index160
  store <8 x i8> %i.an, ptr %i.ao, align 1
  %index.next162 = add nuw i64 %index160, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next162, %i.i
  br i1 %i.ap, label %.split18.us, label %vec.epilog.vector.body159, !llvm.loop !108

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
  br i1 %min.iters.check55, label %.split.us.split.split.preheader171, label %vector.memcheck56

.split.us.split.split.preheader171:               ; preds = %vector.memcheck56, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck56:                                ; preds = %.split.us.split.split.preheader
  %i.bs = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.bt
  %bound1 = icmp ult ptr %0, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %i.l, %i.bu
  %bound158 = icmp ult ptr %1, %i.bs
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %0, %i.bu
  %bound161 = icmp ult ptr %1, %i.bt
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  br i1 %conflict.rdx63, label %.split.us.split.split.preheader171, label %vector.body66

vector.body66:                                    ; preds = %vector.memcheck56, %bb.c
  %index67 = phi i64 [ %index.next85, %bb.c ], [ 0, %vector.memcheck56 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %index67 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %wide.load68 = load <4 x i8>, ptr %i.bv, align 1, !alias.scope !124 ; 2 uses
  %wide.load69 = load <4 x i8>, ptr %i.bw, align 1, !alias.scope !124 ; 2 uses
  %i.bx = icmp ne <4 x i8> %wide.load68, zeroinitializer ; 2 uses
  %i.by = icmp ne <4 x i8> %wide.load69, zeroinitializer ; 2 uses
  %i.bz = shufflevector <4 x i1> %i.by, <4 x i1> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = bitcast <8 x i1> %i.bz to i8
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body66
  store i32 1, ptr %i.l, align 4, !alias.scope !125, !noalias !126
  br label %bb.c

bb.c:                                             ; preds = %vector.body66, %bb.b
  %i.cb = icmp sgt <4 x i8> %wide.load68, splat (i8 -1)
  %i.cc = icmp sgt <4 x i8> %wide.load69, splat (i8 -1)
  %i.cd = select <4 x i1> %i.cb, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %i.ce = select <4 x i1> %i.cc, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %predphi = select <4 x i1> %i.bx, <4 x i8> %i.cd, <4 x i8> zeroinitializer
  %predphi84 = select <4 x i1> %i.by, <4 x i8> %i.ce, <4 x i8> zeroinitializer
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %index67 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store <4 x i8> %predphi, ptr %i.cf, align 1, !alias.scope !127, !noalias !124
  store <4 x i8> %predphi84, ptr %i.cg, align 1, !alias.scope !127, !noalias !124
  %index.next85 = add nuw i64 %index67, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next85, %i.i
  br i1 %i.ch, label %.split18.us, label %vector.body66, !llvm.loop !114

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check104 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check104, label %.split.us.split.split.us.preheader168, label %vector.memcheck105

.split.us.split.split.us.preheader168:            ; preds = %vector.memcheck105, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck105:                               ; preds = %.split.us.split.split.us.preheader
  %i.ci = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.ck = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0106 = icmp ult ptr %i.l, %i.cj
  %bound1107 = icmp ult ptr %0, %i.ci
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.l, %i.ck
  %bound1110 = icmp ult ptr %1, %i.ci
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  %bound0113 = icmp ult ptr %0, %i.ck
  %bound1114 = icmp ult ptr %1, %i.cj
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.split.us.split.split.us.preheader168, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck105
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body119

vector.body119:                                   ; preds = %bb.e, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next131, %bb.e ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.cl, align 1, !alias.scope !128 ; 2 uses
  %i.cm = sext <4 x i8> %wide.load121 to <4 x i32>
  %i.cn = shl nsw <4 x i32> %i.cm, %broadcast.splat ; 2 uses
  %i.co = add <4 x i32> %i.cn, splat (i32 -128)
  %i.cp = icmp ult <4 x i32> %i.co, splat (i32 -256) ; 2 uses
  %i.cq = bitcast <4 x i1> %i.cp to i4
  %.not166 = icmp eq i4 %i.cq, 0
  br i1 %.not166, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body119
  store i32 1, ptr %i.l, align 4, !alias.scope !129, !noalias !130
  br label %bb.e

bb.e:                                             ; preds = %vector.body119, %bb.d
end_hunk_2
begin_hunk_3_@helper_neon_sqshli_b:bb.a
  %i.ez = add nuw nsw i32 %i.g, 8
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %0, i64 %i.i
  %i.fc = xor i64 %i.i, -1
  %i.fd = add nsw i64 %i.fc, %i.fa
  %i.fe = and i64 %i.fd, -8
  %i.ff = add nsw i64 %i.fe, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.ff, i1 false)
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

bb.f:                                             ; preds = %bb.e
  %i.k = shl nsw i32 %i.b, %i.d                   ; 2 uses
  %i.l = add nsw i32 %i.k, 32768
  %.not = icmp ult i32 %i.l, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = icmp eq i32 %i.a, 0
  br i1 %i.m, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.e, align 4
  %i.n = icmp sgt i32 %i.b, -1
  %i.o = select i1 %i.n, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.g ], [ %i.k, %bb.f ], [ %i.i, %bb.d ], [ %i.o, %bb.h ]
  %i.p = ashr i32 %1, 16                          ; 4 uses
  %i.q = shl i32 %2, 8
  %i.r = ashr i32 %i.q, 24                        ; 5 uses
  %.not.i11 = icmp sgt i32 %i.r, -16
  br i1 %.not.i11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.s = ashr i32 %1, 31
  br label %do_sqrshl_bhs.exit14

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = sub nsw i32 0, %i.r
  %i.v = ashr i32 %i.p, %i.u
  br label %do_sqrshl_bhs.exit14

bb.l:                                             ; preds = %bb.j
  %i.w = icmp samesign ult i32 %i.r, 16
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = shl nsw i32 %i.p, %i.r                   ; 2 uses
  %i.y = add nsw i32 %i.x, 32768
  %.not15 = icmp ult i32 %i.y, 65536
  br i1 %.not15, label %do_sqrshl_bhs.exit14, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.z = icmp eq i32 %i.p, 0
  br i1 %i.z, label %do_sqrshl_bhs.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 1, ptr %i.e, align 4
  %i.aa = icmp sgt i32 %i.p, -1
  %i.ab = select i1 %i.aa, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit14

do_sqrshl_bhs.exit14:                             ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %.3.i12 = phi i32 [ %i.s, %bb.i ], [ 0, %bb.n ], [ %i.x, %bb.m ], [ %i.v, %bb.k ], [ %i.ab, %bb.o ]
  %.sroa.5.0.insert.ext = shl i32 %.3.i12, 16
  %.sroa.03.0.insert.ext = and i32 %.3.i, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
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
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ac, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = sext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -16
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ashr i32 %i.l, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = sub nsw i32 0, %i.p
  %i.t = ashr i32 %i.l, %i.s
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp samesign ult i32 %i.p, 16
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = shl nsw i32 %i.l, %i.p                   ; 2 uses
  %i.w = add nsw i32 %i.v, 32768
  %.not = icmp ult i32 %i.w, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = icmp eq i16 %i.k, 0
  br i1 %i.x, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.y = icmp sgt i16 %i.k, -1
  %i.z = select i1 %i.y, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.h ], [ %i.v, %bb.g ], [ %i.t, %bb.e ], [ %i.z, %bb.i ]
  %i.aa = trunc i32 %.3.i to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !132

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ae = add nuw nsw i32 %i.e, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.g
  %i.ah = xor i64 %i.g, -1
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = and i64 %i.ai, -8
  %i.ak = add nsw i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
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
  %i.p = sub i64 %i.a, %i.b
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
  br i1 %i.ac, label %vector.memcheck134, label %.split.us.split

vector.memcheck134:                               ; preds = %.split.us
  %i.ad = sub i64 %i.a, %i.b
  %diff.check135 = icmp ugt i64 %i.ad, -32
  br i1 %diff.check135, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck134
  %min.iters.check138 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check138, label %vec.epilog.ph155, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.vec140 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.ph139, %vector.body143
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index144 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load145 = load <8 x i16>, ptr %i.ae, align 2
  %wide.load146 = load <8 x i16>, ptr %i.af, align 2
  %i.ag = sext <8 x i16> %wide.load145 to <8 x i32>
  %i.ah = sext <8 x i16> %wide.load146 to <8 x i32>
  %i.ai = ashr <8 x i32> %i.ag, %broadcast.splat142
  %i.aj = ashr <8 x i32> %i.ah, %broadcast.splat142
  %i.ak = trunc nsw <8 x i32> %i.ai to <8 x i16>
  %i.al = trunc nsw <8 x i32> %i.aj to <8 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <8 x i16> %i.ak, ptr %i.am, align 2
  store <8 x i16> %i.al, ptr %i.an, align 2
  %index.next147 = add nuw i64 %index144, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.ao, label %middle.block148, label %vector.body143, !llvm.loop !135

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.j, %n.vec140
  br i1 %cmp.n149, label %.split17.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %i.ap = and i64 %i.i, 24
  %min.epilog.iters.check154 = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check154, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph155, !prof !11

do_sqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck134, %vec.epilog.iter.check153
  %.015.us.us.ph = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck134 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check137 ]
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index160
  %wide.load161 = load <4 x i16>, ptr %i.aq, align 2
  %i.ar = sext <4 x i16> %wide.load161 to <4 x i32>
  %i.as = ashr <4 x i32> %i.ar, %broadcast.splat158
  %i.at = trunc nsw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index160
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next162, %i.j
  br i1 %i.av, label %.split17.us, label %vec.epilog.vector.body159, !llvm.loop !136

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
  br i1 %min.iters.check54, label %.split.us.split.split.preheader171.new, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.split.us.split.split.preheader
  %i.by = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bz
  %bound1 = icmp ult ptr %0, %i.by
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.m, %i.ca
  %bound157 = icmp ult ptr %1, %i.by
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %0, %i.ca
  %bound160 = icmp ult ptr %1, %i.bz
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  br i1 %conflict.rdx62, label %.split.us.split.split.preheader171.new, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec64 = and i64 %i.j, 1073741816             ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %bb.c, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next84, %bb.c ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index66 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.load67 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !151 ; 2 uses
  %wide.load68 = load <4 x i16>, ptr %i.cc, align 2, !alias.scope !151 ; 2 uses
  %i.cd = icmp ne <4 x i16> %wide.load67, zeroinitializer ; 2 uses
  %i.ce = icmp ne <4 x i16> %wide.load68, zeroinitializer ; 2 uses
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = bitcast <8 x i1> %i.cf to i8
  %.not = icmp eq i8 %i.cg, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body65
  store i32 1, ptr %i.m, align 4, !alias.scope !152, !noalias !153
  br label %bb.c

bb.c:                                             ; preds = %vector.body65, %bb.b
  %i.ch = icmp sgt <4 x i16> %wide.load67, splat (i16 -1)
  %i.ci = icmp sgt <4 x i16> %wide.load68, splat (i16 -1)
  %i.cj = select <4 x i1> %i.ch, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %i.ck = select <4 x i1> %i.ci, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %predphi = select <4 x i1> %i.cd, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %predphi83 = select <4 x i1> %i.ce, <4 x i16> %i.ck, <4 x i16> zeroinitializer
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index66 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <4 x i16> %predphi, ptr %i.cl, align 2, !alias.scope !154, !noalias !151
  store <4 x i16> %predphi83, ptr %i.cm, align 2, !alias.scope !154, !noalias !151
  %index.next84 = add nuw i64 %index66, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next84, %n.vec64
  br i1 %i.cn, label %middle.block85, label %vector.body65, !llvm.loop !142

middle.block85:                                   ; preds = %bb.c
  %cmp.n86 = icmp eq i64 %i.j, %n.vec64
  br i1 %cmp.n86, label %.split17.us, label %.split.us.split.split.preheader171.new

.split.us.split.split.preheader171.new:           ; preds = %vector.memcheck55, %.split.us.split.split.preheader, %middle.block85
  %.015.us.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec64, %middle.block85 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check103 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check103, label %.split.us.split.split.us.preheader168.new, label %vector.memcheck104

.split.us.split.split.us.preheader168.new:        ; preds = %.split.us.split.split.us.preheader, %vector.memcheck104
  br label %.split.us.split.split.us

vector.memcheck104:                               ; preds = %.split.us.split.split.us.preheader
  %i.co = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0105 = icmp ult ptr %i.m, %i.cp
  %bound1106 = icmp ult ptr %0, %i.co
  %found.conflict107 = and i1 %bound0105, %bound1106
  %bound0108 = icmp ult ptr %i.m, %i.cq
  %bound1109 = icmp ult ptr %1, %i.co
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %found.conflict107, %found.conflict110
  %bound0112 = icmp ult ptr %0, %i.cq
  %bound1113 = icmp ult ptr %1, %i.cp
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  br i1 %conflict.rdx115, label %.split.us.split.split.us.preheader168.new, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body118

vector.body118:                                   ; preds = %bb.e, %vector.ph116
end_hunk_3
