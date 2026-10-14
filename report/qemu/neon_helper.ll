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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 16 uses
  %i.h = shl i32 %3, 14
  %i.i = ashr i32 %i.h, 24                        ; 7 uses
  %i.j = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.i, -8
  %i.k = icmp samesign ult i32 %i.i, 8
  %i.l = sub nsw i32 0, %i.i                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.g, i1 false)
  br label %.split18.us

.split.us:                                        ; preds = %bb.a
  %i.m = icmp slt i32 %i.i, 0
  br i1 %i.m, label %vector.memcheck122, label %.split.us.split

vector.memcheck122:                               ; preds = %.split.us
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.n, -16
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck122
  %min.iters.check124 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.g, 8
  %n.vec126 = and i64 %i.g, 4080                  ; 4 uses
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph125, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body129 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index130
  %wide.load131 = load <16 x i8>, ptr %i.p, align 1
  %i.q = zext <16 x i8> %wide.load131 to <16 x i32>
  %i.r = lshr <16 x i32> %i.q, %broadcast.splat128
  %i.s = trunc nuw <16 x i32> %i.r to <16 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index130
  store <16 x i8> %i.s, ptr %i.t, align 1
  %index.next132 = add nuw i64 %index130, 16      ; 2 uses
  %i.u = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.u, label %middle.block133, label %vector.body129, !llvm.loop !28

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %n.vec126, %i.g
  br i1 %cmp.n134, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check.not.not = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check.not.not, label %do_uqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph, !prof !10

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck122, %vec.epilog.iter.check
  %.016.us.us.ph = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.memcheck122 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index138
  %wide.load139 = load <8 x i8>, ptr %i.v, align 1
  %i.w = zext <8 x i8> %wide.load139 to <8 x i32>
  %i.x = lshr <8 x i32> %i.w, %broadcast.splat137
  %i.y = trunc nuw <8 x i32> %i.x to <8 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index138
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next140, %i.g
  br i1 %i.aa, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !29

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader ], [ %i.bc, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = lshr i32 %i.ad, %i.l
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = lshr i32 %i.ak, %i.l
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = lshr i32 %i.ar, %i.l
  %i.at = trunc nuw i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1
  %i.av = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = lshr i32 %i.ay, %i.l
  %i.ba = trunc nuw i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond26.not.3, label %.split18.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !30

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.k, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 16
  br i1 %min.iters.check, label %.split.us.split.split.preheader148, label %vector.memcheck

.split.us.split.split.preheader148:               ; preds = %vector.memcheck, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bd = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.be
  %bound1 = icmp ult ptr %0, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %i.j, %i.bf
  %bound144 = icmp ult ptr %1, %i.bd
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %0, %i.bf
  %bound147 = icmp ult ptr %1, %i.be
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.split.us.split.split.preheader148, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %wide.load = load <4 x i8>, ptr %i.bg, align 1, !alias.scope !43
  %wide.load50 = load <4 x i8>, ptr %i.bh, align 1, !alias.scope !43
  %i.bi = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.bj = icmp ne <4 x i8> %wide.load50, zeroinitializer ; 2 uses
  %i.bk = shufflevector <4 x i1> %i.bj, <4 x i1> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = bitcast <8 x i1> %i.bk to i8
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.j, align 4, !alias.scope !44, !noalias !45
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bi to <4 x i8>
  %predphi65 = sext <4 x i1> %i.bj to <4 x i8>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store <4 x i8> %predphi, ptr %i.bm, align 1, !alias.scope !46, !noalias !43
  store <4 x i8> %predphi65, ptr %i.bn, align 1, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %i.g
  br i1 %i.bo, label %.split18.us, label %vector.body, !llvm.loop !35

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check81 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check81, label %.split.us.split.split.us.preheader145, label %vector.memcheck82

.split.us.split.split.us.preheader145:            ; preds = %vector.memcheck82, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck82:                                ; preds = %.split.us.split.split.us.preheader
  %i.bp = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound083 = icmp ult ptr %i.j, %i.bq
  %bound184 = icmp ult ptr %0, %i.bp
  %found.conflict85 = and i1 %bound083, %bound184
  %bound086 = icmp ult ptr %i.j, %i.br
  %bound187 = icmp ult ptr %1, %i.bp
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %found.conflict85, %found.conflict88
  %bound090 = icmp ult ptr %0, %i.br
  %bound191 = icmp ult ptr %1, %i.bq
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  br i1 %conflict.rdx93, label %.split.us.split.split.us.preheader145, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck82
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
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
  %.not143 = icmp eq i8 %i.ca, 0
  br i1 %.not143, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body96
  store i32 1, ptr %i.j, align 4, !alias.scope !48, !noalias !49
  br label %bb.e

bb.e:                                             ; preds = %vector.body96, %bb.d
end_hunk_0
begin_hunk_1_@helper_neon_uqshli_b:bb.a
  %i.da = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.j, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.da
  store i8 %.3.i.us.1, ptr %i.de, align 1
  %i.df = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.df, %i.g
  br i1 %exitcond.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !42

.split18.us:                                      ; preds = %bb.c, %do_uqrshl_bhs.exit.us.1, %bb.e, %do_uqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block133, %do_uqrshl_bhs.exit.preheader
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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 10 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 7 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.j, -16
  %i.l = icmp samesign ult i32 %i.j, 16
  %i.m = sub nsw i32 0, %i.j                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %0, i8 0, i64 %i.g, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.n = icmp slt i32 %i.j, 0
  br i1 %i.n, label %vector.memcheck121, label %.split.us.split

vector.memcheck121:                               ; preds = %.split.us
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.o = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck121
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check
  %n.vec125 = and i64 %i.h, 1073741808            ; 4 uses
  %broadcast.splatinsert126 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat127 = shufflevector <8 x i32> %broadcast.splatinsert126, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph124, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index129 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load130 = load <8 x i16>, ptr %i.p, align 2
  %wide.load131 = load <8 x i16>, ptr %i.q, align 2
  %i.r = zext <8 x i16> %wide.load130 to <8 x i32>
  %i.s = zext <8 x i16> %wide.load131 to <8 x i32>
  %i.t = lshr <8 x i32> %i.r, %broadcast.splat127
  %i.u = lshr <8 x i32> %i.s, %broadcast.splat127
  %i.v = trunc nuw <8 x i32> %i.t to <8 x i16>
  %i.w = trunc nuw <8 x i32> %i.u to <8 x i16>
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index129 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next132 = add nuw i64 %index129, 16      ; 2 uses
  %i.z = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.z, label %middle.block133, label %vector.body128, !llvm.loop !52

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.h, %n.vec125
  br i1 %cmp.n134, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %i.aa = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph, !prof !11

do_uqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck121, %vec.epilog.iter.check
  %.015.us.us.ph = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.memcheck121 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index138
  %wide.load139 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = zext <4 x i16> %wide.load139 to <4 x i32>
  %i.ad = lshr <4 x i32> %i.ac, %broadcast.splat137
  %i.ae = trunc nuw <4 x i32> %i.ad to <4 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index138
  store <4 x i16> %i.ae, ptr %i.af, align 2
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next140, %i.h
  br i1 %i.ag, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !53

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader.new ], [ %i.bi, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = lshr i32 %i.aj, %i.m
  %i.al = trunc nuw i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.al, ptr %i.am, align 2
  %i.an = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = lshr i32 %i.aq, %i.m
  %i.as = trunc nuw i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.an
  store i16 %i.as, ptr %i.at, align 2
  %i.au = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = lshr i32 %i.ax, %i.m
  %i.az = trunc nuw i32 %i.ay to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = lshr i32 %i.be, %i.m
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !54

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %.split.us.split.split.preheader147.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bj = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.bk
  %bound1 = icmp ult ptr %0, %i.bj
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.k, %i.bl
  %bound143 = icmp ult ptr %1, %i.bj
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %i.bl
  %bound146 = icmp ult ptr %1, %i.bk
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader147.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %wide.load = load <4 x i16>, ptr %i.bm, align 2, !alias.scope !67
  %wide.load49 = load <4 x i16>, ptr %i.bn, align 2, !alias.scope !67
  %i.bo = icmp ne <4 x i16> %wide.load, zeroinitializer ; 2 uses
  %i.bp = icmp ne <4 x i16> %wide.load49, zeroinitializer ; 2 uses
  %i.bq = shufflevector <4 x i1> %i.bp, <4 x i1> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = bitcast <8 x i1> %i.bq to i8
  %.not = icmp eq i8 %i.br, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !68, !noalias !69
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bo to <4 x i16>
  %predphi64 = sext <4 x i1> %i.bp to <4 x i16>
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <4 x i16> %predphi, ptr %i.bs, align 2, !alias.scope !70, !noalias !67
  store <4 x i16> %predphi64, ptr %i.bt, align 2, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader147.new

.split.us.split.split.preheader147.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader145.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bv = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound082 = icmp ult ptr %i.k, %i.bw
  %bound183 = icmp ult ptr %0, %i.bv
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.k, %i.bx
  %bound186 = icmp ult ptr %1, %i.bv
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %i.bx
  %bound190 = icmp ult ptr %1, %i.bw
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader145.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.h, 1073741816             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load97 = load <4 x i16>, ptr %i.by, align 2, !alias.scope !71
  %wide.load98 = load <4 x i16>, ptr %i.bz, align 2, !alias.scope !71
  %i.ca = zext <4 x i16> %wide.load97 to <4 x i32>
end_hunk_1
begin_hunk_2_@helper_neon_uqshli_h:bb.a
bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.k, align 4, !alias.scope !72, !noalias !73
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
  %cmp.n119 = icmp eq i64 %i.h, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader145.new

.split.us.split.split.us.preheader145.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader145.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader145.new ], [ %i.db, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, %i.j             ; 2 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 65535
  br i1 %i.cq, label %bb.f, label %do_uqrshl_bhs.exit.us.us19

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.k, align 4
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
  %i.cx = shl nuw nsw i32 %i.cw, %i.j             ; 2 uses
  %i.cy = icmp samesign ugt i32 %i.cx, 65535
  br i1 %i.cy, label %bb.g, label %do_uqrshl_bhs.exit.us.us19.1

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.k, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ 65535, %bb.g ], [ %i.cx, %do_uqrshl_bhs.exit.us.us19 ]
  %i.cz = trunc nuw i32 %.3.i.us.us20.1 to i16
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  store i16 %i.cz, ptr %i.da, align 2
  %i.db = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.db, %i.h
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !65

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader147.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader147.new ], [ %i.dl, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.k, align 4
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
  store i32 1, ptr %i.k, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  store i16 %.3.i.us.1, ptr %i.dk, align 2
  %i.dl = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %i.h
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !66

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.dm = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dm, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.dn = add nuw nsw i32 %i.e, 8
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %0, i64 %i.g
  %i.dq = xor i64 %i.g, -1
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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 8 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 11 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 9 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.j, -32
  %i.l = icmp samesign ult i32 %i.j, 32
  %i.m = sub nsw i32 0, %i.j                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, i8 0, i64 %i.g, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.n = icmp slt i32 %i.j, 0
  br i1 %i.n, label %do_uqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.o = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check123, %diff.check
  br i1 %or.cond, label %do_uqrshl_bhs.exit.us.us.preheader137, label %vector.ph124

vector.ph124:                                     ; preds = %do_uqrshl_bhs.exit.us.us.preheader
  %n.vec125 = and i64 %i.h, 536870904             ; 3 uses
  %broadcast.splatinsert126 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat127 = shufflevector <4 x i32> %broadcast.splatinsert126, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph124
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index129 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load130 = load <4 x i32>, ptr %i.p, align 4
  %wide.load131 = load <4 x i32>, ptr %i.q, align 4
  %i.r = lshr <4 x i32> %wide.load130, %broadcast.splat127
  %i.s = lshr <4 x i32> %wide.load131, %broadcast.splat127
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index129 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4
  store <4 x i32> %i.s, ptr %i.u, align 4
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.v, label %middle.block133, label %vector.body128, !llvm.loop !76

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.h, %n.vec125
  br i1 %cmp.n134, label %.split17.us, label %do_uqrshl_bhs.exit.us.us.preheader137

do_uqrshl_bhs.exit.us.us.preheader137:            ; preds = %do_uqrshl_bhs.exit.us.us.preheader, %middle.block133
  %.015.us.us.ph = phi i64 [ 0, %do_uqrshl_bhs.exit.us.us.preheader ], [ %n.vec125, %middle.block133 ] ; 3 uses
  %xtraiter144 = and i64 %i.h, 2                  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol

do_uqrshl_bhs.exit.us.us.prol:                    ; preds = %do_uqrshl_bhs.exit.us.us.preheader137, %do_uqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.aa, %do_uqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader137 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_uqrshl_bhs.exit.us.us.prol ], [ 0, %do_uqrshl_bhs.exit.us.us.preheader137 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.x = load i32, ptr %i.w, align 4
  %i.y = lshr i32 %i.x, %i.m
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter144
  br i1 %prol.iter.cmp.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol, !llvm.loop !77

do_uqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_uqrshl_bhs.exit.us.us.prol, %do_uqrshl_bhs.exit.us.us.preheader137
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader137 ], [ %i.aa, %do_uqrshl_bhs.exit.us.us.prol ]
  %i.ab = sub nsw i64 %.015.us.us.ph, %i.h
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.split17.us, label %do_uqrshl_bhs.exit.us.us

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.aw, %do_uqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_uqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = lshr i32 %i.ae, %i.m
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = lshr i32 %i.aj, %i.m
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = lshr i32 %i.ao, %i.m
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = lshr i32 %i.at, %i.m
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !78

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.us.split.split.preheader140.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.ax = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.ay
  %bound1 = icmp ult ptr %0, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.k, %i.az
  %bound143 = icmp ult ptr %1, %i.ax
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %i.az
  %bound146 = icmp ult ptr %1, %i.ay
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader140.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !alias.scope !91
  %wide.load49 = load <4 x i32>, ptr %i.bb, align 4, !alias.scope !91
  %i.bc = icmp ne <4 x i32> %wide.load, zeroinitializer ; 2 uses
  %i.bd = icmp ne <4 x i32> %wide.load49, zeroinitializer ; 2 uses
  %i.be = shufflevector <4 x i1> %i.bd, <4 x i1> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !92, !noalias !93
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bc to <4 x i32>
  %predphi64 = sext <4 x i1> %i.bd to <4 x i32>
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %predphi, ptr %i.bg, align 4, !alias.scope !94, !noalias !91
  store <4 x i32> %predphi64, ptr %i.bh, align 4, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader140.new

.split.us.split.split.preheader140.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader138.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bj = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound082 = icmp ult ptr %i.k, %i.bk
  %bound183 = icmp ult ptr %0, %i.bj
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.k, %i.bl
  %bound186 = icmp ult ptr %1, %i.bj
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %i.bl
  %bound190 = icmp ult ptr %1, %i.bk
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader138.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.h, 536870904              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
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
  %.not136 = icmp eq i8 %i.bv, 0
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.k, align 4, !alias.scope !96, !noalias !97
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
  %cmp.n119 = icmp eq i64 %i.h, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader138.new

.split.us.split.split.us.preheader138.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader138.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader138.new ], [ %i.cm, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us18
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = shl i32 %i.ca, %i.j                     ; 2 uses
  %i.cc = lshr exact i32 %i.cb, %i.j
  %i.cd = icmp eq i32 %i.cc, %i.ca
  br i1 %i.cd, label %do_uqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.k, align 4
  br label %do_uqrshl_bhs.exit.us.us19

do_uqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ -1, %bb.f ], [ %i.cb, %.split.us.split.split.us ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.ce, align 4
  %i.cf = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = shl i32 %i.ch, %i.j                     ; 2 uses
  %i.cj = lshr exact i32 %i.ci, %i.j
  %i.ck = icmp eq i32 %i.cj, %i.ch
  br i1 %i.ck, label %do_uqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.k, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ -1, %bb.g ], [ %i.ci, %do_uqrshl_bhs.exit.us.us19 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  store i32 %.3.i.us.us20.1, ptr %i.cl, align 4
  %i.cm = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.cm, %i.h
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !89

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader140.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader140.new ], [ %i.cw, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.k, align 4
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
  store i32 1, ptr %i.k, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store i32 %.3.i.us.1, ptr %i.cv, align 4
  %i.cw = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cw, %i.h
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !90

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.cx = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.cx, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.cy = add nuw nsw i32 %i.e, 8
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %0, i64 %i.g
  %i.db = xor i64 %i.g, -1
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
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %bb.g ], [ %i.r, %bb.d ], [ -1, %bb.h ], [ %i.t, %bb.f ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !99

bb.i:                                             ; preds = %do_uqrshl_d.exit
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
define dso_local void @helper_neon_uqshli_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr i32 %3, 10
  %i.i = lshr exact i64 %i.g, 3                   ; 9 uses
  %i.j = zext nneg i32 %i.h to i64
  %sext = shl i64 %i.j, 56
  %i.k = ashr exact i64 %sext, 56                 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12656 ; 6 uses
  %.not.i = icmp sgt i64 %i.k, -64
  %i.m = icmp samesign ult i64 %i.k, 64
  %i.n = sub nsw i64 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_d.exit.preheader

do_uqrshl_d.exit.preheader:                       ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.g, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.o = icmp slt i64 %i.k, 0
  br i1 %i.o, label %do_uqrshl_d.exit.us.us.preheader, label %.split.us.split

do_uqrshl_d.exit.us.us.preheader:                 ; preds = %.split.us
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.p = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %do_uqrshl_d.exit.us.us.preheader34, label %vector.ph

vector.ph:                                        ; preds = %do_uqrshl_d.exit.us.us.preheader
  %n.vec = and i64 %i.i, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load33 = load <2 x i64>, ptr %i.r, align 8
  %i.s = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.t = lshr <2 x i64> %wide.load33, %broadcast.splat
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %i.s, ptr %i.u, align 8
  store <2 x i64> %i.t, ptr %i.v, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_uqrshl_d.exit.us.us.preheader34

do_uqrshl_d.exit.us.us.preheader34:               ; preds = %do_uqrshl_d.exit.us.us.preheader, %middle.block
  %.015.us.us.ph = phi i64 [ 0, %do_uqrshl_d.exit.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter43 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %do_uqrshl_d.exit.us.us.prol.loopexit, label %do_uqrshl_d.exit.us.us.prol

do_uqrshl_d.exit.us.us.prol:                      ; preds = %do_uqrshl_d.exit.us.us.preheader34, %do_uqrshl_d.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ab, %do_uqrshl_d.exit.us.us.prol ], [ %.015.us.us.ph, %do_uqrshl_d.exit.us.us.preheader34 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_uqrshl_d.exit.us.us.prol ], [ 0, %do_uqrshl_d.exit.us.us.preheader34 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, %i.n
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us.prol
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter43
  br i1 %prol.iter.cmp.not, label %do_uqrshl_d.exit.us.us.prol.loopexit, label %do_uqrshl_d.exit.us.us.prol, !llvm.loop !101

do_uqrshl_d.exit.us.us.prol.loopexit:             ; preds = %do_uqrshl_d.exit.us.us.prol, %do_uqrshl_d.exit.us.us.preheader34
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_uqrshl_d.exit.us.us.preheader34 ], [ %i.ab, %do_uqrshl_d.exit.us.us.prol ]
  %i.ac = sub nsw i64 %.015.us.us.ph, %i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.split17.us, label %do_uqrshl_d.exit.us.us

do_uqrshl_d.exit.us.us:                           ; preds = %do_uqrshl_d.exit.us.us.prol.loopexit, %do_uqrshl_d.exit.us.us
  %.015.us.us = phi i64 [ %i.ax, %do_uqrshl_d.exit.us.us ], [ %.015.us.us.unr, %do_uqrshl_d.exit.us.us.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, %i.n
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = lshr i64 %i.ak, %i.n
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  store i64 %i.al, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = lshr i64 %i.ap, %i.n
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = lshr i64 %i.au, %i.n
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.ax, %i.i
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_d.exit.us.us, !llvm.loop !102

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.ay = icmp eq i32 %.v.v.i, 0
  br i1 %i.ay, label %.split.us.split.split.epil.preheader, label %.split.us.split.split.preheader.new

.split.us.split.split.preheader.new:              ; preds = %.split.us.split.split.preheader
  %unroll_iter = and i64 %i.i, 268435454
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %i.az = icmp eq i32 %.v.v.i, 0
  br i1 %i.az, label %.split.us.split.split.us.epil.preheader, label %.split.us.split.split.us.preheader.new

.split.us.split.split.us.preheader.new:           ; preds = %.split.us.split.split.us.preheader
  %unroll_iter41 = and i64 %i.i, 268435454
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_d.exit.us.us19.1, %.split.us.split.split.us.preheader.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %i.bn, %do_uqrshl_d.exit.us.us19.1 ] ; 4 uses
  %niter42 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %niter42.next.1, %do_uqrshl_d.exit.us.us19.1 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us18
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = shl i64 %i.bb, %i.k                     ; 2 uses
  %i.bd = lshr exact i64 %i.bc, %i.k
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %do_uqrshl_d.exit.us.us19, label %bb.b

bb.b:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_d.exit.us.us19

do_uqrshl_d.exit.us.us19:                         ; preds = %bb.b, %.split.us.split.split.us
  %.1.i.us.us20 = phi i64 [ %i.bc, %.split.us.split.split.us ], [ -1, %bb.b ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us18
  store i64 %.1.i.us.us20, ptr %i.bf, align 8
  %i.bg = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = shl i64 %i.bi, %i.k                     ; 2 uses
  %i.bk = lshr exact i64 %i.bj, %i.k
  %i.bl = icmp eq i64 %i.bk, %i.bi
  br i1 %i.bl, label %do_uqrshl_d.exit.us.us19.1, label %bb.c

bb.c:                                             ; preds = %do_uqrshl_d.exit.us.us19
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_d.exit.us.us19.1

do_uqrshl_d.exit.us.us19.1:                       ; preds = %bb.c, %do_uqrshl_d.exit.us.us19
  %.1.i.us.us20.1 = phi i64 [ %i.bj, %do_uqrshl_d.exit.us.us19 ], [ -1, %bb.c ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg
  store i64 %.1.i.us.us20.1, ptr %i.bm, align 8
  %i.bn = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %niter42.next.1 = add i64 %niter42, 2           ; 2 uses
  %niter42.ncmp.1 = icmp eq i64 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %.split17.us.loopexit35.unr-lcssa, label %.split.us.split.split.us, !llvm.loop !103

.split.us.split.split:                            ; preds = %do_uqrshl_d.exit.us.1, %.split.us.split.split.preheader.new
  %.015.us = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %i.bx, %do_uqrshl_d.exit.us.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %niter.next.1, %do_uqrshl_d.exit.us.1 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %do_uqrshl_d.exit.us, label %bb.d

bb.d:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_d.exit.us

do_uqrshl_d.exit.us:                              ; preds = %bb.d, %.split.us.split.split
  %.1.i.us = phi i64 [ -1, %bb.d ], [ 0, %.split.us.split.split ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  store i64 %.1.i.us, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %do_uqrshl_d.exit.us.1, label %bb.e

bb.e:                                             ; preds = %do_uqrshl_d.exit.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_d.exit.us.1

do_uqrshl_d.exit.us.1:                            ; preds = %bb.e, %do_uqrshl_d.exit.us
  %.1.i.us.1 = phi i64 [ -1, %bb.e ], [ 0, %do_uqrshl_d.exit.us ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store i64 %.1.i.us.1, ptr %i.bw, align 8
  %i.bx = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split17.us.loopexit36.unr-lcssa, label %.split.us.split.split, !llvm.loop !103

.split17.us.loopexit35.unr-lcssa:                 ; preds = %do_uqrshl_d.exit.us.us19.1
  %i.by = and i64 %i.g, 8
  %lcmp.mod39.not = icmp eq i64 %i.by, 0
  br i1 %lcmp.mod39.not, label %.split17.us, label %.split.us.split.split.us.epil.preheader

.split.us.split.split.us.epil.preheader:          ; preds = %.split17.us.loopexit35.unr-lcssa, %.split.us.split.split.us.preheader
  %.015.us.us18.epil.init = phi i64 [ 0, %.split.us.split.split.us.preheader ], [ %i.bn, %.split17.us.loopexit35.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us18.epil.init
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = shl i64 %i.ca, %i.k                     ; 2 uses
  %i.cc = lshr exact i64 %i.cb, %i.k
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %do_uqrshl_d.exit.us.us19.epil, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us.epil.preheader
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_d.exit.us.us19.epil

do_uqrshl_d.exit.us.us19.epil:                    ; preds = %bb.f, %.split.us.split.split.us.epil.preheader
  %.1.i.us.us20.epil = phi i64 [ %i.cb, %.split.us.split.split.us.epil.preheader ], [ -1, %bb.f ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us18.epil.init
end_hunk_2
begin_hunk_3_@helper_neon_qshl_s8:bb.a
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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 20 uses
  %i.h = shl i32 %3, 14
  %i.i = ashr i32 %i.h, 24                        ; 7 uses
  %i.j = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.i, -8
  %i.k = icmp samesign ult i32 %i.i, 8
  %i.l = sub nsw i32 0, %i.i                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.m, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <16 x i8>, ptr %i.o, align 1
  %wide.load39 = load <16 x i8>, ptr %i.p, align 1
  %i.q = ashr <16 x i8> %wide.load, splat (i8 7)
  %i.r = ashr <16 x i8> %wide.load39, splat (i8 7)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %i.q, ptr %i.s, align 1
  store <16 x i8> %i.r, ptr %i.t, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader, label %vec.epilog.vector.body.preheader, !prof !123

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index41.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader:                     ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index41 = phi i64 [ %index.next43, %vec.epilog.vector.body ], [ %index41.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index41
  %wide.load42 = load <8 x i8>, ptr %i.v, align 1
  %i.w = ashr <8 x i8> %wide.load42, splat (i8 7)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index41
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next43 = add nuw i64 %index41, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next43, %i.g
  br i1 %i.y, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !106

.split.us:                                        ; preds = %bb.a
  %i.z = icmp slt i32 %i.i, 0
  br i1 %i.z, label %vector.memcheck135, label %.split.us.split

vector.memcheck135:                               ; preds = %.split.us
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.aa = sub i64 %7, %6
  %diff.check136 = icmp ugt i64 %i.aa, -16
  br i1 %diff.check136, label %do_sqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check138

vector.main.loop.iter.check138:                   ; preds = %vector.memcheck135
  %min.iters.check139 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check139, label %vec.epilog.ph155, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check138
  %i.ab = and i64 %i.g, 8
  %n.vec141 = and i64 %i.g, 4080                  ; 4 uses
  %broadcast.splatinsert142 = insertelement <16 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat143 = shufflevector <16 x i32> %broadcast.splatinsert142, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body144

vector.body144:                                   ; preds = %vector.ph140, %vector.body144
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index145
  %wide.load146 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = sext <16 x i8> %wide.load146 to <16 x i32>
  %i.ae = ashr <16 x i32> %i.ad, %broadcast.splat143
  %i.af = trunc nsw <16 x i32> %i.ae to <16 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index145
  store <16 x i8> %i.af, ptr %i.ag, align 1
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.ah = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ah, label %middle.block148, label %vector.body144, !llvm.loop !107

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %n.vec141, %i.g
  br i1 %cmp.n149, label %.split18.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154.not.not = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check154.not.not, label %do_sqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph155, !prof !10

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck135, %vec.epilog.iter.check153
  %.016.us.us.ph = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck135 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check138, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check138 ]
  %broadcast.splatinsert157 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat158 = shufflevector <8 x i32> %broadcast.splatinsert157, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index160
  %wide.load161 = load <8 x i8>, ptr %i.ai, align 1
  %i.aj = sext <8 x i8> %wide.load161 to <8 x i32>
  %i.ak = ashr <8 x i32> %i.aj, %broadcast.splat158
  %i.al = trunc nsw <8 x i32> %i.ak to <8 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %index160
  store <8 x i8> %i.al, ptr %i.am, align 1
  %index.next162 = add nuw i64 %index160, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next162, %i.g
  br i1 %i.an, label %.split18.us, label %vec.epilog.vector.body159, !llvm.loop !108

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader ], [ %i.bp, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = ashr i32 %i.aq, %i.l
  %i.as = trunc nsw i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.as, ptr %i.at, align 1
  %i.au = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = ashr i32 %i.ax, %i.l
  %i.az = trunc nsw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = ashr i32 %i.be, %i.l
  %i.bg = trunc nsw i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = sext i8 %i.bk to i32
  %i.bm = ashr i32 %i.bl, %i.l
  %i.bn = trunc nsw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond27.not.3 = icmp eq i64 %i.bp, %i.g
  br i1 %exitcond27.not.3, label %.split18.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !109

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.k, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check55 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check55, label %.split.us.split.split.preheader171, label %vector.memcheck56

.split.us.split.split.preheader171:               ; preds = %vector.memcheck56, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck56:                                ; preds = %.split.us.split.split.preheader
  %i.bq = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.br
  %bound1 = icmp ult ptr %0, %i.bq
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %i.j, %i.bs
  %bound158 = icmp ult ptr %1, %i.bq
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  %bound060 = icmp ult ptr %0, %i.bs
  %bound161 = icmp ult ptr %1, %i.br
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx, %found.conflict62
  br i1 %conflict.rdx63, label %.split.us.split.split.preheader171, label %vector.body66

vector.body66:                                    ; preds = %vector.memcheck56, %bb.c
  %index67 = phi i64 [ %index.next85, %bb.c ], [ 0, %vector.memcheck56 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %index67 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %wide.load68 = load <4 x i8>, ptr %i.bt, align 1, !alias.scope !124 ; 2 uses
  %wide.load69 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !124 ; 2 uses
  %i.bv = icmp ne <4 x i8> %wide.load68, zeroinitializer ; 2 uses
  %i.bw = icmp ne <4 x i8> %wide.load69, zeroinitializer ; 2 uses
  %i.bx = shufflevector <4 x i1> %i.bw, <4 x i1> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = bitcast <8 x i1> %i.bx to i8
  %.not = icmp eq i8 %i.by, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body66
  store i32 1, ptr %i.j, align 4, !alias.scope !125, !noalias !126
  br label %bb.c

bb.c:                                             ; preds = %vector.body66, %bb.b
  %i.bz = icmp sgt <4 x i8> %wide.load68, splat (i8 -1)
  %i.ca = icmp sgt <4 x i8> %wide.load69, splat (i8 -1)
  %i.cb = select <4 x i1> %i.bz, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %i.cc = select <4 x i1> %i.ca, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %predphi = select <4 x i1> %i.bv, <4 x i8> %i.cb, <4 x i8> zeroinitializer
  %predphi84 = select <4 x i1> %i.bw, <4 x i8> %i.cc, <4 x i8> zeroinitializer
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %index67 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store <4 x i8> %predphi, ptr %i.cd, align 1, !alias.scope !127, !noalias !124
  store <4 x i8> %predphi84, ptr %i.ce, align 1, !alias.scope !127, !noalias !124
  %index.next85 = add nuw i64 %index67, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next85, %i.g
  br i1 %i.cf, label %.split18.us, label %vector.body66, !llvm.loop !114

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check104 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check104, label %.split.us.split.split.us.preheader168, label %vector.memcheck105

.split.us.split.split.us.preheader168:            ; preds = %vector.memcheck105, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck105:                               ; preds = %.split.us.split.split.us.preheader
  %i.cg = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.ci = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0106 = icmp ult ptr %i.j, %i.ch
  %bound1107 = icmp ult ptr %0, %i.cg
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.j, %i.ci
  %bound1110 = icmp ult ptr %1, %i.cg
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  %bound0113 = icmp ult ptr %0, %i.ci
  %bound1114 = icmp ult ptr %1, %i.ch
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.split.us.split.split.us.preheader168, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck105
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
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
  %.not166 = icmp eq i4 %i.co, 0
  br i1 %.not166, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body119
  store i32 1, ptr %i.j, align 4, !alias.scope !129, !noalias !130
  br label %bb.e

bb.e:                                             ; preds = %vector.body119, %bb.d
end_hunk_3
begin_hunk_4_@helper_neon_sqshli_b:bb.a
  %i.ex = add nuw nsw i32 %i.e, 8
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %0, i64 %i.g
  %i.fa = xor i64 %i.g, -1
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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 13 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 7 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.j, -16
  %i.l = icmp samesign ult i32 %i.j, 16
  %i.m = sub nsw i32 0, %i.j                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.n, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <8 x i16>, ptr %i.o, align 2
  %wide.load38 = load <8 x i16>, ptr %i.p, align 2
  %i.q = ashr <8 x i16> %wide.load, splat (i16 15)
  %i.r = ashr <8 x i16> %wide.load38, splat (i16 15)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <8 x i16> %i.q, ptr %i.s, align 2
  store <8 x i16> %i.r, ptr %i.t, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.v = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader.new, label %vec.epilog.vector.body.preheader, !prof !11

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader.new:                 ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next42, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index40
  %wide.load41 = load <4 x i16>, ptr %i.w, align 2
  %i.x = ashr <4 x i16> %wide.load41, splat (i16 15)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index40
  store <4 x i16> %i.x, ptr %i.y, align 2
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next42, %i.h
  br i1 %i.z, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !134

.split.us:                                        ; preds = %bb.a
  %i.aa = icmp slt i32 %i.j, 0
  br i1 %i.aa, label %vector.memcheck134, label %.split.us.split

vector.memcheck134:                               ; preds = %.split.us
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.ab = sub i64 %7, %6
  %diff.check135 = icmp ugt i64 %i.ab, -32
  br i1 %diff.check135, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck134
  %min.iters.check138 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check138, label %vec.epilog.ph155, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.vec140 = and i64 %i.h, 1073741808            ; 4 uses
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.ph139, %vector.body143
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load145 = load <8 x i16>, ptr %i.ac, align 2
  %wide.load146 = load <8 x i16>, ptr %i.ad, align 2
  %i.ae = sext <8 x i16> %wide.load145 to <8 x i32>
  %i.af = sext <8 x i16> %wide.load146 to <8 x i32>
  %i.ag = ashr <8 x i32> %i.ae, %broadcast.splat142
  %i.ah = ashr <8 x i32> %i.af, %broadcast.splat142
  %i.ai = trunc nsw <8 x i32> %i.ag to <8 x i16>
  %i.aj = trunc nsw <8 x i32> %i.ah to <8 x i16>
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  store <8 x i16> %i.aj, ptr %i.al, align 2
  %index.next147 = add nuw i64 %index144, 16      ; 2 uses
  %i.am = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.am, label %middle.block148, label %vector.body143, !llvm.loop !135

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.h, %n.vec140
  br i1 %cmp.n149, label %.split17.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %i.an = and i64 %i.g, 24
  %min.epilog.iters.check154 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check154, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph155, !prof !11

do_sqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck134, %vec.epilog.iter.check153
  %.015.us.us.ph = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck134 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check137 ]
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index160
  %wide.load161 = load <4 x i16>, ptr %i.ao, align 2
  %i.ap = sext <4 x i16> %wide.load161 to <4 x i32>
  %i.aq = ashr <4 x i32> %i.ap, %broadcast.splat158
  %i.ar = trunc nsw <4 x i32> %i.aq to <4 x i16>
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index160
  store <4 x i16> %i.ar, ptr %i.as, align 2
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next162, %i.h
  br i1 %i.at, label %.split17.us, label %vec.epilog.vector.body159, !llvm.loop !136

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader.new ], [ %i.bv, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32
  %i.ax = ashr i32 %i.aw, %i.m
  %i.ay = trunc nsw i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = sext i16 %i.bc to i32
  %i.be = ashr i32 %i.bd, %i.m
  %i.bf = trunc nsw i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ba
  store i16 %i.bf, ptr %i.bg, align 2
  %i.bh = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = sext i16 %i.bj to i32
  %i.bl = ashr i32 %i.bk, %i.m
  %i.bm = trunc nsw i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bh
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = sext i16 %i.bq to i32
  %i.bs = ashr i32 %i.br, %i.m
  %i.bt = trunc nsw i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bo
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bv, %i.h
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !137

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check54 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check54, label %.split.us.split.split.preheader171.new, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.split.us.split.split.preheader
  %i.bw = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.bx
  %bound1 = icmp ult ptr %0, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.k, %i.by
  %bound157 = icmp ult ptr %1, %i.bw
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %0, %i.by
  %bound160 = icmp ult ptr %1, %i.bx
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  br i1 %conflict.rdx62, label %.split.us.split.split.preheader171.new, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec64 = and i64 %i.h, 1073741816             ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %bb.c, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next84, %bb.c ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index66 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %wide.load67 = load <4 x i16>, ptr %i.bz, align 2, !alias.scope !151 ; 2 uses
  %wide.load68 = load <4 x i16>, ptr %i.ca, align 2, !alias.scope !151 ; 2 uses
  %i.cb = icmp ne <4 x i16> %wide.load67, zeroinitializer ; 2 uses
  %i.cc = icmp ne <4 x i16> %wide.load68, zeroinitializer ; 2 uses
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = bitcast <8 x i1> %i.cd to i8
  %.not = icmp eq i8 %i.ce, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body65
  store i32 1, ptr %i.k, align 4, !alias.scope !152, !noalias !153
  br label %bb.c

bb.c:                                             ; preds = %vector.body65, %bb.b
  %i.cf = icmp sgt <4 x i16> %wide.load67, splat (i16 -1)
  %i.cg = icmp sgt <4 x i16> %wide.load68, splat (i16 -1)
  %i.ch = select <4 x i1> %i.cf, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %i.ci = select <4 x i1> %i.cg, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %predphi = select <4 x i1> %i.cb, <4 x i16> %i.ch, <4 x i16> zeroinitializer
  %predphi83 = select <4 x i1> %i.cc, <4 x i16> %i.ci, <4 x i16> zeroinitializer
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index66 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i16> %predphi, ptr %i.cj, align 2, !alias.scope !154, !noalias !151
  store <4 x i16> %predphi83, ptr %i.ck, align 2, !alias.scope !154, !noalias !151
  %index.next84 = add nuw i64 %index66, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next84, %n.vec64
  br i1 %i.cl, label %middle.block85, label %vector.body65, !llvm.loop !142

middle.block85:                                   ; preds = %bb.c
  %cmp.n86 = icmp eq i64 %i.h, %n.vec64
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
  %i.cm = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cn = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.co = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0105 = icmp ult ptr %i.k, %i.cn
  %bound1106 = icmp ult ptr %0, %i.cm
  %found.conflict107 = and i1 %bound0105, %bound1106
  %bound0108 = icmp ult ptr %i.k, %i.co
  %bound1109 = icmp ult ptr %1, %i.cm
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %found.conflict107, %found.conflict110
  %bound0112 = icmp ult ptr %0, %i.co
  %bound1113 = icmp ult ptr %1, %i.cn
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  br i1 %conflict.rdx115, label %.split.us.split.split.us.preheader168.new, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body118

vector.body118:                                   ; preds = %bb.e, %vector.ph116
end_hunk_4
begin_hunk_5_@helper_neon_sqshli_h:bb.a
  %i.dj = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2            ; 2 uses
  %i.dm = sext i16 %i.dl to i32
  %i.dn = shl nsw i32 %i.dm, %i.j                 ; 2 uses
  %i.do = add nsw i32 %i.dn, 32768
  %.not.us.us.1 = icmp ult i32 %i.do, 65536
  br i1 %.not.us.us.1, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.k, align 4
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
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !148

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader171.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader171.new ], [ %i.eh, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dv = load i16, ptr %i.du, align 2            ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.k, align 4
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
  store i32 1, ptr %i.k, align 4
  %i.ee = icmp sgt i16 %i.ec, -1
  %i.ef = select i1 %i.ee, i16 32767, i16 -32768
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ %i.ef, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ea
  store i16 %.3.i.us.1, ptr %i.eg, align 2
  %i.eh = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.eh, %i.h
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
  %exitcond.not.3 = icmp eq i64 %i.fb, %i.h
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !150

.split17.us:                                      ; preds = %vec.epilog.vector.body, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %bb.e, %do_sqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body159, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block85, %middle.block148
  %i.fc = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.fc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.fd = add nuw nsw i32 %i.e, 8
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %0, i64 %i.g
  %i.fg = xor i64 %i.g, -1
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

bb.c:                                             ; preds = %bb.b
  %i.p = ashr i32 %i.k, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = sub nsw i32 0, %i.o
  %i.s = ashr i32 %i.k, %i.r
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i32 %i.o, 32
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = shl i32 %i.k, %i.o                       ; 2 uses
  %i.v = ashr exact i32 %i.u, %i.o
  %i.w = icmp eq i32 %i.v, %i.k
  br i1 %i.w, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = icmp eq i32 %i.k, 0
  br i1 %i.x, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.y = icmp sgt i32 %i.k, -1
  %i.z = select i1 %i.y, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.p, %bb.c ], [ 0, %bb.h ], [ %i.u, %bb.g ], [ %i.s, %bb.e ], [ %i.z, %bb.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !159

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
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 16 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 9 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.j, -32
  %i.l = icmp samesign ult i32 %i.j, 32
  %i.m = sub nsw i32 0, %i.j                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_sqrshl_bhs.exit.preheader

do_sqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %do_sqrshl_bhs.exit.preheader163, label %vector.ph

vector.ph:                                        ; preds = %do_sqrshl_bhs.exit.preheader
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4
  %wide.load38 = load <4 x i32>, ptr %i.p, align 4
  %i.q = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.r = ashr <4 x i32> %wide.load38, splat (i32 31)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %i.q, ptr %i.s, align 4
  store <4 x i32> %i.r, ptr %i.t, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_sqrshl_bhs.exit.preheader163

do_sqrshl_bhs.exit.preheader163:                  ; preds = %do_sqrshl_bhs.exit.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol

do_sqrshl_bhs.exit.prol:                          ; preds = %do_sqrshl_bhs.exit.preheader163, %do_sqrshl_bhs.exit.prol
  %.015.prol = phi i64 [ %i.z, %do_sqrshl_bhs.exit.prol ], [ %.015.ph, %do_sqrshl_bhs.exit.preheader163 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_sqrshl_bhs.exit.prol ], [ 0, %do_sqrshl_bhs.exit.preheader163 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.prol
  %i.w = load i32, ptr %i.v, align 4
  %i.x = ashr i32 %i.w, 31
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.prol
  store i32 %i.x, ptr %i.y, align 4
  %i.z = add nuw nsw i64 %.015.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol, !llvm.loop !161

do_sqrshl_bhs.exit.prol.loopexit:                 ; preds = %do_sqrshl_bhs.exit.prol, %do_sqrshl_bhs.exit.preheader163
  %.015.unr = phi i64 [ %.015.ph, %do_sqrshl_bhs.exit.preheader163 ], [ %i.z, %do_sqrshl_bhs.exit.prol ]
  %i.aa = sub nsw i64 %.015.ph, %i.h
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.split17.us, label %do_sqrshl_bhs.exit

.split.us:                                        ; preds = %bb.a
  %i.ac = icmp slt i32 %i.j, 0
  br i1 %i.ac, label %do_sqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check143 = icmp samesign ult i32 %.v.v.i, 24
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.ad = sub i64 %7, %6
  %diff.check141 = icmp ugt i64 %i.ad, -32
  %or.cond156 = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond156, label %do_sqrshl_bhs.exit.us.us.preheader158, label %vector.ph144

vector.ph144:                                     ; preds = %do_sqrshl_bhs.exit.us.us.preheader
  %n.vec145 = and i64 %i.h, 536870904             ; 3 uses
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body148 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index149 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.ae, align 4
  %wide.load151 = load <4 x i32>, ptr %i.af, align 4
  %i.ag = ashr <4 x i32> %wide.load150, %broadcast.splat147
  %i.ah = ashr <4 x i32> %wide.load151, %broadcast.splat147
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index149 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %i.ag, ptr %i.ai, align 4
  store <4 x i32> %i.ah, ptr %i.aj, align 4
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.ak, label %middle.block153, label %vector.body148, !llvm.loop !162

middle.block153:                                  ; preds = %vector.body148
  %cmp.n154 = icmp eq i64 %i.h, %n.vec145
  br i1 %cmp.n154, label %.split17.us, label %do_sqrshl_bhs.exit.us.us.preheader158

do_sqrshl_bhs.exit.us.us.preheader158:            ; preds = %do_sqrshl_bhs.exit.us.us.preheader, %middle.block153
  %.015.us.us.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.us.us.preheader ], [ %n.vec145, %middle.block153 ] ; 3 uses
  %xtraiter171 = and i64 %i.h, 2                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol

do_sqrshl_bhs.exit.us.us.prol:                    ; preds = %do_sqrshl_bhs.exit.us.us.preheader158, %do_sqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ap, %do_sqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader158 ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %do_sqrshl_bhs.exit.us.us.prol ], [ 0, %do_sqrshl_bhs.exit.us.us.preheader158 ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.am = load i32, ptr %i.al, align 4
  %i.an = ashr i32 %i.am, %i.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol, !llvm.loop !163

do_sqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_sqrshl_bhs.exit.us.us.prol, %do_sqrshl_bhs.exit.us.us.preheader158
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader158 ], [ %i.ap, %do_sqrshl_bhs.exit.us.us.prol ]
  %i.aq = sub nsw i64 %.015.us.us.ph, %i.h
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.split17.us, label %do_sqrshl_bhs.exit.us.us

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.bl, %do_sqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_sqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.at = load i32, ptr %i.as, align 4
  %i.au = ashr i32 %i.at, %i.m
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = ashr i32 %i.ay, %i.m
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = ashr i32 %i.bd, %i.m
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = ashr i32 %i.bi, %i.m
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bl, %i.h
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !164

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check50 = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check50, label %.split.us.split.split.preheader161.new, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.split.us.split.split.preheader
  %i.bm = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.bn
  %bound1 = icmp ult ptr %0, %i.bm
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.k, %i.bo
  %bound153 = icmp ult ptr %1, %i.bm
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  %bound055 = icmp ult ptr %0, %i.bo
  %bound156 = icmp ult ptr %1, %i.bn
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  br i1 %conflict.rdx58, label %.split.us.split.split.preheader161.new, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck51
  %n.vec60 = and i64 %i.h, 536870904              ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %bb.c, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next80, %bb.c ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index62 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load63 = load <4 x i32>, ptr %i.bp, align 4, !alias.scope !178 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %i.bq, align 4, !alias.scope !178 ; 2 uses
  %i.br = icmp ne <4 x i32> %wide.load63, zeroinitializer ; 2 uses
  %i.bs = icmp ne <4 x i32> %wide.load64, zeroinitializer ; 2 uses
  %i.bt = shufflevector <4 x i1> %i.bs, <4 x i1> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bu = bitcast <8 x i1> %i.bt to i8
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body61
  store i32 1, ptr %i.k, align 4, !alias.scope !179, !noalias !180
  br label %bb.c

bb.c:                                             ; preds = %vector.body61, %bb.b
  %i.bv = icmp sgt <4 x i32> %wide.load63, splat (i32 -1)
  %i.bw = icmp sgt <4 x i32> %wide.load64, splat (i32 -1)
  %i.bx = select <4 x i1> %i.bv, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %i.by = select <4 x i1> %i.bw, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %predphi = select <4 x i1> %i.br, <4 x i32> %i.bx, <4 x i32> zeroinitializer
  %predphi79 = select <4 x i1> %i.bs, <4 x i32> %i.by, <4 x i32> zeroinitializer
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index62 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x i32> %predphi, ptr %i.bz, align 4, !alias.scope !181, !noalias !178
  store <4 x i32> %predphi79, ptr %i.ca, align 4, !alias.scope !181, !noalias !178
  %index.next80 = add nuw i64 %index62, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next80, %n.vec60
  br i1 %i.cb, label %middle.block81, label %vector.body61, !llvm.loop !169

middle.block81:                                   ; preds = %bb.c
  %cmp.n82 = icmp eq i64 %i.h, %n.vec60
  br i1 %cmp.n82, label %.split17.us, label %.split.us.split.split.preheader161.new

.split.us.split.split.preheader161.new:           ; preds = %vector.memcheck51, %.split.us.split.split.preheader, %middle.block81
  %.015.us.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec60, %middle.block81 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check99 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check99, label %.split.us.split.split.us.preheader159.new, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.split.us.split.split.us.preheader
  %i.cc = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.ce = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0101 = icmp ult ptr %i.k, %i.cd
  %bound1102 = icmp ult ptr %0, %i.cc
  %found.conflict103 = and i1 %bound0101, %bound1102
  %bound0104 = icmp ult ptr %i.k, %i.ce
  %bound1105 = icmp ult ptr %1, %i.cc
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %found.conflict103, %found.conflict106
  %bound0108 = icmp ult ptr %0, %i.ce
  %bound1109 = icmp ult ptr %1, %i.cd
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %.split.us.split.split.us.preheader159.new, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck100
  %n.vec113 = and i64 %i.h, 536870904             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
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
  %.not157 = icmp eq i8 %i.co, 0
  br i1 %.not157, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body114
  store i32 1, ptr %i.k, align 4, !alias.scope !183, !noalias !184
  br label %bb.e

end_hunk_5
begin_hunk_6_@helper_neon_sqshli_s:bb.a
  %.3.i.us.us20 = phi i32 [ %i.dc, %bb.f ], [ %i.cy, %.split.us.split.split.us ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.dd, align 4
  %i.de = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = shl i32 %i.dg, %i.j                     ; 2 uses
  %i.di = ashr exact i32 %i.dh, %i.j
  %i.dj = icmp eq i32 %i.di, %i.dg
  br i1 %i.dj, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.k, align 4
  %i.dk = icmp sgt i32 %i.dg, -1
  %i.dl = select i1 %i.dk, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.us19.1

do_sqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ %i.dl, %bb.g ], [ %i.dh, %do_sqrshl_bhs.exit.us.us19 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  store i32 %.3.i.us.us20.1, ptr %i.dm, align 4
  %i.dn = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.dn, %i.h
  br i1 %exitcond25.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !175

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader161.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader161.new ], [ %i.eb, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.k, align 4
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
  store i32 1, ptr %i.k, align 4
  %i.dy = icmp sgt i32 %i.dw, -1
  %i.dz = select i1 %i.dy, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ %i.dz, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  store i32 %.3.i.us.1, ptr %i.ea, align 4
  %i.eb = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.eb, %i.h
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
  %exitcond.not.3 = icmp eq i64 %i.ev, %i.h
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !177

.split17.us:                                      ; preds = %do_sqrshl_bhs.exit.prol.loopexit, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %do_sqrshl_bhs.exit.us.us19.1, %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block81, %middle.block137, %middle.block153
  %i.ew = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ew, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ex = add nuw nsw i32 %i.e, 8
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %0, i64 %i.g
  %i.fa = xor i64 %i.g, -1
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
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ac, %do_sqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 56
  %i.o = ashr exact i64 %i.n, 56                  ; 6 uses
  %i.p = icmp slt i64 %i.o, -63
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = ashr i64 %i.k, 63
  br label %do_sqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp slt i64 %i.o, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = sub nsw i64 0, %i.o
  %i.t = ashr i64 %i.k, %i.s
  br label %do_sqrshl_d.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp samesign ult i64 %i.o, 64
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = shl i64 %i.k, %i.o                       ; 2 uses
  %i.w = ashr exact i64 %i.v, %i.o
  %i.x = icmp eq i64 %i.w, %i.k
  br i1 %i.x, label %do_sqrshl_d.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %i.k, 0
  br i1 %i.y, label %do_sqrshl_d.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.z = icmp slt i64 %i.k, 0
  %i.aa = select i1 %i.z, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.1.i = phi i64 [ %i.q, %bb.c ], [ 0, %bb.h ], [ %i.v, %bb.g ], [ %i.t, %bb.e ], [ %i.aa, %bb.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !186

bb.j:                                             ; preds = %do_sqrshl_d.exit
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
define dso_local void @helper_neon_sqshli_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = lshr i32 %3, 10
  %i.i = lshr exact i64 %i.g, 3                   ; 14 uses
  %i.j = zext nneg i32 %i.h to i64
  %sext = shl i64 %i.j, 56
  %i.k = ashr exact i64 %sext, 56                 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12656 ; 6 uses
  %i.m = icmp slt i64 %i.k, -63
  %i.n = icmp samesign ult i64 %i.k, 64
  %i.o = sub nsw i64 0, %i.k                      ; 6 uses
  br i1 %i.m, label %do_sqrshl_d.exit.us.preheader, label %.split

do_sqrshl_d.exit.us.preheader:                    ; preds = %bb.a
  %min.iters.check45 = icmp samesign ult i32 %.v.v.i, 40
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.p = sub i64 %5, %4
  %diff.check43 = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check45, %diff.check43
  br i1 %or.cond, label %do_sqrshl_d.exit.us.preheader57, label %vector.ph46

vector.ph46:                                      ; preds = %do_sqrshl_d.exit.us.preheader
  %n.vec47 = and i64 %i.i, 268435452              ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body48 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index49 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.q, align 8
  %wide.load51 = load <2 x i64>, ptr %i.r, align 8
  %i.s = ashr <2 x i64> %wide.load50, splat (i64 63)
  %i.t = ashr <2 x i64> %wide.load51, splat (i64 63)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index49 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %i.s, ptr %i.u, align 8
  store <2 x i64> %i.t, ptr %i.v, align 8
  %index.next52 = add nuw i64 %index49, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.w, label %middle.block53, label %vector.body48, !llvm.loop !187

middle.block53:                                   ; preds = %vector.body48
  %cmp.n54 = icmp eq i64 %i.i, %n.vec47
  br i1 %cmp.n54, label %.split17.us, label %do_sqrshl_d.exit.us.preheader57

do_sqrshl_d.exit.us.preheader57:                  ; preds = %do_sqrshl_d.exit.us.preheader, %middle.block53
  %.015.us.ph = phi i64 [ 0, %do_sqrshl_d.exit.us.preheader ], [ %n.vec47, %middle.block53 ] ; 3 uses
  %xtraiter70 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %do_sqrshl_d.exit.us.prol.loopexit, label %do_sqrshl_d.exit.us.prol

do_sqrshl_d.exit.us.prol:                         ; preds = %do_sqrshl_d.exit.us.preheader57, %do_sqrshl_d.exit.us.prol
  %.015.us.prol = phi i64 [ %i.ab, %do_sqrshl_d.exit.us.prol ], [ %.015.us.ph, %do_sqrshl_d.exit.us.preheader57 ] ; 3 uses
  %prol.iter72 = phi i64 [ %prol.iter72.next, %do_sqrshl_d.exit.us.prol ], [ 0, %do_sqrshl_d.exit.us.preheader57 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = ashr i64 %i.y, 63
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.prol
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %.015.us.prol, 1        ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %do_sqrshl_d.exit.us.prol.loopexit, label %do_sqrshl_d.exit.us.prol, !llvm.loop !188

do_sqrshl_d.exit.us.prol.loopexit:                ; preds = %do_sqrshl_d.exit.us.prol, %do_sqrshl_d.exit.us.preheader57
  %.015.us.unr = phi i64 [ %.015.us.ph, %do_sqrshl_d.exit.us.preheader57 ], [ %i.ab, %do_sqrshl_d.exit.us.prol ]
  %i.ac = sub nsw i64 %.015.us.ph, %i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.split17.us, label %do_sqrshl_d.exit.us

do_sqrshl_d.exit.us:                              ; preds = %do_sqrshl_d.exit.us.prol.loopexit, %do_sqrshl_d.exit.us
  %.015.us = phi i64 [ %i.ax, %do_sqrshl_d.exit.us ], [ %.015.us.unr, %do_sqrshl_d.exit.us.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = ashr i64 %i.af, 63
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.015.us, 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = ashr i64 %i.ak, 63
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  store i64 %i.al, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = ashr i64 %i.ap, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.015.us, 3             ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = ashr i64 %i.au, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.015.us, 4             ; 2 uses
  %exitcond29.not.3 = icmp eq i64 %i.ax, %i.i
  br i1 %exitcond29.not.3, label %.split17.us, label %do_sqrshl_d.exit.us, !llvm.loop !189

.split:                                           ; preds = %bb.a
  %i.ay = icmp slt i64 %i.k, 0
  br i1 %i.ay, label %do_sqrshl_d.exit.us19.preheader, label %.split.split

do_sqrshl_d.exit.us19.preheader:                  ; preds = %.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.az = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond56 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond56, label %do_sqrshl_d.exit.us19.preheader58, label %vector.ph

vector.ph:                                        ; preds = %do_sqrshl_d.exit.us19.preheader
  %n.vec = and i64 %i.i, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x i64>, ptr %i.ba, align 8
  %wide.load41 = load <2 x i64>, ptr %i.bb, align 8
  %i.bc = ashr <2 x i64> %wide.load, %broadcast.splat
  %i.bd = ashr <2 x i64> %wide.load41, %broadcast.splat
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8
  store <2 x i64> %i.bd, ptr %i.bf, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_sqrshl_d.exit.us19.preheader58

do_sqrshl_d.exit.us19.preheader58:                ; preds = %do_sqrshl_d.exit.us19.preheader, %middle.block
  %.015.us18.ph = phi i64 [ 0, %do_sqrshl_d.exit.us19.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter68 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %do_sqrshl_d.exit.us19.prol.loopexit, label %do_sqrshl_d.exit.us19.prol

do_sqrshl_d.exit.us19.prol:                       ; preds = %do_sqrshl_d.exit.us19.preheader58, %do_sqrshl_d.exit.us19.prol
  %.015.us18.prol = phi i64 [ %i.bl, %do_sqrshl_d.exit.us19.prol ], [ %.015.us18.ph, %do_sqrshl_d.exit.us19.preheader58 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_sqrshl_d.exit.us19.prol ], [ 0, %do_sqrshl_d.exit.us19.preheader58 ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us18.prol
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = ashr i64 %i.bi, %i.o
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us18.prol
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = add nuw nsw i64 %.015.us18.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %do_sqrshl_d.exit.us19.prol.loopexit, label %do_sqrshl_d.exit.us19.prol, !llvm.loop !191

do_sqrshl_d.exit.us19.prol.loopexit:              ; preds = %do_sqrshl_d.exit.us19.prol, %do_sqrshl_d.exit.us19.preheader58
  %.015.us18.unr = phi i64 [ %.015.us18.ph, %do_sqrshl_d.exit.us19.preheader58 ], [ %i.bl, %do_sqrshl_d.exit.us19.prol ]
  %i.bm = sub nsw i64 %.015.us18.ph, %i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %.split17.us, label %do_sqrshl_d.exit.us19

do_sqrshl_d.exit.us19:                            ; preds = %do_sqrshl_d.exit.us19.prol.loopexit, %do_sqrshl_d.exit.us19
  %.015.us18 = phi i64 [ %i.ch, %do_sqrshl_d.exit.us19 ], [ %.015.us18.unr, %do_sqrshl_d.exit.us19.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us18
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = ashr i64 %i.bp, %i.o
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us18
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.015.us18, 1           ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = ashr i64 %i.bu, %i.o
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = add nuw nsw i64 %.015.us18, 2           ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = ashr i64 %i.bz, %i.o
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  store i64 %i.ca, ptr %i.cb, align 8
  %i.cc = add nuw nsw i64 %.015.us18, 3           ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = ashr i64 %i.ce, %i.o
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cc
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = add nuw nsw i64 %.015.us18, 4           ; 2 uses
  %exitcond28.not.3 = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond28.not.3, label %.split17.us, label %do_sqrshl_d.exit.us19, !llvm.loop !192

.split.split:                                     ; preds = %.split
  br i1 %i.n, label %.split.split.split.us.preheader, label %.split.split.split.preheader

.split.split.split.preheader:                     ; preds = %.split.split
  %i.ci = icmp eq i32 %.v.v.i, 0
  br i1 %i.ci, label %.split.split.split.epil.preheader, label %.split.split.split.preheader.new

.split.split.split.preheader.new:                 ; preds = %.split.split.split.preheader
  %unroll_iter = and i64 %i.i, 268435454
  br label %.split.split.split

.split.split.split.us.preheader:                  ; preds = %.split.split
  %i.cj = icmp eq i32 %.v.v.i, 0
  br i1 %i.cj, label %.split.split.split.us.epil.preheader, label %.split.split.split.us.preheader.new

.split.split.split.us.preheader.new:              ; preds = %.split.split.split.us.preheader
  %unroll_iter66 = and i64 %i.i, 268435454
  br label %.split.split.split.us

.split.split.split.us:                            ; preds = %do_sqrshl_d.exit.us22.1, %.split.split.split.us.preheader.new
  %.015.us21 = phi i64 [ 0, %.split.split.split.us.preheader.new ], [ %i.db, %do_sqrshl_d.exit.us22.1 ] ; 4 uses
  %niter67 = phi i64 [ 0, %.split.split.split.us.preheader.new ], [ %niter67.next.1, %do_sqrshl_d.exit.us22.1 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us21
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = shl i64 %i.cl, %i.k                     ; 2 uses
  %i.cn = ashr exact i64 %i.cm, %i.k
  %i.co = icmp eq i64 %i.cn, %i.cl
  br i1 %i.co, label %do_sqrshl_d.exit.us22, label %bb.b

bb.b:                                             ; preds = %.split.split.split.us
  store i32 1, ptr %i.l, align 4
  %i.cp = icmp slt i64 %i.cl, 0
  %i.cq = select i1 %i.cp, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.us22

do_sqrshl_d.exit.us22:                            ; preds = %bb.b, %.split.split.split.us
  %.1.i.us23 = phi i64 [ %i.cq, %bb.b ], [ %i.cm, %.split.split.split.us ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us21
  store i64 %.1.i.us23, ptr %i.cr, align 8
  %i.cs = or disjoint i64 %.015.us21, 1           ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = shl i64 %i.cu, %i.k                     ; 2 uses
  %i.cw = ashr exact i64 %i.cv, %i.k
  %i.cx = icmp eq i64 %i.cw, %i.cu
  br i1 %i.cx, label %do_sqrshl_d.exit.us22.1, label %bb.c

bb.c:                                             ; preds = %do_sqrshl_d.exit.us22
  store i32 1, ptr %i.l, align 4
  %i.cy = icmp slt i64 %i.cu, 0
  %i.cz = select i1 %i.cy, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.us22.1

do_sqrshl_d.exit.us22.1:                          ; preds = %bb.c, %do_sqrshl_d.exit.us22
  %.1.i.us23.1 = phi i64 [ %i.cz, %bb.c ], [ %i.cv, %do_sqrshl_d.exit.us22 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  store i64 %.1.i.us23.1, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.015.us21, 2           ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %.split17.us.loopexit60.unr-lcssa, label %.split.split.split.us, !llvm.loop !193

.split.split.split:                               ; preds = %do_sqrshl_d.exit.1, %.split.split.split.preheader.new
  %.015 = phi i64 [ 0, %.split.split.split.preheader.new ], [ %i.dp, %do_sqrshl_d.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.split.split.preheader.new ], [ %niter.next.1, %do_sqrshl_d.exit.1 ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %do_sqrshl_d.exit, label %bb.d

bb.d:                                             ; preds = %.split.split.split
  store i32 1, ptr %i.l, align 4
  %i.df = icmp slt i64 %i.dd, 0
  %i.dg = select i1 %i.df, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %.split.split.split, %bb.d
  %.1.i = phi i64 [ %i.dg, %bb.d ], [ 0, %.split.split.split ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.dh, align 8
  %i.di = or disjoint i64 %.015, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %do_sqrshl_d.exit.1, label %bb.e

bb.e:                                             ; preds = %do_sqrshl_d.exit
  store i32 1, ptr %i.l, align 4
  %i.dm = icmp slt i64 %i.dk, 0
  %i.dn = select i1 %i.dm, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.1

do_sqrshl_d.exit.1:                               ; preds = %bb.e, %do_sqrshl_d.exit
  %.1.i.1 = phi i64 [ %i.dn, %bb.e ], [ 0, %do_sqrshl_d.exit ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  store i64 %.1.i.1, ptr %i.do, align 8
  %i.dp = add nuw nsw i64 %.015, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split17.us.loopexit61.unr-lcssa, label %.split.split.split, !llvm.loop !193

.split17.us.loopexit60.unr-lcssa:                 ; preds = %do_sqrshl_d.exit.us22.1
  %i.dq = and i64 %i.g, 8
  %lcmp.mod64.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod64.not, label %.split17.us, label %.split.split.split.us.epil.preheader

.split.split.split.us.epil.preheader:             ; preds = %.split17.us.loopexit60.unr-lcssa, %.split.split.split.us.preheader
  %.015.us21.epil.init = phi i64 [ 0, %.split.split.split.us.preheader ], [ %i.db, %.split17.us.loopexit60.unr-lcssa ] ; 2 uses
  %lcmp.mod65 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us21.epil.init
  %i.ds = load i64, ptr %i.dr, align 8            ; 3 uses
  %i.dt = shl i64 %i.ds, %i.k                     ; 2 uses
  %i.du = ashr exact i64 %i.dt, %i.k
  %i.dv = icmp eq i64 %i.du, %i.ds
  br i1 %i.dv, label %do_sqrshl_d.exit.us22.epil, label %bb.f
end_hunk_6
