Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEra?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Gia_ManCollectBugTrace:Vec_IntPush.exit
  store i32 %spec.select.sink.i15, ptr %i.a, align 8, !tbaa !60
  br label %Vec_IntPush.exit18

Vec_IntPush.exit18:                               ; preds = %bb.a, %bb.c, %Vec_IntGrow.exit11.sink.split.i14
  %storemerge26 = phi ptr [ %storemerge25, %bb.a ], [ %storemerge25, %bb.c ], [ %i.p, %Vec_IntGrow.exit11.sink.split.i14 ] ; 8 uses
  %spec.select.sink.i1522 = phi i32 [ %spec.select.sink.i1523, %bb.a ], [ %spec.select.sink.i1523, %bb.c ], [ %spec.select.sink.i15, %Vec_IntGrow.exit11.sink.split.i14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %storemerge26, i64 %indvars.iv
  store i32 %i.g, ptr %i.q, align 4, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65   ; 2 uses
  %.not10 = icmp eq i32 %i.s, 0
  br i1 %.not10, label %.thread, label %bb.e

bb.e:                                             ; preds = %Vec_IntPush.exit18
  %.val = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.t = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.a, !llvm.loop !99

.thread:                                          ; preds = %Vec_IntPush.exit18, %bb.e
  %i.x = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.x, ptr %i.b, align 4, !tbaa !39
  %i.y = lshr i64 %indvars.iv.next, 1             ; 2 uses
  %i.z = and i64 %indvars.iv.next, 4294967294
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %.epil.preheader, label %.thread.new

.thread.new:                                      ; preds = %.thread
  %unroll_iter = and i64 %i.y, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.thread.new
  %indvars.iv.i = phi i64 [ 0, %.thread.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.thread.new ], [ %niter.next.1, %bb.f ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %storemerge26, i64 %indvars.iv.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = sub nsw i64 %indvars.iv, %indvars.iv.i
  %sext = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext, 30
  %i.af = getelementptr inbounds i8, ptr %storemerge26, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !56
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !56
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %storemerge26, i64 %indvars.iv.next.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !56
  %i.aj = sub nsw i64 %indvars.iv, %indvars.iv.next.i
  %sext.1 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext.1, 30
  %i.al = getelementptr inbounds i8, ptr %storemerge26, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !56
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !56
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !56
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !100

Vec_IntReverseOrder.exit.loopexit.unr-lcssa:      ; preds = %bb.f
  %i.an = and i64 %indvars.iv.next, 2
  %lcmp.mod.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod.not, label %Vec_IntReverseOrder.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %.thread
  %indvars.iv.i.epil.init = phi i64 [ 0, %.thread ], [ %indvars.iv.next.i.1, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod33 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %storemerge26, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aq = sub nsw i64 %indvars.iv, %indvars.iv.i.epil.init
  %sext.epil = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext.epil, 30
  %i.as = getelementptr inbounds i8, ptr %storemerge26, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !56
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !56
  br label %Vec_IntReverseOrder.exit

Vec_IntReverseOrder.exit:                         ; preds = %.epil.preheader, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %Vec_IntPush.exit
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManCountDepth(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val16 = load i32, ptr %i.c, align 4, !tbaa !53 ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val17 = load ptr, ptr %i.d, align 8, !tbaa !48 ; 3 uses
  %i.e = sext i32 %.val16 to i64
  %i.f = getelementptr [8 x i8], ptr %.val17, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp sgt i32 %.val16, 3
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %.val16 to i64
  %i.n = getelementptr [8 x i8], ptr %.val17, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b
  %.119.ph = phi ptr [ %i.p, %bb.b ], [ %i.h, %bb.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.020 = phi i32 [ %i.q, %bb.c ], [ 0, %.lr.ph.preheader ]
  %.119 = phi ptr [ %i.v, %bb.c ], [ %.119.ph, %.lr.ph.preheader ]
  %i.q = add nuw nsw i32 %.020, 1                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.119, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65   ; 2 uses
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val17, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Gia_ManAnalyzeResult(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !37 ; 2 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.pre, i64 72
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %i.b = getelementptr i8, ptr %.val116, i64 4
  %.val116.val = load i32, ptr %i.b, align 4, !tbaa !39
  %i.c = sub nsw i32 %.val116.val, %.val.pre      ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %.pre, i64 32
  %.val121 = load ptr, ptr %i.e, align 8, !tbaa !67
  %.not91 = icmp eq ptr %.val121, null
  br i1 %.not91, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %.val116, i64 8
  %.val122.val = load ptr, ptr %i.h, align 8, !tbaa !59
  %.val13.i = load i32, ptr %i.g, align 8, !tbaa !40 ; 3 uses
  %.val14.i = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.i = icmp sgt i32 %.val13.i, 0
  %wide.trip.count.i = zext nneg i32 %.val13.i to i64
  br i1 %i.i, label %.lr.ph.preheader.i.preheader, label %.critedge

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Gia_ManOutputAsserted.exit.thread.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Gia_ManOutputAsserted.exit.thread.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val122.val, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = mul nsw i32 %.val13.i, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.m
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 32 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.r = shl nuw nsw i32 %i.q, 5
  %i.s = and i32 %i.p, 1
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.c, label %Gia_ManOutputAsserted.exit.a

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.p, 2
  %.not.1.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.1.i.i, label %bb.d, label %Gia_ManOutputAsserted.exit.a

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.p, 4
  %.not.2.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.2.i.i, label %bb.e, label %Gia_ManOutputAsserted.exit.a

bb.e:                                             ; preds = %bb.d
  %i.v = and i32 %i.p, 8
  %.not.3.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.3.i.i, label %bb.f, label %Gia_ManOutputAsserted.exit.a

bb.f:                                             ; preds = %bb.e
  %i.w = and i32 %i.p, 16
  %.not.4.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.4.i.i, label %bb.g, label %Gia_ManOutputAsserted.exit.a

bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %i.p, 32
  %.not.5.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.5.i.i, label %bb.h, label %Gia_ManOutputAsserted.exit.a

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %i.p, 64
  %.not.6.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.6.i.i, label %bb.i, label %Gia_ManOutputAsserted.exit.a

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.p, 128
  %.not.7.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.7.i.i, label %bb.j, label %Gia_ManOutputAsserted.exit.a

bb.j:                                             ; preds = %bb.i
  %i.aa = and i32 %i.p, 256
  %.not.8.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.8.i.i, label %bb.k, label %Gia_ManOutputAsserted.exit.a

bb.k:                                             ; preds = %bb.j
  %i.ab = and i32 %i.p, 512
  %.not.9.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.9.i.i, label %bb.l, label %Gia_ManOutputAsserted.exit.a

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.p, 1024
  %.not.10.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.10.i.i, label %bb.m, label %Gia_ManOutputAsserted.exit.a

bb.m:                                             ; preds = %bb.l
  %i.ad = and i32 %i.p, 2048
  %.not.11.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.11.i.i, label %bb.n, label %Gia_ManOutputAsserted.exit.a

bb.n:                                             ; preds = %bb.m
  %i.ae = and i32 %i.p, 4096
  %.not.12.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.12.i.i, label %bb.o, label %Gia_ManOutputAsserted.exit.a

bb.o:                                             ; preds = %bb.n
  %i.af = and i32 %i.p, 8192
  %.not.13.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.13.i.i, label %bb.p, label %Gia_ManOutputAsserted.exit.a

bb.p:                                             ; preds = %bb.o
  %i.ag = and i32 %i.p, 16384
  %.not.14.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.14.i.i, label %bb.q, label %Gia_ManOutputAsserted.exit.a

bb.q:                                             ; preds = %bb.p
  %i.ah = and i32 %i.p, 32768
  %.not.15.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.15.i.i, label %bb.r, label %Gia_ManOutputAsserted.exit.a

bb.r:                                             ; preds = %bb.q
  %i.ai = and i32 %i.p, 65536
  %.not.16.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.16.i.i, label %bb.s, label %Gia_ManOutputAsserted.exit.a

bb.s:                                             ; preds = %bb.r
  %i.aj = and i32 %i.p, 131072
  %.not.17.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.17.i.i, label %bb.t, label %Gia_ManOutputAsserted.exit.a

bb.t:                                             ; preds = %bb.s
  %i.ak = and i32 %i.p, 262144
  %.not.18.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.18.i.i, label %bb.u, label %Gia_ManOutputAsserted.exit.a

bb.u:                                             ; preds = %bb.t
  %i.al = and i32 %i.p, 524288
  %.not.19.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.19.i.i, label %bb.v, label %Gia_ManOutputAsserted.exit.a

bb.v:                                             ; preds = %bb.u
  %i.am = and i32 %i.p, 1048576
  %.not.20.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.20.i.i, label %bb.w, label %Gia_ManOutputAsserted.exit.a

bb.w:                                             ; preds = %bb.v
  %i.an = and i32 %i.p, 2097152
  %.not.21.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.21.i.i, label %bb.x, label %Gia_ManOutputAsserted.exit.a

bb.x:                                             ; preds = %bb.w
  %i.ao = and i32 %i.p, 4194304
  %.not.22.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.22.i.i, label %bb.y, label %Gia_ManOutputAsserted.exit.a

bb.y:                                             ; preds = %bb.x
  %i.ap = and i32 %i.p, 8388608
  %.not.23.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.23.i.i, label %bb.z, label %Gia_ManOutputAsserted.exit.a

bb.z:                                             ; preds = %bb.y
  %i.aq = and i32 %i.p, 16777216
  %.not.24.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.24.i.i, label %bb.aa, label %Gia_ManOutputAsserted.exit.a

bb.aa:                                            ; preds = %bb.z
  %i.ar = and i32 %i.p, 33554432
  %.not.25.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.25.i.i, label %bb.ab, label %Gia_ManOutputAsserted.exit.a

bb.ab:                                            ; preds = %bb.aa
  %i.as = and i32 %i.p, 67108864
  %.not.26.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.26.i.i, label %bb.ac, label %Gia_ManOutputAsserted.exit.a

bb.ac:                                            ; preds = %bb.ab
  %i.at = and i32 %i.p, 134217728
  %.not.27.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.27.i.i, label %bb.ad, label %Gia_ManOutputAsserted.exit.a

bb.ad:                                            ; preds = %bb.ac
  %i.au = and i32 %i.p, 268435456
  %.not.28.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.28.i.i, label %bb.ae, label %Gia_ManOutputAsserted.exit.a

bb.ae:                                            ; preds = %bb.ad
  %i.av = and i32 %i.p, 536870912
  %.not.29.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.29.i.i, label %bb.af, label %Gia_ManOutputAsserted.exit.a

bb.af:                                            ; preds = %bb.ae
  %4 = and i32 %i.p, 1073741824
  %.not.30.i.i = icmp eq i32 %4, 0
  %spec.select.i.i = select i1 %.not.30.i.i, i32 31, i32 30
  br label %Gia_ManOutputAsserted.exit.a

bb.ag:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManOutputAsserted.exit.thread.loopexit, label %.lr.ph.i, !llvm.loop !101

Gia_ManOutputAsserted.exit.a:                     ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.06.i.i = phi i32 [ 0, %bb.b ], [ 16, %bb.r ], [ 1, %bb.c ], [ 24, %bb.z ], [ 2, %bb.d ], [ 20, %bb.v ], [ 3, %bb.e ], [ %spec.select.i.i, %bb.af ], [ 4, %bb.f ], [ 17, %bb.s ], [ 5, %bb.g ], [ 29, %bb.ae ], [ 6, %bb.h ], [ 23, %bb.y ], [ 7, %bb.i ], [ 28, %bb.ad ], [ 8, %bb.j ], [ 18, %bb.t ], [ 9, %bb.k ], [ 27, %bb.ac ], [ 10, %bb.l ], [ 21, %bb.w ], [ 11, %bb.m ], [ 26, %bb.ab ], [ 12, %bb.n ], [ 19, %bb.u ], [ 13, %bb.o ], [ 25, %bb.aa ], [ 14, %bb.p ], [ 22, %bb.x ], [ 15, %bb.q ]
  %5 = or disjoint i32 %.06.i.i, %i.r
  %i.aw = tail call ptr @Gia_ManCollectBugTrace(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %5)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !62
  br label %.loopexit

Gia_ManOutputAsserted.exit.thread.loopexit:       ; preds = %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.preheader.i, !llvm.loop !102

.critedge:                                        ; preds = %Gia_ManOutputAsserted.exit.thread.loopexit, %bb.a, %.preheader, %.lr.ph.split, %.lr.ph
  %i.ay = getelementptr i8, ptr %.pre, i64 64
  %.val102 = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr i8, ptr %.val102, i64 4
  %.val102.val = load i32, ptr %i.az, align 4, !tbaa !39
  %i.ba = sub nsw i32 %.val102.val, %.val.pre     ; 2 uses
  %.not205 = icmp eq i32 %i.ba, 31
  br i1 %.not205, label %.loopexit, label %.lr.ph204

.lr.ph204:                                        ; preds = %.critedge
  %i.bb = shl nuw nsw i32 1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bf = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.not93 = icmp eq i32 %3, 0                     ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph204, %.critedge99
  %.0 = phi i32 [ 0, %.lr.ph204 ], [ %.1, %.critedge99 ]
  %.0201 = phi i32 [ 0, %.lr.ph204 ], [ %i.ob, %.critedge99 ] ; 7 uses
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !109 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bm = tail call ptr @Gia_ManEraCreateState(ptr noundef nonnull %0) ; 2 uses
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !109
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bn = phi ptr [ %i.bm, %bb.ai ], [ %i.bk, %bb.ah ] ; 4 uses
  %i.bo = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !56
  %i.bs = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  %.val103184 = load i32, ptr %i.bt, align 8, !tbaa !37 ; 4 uses
  %i.bu = icmp sgt i32 %.val103184, 0
  br i1 %i.bu, label %.lr.ph187, label %.critedge2

.lr.ph187:                                        ; preds = %bb.aj
  %i.bv = getelementptr i8, ptr %i.bs, i64 32
  %.val119 = load ptr, ptr %i.bv, align 8, !tbaa !67
  %.not92 = icmp eq ptr %.val119, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bx = and i32 %.0201, 31
  br i1 %.not92, label %.critedge2, label %.lr.ph187.split

.lr.ph187.split:                                  ; preds = %.lr.ph187
  %i.by = lshr i32 %.0201, 5
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %i.bs, i64 72
  %.val114 = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cb = getelementptr i8, ptr %.val114, i64 8
  %.val120.val = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cc = getelementptr i8, ptr %.val114, i64 4
  %.val110 = load ptr, ptr %i.bf, align 8, !tbaa !43
  %invariant.gep = getelementptr [4 x i8], ptr %.val110, i64 %i.bz
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph187.split, %bb.am
  %.val103221 = phi i32 [ %.val103184, %.lr.ph187.split ], [ %.val103, %bb.am ] ; 2 uses
  %.1185 = phi i32 [ 0, %.lr.ph187.split ], [ %i.cw, %bb.am ] ; 4 uses
  %.val114.val = load i32, ptr %i.cc, align 4, !tbaa !39
  %i.cd = sub i32 %.1185, %.val103221
  %i.ce = add i32 %i.cd, %.val114.val
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %.val120.val, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !56
  %.val109 = load i32, ptr %i.be, align 8, !tbaa !40
  %i.ci = mul nsw i32 %.val109, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = lshr i32 %.1185, 5
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56 ; 2 uses
  %i.co = and i32 %.1185, 31                      ; 2 uses
  %i.cp = lshr i32 %i.cn, %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cj
  %i.cq = load i32, ptr %gep, align 4, !tbaa !56
  %i.cr = lshr i32 %i.cq, %i.bx
  %i.cs = xor i32 %i.cr, %i.cp
  %i.ct = and i32 %i.cs, 1
  %.not95 = icmp eq i32 %i.ct, 0
  br i1 %.not95, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cu = shl nuw i32 1, %i.co
  %i.cv = xor i32 %i.cn, %i.cu
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !56
  %.val103.pre = load i32, ptr %i.bt, align 8, !tbaa !37
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.val103 = phi i32 [ %.val103221, %bb.ak ], [ %.val103.pre, %bb.al ] ; 3 uses
  %i.cw = add nuw nsw i32 %.1185, 1               ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %.val103
  br i1 %i.cx, label %bb.ak, label %.critedge2, !llvm.loop !103

.critedge2:                                       ; preds = %bb.am, %.lr.ph187, %bb.aj
  %.val103.lcssa = phi i32 [ %.val103184, %bb.aj ], [ %.val103184, %.lr.ph187 ], [ %.val103, %bb.am ]
  br i1 %.not93, label %.critedge4, label %bb.an

bb.an:                                            ; preds = %.critedge2
  %i.cy = getelementptr i8, ptr %i.bs, i64 72
  %.val112 = load ptr, ptr %i.cy, align 8, !tbaa !69 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val112, i64 4
  %.val112.val = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.da = sub nsw i32 %.val112.val, %.val103.lcssa ; 4 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph194, label %.critedge4

.lr.ph194:                                        ; preds = %bb.an
  %i.dc = getelementptr i8, ptr %i.bs, i64 32
  %.val117 = load ptr, ptr %i.dc, align 8, !tbaa !67
  %.not94 = icmp eq ptr %.val117, null
  %i.dd = and i32 %.0201, 31                      ; 3 uses
  br i1 %.not94, label %.critedge4, label %.lr.ph194.split

.lr.ph194.split:                                  ; preds = %.lr.ph194
  %i.de = lshr i32 %.0201, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %.val112, i64 8
  %.val118.val = load ptr, ptr %i.dg, align 8, !tbaa !59 ; 3 uses
  %.val107 = load i32, ptr %i.be, align 8, !tbaa !40 ; 3 uses
  %.val108 = load ptr, ptr %i.bf, align 8, !tbaa !43
  %invariant.gep198 = getelementptr [4 x i8], ptr %.val108, i64 %i.df ; 3 uses
  %wide.trip.count216 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count216, 1
  %i.dh = icmp eq i32 %i.da, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph194.split.new

.lr.ph194.split.new:                              ; preds = %.lr.ph194.split
  %unroll_iter = and i64 %wide.trip.count216, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph194.split.new
  %indvars.iv213 = phi i64 [ 0, %.lr.ph194.split.new ], [ %indvars.iv.next214.1, %bb.ao ] ; 6 uses
  %i.di = phi i32 [ 0, %.lr.ph194.split.new ], [ %i.eg, %bb.ao ]
  %niter = phi i64 [ 0, %.lr.ph194.split.new ], [ %niter.next.1, %bb.ao ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val118.val, i64 %indvars.iv213
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !56
  %i.dl = mul nsw i32 %.val107, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %gep199 = getelementptr [4 x i8], ptr %invariant.gep198, i64 %i.dm
  %i.dn = load i32, ptr %gep199, align 4, !tbaa !56
  %i.do = lshr i32 %i.dn, %i.dd
  %i.dp = trunc i32 %i.do to i1
  %i.dq = icmp samesign ult i64 %indvars.iv213, 32
  %or.cond = select i1 %i.dp, i1 %i.dq, i1 false
  %i.dr = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.ds = shl nuw i32 1, %i.dr
  %i.dt = select i1 %or.cond, i32 %i.ds, i32 0
  %i.du = xor i32 %i.di, %i.dt
  %indvars.iv.next214 = or disjoint i64 %indvars.iv213, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val118.val, i64 %indvars.iv.next214
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !56
  %i.dx = mul nsw i32 %.val107, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %gep199.1 = getelementptr [4 x i8], ptr %invariant.gep198, i64 %i.dy
  %i.dz = load i32, ptr %gep199.1, align 4, !tbaa !56
  %i.ea = lshr i32 %i.dz, %i.dd
  %i.eb = trunc i32 %i.ea to i1
  %i.ec = icmp samesign ult i64 %indvars.iv213, 32
  %or.cond.1 = select i1 %i.eb, i1 %i.ec, i1 false
  %i.ed = trunc nuw nsw i64 %indvars.iv.next214 to i32
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = select i1 %or.cond.1, i32 %i.ee, i32 0
  %i.eg = xor i32 %i.du, %i.ef                    ; 3 uses
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge4.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !104

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph194.split
  %indvars.iv213.epil.init = phi i64 [ 0, %.lr.ph194.split ], [ %indvars.iv.next214.1, %.critedge4.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi i32 [ 0, %.lr.ph194.split ], [ %i.eg, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val118.val, i64 %indvars.iv213.epil.init
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.ej = mul nsw i32 %.val107, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %gep199.epil = getelementptr [4 x i8], ptr %invariant.gep198, i64 %i.ek
  %i.el = load i32, ptr %gep199.epil, align 4, !tbaa !56
end_hunk_0
