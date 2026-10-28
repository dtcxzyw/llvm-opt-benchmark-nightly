Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/number?download=true
inline.NumInlined: 80
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@bc_divide:bb.a
  %n.vec = and i64 %i.mi, 2147483616              ; 6 uses
  %i.mm = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec
  %i.mn = getelementptr i8, ptr %i.dh, i64 %n.vec
  %i.mo = trunc nuw nsw i64 %n.vec to i32
  %i.mp = sub nsw i32 %i.mg, %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.dh, i64 %index ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24
  %wide.load408 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !24
  %i.mr = getelementptr i8, ptr %next.gep407, i64 16
  store <16 x i8> %wide.load, ptr %next.gep407, align 1, !tbaa !24
  store <16 x i8> %wide.load408, ptr %i.mr, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %_rm_leading_zeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec409 = and i64 %i.mi, 2147483644           ; 5 uses
  %i.mt = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec409
  %i.mu = getelementptr i8, ptr %i.dh, i64 %n.vec409
  %i.mv = trunc nuw nsw i64 %n.vec409 to i32
  %i.mw = sub nsw i32 %i.mg, %i.mv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index410 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next414, %vec.epilog.vector.body ] ; 3 uses
  %next.gep411 = getelementptr i8, ptr %.0.lcssa.i, i64 %index410
  %next.gep412 = getelementptr i8, ptr %i.dh, i64 %index410
  %wide.load413 = load <4 x i8>, ptr %next.gep411, align 1, !tbaa !24
  store <4 x i8> %wide.load413, ptr %next.gep412, align 1, !tbaa !24
  %index.next414 = add nuw i64 %index410, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next414, %n.vec409
  br i1 %i.mx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n415 = icmp eq i64 %n.vec409, %i.mi
  br i1 %cmp.n415, label %_rm_leading_zeros.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.124.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.mm, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ]
  %.01323.i.ph = phi ptr [ %i.dh, %iter.check ], [ %i.dh, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mu, %vec.epilog.middle.block ]
  %.11522.i.ph = phi i32 [ %i.mg, %iter.check ], [ %i.mg, %vector.memcheck ], [ %i.mp, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.124.i = phi ptr [ %i.mz, %.lr.ph25.i ], [ %.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.01323.i = phi ptr [ %i.nb, %.lr.ph25.i ], [ %.01323.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.11522.i = phi i32 [ %i.my, %.lr.ph25.i ], [ %.11522.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.my = add nsw i32 %.11522.i, -1
  %i.mz = getelementptr inbounds nuw i8, ptr %.124.i, i64 1
  %i.na = load i8, ptr %.124.i, align 1, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %.01323.i, i64 1
  store i8 %i.na, ptr %.01323.i, align 1, !tbaa !24
  %i.nc = icmp samesign ugt i32 %.11522.i, 1
  br i1 %i.nc, label %.lr.ph25.i, label %_rm_leading_zeros.exit, !llvm.loop !64

_rm_leading_zeros.exit:                           ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %.critedge.i269
  %i.nd = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %free_num.exit273, label %bb.af

bb.af:                                            ; preds = %_rm_leading_zeros.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 12 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !20
  %i.nh = add nsw i32 %i.ng, -1                   ; 2 uses
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !20
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.ag, label %free_num.exit273

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.nd) #20
  br label %free_num.exit273

free_num.exit273:                                 ; preds = %bb.af, %bb.ag, %_rm_leading_zeros.exit
  store ptr %i.dc, ptr %2, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.dj) #20
  tail call void @free(ptr noundef %i.bw) #20
  tail call void @free(ptr noundef %i.ck) #20
  br label %is_zero.exit.thread

is_zero.exit.thread:                              ; preds = %bb.c, %bb.a, %is_zero.exit, %free_num.exit273
  %.0208 = phi i32 [ 0, %free_num.exit273 ], [ -1, %is_zero.exit ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @bc_modulo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr @_zero_, align 8, !tbaa !18 ; 3 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %free_num.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23   ; 2 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %is_zero.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.012.i = phi ptr [ %i.m, %bb.c ], [ %i.j, %.lr.ph.preheader.i ] ; 2 uses
  %.0811.i = phi i32 [ %i.n, %bb.c ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %i.k = load i8, ptr %.012.i, align 1, !tbaa !24
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %is_zero.exit.thread18

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  %i.n = add nsw i32 %.0811.i, -1
  %i.o = icmp sgt i32 %.0811.i, 1
  br i1 %i.o, label %.lr.ph.i, label %free_num.exit, !llvm.loop !5

is_zero.exit:                                     ; preds = %bb.b
  %.not.i.not = icmp eq i32 %i.h, 0
  br i1 %.not.i.not, label %free_num.exit, label %is_zero.exit.thread18

is_zero.exit.thread18:                            ; preds = %.lr.ph.i, %is_zero.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = add nsw i32 %i.g, %3
  %. = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !20
  store ptr %i.b, ptr %i.a, align 8, !tbaa !18
  %i.v = call i32 @bc_divide(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %3) ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @bc_multiply(ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %.)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  tail call void @bc_sub(ptr noundef %0, ptr noundef %i.x, ptr noundef %2)
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %free_num.exit, label %bb.d

bb.d:                                             ; preds = %is_zero.exit.thread18
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !20
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %free_num.exit

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.x) #20
  br label %free_num.exit

free_num.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %is_zero.exit.thread18, %is_zero.exit
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %is_zero.exit ], [ 0, %bb.d ], [ 0, %is_zero.exit.thread18 ], [ 0, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @bc_raise(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %bb.e

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.01216.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.01315.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.i = mul nsw i64 %.01315.i, 10
  %i.j = getelementptr inbounds nuw i8, ptr %.01216.i, i64 1
  %i.k = load i8, ptr %.01216.i, align 1, !tbaa !24
  %i.l = sext i8 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l                   ; 4 uses
  %i.n = add nsw i32 %.017.i, -1
  %i.o = icmp samesign ugt i32 %.017.i, 1         ; 2 uses
  %i.p = icmp slt i64 %i.m, 922337203685477581
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  br i1 %i.o, label %bb.d, label %num2long.exit

num2long.exit:                                    ; preds = %._crit_edge.loopexit.i
  %4 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 0) ; 2 uses
  %i.r = load i32, ptr %1, align 4, !tbaa !21
  %i.s = icmp eq i32 %i.r, 0
  %i.t = sub nsw i64 0, %4
  %.014.i = select i1 %i.s, i64 %4, i64 %i.t      ; 6 uses
  %5 = icmp slt i64 %i.m, 1
  br i1 %5, label %bb.d, label %.critedge

bb.d:                                             ; preds = %._crit_edge.loopexit.i, %num2long.exit
  %.not59 = icmp eq i32 %i.f, 1
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i8, ptr %i.u, align 4, !tbaa !24
  %.not40 = icmp eq i8 %i.v, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !18     ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %free_num.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.w) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %free_num.exit

free_num.exit:                                    ; preds = %bb.g, %bb.j
  %i.ac = load ptr, ptr @_one_, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !20
  store ptr %i.ac, ptr %2, align 8, !tbaa !18
  br label %free_num.exit47

.critedge:                                        ; preds = %num2long.exit
  %i.ag = icmp sgt i64 %.014.i, -1                ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ah = sub nsw i64 0, %.014.i
  br label %bb.n

bb.l:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %.014.i, %i.ak
  %. = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.aj) ; 2 uses
  %i.am = sext i32 %. to i64
  %i.an = icmp sgt i64 %i.al, %i.am
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = trunc i64 %.014.i to i32
  %i.ap = mul i32 %i.aj, %i.ao
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.034 = phi i64 [ %i.ah, %bb.k ], [ %.014.i, %bb.m ], [ %.014.i, %bb.l ]
  %.033 = phi i32 [ %3, %bb.k ], [ %i.ap, %bb.m ], [ %., %bb.l ] ; 3 uses
  %i.aq = load ptr, ptr @_one_, align 8, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !20
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !20
  store ptr %0, ptr %i.b, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.q
  %.149 = phi i64 [ %.034, %bb.n ], [ %i.az, %bb.q ] ; 2 uses
  %i.ax = and i64 %.149, 1
  %.not43 = icmp eq i64 %i.ax, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @bc_multiply(ptr noundef %i.ay, ptr noundef %.pre, ptr noundef nonnull %i.a, i32 noundef %.033)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @bc_multiply(ptr noundef %.pre, ptr noundef %.pre, ptr noundef nonnull %i.b, i32 noundef %.033)
  %i.az = lshr i64 %.149, 1                       ; 2 uses
  %.not41 = icmp eq i64 %i.az, 0
  br i1 %.not41, label %bb.r, label %bb.o, !llvm.loop !65

bb.r:                                             ; preds = %bb.q
  br i1 %i.ag, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr @_one_, align 8, !tbaa !18
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %i.bc = tail call i32 @bc_divide(ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef %2, i32 noundef %.033) ; 0 uses
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %free_num.exit45, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !20
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.u, label %free_num.exit45

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.bb) #20
  br label %free_num.exit45

bb.v:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %free_num.exit46, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !20
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !20
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %free_num.exit46

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.bi) #20
  br label %free_num.exit46

free_num.exit46:                                  ; preds = %bb.w, %bb.x, %bb.v
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !18
  store ptr %i.bo, ptr %2, align 8, !tbaa !18
  br label %free_num.exit45

free_num.exit45:                                  ; preds = %bb.t, %bb.u, %bb.s, %free_num.exit46
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %free_num.exit47, label %bb.y

bb.y:                                             ; preds = %free_num.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !20
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !20
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %free_num.exit47

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.bp) #20
  br label %free_num.exit47

free_num.exit47:                                  ; preds = %bb.y, %bb.z, %free_num.exit45, %free_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @rt_warn(ptr noundef, ...) local_unnamed_addr #14

declare void @rt_error(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bc_sqrt(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 4 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 10 uses
  %i.e = load ptr, ptr @_zero_, align 8, !tbaa !18 ; 7 uses
  %i.f = tail call fastcc range(i32 -1, 2) i32 @_do_compare(ptr noundef readonly %i.d, ptr noundef readonly %i.e, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %free_num.exit55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.d, null
  br i1 %i.i, label %free_num.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !20
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #20
  br label %bb.f
end_hunk_0
