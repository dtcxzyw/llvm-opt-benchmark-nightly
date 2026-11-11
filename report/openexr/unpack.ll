Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/unpack?download=true
inline.NumInlined: 139
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@internal_exr_match_decode:bb.a
bb.a:
  %i.a = load atomic i32, ptr @internal_exr_match_decode.init_cpu_check seq_cst, align 4, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !47
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %choose_half_to_float_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #9, !srcloc !48
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 2 ; 2 uses
  %i.g = and i32 %i.f, 134217728
  %.not7.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not7.i.i.i, label %choose_half_to_float_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i32, i32 } asm sideeffect "xgetbv", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #10, !srcloc !49
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = and i32 %i.i, 6
  %.not13.i.i.i = icmp eq i32 %i.j, 6
  %i.k = and i32 %i.f, 805306368
  %.not.i = icmp eq i32 %i.k, 805306368
  %or.cond.i = and i1 %.not.i, %.not13.i.i.i
  br i1 %or.cond.i, label %bb.e, label %choose_half_to_float_impl.exit

bb.e:                                             ; preds = %bb.d
  store ptr @half_to_float_buffer_f16c, ptr @half_to_float_buffer, align 8, !tbaa !10
  br label %choose_half_to_float_impl.exit

choose_half_to_float_impl.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  store atomic i32 0, ptr @internal_exr_match_decode.init_cpu_check seq_cst, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %choose_half_to_float_impl.exit, %bb.a
  %.not50 = icmp eq i32 %1, 0
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !17
  %i.n = and i16 %i.m, 2
  %.not53 = icmp eq i16 %i.n, 0
  %generic_unpack_deep.generic_unpack_deep_pointers = select i1 %.not53, ptr @generic_unpack_deep, ptr @generic_unpack_deep_pointers
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.o = icmp sgt i32 %9, 0
  %.not52 = icmp eq i32 %8, 0                     ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  br i1 %.not52, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i16, ptr %i.p, align 8, !tbaa !18   ; 5 uses
  %i.r = sext i16 %i.q to i32
  %i.s = icmp eq i32 %2, %i.r
  %i.t = icmp eq i32 %4, 1
  %or.cond = and i1 %i.t, %i.s
  %i.u = icmp eq i32 %5, 2
  %or.cond3 = and i1 %i.u, %or.cond
  br i1 %or.cond3, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.v = icmp sgt i32 %11, 0
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  switch i16 %i.q, label %bb.n [
    i16 4, label %bb.ag
    i16 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.ag

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.w = icmp sgt i32 %12, 0
  br i1 %i.w, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  switch i16 %i.q, label %bb.q [
    i16 4, label %bb.ag
    i16 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.ag

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.x = icmp eq i32 %10, 4
  br i1 %i.x, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %switch.selectcmp = icmp eq i16 %i.q, 3
  %switch.select = select i1 %switch.selectcmp, ptr @unpack_half_to_float_3chan_planar, ptr @generic_unpack
  %switch.selectcmp54 = icmp eq i16 %i.q, 4
  %switch.select55 = select i1 %switch.selectcmp54, ptr @unpack_half_to_float_4chan_planar, ptr %switch.select
  br label %bb.ag

bb.s:                                             ; preds = %bb.h
  br i1 %.not52, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i16, ptr %i.y, align 8, !tbaa !18   ; 6 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = icmp ne i32 %2, %i.aa
  %i.ac = icmp slt i32 %6, 1
  %or.cond5 = or i1 %i.ac, %i.ab
  %i.ad = icmp slt i32 %7, 1
  %or.cond7 = or i1 %i.ad, %or.cond5
  br i1 %or.cond7, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i32 %6, label %bb.af [
    i32 2, label %bb.v
    i32 4, label %bb.ag
  ]

bb.v:                                             ; preds = %bb.u
  %i.ae = icmp sgt i32 %11, 0
  br i1 %i.ae, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  switch i16 %i.z, label %bb.y [
    i16 4, label %bb.ag
    i16 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.ag

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.af = icmp sgt i32 %12, 0
  br i1 %i.af, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  switch i16 %i.z, label %bb.ab [
    i16 4, label %bb.ag
    i16 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ag = icmp eq i32 %10, 2
  br i1 %i.ag, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  switch i16 %i.z, label %bb.ae [
    i16 4, label %bb.ag
    i16 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %switch.selectcmp56 = icmp eq i16 %i.z, 3
  %switch.select57 = select i1 %switch.selectcmp56, ptr @unpack_16bit_3chan, ptr @unpack_16bit
  %switch.selectcmp58 = icmp eq i16 %i.z, 4
  %switch.select59 = select i1 %switch.selectcmp58, ptr @unpack_16bit_4chan, ptr %switch.select57
  br label %bb.ag

bb.af:                                            ; preds = %bb.u
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.i, %bb.j, %bb.q, %bb.r, %bb.u, %bb.ac, %bb.z, %bb.w, %bb.s, %bb.t, %bb.o, %bb.l, %bb.g, %bb.af, %bb.ad, %bb.aa, %bb.x, %bb.p, %bb.m
  %.0 = phi ptr [ %generic_unpack_deep.generic_unpack_deep_pointers, %bb.g ], [ @generic_unpack, %bb.af ], [ @generic_unpack, %bb.t ], [ @generic_unpack, %bb.i ], [ @unpack_half_to_float_3chan_interleave, %bb.m ], [ @unpack_half_to_float_4chan_interleave, %bb.l ], [ @unpack_half_to_float_3chan_interleave_rev, %bb.p ], [ @unpack_half_to_float_4chan_interleave_rev, %bb.o ], [ %switch.select55, %bb.r ], [ @unpack_32bit, %bb.u ], [ @generic_unpack, %bb.s ], [ @unpack_16bit_3chan_interleave, %bb.x ], [ @unpack_16bit_4chan_interleave, %bb.w ], [ @unpack_16bit_3chan_interleave_rev, %bb.aa ], [ @unpack_16bit_4chan_interleave_rev, %bb.z ], [ @unpack_16bit_3chan_planar, %bb.ad ], [ @unpack_16bit_4chan_planar, %bb.ac ], [ %switch.select59, %bb.ae ], [ @generic_unpack, %bb.j ], [ @generic_unpack, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @generic_unpack_deep_pointers(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %.not398574 = icmp sgt i32 %i.e, 0
  br i1 %.not398574, label %.preheader465.lr.ph, label %.thread426

.preheader465.lr.ph:                              ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 11 uses
  %i.q = icmp sgt i32 %i.g, 0                     ; 10 uses
  %i.r = sext i32 %i.g to i64                     ; 2 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %wide.trip.count666 = zext nneg i32 %i.e to i64
  %.pre = load i16, ptr %i.n, align 8, !tbaa !18
  %wide.trip.count = zext i32 %i.g to i64         ; 3 uses
  %wide.trip.count610 = zext nneg i32 %i.g to i64
  %wide.trip.count616 = zext nneg i32 %i.g to i64
  %wide.trip.count622 = zext nneg i32 %i.g to i64
  %wide.trip.count628 = zext nneg i32 %i.g to i64
  %wide.trip.count634 = zext nneg i32 %i.g to i64
  %wide.trip.count640 = zext nneg i32 %i.g to i64
  %wide.trip.count646 = zext nneg i32 %i.g to i64
  %wide.trip.count652 = zext nneg i32 %i.g to i64
  %wide.trip.count658 = zext nneg i32 %i.g to i64
  %min.iters.check = icmp ult i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader465

.preheader465:                                    ; preds = %.preheader465.lr.ph, %._crit_edge
  %i.t = phi i16 [ %.pre, %.preheader465.lr.ph ], [ %i.oq, %._crit_edge ] ; 2 uses
  %indvars.iv663 = phi i64 [ 0, %.preheader465.lr.ph ], [ %indvars.iv.next664, %._crit_edge ] ; 3 uses
  %.0302577 = phi ptr [ %i.m, %.preheader465.lr.ph ], [ %.1303.lcssa, %._crit_edge ] ; 2 uses
  %.0311576 = phi ptr [ %i.k, %.preheader465.lr.ph ], [ %i.or, %._crit_edge ] ; 13 uses
  %.not399569 = icmp sgt i16 %i.t, 0
  br i1 %.not399569, label %.lr.ph572, label %._crit_edge

.lr.ph572:                                        ; preds = %.preheader465
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.v = icmp sge i64 %indvars.iv663, %i.s
  %i.w = getelementptr [4 x i8], ptr %.0311576, i64 %i.r
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = sub nsw i64 %indvars.iv663, %i.s
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph572, %.loopexit446
  %indvars.iv660 = phi i64 [ 0, %.lr.ph572 ], [ %indvars.iv.next661, %.loopexit446 ] ; 2 uses
  %.1303571 = phi ptr [ %.0302577, %.lr.ph572 ], [ %.12.ph, %.loopexit446 ] ; 19 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv660 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28  ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !29 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = icmp ne ptr %i.af, null
  %or.cond = select i1 %i.v, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i16, ptr %i.p, align 2, !tbaa !17
  %i.ai = and i16 %i.ah, 1
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %bb.d, label %.preheader463

.preheader463:                                    ; preds = %bb.c
  br i1 %i.q, label %.lr.ph.preheader, label %.loopexit464

.lr.ph.preheader:                                 ; preds = %.preheader463
  br i1 %min.iters.check, label %.lr.ph.preheader741, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.al, %vector.body ], [ zeroinitializer, %.lr.ph.preheader ]
  %vec.phi731 = phi <4 x i32> [ %i.am, %vector.body ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !30
  %wide.load732 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !30
  %i.al = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.am = add <4 x i32> %wide.load732, %vec.phi731 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit464, label %.lr.ph.preheader741

.lr.ph.preheader741:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0356469.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader741, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader741 ] ; 2 uses
  %.0356469 = phi i32 [ %i.ar, %.lr.ph ], [ %.0356469.ph, %.lr.ph.preheader741 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !30
  %i.ar = add nsw i32 %i.aq, %.0356469            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit464, label %.lr.ph, !llvm.loop !51

bb.d:                                             ; preds = %bb.c
  %i.as = load i32, ptr %i.x, align 4, !tbaa !30
  br label %.loopexit464

.loopexit464:                                     ; preds = %.lr.ph, %middle.block, %.preheader463, %bb.d
  %.1357 = phi i32 [ %i.as, %bb.d ], [ 0, %.preheader463 ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph ]
  %i.at = sext i8 %i.ab to i64
  %i.au = sext i32 %.1357 to i64
  %i.av = mul nsw i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.1303571, i64 %i.av
  br label %.loopexit446

bb.e:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !34
  %i.az = sext i32 %i.ay to i64
  %i.ba = lshr i64 %i.az, 3
  %i.bb = mul i64 %i.ba, %i.y
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bb ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = sext i32 %i.be to i64
  %i.bg = lshr i64 %i.bf, 3                       ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !36
  switch i16 %i.bi, label %.thread426 [
    i16 1, label %bb.f
    i16 2, label %bb.u
    i16 0, label %bb.al
  ]

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 30
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !37
  switch i16 %i.bk, label %.thread426 [
    i16 1, label %.preheader445
    i16 2, label %.preheader447
    i16 0, label %.preheader449
  ]

.preheader449:                                    ; preds = %bb.f
  br i1 %i.q, label %.lr.ph545, label %.loopexit446

.lr.ph545:                                        ; preds = %.preheader449
  %i.bl = load i16, ptr %i.p, align 2, !tbaa !17
  %i.bm = and i16 %i.bl, 1
  %i.bn = icmp eq i16 %i.bm, 0                    ; 2 uses
  %i.bo = sext i16 %i.ad to i64
  %i.bp = sext i8 %i.ab to i64
  br label %bb.n

.preheader447:                                    ; preds = %bb.f
  br i1 %i.q, label %.lr.ph556, label %.loopexit446

.lr.ph556:                                        ; preds = %.preheader447
  %i.bq = load i16, ptr %i.p, align 2, !tbaa !17
  %i.br = and i16 %i.bq, 1
  %i.bs = icmp eq i16 %i.br, 0                    ; 2 uses
  %i.bt = sext i16 %i.ad to i64
  %i.bu = sext i8 %i.ab to i64
  br label %bb.h

.preheader445:                                    ; preds = %bb.f
  br i1 %i.q, label %.lr.ph567, label %.loopexit446

.lr.ph567:                                        ; preds = %.preheader445
  %i.bv = sext i16 %i.ad to i64                   ; 9 uses
  %i.bw = sext i8 %i.ab to i64
  %.pre669 = load i16, ptr %i.p, align 2, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph567, %.loopexit
  %1 = phi i16 [ %.pre669, %.lr.ph567 ], [ %2, %.loopexit ] ; 2 uses
  %indvars.iv655 = phi i64 [ 0, %.lr.ph567 ], [ %indvars.iv.next656, %.loopexit ] ; 2 uses
  %.2304565 = phi ptr [ %.1303571, %.lr.ph567 ], [ %i.db, %.loopexit ] ; 3 uses
  %.0314564 = phi ptr [ %i.bc, %.lr.ph567 ], [ %i.cd, %.loopexit ] ; 2 uses
  %.2358563 = phi i32 [ 0, %.lr.ph567 ], [ %spec.select400, %.loopexit ] ; 2 uses
  %i.bx = load ptr, ptr %.0314564, align 8, !tbaa !10 ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %indvars.iv655
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30 ; 3 uses
  %i.ca = and i16 %1, 1
  %i.cb = icmp eq i16 %i.ca, 0                    ; 2 uses
  %i.cc = select i1 %i.cb, i32 %.2358563, i32 0   ; 2 uses
  %spec.select = sub i32 %i.bz, %i.cc             ; 4 uses
  %spec.select400 = select i1 %i.cb, i32 %i.bz, i32 %.2358563
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0314564, i64 %i.bg
  %.not397 = icmp ne ptr %i.bx, null
  %i.ce = icmp sgt i32 %spec.select, 0
  %or.cond578 = select i1 %.not397, i1 %i.ce, i1 false
  br i1 %or.cond578, label %.lr.ph561.preheader, label %.loopexit

.lr.ph561.preheader:                              ; preds = %bb.g
  %xtraiter774 = and i32 %spec.select, 7          ; 3 uses
  %i.cf = sub i32 %i.cc, %i.bz
  %i.cg = icmp ugt i32 %i.cf, -8
  br i1 %i.cg, label %.lr.ph561.epil.preheader, label %.lr.ph561.preheader.new

.lr.ph561.preheader.new:                          ; preds = %.lr.ph561.preheader
  %unroll_iter778 = and i32 %spec.select, 2147483640
  br label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph561, %.lr.ph561.preheader.new
  %.0373559 = phi ptr [ %.2304565, %.lr.ph561.preheader.new ], [ %i.cv, %.lr.ph561 ] ; 9 uses
  %.0374558 = phi ptr [ %i.bx, %.lr.ph561.preheader.new ], [ %i.cw, %.lr.ph561 ] ; 2 uses
  %niter779 = phi i32 [ 0, %.lr.ph561.preheader.new ], [ %niter779.next.7, %.lr.ph561 ]
  %.0373.val = load i16, ptr %.0373559, align 1
  store i16 %.0373.val, ptr %.0374558, align 2, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %.0373559, i64 2
  %i.ci = getelementptr inbounds i8, ptr %.0374558, i64 %i.bv ; 2 uses
  %.0373.val.1 = load i16, ptr %i.ch, align 1
  store i16 %.0373.val.1, ptr %i.ci, align 2, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %.0373559, i64 4
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.bv ; 2 uses
  %.0373.val.2 = load i16, ptr %i.cj, align 1
  store i16 %.0373.val.2, ptr %i.ck, align 2, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.0373559, i64 6
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.bv ; 2 uses
  %.0373.val.3 = load i16, ptr %i.cl, align 1
  store i16 %.0373.val.3, ptr %i.cm, align 2, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %.0373559, i64 8
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.bv ; 2 uses
  %.0373.val.4 = load i16, ptr %i.cn, align 1
  store i16 %.0373.val.4, ptr %i.co, align 2, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %.0373559, i64 10
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.bv ; 2 uses
  %.0373.val.5 = load i16, ptr %i.cp, align 1
  store i16 %.0373.val.5, ptr %i.cq, align 2, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %.0373559, i64 12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.bv ; 2 uses
  %.0373.val.6 = load i16, ptr %i.cr, align 1
  store i16 %.0373.val.6, ptr %i.cs, align 2, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %.0373559, i64 14
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.bv ; 2 uses
  %.0373.val.7 = load i16, ptr %i.ct, align 1
  store i16 %.0373.val.7, ptr %i.cu, align 2, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %.0373559, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.bv ; 2 uses
  %niter779.next.7 = add i32 %niter779, 8         ; 2 uses
  %niter779.ncmp.7 = icmp eq i32 %niter779.next.7, %unroll_iter778
  br i1 %niter779.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph561, !llvm.loop !52

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph561
  %lcmp.mod776.not = icmp eq i32 %xtraiter774, 0
  br i1 %lcmp.mod776.not, label %.loopexit.loopexit, label %.lr.ph561.epil.preheader

.lr.ph561.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph561.preheader
  %.0373559.epil.init = phi ptr [ %.2304565, %.lr.ph561.preheader ], [ %i.cv, %.loopexit.loopexit.unr-lcssa ]
  %.0374558.epil.init = phi ptr [ %i.bx, %.lr.ph561.preheader ], [ %i.cw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod777 = icmp ne i32 %xtraiter774, 0
  tail call void @llvm.assume(i1 %lcmp.mod777)
  br label %.lr.ph561.epil

.lr.ph561.epil:                                   ; preds = %.lr.ph561.epil, %.lr.ph561.epil.preheader
  %.0373559.epil = phi ptr [ %i.cx, %.lr.ph561.epil ], [ %.0373559.epil.init, %.lr.ph561.epil.preheader ] ; 2 uses
  %.0374558.epil = phi ptr [ %i.cy, %.lr.ph561.epil ], [ %.0374558.epil.init, %.lr.ph561.epil.preheader ] ; 2 uses
  %epil.iter775 = phi i32 [ %epil.iter775.next, %.lr.ph561.epil ], [ 0, %.lr.ph561.epil.preheader ]
  %.0373.val.epil = load i16, ptr %.0373559.epil, align 1
  store i16 %.0373.val.epil, ptr %.0374558.epil, align 2, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %.0373559.epil, i64 2
  %i.cy = getelementptr inbounds i8, ptr %.0374558.epil, i64 %i.bv
  %epil.iter775.next = add i32 %epil.iter775, 1   ; 2 uses
  %epil.iter775.cmp.not = icmp eq i32 %epil.iter775.next, %xtraiter774
  br i1 %epil.iter775.cmp.not, label %.loopexit.loopexit, label %.lr.ph561.epil, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %.lr.ph561.epil, %.loopexit.loopexit.unr-lcssa
  %.pre668 = load i16, ptr %i.p, align 2, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %2 = phi i16 [ %.pre668, %.loopexit.loopexit ], [ %1, %bb.g ]
  %i.cz = sext i32 %spec.select to i64
  %i.da = mul nsw i64 %i.cz, %i.bw
  %i.db = getelementptr inbounds nuw i8, ptr %.2304565, i64 %i.da ; 2 uses
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count658
  br i1 %exitcond659.not, label %.loopexit446, label %bb.g, !llvm.loop !54

bb.h:                                             ; preds = %.lr.ph556, %.loopexit430
  %indvars.iv649 = phi i64 [ 0, %.lr.ph556 ], [ %indvars.iv.next650, %.loopexit430 ] ; 2 uses
  %.3305554 = phi ptr [ %.1303571, %.lr.ph556 ], [ %i.ed, %.loopexit430 ] ; 2 uses
  %.1315553 = phi ptr [ %i.bc, %.lr.ph556 ], [ %i.dg, %.loopexit430 ] ; 2 uses
  %.4360552 = phi i32 [ 0, %.lr.ph556 ], [ %spec.select402, %.loopexit430 ] ; 2 uses
  %i.dc = load ptr, ptr %.1315553, align 8, !tbaa !10 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %indvars.iv649
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !30 ; 2 uses
  %i.df = select i1 %i.bs, i32 %.4360552, i32 0
  %spec.select401 = sub i32 %i.de, %i.df          ; 3 uses
  %spec.select402 = select i1 %i.bs, i32 %i.de, i32 %.4360552
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.1315553, i64 %i.bg
  %.not396 = icmp ne ptr %i.dc, null
  %i.dh = icmp sgt i32 %spec.select401, 0
  %or.cond579 = select i1 %.not396, i1 %i.dh, i1 false
  br i1 %or.cond579, label %.lr.ph550, label %.loopexit430

.lr.ph550:                                        ; preds = %bb.h, %half_to_float.exit
  %.0353549 = phi i32 [ %i.ea, %half_to_float.exit ], [ 0, %bb.h ]
  %.0354548 = phi ptr [ %i.di, %half_to_float.exit ], [ %.3305554, %bb.h ] ; 2 uses
  %.0355547 = phi ptr [ %i.dz, %half_to_float.exit ], [ %i.dc, %bb.h ] ; 2 uses
  %.0354.val = load i16, ptr %.0354548, align 1   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0354548, i64 2
  %i.dj = zext i16 %.0354.val to i32
  %i.dk = shl nuw nsw i32 %i.dj, 13
  %i.dl = and i32 %i.dk, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %.0354.val to i32
  %i.dm = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.dn = icmp samesign ugt i32 %i.dl, 8388607
  br i1 %i.dn, label %bb.i, label %bb.l, !prof !40

bb.i:                                             ; preds = %.lr.ph550
  %i.do = or disjoint i32 %i.dl, %i.dm            ; 2 uses
  %i.dp = icmp samesign ult i32 %i.dl, 260046848
  br i1 %i.dp, label %bb.j, label %bb.k, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.dq = add nuw nsw i32 %i.do, 939524096
  br label %half_to_float.exit

bb.k:                                             ; preds = %bb.i
  %i.dr = or i32 %i.do, 2139095040
  br label %half_to_float.exit

bb.l:                                             ; preds = %.lr.ph550
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %half_to_float.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dl, i1 true)
  %i.dt = add nsw i32 %i.ds, -8                   ; 2 uses
  %i.du = shl i32 %i.dl, %i.dt
  %i.dv = or i32 %i.dm, %i.du
  %i.dw = or i32 %i.dv, 947912704
  %i.dx = shl nuw nsw i32 %i.dt, 23
  %i.dy = sub nuw i32 %i.dw, %i.dx
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.i.i = phi i32 [ %i.dq, %bb.j ], [ %i.dr, %bb.k ], [ %i.dy, %bb.m ], [ %i.dm, %bb.l ]
  store i32 %.sroa.0.0.i.i, ptr %.0355547, align 4, !tbaa !42
  %i.dz = getelementptr inbounds i8, ptr %.0355547, i64 %i.bt
  %i.ea = add nuw nsw i32 %.0353549, 1            ; 2 uses
  %exitcond648.not = icmp eq i32 %i.ea, %spec.select401
  br i1 %exitcond648.not, label %.loopexit430, label %.lr.ph550, !llvm.loop !55

.loopexit430:                                     ; preds = %half_to_float.exit, %bb.h
  %i.eb = sext i32 %spec.select401 to i64
  %i.ec = mul nsw i64 %i.eb, %i.bu
  %i.ed = getelementptr inbounds nuw i8, ptr %.3305554, i64 %i.ec ; 2 uses
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.loopexit446, label %bb.h, !llvm.loop !56

bb.n:                                             ; preds = %.lr.ph545, %.loopexit432
  %indvars.iv643 = phi i64 [ 0, %.lr.ph545 ], [ %indvars.iv.next644, %.loopexit432 ] ; 2 uses
  %.4306543 = phi ptr [ %.1303571, %.lr.ph545 ], [ %i.fe, %.loopexit432 ] ; 2 uses
  %.2316542 = phi ptr [ %i.bc, %.lr.ph545 ], [ %i.ei, %.loopexit432 ] ; 2 uses
  %.6362540 = phi i32 [ 0, %.lr.ph545 ], [ %spec.select403, %.loopexit432 ] ; 2 uses
  %i.ee = load ptr, ptr %.2316542, align 8, !tbaa !10 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %indvars.iv643
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !30 ; 2 uses
  %spec.select403 = select i1 %i.bn, i32 %i.eg, i32 %.6362540
  %i.eh = select i1 %i.bn, i32 %.6362540, i32 0
  %spec.select404 = sub i32 %i.eg, %i.eh          ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.2316542, i64 %i.bg
  %.not395 = icmp ne ptr %i.ee, null
  %i.ej = icmp sgt i32 %spec.select404, 0
  %or.cond580 = select i1 %.not395, i1 %i.ej, i1 false
  br i1 %or.cond580, label %.lr.ph539, label %.loopexit432

.lr.ph539:                                        ; preds = %bb.n, %half_to_uint.exit
  %.0347538 = phi i32 [ %i.fb, %half_to_uint.exit ], [ 0, %bb.n ]
  %.0348537 = phi ptr [ %i.ek, %half_to_uint.exit ], [ %.4306543, %bb.n ] ; 2 uses
  %.0349536 = phi ptr [ %i.fa, %half_to_uint.exit ], [ %i.ee, %bb.n ] ; 2 uses
  %.0348.val = load i16, ptr %.0348537, align 1   ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0348537, i64 2
  %i.el = zext i16 %.0348.val to i32              ; 3 uses
  %.not.i = icmp sgt i16 %.0348.val, -1
  br i1 %.not.i, label %bb.o, label %half_to_uint.exit

bb.o:                                             ; preds = %.lr.ph539
  %i.em = and i32 %i.el, 31744
  %i.en = icmp eq i32 %i.em, 31744
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = and i32 %i.el, 1023
  %.not5.i = icmp eq i32 %i.eo, 0
  %..i = sext i1 %.not5.i to i32
  br label %half_to_uint.exit

bb.q:                                             ; preds = %bb.o
  %i.ep = shl nuw nsw i32 %i.el, 13               ; 3 uses
  %i.eq = icmp samesign ugt i16 %.0348.val, 1023
  br i1 %i.eq, label %bb.r, label %bb.s, !prof !40

bb.r:                                             ; preds = %bb.q
  %i.er = add nuw nsw i32 %i.ep, 939524096
  br label %half_to_float.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i16 %.0348.val, 0
  br i1 %.not.i.i.i, label %half_to_float.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ep, i1 true)
  %i.et = add nsw i32 %i.es, -8                   ; 2 uses
  %i.eu = shl i32 %i.ep, %i.et
  %i.ev = or i32 %i.eu, 947912704
  %i.ew = shl nuw nsw i32 %i.et, 23
  %i.ex = sub nuw i32 %i.ev, %i.ew
  br label %half_to_float.exit.i

half_to_float.exit.i:                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.i.i = phi i32 [ %i.er, %bb.r ], [ 0, %bb.s ], [ %i.ex, %bb.t ]
  %i.ey = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.ez = fptoui float %i.ey to i32
  br label %half_to_uint.exit

half_to_uint.exit:                                ; preds = %.lr.ph539, %bb.p, %half_to_float.exit.i
  %.0.i = phi i32 [ %i.ez, %half_to_float.exit.i ], [ %..i, %bb.p ], [ 0, %.lr.ph539 ]
  store i32 %.0.i, ptr %.0349536, align 4, !tbaa !30
  %i.fa = getelementptr inbounds i8, ptr %.0349536, i64 %i.bo
  %i.fb = add nuw nsw i32 %.0347538, 1            ; 2 uses
  %exitcond642.not = icmp eq i32 %i.fb, %spec.select404
  br i1 %exitcond642.not, label %.loopexit432, label %.lr.ph539, !llvm.loop !57

.loopexit432:                                     ; preds = %half_to_uint.exit, %bb.n
  %i.fc = sext i32 %spec.select404 to i64
  %i.fd = mul nsw i64 %i.fc, %i.bp
  %i.fe = getelementptr inbounds nuw i8, ptr %.4306543, i64 %i.fd ; 2 uses
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond647.not = icmp eq i64 %indvars.iv.next644, %wide.trip.count646
  br i1 %exitcond647.not, label %.loopexit446, label %bb.n, !llvm.loop !58

bb.u:                                             ; preds = %bb.e
  %i.ff = getelementptr inbounds nuw i8, ptr %i.z, i64 30
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !37
  switch i16 %i.fg, label %.thread426 [
    i16 1, label %.preheader451
    i16 2, label %.preheader453
    i16 0, label %.preheader455
  ]

.preheader455:                                    ; preds = %bb.u
  br i1 %i.q, label %.lr.ph512, label %.loopexit446

.lr.ph512:                                        ; preds = %.preheader455
  %i.fh = load i16, ptr %i.p, align 2, !tbaa !17
  %i.fi = and i16 %i.fh, 1
  %i.fj = icmp eq i16 %i.fi, 0                    ; 2 uses
  %i.fk = sext i16 %i.ad to i64                   ; 2 uses
  %i.fl = sext i8 %i.ab to i64
  br label %bb.ah

.preheader453:                                    ; preds = %bb.u
  br i1 %i.q, label %.lr.ph523, label %.loopexit446

.lr.ph523:                                        ; preds = %.preheader453
  %i.fm = load i16, ptr %i.p, align 2, !tbaa !17
  %i.fn = and i16 %i.fm, 1
  %i.fo = icmp eq i16 %i.fn, 0                    ; 2 uses
  %i.fp = sext i16 %i.ad to i64                   ; 9 uses
  %i.fq = sext i8 %i.ab to i64
  br label %bb.ag

.preheader451:                                    ; preds = %bb.u
  br i1 %i.q, label %.lr.ph534, label %.loopexit446

.lr.ph534:                                        ; preds = %.preheader451
  %i.fr = sext i16 %i.ad to i64
  %i.fs = sext i8 %i.ab to i64
end_hunk_0
begin_hunk_1_@generic_unpack_deep_pointers:bb.a
  %.0310481 = phi ptr [ %i.ml, %.lr.ph484.preheader.new ], [ %i.ne, %.lr.ph484 ] ; 2 uses
  %niter761 = phi i32 [ 0, %.lr.ph484.preheader.new ], [ %niter761.next.3, %.lr.ph484 ]
  %.0309.val = load i32, ptr %.0309482, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.0309482, i64 4
  %i.mu = uitofp i32 %.0309.val to float
  store float %i.mu, ptr %.0310481, align 4, !tbaa !42
  %i.mv = getelementptr inbounds i8, ptr %.0310481, i64 %i.kl ; 2 uses
  %.0309.val.1 = load i32, ptr %i.mt, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0309482, i64 8
  %i.mx = uitofp i32 %.0309.val.1 to float
  store float %i.mx, ptr %i.mv, align 4, !tbaa !42
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.kl ; 2 uses
  %.0309.val.2 = load i32, ptr %i.mw, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.0309482, i64 12
  %i.na = uitofp i32 %.0309.val.2 to float
  store float %i.na, ptr %i.my, align 4, !tbaa !42
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %i.kl ; 2 uses
  %.0309.val.3 = load i32, ptr %i.mz, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.0309482, i64 16 ; 2 uses
  %i.nd = uitofp i32 %.0309.val.3 to float
  store float %i.nd, ptr %i.nb, align 4, !tbaa !42
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.kl ; 2 uses
  %niter761.next.3 = add i32 %niter761, 4         ; 2 uses
  %niter761.ncmp.3 = icmp eq i32 %niter761.next.3, %unroll_iter760
  br i1 %niter761.ncmp.3, label %.loopexit442.loopexit.unr-lcssa, label %.lr.ph484, !llvm.loop !68

.loopexit442.loopexit.unr-lcssa:                  ; preds = %.lr.ph484
  %lcmp.mod758.not = icmp eq i32 %xtraiter756, 0
  br i1 %lcmp.mod758.not, label %.loopexit442, label %.lr.ph484.epil.preheader

.lr.ph484.epil.preheader:                         ; preds = %.loopexit442.loopexit.unr-lcssa, %.lr.ph484.preheader
  %.0309482.epil.init = phi ptr [ %.9488, %.lr.ph484.preheader ], [ %i.nc, %.loopexit442.loopexit.unr-lcssa ]
  %.0310481.epil.init = phi ptr [ %i.ml, %.lr.ph484.preheader ], [ %i.ne, %.loopexit442.loopexit.unr-lcssa ]
  %lcmp.mod759 = icmp ne i32 %xtraiter756, 0
  tail call void @llvm.assume(i1 %lcmp.mod759)
  br label %.lr.ph484.epil

.lr.ph484.epil:                                   ; preds = %.lr.ph484.epil, %.lr.ph484.epil.preheader
  %.0309482.epil = phi ptr [ %i.nf, %.lr.ph484.epil ], [ %.0309482.epil.init, %.lr.ph484.epil.preheader ] ; 2 uses
  %.0310481.epil = phi ptr [ %i.nh, %.lr.ph484.epil ], [ %.0310481.epil.init, %.lr.ph484.epil.preheader ] ; 2 uses
  %epil.iter757 = phi i32 [ %epil.iter757.next, %.lr.ph484.epil ], [ 0, %.lr.ph484.epil.preheader ]
  %.0309.val.epil = load i32, ptr %.0309482.epil, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0309482.epil, i64 4
  %i.ng = uitofp i32 %.0309.val.epil to float
  store float %i.ng, ptr %.0310481.epil, align 4, !tbaa !42
  %i.nh = getelementptr inbounds i8, ptr %.0310481.epil, i64 %i.kl
  %epil.iter757.next = add i32 %epil.iter757, 1   ; 2 uses
  %epil.iter757.cmp.not = icmp eq i32 %epil.iter757.next, %xtraiter756
  br i1 %epil.iter757.cmp.not, label %.loopexit442, label %.lr.ph484.epil, !llvm.loop !69

.loopexit442:                                     ; preds = %.loopexit442.loopexit.unr-lcssa, %.lr.ph484.epil, %bb.ax
  %i.ni = sext i32 %spec.select414 to i64
  %i.nj = mul nsw i64 %i.ni, %i.km
  %i.nk = getelementptr inbounds nuw i8, ptr %.9488, i64 %i.nj ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %.loopexit446, label %bb.ax, !llvm.loop !70

bb.ay:                                            ; preds = %.lr.ph479, %.loopexit444
  %indvars.iv607 = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next608, %.loopexit444 ] ; 2 uses
  %.10476 = phi ptr [ %.1303571, %.lr.ph479 ], [ %i.on, %.loopexit444 ] ; 3 uses
  %.8322475 = phi ptr [ %i.bc, %.lr.ph479 ], [ %i.np, %.loopexit444 ] ; 2 uses
  %.18474 = phi i32 [ 0, %.lr.ph479 ], [ %spec.select415, %.loopexit444 ] ; 2 uses
  %i.nl = load ptr, ptr %.8322475, align 8, !tbaa !10 ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.0311576, i64 %indvars.iv607
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !30 ; 3 uses
  %spec.select415 = select i1 %i.kf, i32 %i.nn, i32 %.18474
  %i.no = select i1 %i.kf, i32 %.18474, i32 0     ; 2 uses
  %spec.select416 = sub i32 %i.nn, %i.no          ; 4 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.8322475, i64 %i.bg
  %.not389 = icmp ne ptr %i.nl, null
  %i.nq = icmp sgt i32 %spec.select416, 0
  %or.cond586 = select i1 %.not389, i1 %i.nq, i1 false
  br i1 %or.cond586, label %.lr.ph473.preheader, label %.loopexit444

.lr.ph473.preheader:                              ; preds = %bb.ay
  %xtraiter = and i32 %spec.select416, 7          ; 3 uses
  %i.nr = sub i32 %i.no, %i.nn
  %i.ns = icmp ugt i32 %i.nr, -8
  br i1 %i.ns, label %.lr.ph473.epil.preheader, label %.lr.ph473.preheader.new

.lr.ph473.preheader.new:                          ; preds = %.lr.ph473.preheader
  %unroll_iter = and i32 %spec.select416, 2147483640
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %.lr.ph473, %.lr.ph473.preheader.new
  %.0297471 = phi ptr [ %.10476, %.lr.ph473.preheader.new ], [ %i.oh, %.lr.ph473 ] ; 9 uses
  %.0298470 = phi ptr [ %i.nl, %.lr.ph473.preheader.new ], [ %i.oi, %.lr.ph473 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph473.preheader.new ], [ %niter.next.7, %.lr.ph473 ]
  %.0297.val = load i32, ptr %.0297471, align 1
  store i32 %.0297.val, ptr %.0298470, align 4, !tbaa !30
  %i.nt = getelementptr inbounds nuw i8, ptr %.0297471, i64 4
  %i.nu = getelementptr inbounds i8, ptr %.0298470, i64 %i.kg ; 2 uses
  %.0297.val.1 = load i32, ptr %i.nt, align 1
  store i32 %.0297.val.1, ptr %i.nu, align 4, !tbaa !30
  %i.nv = getelementptr inbounds nuw i8, ptr %.0297471, i64 8
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 %i.kg ; 2 uses
  %.0297.val.2 = load i32, ptr %i.nv, align 1
  store i32 %.0297.val.2, ptr %i.nw, align 4, !tbaa !30
  %i.nx = getelementptr inbounds nuw i8, ptr %.0297471, i64 12
  %i.ny = getelementptr inbounds i8, ptr %i.nw, i64 %i.kg ; 2 uses
  %.0297.val.3 = load i32, ptr %i.nx, align 1
  store i32 %.0297.val.3, ptr %i.ny, align 4, !tbaa !30
  %i.nz = getelementptr inbounds nuw i8, ptr %.0297471, i64 16
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.kg ; 2 uses
  %.0297.val.4 = load i32, ptr %i.nz, align 1
  store i32 %.0297.val.4, ptr %i.oa, align 4, !tbaa !30
  %i.ob = getelementptr inbounds nuw i8, ptr %.0297471, i64 20
  %i.oc = getelementptr inbounds i8, ptr %i.oa, i64 %i.kg ; 2 uses
  %.0297.val.5 = load i32, ptr %i.ob, align 1
  store i32 %.0297.val.5, ptr %i.oc, align 4, !tbaa !30
  %i.od = getelementptr inbounds nuw i8, ptr %.0297471, i64 24
  %i.oe = getelementptr inbounds i8, ptr %i.oc, i64 %i.kg ; 2 uses
  %.0297.val.6 = load i32, ptr %i.od, align 1
  store i32 %.0297.val.6, ptr %i.oe, align 4, !tbaa !30
  %i.of = getelementptr inbounds nuw i8, ptr %.0297471, i64 28
  %i.og = getelementptr inbounds i8, ptr %i.oe, i64 %i.kg ; 2 uses
  %.0297.val.7 = load i32, ptr %i.of, align 1
  store i32 %.0297.val.7, ptr %i.og, align 4, !tbaa !30
  %i.oh = getelementptr inbounds nuw i8, ptr %.0297471, i64 32 ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.og, i64 %i.kg ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit444.loopexit.unr-lcssa, label %.lr.ph473, !llvm.loop !71

.loopexit444.loopexit.unr-lcssa:                  ; preds = %.lr.ph473
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit444, label %.lr.ph473.epil.preheader

.lr.ph473.epil.preheader:                         ; preds = %.loopexit444.loopexit.unr-lcssa, %.lr.ph473.preheader
  %.0297471.epil.init = phi ptr [ %.10476, %.lr.ph473.preheader ], [ %i.oh, %.loopexit444.loopexit.unr-lcssa ]
  %.0298470.epil.init = phi ptr [ %i.nl, %.lr.ph473.preheader ], [ %i.oi, %.loopexit444.loopexit.unr-lcssa ]
  %lcmp.mod755 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod755)
  br label %.lr.ph473.epil

.lr.ph473.epil:                                   ; preds = %.lr.ph473.epil, %.lr.ph473.epil.preheader
  %.0297471.epil = phi ptr [ %i.oj, %.lr.ph473.epil ], [ %.0297471.epil.init, %.lr.ph473.epil.preheader ] ; 2 uses
  %.0298470.epil = phi ptr [ %i.ok, %.lr.ph473.epil ], [ %.0298470.epil.init, %.lr.ph473.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph473.epil ], [ 0, %.lr.ph473.epil.preheader ]
  %.0297.val.epil = load i32, ptr %.0297471.epil, align 1
  store i32 %.0297.val.epil, ptr %.0298470.epil, align 4, !tbaa !30
  %i.oj = getelementptr inbounds nuw i8, ptr %.0297471.epil, i64 4
  %i.ok = getelementptr inbounds i8, ptr %.0298470.epil, i64 %i.kg
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit444, label %.lr.ph473.epil, !llvm.loop !72

.loopexit444:                                     ; preds = %.loopexit444.loopexit.unr-lcssa, %.lr.ph473.epil, %bb.ay
  %i.ol = sext i32 %spec.select416 to i64
  %i.om = mul nsw i64 %i.ol, %i.kh
  %i.on = getelementptr inbounds nuw i8, ptr %.10476, i64 %i.om ; 2 uses
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %exitcond611.not = icmp eq i64 %indvars.iv.next608, %wide.trip.count610
  br i1 %exitcond611.not, label %.loopexit446, label %bb.ay, !llvm.loop !73

.loopexit446:                                     ; preds = %.loopexit444, %.loopexit442, %.loopexit440, %.loopexit438, %.loopexit436, %.loopexit434, %.loopexit432, %.loopexit430, %.loopexit, %.preheader461, %.preheader459, %.preheader457, %.preheader455, %.preheader453, %.preheader451, %.preheader449, %.preheader447, %.preheader445, %.loopexit464
  %.12.ph = phi ptr [ %i.mk, %.loopexit440 ], [ %i.ja, %.loopexit436 ], [ %i.hx, %.loopexit434 ], [ %i.fe, %.loopexit432 ], [ %i.ed, %.loopexit430 ], [ %i.db, %.loopexit ], [ %i.nk, %.loopexit442 ], [ %i.aw, %.loopexit464 ], [ %i.ka, %.loopexit438 ], [ %.1303571, %.preheader445 ], [ %.1303571, %.preheader447 ], [ %.1303571, %.preheader449 ], [ %.1303571, %.preheader451 ], [ %.1303571, %.preheader453 ], [ %.1303571, %.preheader455 ], [ %.1303571, %.preheader457 ], [ %.1303571, %.preheader459 ], [ %.1303571, %.preheader461 ], [ %i.on, %.loopexit444 ] ; 2 uses
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %i.oo = load i16, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.op = sext i16 %i.oo to i64
  %.not399 = icmp slt i64 %indvars.iv.next661, %i.op
  br i1 %.not399, label %bb.b, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit446, %.preheader465
  %i.oq = phi i16 [ %i.t, %.preheader465 ], [ %i.oo, %.loopexit446 ]
  %.1303.lcssa = phi ptr [ %.0302577, %.preheader465 ], [ %.12.ph, %.loopexit446 ]
  %i.or = getelementptr inbounds [4 x i8], ptr %.0311576, i64 %i.r
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 2 uses
  %exitcond667.not = icmp eq i64 %indvars.iv.next664, %wide.trip.count666
  br i1 %exitcond667.not, label %.thread426, label %.preheader465, !llvm.loop !75

.thread426:                                       ; preds = %._crit_edge, %bb.e, %bb.al, %bb.u, %bb.f, %bb.a
  %spec.select417 = phi i32 [ 3, %bb.e ], [ 0, %bb.a ], [ 3, %bb.f ], [ 3, %bb.u ], [ 3, %bb.al ], [ 0, %._crit_edge ]
  ret i32 %spec.select417
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @generic_unpack_deep(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %.not386595 = icmp sgt i32 %i.e, 0
  br i1 %.not386595, label %.preheader448.lr.ph, label %.thread426

.preheader448.lr.ph:                              ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = icmp sgt i32 %i.i, 0                     ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 11 uses
  %i.r = sext i32 %i.i to i64                     ; 2 uses
  %.pre = load i16, ptr %i.n, align 8, !tbaa !18
  %wide.trip.count = zext i32 %i.i to i64         ; 3 uses
  %wide.trip.count633 = zext nneg i32 %i.i to i64
  %wide.trip.count639 = zext nneg i32 %i.i to i64
  %wide.trip.count645 = zext nneg i32 %i.i to i64
  %wide.trip.count651 = zext nneg i32 %i.i to i64
  %wide.trip.count657 = zext nneg i32 %i.i to i64
  %wide.trip.count663 = zext nneg i32 %i.i to i64
  %wide.trip.count669 = zext nneg i32 %i.i to i64
  %wide.trip.count675 = zext nneg i32 %i.i to i64
  %wide.trip.count680 = zext nneg i32 %i.i to i64
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.lr.ph, %._crit_edge592
  %i.s = phi i16 [ %.pre, %.preheader448.lr.ph ], [ %i.nv, %._crit_edge592 ] ; 3 uses
  %.0285599 = phi ptr [ %i.m, %.preheader448.lr.ph ], [ %.1286.lcssa, %._crit_edge592 ] ; 2 uses
  %.0293598 = phi ptr [ %i.k, %.preheader448.lr.ph ], [ %i.nw, %._crit_edge592 ] ; 13 uses
  %.0324597 = phi i64 [ 0, %.preheader448.lr.ph ], [ %.1325.lcssa, %._crit_edge592 ] ; 2 uses
  %.0344596 = phi i32 [ 0, %.preheader448.lr.ph ], [ %i.nx, %._crit_edge592 ] ; 2 uses
  %.not387587 = icmp sgt i16 %i.s, 0
  br i1 %.not387587, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %.preheader448
  %i.t = zext nneg i16 %i.s to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !25
  %.not = icmp sge i32 %.0344596, %i.g
  %i.v = getelementptr [4 x i8], ptr %.0293598, i64 %i.r
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph591, %.loopexit431
  %indvars.iv682 = phi i64 [ 0, %.lr.ph591 ], [ %indvars.iv.next683, %.loopexit431 ] ; 2 uses
  %i.x = phi i64 [ %i.t, %.lr.ph591 ], [ %i.nt, %.loopexit431 ]
  %.1286590 = phi ptr [ %.0285599, %.lr.ph591 ], [ %.12.ph, %.loopexit431 ] ; 19 uses
  %.1325589 = phi i64 [ %.0324597, %.lr.ph591 ], [ %.22.ph, %.loopexit431 ] ; 20 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv682 ; 7 uses
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 3 uses
  %i.z = and i64 %i.x, 4294967295
  %i.aa = icmp eq i64 %indvars.iv.next683, %i.z
  %i.ab = select i1 %.not, i1 %i.aa, i1 false     ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28  ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %.not384 = icmp eq ptr %i.af, null
  br i1 %.not384, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = load i16, ptr %i.q, align 2, !tbaa !17
  %i.ah = and i16 %i.ag, 1
  %.not385 = icmp eq i16 %i.ah, 0
  br i1 %.not385, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  br i1 %i.p, label %.lr.ph585.preheader, label %.loopexit

.lr.ph585.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph585.preheader762, label %vector.body

vector.body:                                      ; preds = %.lr.ph585.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph585.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.body ], [ zeroinitializer, %.lr.ph585.preheader ]
  %vec.phi760 = phi <4 x i32> [ %i.al, %vector.body ], [ zeroinitializer, %.lr.ph585.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0293598, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !30
  %wide.load761 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !30
  %i.ak = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.al = add <4 x i32> %wide.load761, %vec.phi760 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %.lr.ph585.preheader762

.lr.ph585.preheader762:                           ; preds = %.lr.ph585.preheader, %middle.block
  %indvars.iv677.ph = phi i64 [ 0, %.lr.ph585.preheader ], [ %n.vec, %middle.block ]
  %.0359584.ph = phi i32 [ 0, %.lr.ph585.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %.lr.ph585.preheader762, %.lr.ph585
  %indvars.iv677 = phi i64 [ %indvars.iv.next678, %.lr.ph585 ], [ %indvars.iv677.ph, %.lr.ph585.preheader762 ] ; 2 uses
  %.0359584 = phi i32 [ %i.aq, %.lr.ph585 ], [ %.0359584.ph, %.lr.ph585.preheader762 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0293598, i64 %indvars.iv677
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.aq = add nsw i32 %i.ap, %.0359584            ; 2 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %.loopexit, label %.lr.ph585, !llvm.loop !77

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.w, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph585, %middle.block, %.preheader, %bb.d
  %.1360 = phi i32 [ %i.ar, %bb.d ], [ 0, %.preheader ], [ %i.an, %middle.block ], [ %i.aq, %.lr.ph585 ]
  %i.as = sext i8 %i.ad to i64
  %i.at = sext i32 %.1360 to i64                  ; 2 uses
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %.1286590, i64 %i.au
  %i.aw = select i1 %i.ab, i64 %i.at, i64 0
  %spec.select = add i64 %i.aw, %.1325589
  br label %.loopexit431

bb.e:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !29
  %i.az = sext i16 %i.ay to i64                   ; 40 uses
  %i.ba = mul i64 %.1325589, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ba ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !36
  switch i16 %i.bd, label %.thread426 [
    i16 1, label %bb.f
    i16 2, label %bb.u
    i16 0, label %bb.al
  ]

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 30
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !37
  switch i16 %i.bf, label %.thread426 [
    i16 1, label %.preheader430
    i16 2, label %.preheader432
    i16 0, label %.preheader434
  ]

.preheader434:                                    ; preds = %bb.f
  br i1 %i.p, label %.lr.ph550, label %.loopexit431

.lr.ph550:                                        ; preds = %.preheader434
  %i.bg = load i16, ptr %i.q, align 2, !tbaa !17
  %i.bh = and i16 %i.bg, 1
  %i.bi = icmp eq i16 %i.bh, 0                    ; 2 uses
  %i.bj = sext i8 %i.ad to i64
  br label %bb.n

.preheader432:                                    ; preds = %bb.f
  br i1 %i.p, label %.lr.ph565, label %.loopexit431

.lr.ph565:                                        ; preds = %.preheader432
  %i.bk = load i16, ptr %i.q, align 2, !tbaa !17
  %i.bl = and i16 %i.bk, 1
  %i.bm = icmp eq i16 %i.bl, 0                    ; 2 uses
  %i.bn = sext i8 %i.ad to i64
  br label %bb.h

.preheader430:                                    ; preds = %bb.f
  br i1 %i.p, label %.lr.ph580, label %.loopexit431

.lr.ph580:                                        ; preds = %.preheader430
  %i.bo = sext i8 %i.ad to i64
  %.pre687 = load i16, ptr %i.q, align 2, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph580, %._crit_edge573
  %1 = phi i16 [ %.pre687, %.lr.ph580 ], [ %2, %._crit_edge573 ] ; 2 uses
  %indvars.iv672 = phi i64 [ 0, %.lr.ph580 ], [ %indvars.iv.next673, %._crit_edge573 ] ; 2 uses
  %.2287579 = phi ptr [ %.1286590, %.lr.ph580 ], [ %i.cb, %._crit_edge573 ] ; 3 uses
  %.0296578 = phi ptr [ %i.bb, %.lr.ph580 ], [ %.1297.lcssa, %._crit_edge573 ] ; 3 uses
  %.3327577 = phi i64 [ %.1325589, %.lr.ph580 ], [ %spec.select390, %._crit_edge573 ]
  %.2361576 = phi i32 [ 0, %.lr.ph580 ], [ %spec.select389, %._crit_edge573 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0293598, i64 %indvars.iv672
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !30 ; 3 uses
  %i.br = and i16 %1, 1
  %i.bs = icmp eq i16 %i.br, 0                    ; 2 uses
  %i.bt = select i1 %i.bs, i32 %.2361576, i32 0   ; 2 uses
  %spec.select388 = sub nsw i32 %i.bq, %i.bt      ; 4 uses
  %spec.select389 = select i1 %i.bs, i32 %i.bq, i32 %.2361576
  %i.bu = icmp sgt i32 %spec.select388, 0
  br i1 %i.bu, label %.lr.ph572.preheader, label %._crit_edge573

.lr.ph572.preheader:                              ; preds = %bb.g
  %xtraiter816 = and i32 %spec.select388, 7       ; 3 uses
  %i.bv = sub i32 %i.bt, %i.bq
  %i.bw = icmp ugt i32 %i.bv, -8
  br i1 %i.bw, label %.lr.ph572.epil.preheader, label %.lr.ph572.preheader.new

.lr.ph572.preheader.new:                          ; preds = %.lr.ph572.preheader
  %unroll_iter821 = and i32 %spec.select388, 2147483640
  br label %.lr.ph572

._crit_edge573.loopexit.unr-lcssa:                ; preds = %.lr.ph572
  %lcmp.mod818.not = icmp eq i32 %xtraiter816, 0
  br i1 %lcmp.mod818.not, label %._crit_edge573.loopexit, label %.lr.ph572.epil.preheader

.lr.ph572.epil.preheader:                         ; preds = %._crit_edge573.loopexit.unr-lcssa, %.lr.ph572.preheader
  %.1297570.epil.init = phi ptr [ %.0296578, %.lr.ph572.preheader ], [ %i.cs, %._crit_edge573.loopexit.unr-lcssa ]
  %.0358568.epil.init = phi ptr [ %.2287579, %.lr.ph572.preheader ], [ %i.cr, %._crit_edge573.loopexit.unr-lcssa ]
  %lcmp.mod820 = icmp ne i32 %xtraiter816, 0
  tail call void @llvm.assume(i1 %lcmp.mod820)
  br label %.lr.ph572.epil

.lr.ph572.epil:                                   ; preds = %.lr.ph572.epil, %.lr.ph572.epil.preheader
  %.1297570.epil = phi ptr [ %i.by, %.lr.ph572.epil ], [ %.1297570.epil.init, %.lr.ph572.epil.preheader ] ; 2 uses
  %.0358568.epil = phi ptr [ %i.bx, %.lr.ph572.epil ], [ %.0358568.epil.init, %.lr.ph572.epil.preheader ] ; 2 uses
  %epil.iter817 = phi i32 [ %epil.iter817.next, %.lr.ph572.epil ], [ 0, %.lr.ph572.epil.preheader ]
  %.0358.val.epil = load i16, ptr %.0358568.epil, align 1
  store i16 %.0358.val.epil, ptr %.1297570.epil, align 2, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %.0358568.epil, i64 2
  %i.by = getelementptr inbounds i8, ptr %.1297570.epil, i64 %i.az ; 2 uses
  %epil.iter817.next = add i32 %epil.iter817, 1   ; 2 uses
  %epil.iter817.cmp.not = icmp eq i32 %epil.iter817.next, %xtraiter816
  br i1 %epil.iter817.cmp.not, label %._crit_edge573.loopexit, label %.lr.ph572.epil, !llvm.loop !78

._crit_edge573.loopexit:                          ; preds = %.lr.ph572.epil, %._crit_edge573.loopexit.unr-lcssa
  %.lcssa789 = phi ptr [ %i.cs, %._crit_edge573.loopexit.unr-lcssa ], [ %i.by, %.lr.ph572.epil ]
  %.pre686 = load i16, ptr %i.q, align 2, !tbaa !17
  br label %._crit_edge573

._crit_edge573:                                   ; preds = %._crit_edge573.loopexit, %bb.g
  %2 = phi i16 [ %1, %bb.g ], [ %.pre686, %._crit_edge573.loopexit ]
  %.1297.lcssa = phi ptr [ %.0296578, %bb.g ], [ %.lcssa789, %._crit_edge573.loopexit ]
  %i.bz = sext i32 %spec.select388 to i64         ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.bo
  %i.cb = getelementptr inbounds nuw i8, ptr %.2287579, i64 %i.ca ; 2 uses
  %i.cc = select i1 %i.ab, i64 %i.bz, i64 0
  %spec.select390 = add i64 %i.cc, %.3327577      ; 2 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %.loopexit431, label %bb.g, !llvm.loop !79

.lr.ph572:                                        ; preds = %.lr.ph572, %.lr.ph572.preheader.new
  %.1297570 = phi ptr [ %.0296578, %.lr.ph572.preheader.new ], [ %i.cs, %.lr.ph572 ] ; 2 uses
  %.0358568 = phi ptr [ %.2287579, %.lr.ph572.preheader.new ], [ %i.cr, %.lr.ph572 ] ; 9 uses
  %niter822 = phi i32 [ 0, %.lr.ph572.preheader.new ], [ %niter822.next.7, %.lr.ph572 ]
  %.0358.val = load i16, ptr %.0358568, align 1
  store i16 %.0358.val, ptr %.1297570, align 2, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %.0358568, i64 2
  %i.ce = getelementptr inbounds i8, ptr %.1297570, i64 %i.az ; 2 uses
  %.0358.val.1 = load i16, ptr %i.cd, align 1
  store i16 %.0358.val.1, ptr %i.ce, align 2, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %.0358568, i64 4
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.az ; 2 uses
  %.0358.val.2 = load i16, ptr %i.cf, align 1
  store i16 %.0358.val.2, ptr %i.cg, align 2, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %.0358568, i64 6
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.az ; 2 uses
  %.0358.val.3 = load i16, ptr %i.ch, align 1
  store i16 %.0358.val.3, ptr %i.ci, align 2, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %.0358568, i64 8
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.az ; 2 uses
  %.0358.val.4 = load i16, ptr %i.cj, align 1
  store i16 %.0358.val.4, ptr %i.ck, align 2, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.0358568, i64 10
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.az ; 2 uses
  %.0358.val.5 = load i16, ptr %i.cl, align 1
  store i16 %.0358.val.5, ptr %i.cm, align 2, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %.0358568, i64 12
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.az ; 2 uses
  %.0358.val.6 = load i16, ptr %i.cn, align 1
  store i16 %.0358.val.6, ptr %i.co, align 2, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %.0358568, i64 14
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.az ; 2 uses
  %.0358.val.7 = load i16, ptr %i.cp, align 1
  store i16 %.0358.val.7, ptr %i.cq, align 2, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %.0358568, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.az ; 3 uses
  %niter822.next.7 = add i32 %niter822, 8         ; 2 uses
  %niter822.ncmp.7 = icmp eq i32 %niter822.next.7, %unroll_iter821
  br i1 %niter822.ncmp.7, label %._crit_edge573.loopexit.unr-lcssa, label %.lr.ph572, !llvm.loop !80

bb.h:                                             ; preds = %.lr.ph565, %._crit_edge558
  %indvars.iv666 = phi i64 [ 0, %.lr.ph565 ], [ %indvars.iv.next667, %._crit_edge558 ] ; 2 uses
  %.3288564 = phi ptr [ %.1286590, %.lr.ph565 ], [ %i.cz, %._crit_edge558 ] ; 2 uses
  %.2298563 = phi ptr [ %i.bb, %.lr.ph565 ], [ %.3299.lcssa, %._crit_edge558 ] ; 2 uses
  %.5329562 = phi i64 [ %.1325589, %.lr.ph565 ], [ %spec.select393, %._crit_edge558 ]
  %.4363560 = phi i32 [ 0, %.lr.ph565 ], [ %spec.select391, %._crit_edge558 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0293598, i64 %indvars.iv666
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %spec.select391 = select i1 %i.bm, i32 %i.cu, i32 %.4363560
  %i.cv = select i1 %i.bm, i32 %.4363560, i32 0
  %spec.select392 = sub nsw i32 %i.cu, %i.cv      ; 3 uses
  %i.cw = icmp sgt i32 %spec.select392, 0
  br i1 %i.cw, label %.lr.ph557, label %._crit_edge558

._crit_edge558:                                   ; preds = %half_to_float.exit, %bb.h
  %.3299.lcssa = phi ptr [ %.2298563, %bb.h ], [ %i.ds, %half_to_float.exit ]
  %i.cx = sext i32 %spec.select392 to i64         ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.bn
  %i.cz = getelementptr inbounds nuw i8, ptr %.3288564, i64 %i.cy ; 2 uses
  %i.da = select i1 %i.ab, i64 %i.cx, i64 0
  %spec.select393 = add i64 %i.da, %.5329562      ; 2 uses
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count669
  br i1 %exitcond670.not, label %.loopexit431, label %bb.h, !llvm.loop !81

.lr.ph557:                                        ; preds = %bb.h, %half_to_float.exit
  %.3299555 = phi ptr [ %i.ds, %half_to_float.exit ], [ %.2298563, %bb.h ] ; 2 uses
  %.0353554 = phi i32 [ %i.dt, %half_to_float.exit ], [ 0, %bb.h ]
  %.0354553 = phi ptr [ %i.db, %half_to_float.exit ], [ %.3288564, %bb.h ] ; 2 uses
  %.0354.val = load i16, ptr %.0354553, align 1   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0354553, i64 2
  %i.dc = zext i16 %.0354.val to i32
  %i.dd = shl nuw nsw i32 %i.dc, 13
  %i.de = and i32 %i.dd, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %.0354.val to i32
  %i.df = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.dg = icmp samesign ugt i32 %i.de, 8388607
  br i1 %i.dg, label %bb.i, label %bb.l, !prof !40

bb.i:                                             ; preds = %.lr.ph557
  %i.dh = or disjoint i32 %i.de, %i.df            ; 2 uses
  %i.di = icmp samesign ult i32 %i.de, 260046848
  br i1 %i.di, label %bb.j, label %bb.k, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.dj = add nuw nsw i32 %i.dh, 939524096
  br label %half_to_float.exit

bb.k:                                             ; preds = %bb.i
  %i.dk = or i32 %i.dh, 2139095040
  br label %half_to_float.exit

bb.l:                                             ; preds = %.lr.ph557
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %half_to_float.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.de, i1 true)
  %i.dm = add nsw i32 %i.dl, -8                   ; 2 uses
  %i.dn = shl i32 %i.de, %i.dm
  %i.do = or i32 %i.df, %i.dn
  %i.dp = or i32 %i.do, 947912704
  %i.dq = shl nuw nsw i32 %i.dm, 23
  %i.dr = sub nuw i32 %i.dp, %i.dq
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.i.i = phi i32 [ %i.dj, %bb.j ], [ %i.dk, %bb.k ], [ %i.dr, %bb.m ], [ %i.df, %bb.l ]
  store i32 %.sroa.0.0.i.i, ptr %.3299555, align 4, !tbaa !42
  %i.ds = getelementptr inbounds i8, ptr %.3299555, i64 %i.az ; 2 uses
  %i.dt = add nuw nsw i32 %.0353554, 1            ; 2 uses
  %exitcond665.not = icmp eq i32 %i.dt, %spec.select392
  br i1 %exitcond665.not, label %._crit_edge558, label %.lr.ph557, !llvm.loop !82

bb.n:                                             ; preds = %.lr.ph550, %._crit_edge543
  %indvars.iv660 = phi i64 [ 0, %.lr.ph550 ], [ %indvars.iv.next661, %._crit_edge543 ] ; 2 uses
  %.4289549 = phi ptr [ %.1286590, %.lr.ph550 ], [ %i.ea, %._crit_edge543 ] ; 2 uses
  %.4300548 = phi ptr [ %i.bb, %.lr.ph550 ], [ %.5301.lcssa, %._crit_edge543 ] ; 2 uses
  %.7331547 = phi i64 [ %.1325589, %.lr.ph550 ], [ %spec.select396, %._crit_edge543 ]
  %.6365545 = phi i32 [ 0, %.lr.ph550 ], [ %spec.select394, %._crit_edge543 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0293598, i64 %indvars.iv660
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !30 ; 2 uses
  %spec.select394 = select i1 %i.bi, i32 %i.dv, i32 %.6365545
  %i.dw = select i1 %i.bi, i32 %.6365545, i32 0
  %spec.select395 = sub nsw i32 %i.dv, %i.dw      ; 3 uses
  %i.dx = icmp sgt i32 %spec.select395, 0
  br i1 %i.dx, label %.lr.ph542, label %._crit_edge543

._crit_edge543:                                   ; preds = %half_to_uint.exit, %bb.n
  %.5301.lcssa = phi ptr [ %.4300548, %bb.n ], [ %i.es, %half_to_uint.exit ]
  %i.dy = sext i32 %spec.select395 to i64         ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %i.bj
  %i.ea = getelementptr inbounds nuw i8, ptr %.4289549, i64 %i.dz ; 2 uses
  %i.eb = select i1 %i.ab, i64 %i.dy, i64 0
  %spec.select396 = add i64 %i.eb, %.7331547      ; 2 uses
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %.loopexit431, label %bb.n, !llvm.loop !83

.lr.ph542:                                        ; preds = %bb.n, %half_to_uint.exit
  %.5301540 = phi ptr [ %i.es, %half_to_uint.exit ], [ %.4300548, %bb.n ] ; 2 uses
  %.0345539 = phi i32 [ %i.et, %half_to_uint.exit ], [ 0, %bb.n ]
  %.0346538 = phi ptr [ %i.ec, %half_to_uint.exit ], [ %.4289549, %bb.n ] ; 2 uses
  %.0346.val = load i16, ptr %.0346538, align 1   ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0346538, i64 2
  %i.ed = zext i16 %.0346.val to i32              ; 3 uses
  %.not.i = icmp sgt i16 %.0346.val, -1
  br i1 %.not.i, label %bb.o, label %half_to_uint.exit

bb.o:                                             ; preds = %.lr.ph542
  %i.ee = and i32 %i.ed, 31744
  %i.ef = icmp eq i32 %i.ee, 31744
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = and i32 %i.ed, 1023
  %.not5.i = icmp eq i32 %i.eg, 0
  %..i = sext i1 %.not5.i to i32
  br label %half_to_uint.exit

bb.q:                                             ; preds = %bb.o
  %i.eh = shl nuw nsw i32 %i.ed, 13               ; 3 uses
  %i.ei = icmp samesign ugt i16 %.0346.val, 1023
  br i1 %i.ei, label %bb.r, label %bb.s, !prof !40

bb.r:                                             ; preds = %bb.q
  %i.ej = add nuw nsw i32 %i.eh, 939524096
  br label %half_to_float.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i16 %.0346.val, 0
  br i1 %.not.i.i.i, label %half_to_float.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true)
  %i.el = add nsw i32 %i.ek, -8                   ; 2 uses
  %i.em = shl i32 %i.eh, %i.el
  %i.en = or i32 %i.em, 947912704
  %i.eo = shl nuw nsw i32 %i.el, 23
  %i.ep = sub nuw i32 %i.en, %i.eo
  br label %half_to_float.exit.i

half_to_float.exit.i:                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.i.i = phi i32 [ %i.ej, %bb.r ], [ 0, %bb.s ], [ %i.ep, %bb.t ]
  %i.eq = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.er = fptoui float %i.eq to i32
  br label %half_to_uint.exit

half_to_uint.exit:                                ; preds = %.lr.ph542, %bb.p, %half_to_float.exit.i
  %.0.i = phi i32 [ %i.er, %half_to_float.exit.i ], [ %..i, %bb.p ], [ 0, %.lr.ph542 ]
  store i32 %.0.i, ptr %.5301540, align 4, !tbaa !30
end_hunk_1
