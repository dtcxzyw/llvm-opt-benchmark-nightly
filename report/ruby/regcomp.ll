Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regcomp?download=true
inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@subexp_recursive_check:bb.a
  %i.b = getelementptr i8, ptr %.017, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.c)
  %i.e = or i32 %i.d, %.0                         ; 2 uses
  %i.f = getelementptr i8, ptr %.017, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %common.ret47, label %bb.b, !llvm.loop !239

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse
  %.tr.be.in = getelementptr i8, ptr %.tr, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !41
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr i8, ptr %.tr, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !109  ; 2 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.split, label %common.ret47

.split:                                           ; preds = %bb.c
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  %.off = add nsw i32 %i.l, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %common.ret47

bb.d:                                             ; preds = %tailrecurse
  %i.m = getelementptr i8, ptr %.tr, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.n)
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %common.ret47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.tr, i64 4        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = or i32 %i.q, 128
  store i32 %i.r, ptr %i.p, align 4, !tbaa !41
  br label %common.ret47

bb.f:                                             ; preds = %tailrecurse
  %i.s = getelementptr i8, ptr %.tr, i64 4        ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41   ; 3 uses
  %i.u = and i32 %i.t, 16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %common.ret47

bb.g:                                             ; preds = %bb.f
  %i.v = and i32 %i.t, 8
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.h, label %common.ret47

common.ret47:                                     ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.b, %tailrecurse, %.split, %bb.c, %bb.h
  %common.ret47.op = phi i32 [ %i.z, %bb.h ], [ %i.e, %bb.b ], [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.c ]
  ret i32 %common.ret47.op

bb.h:                                             ; preds = %bb.g
  %i.w = or disjoint i32 %i.t, 16
  store i32 %i.w, ptr %i.s, align 4, !tbaa !41
  %i.x = getelementptr i8, ptr %.tr, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = tail call fastcc i32 @subexp_recursive_check(ptr noundef %i.y)
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !41
  %i.ab = and i32 %i.aa, -17
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !41
  br label %common.ret47
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @subexp_inf_recursive_check(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 9 uses
  %i.b = load i32, ptr %.tr, align 8, !tbaa !41
  switch i32 %i.b, label %common.ret118 [
    i32 8, label %bb.b
    i32 9, label %.preheader
    i32 5, label %bb.j
    i32 7, label %bb.l
    i32 10, label %tailrecurse.backedge
    i32 6, label %bb.m
  ]

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.057 = phi i32 [ %2, %bb.b ], [ %.158, %bb.g ] ; 2 uses
  %.055 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.g ]
  %.054 = phi ptr [ %.tr, %bb.b ], [ %i.m, %bb.g ] ; 2 uses
  %i.c = getelementptr i8, ptr %.054, i64 8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.d, ptr noundef %1, i32 noundef %.057) ; 4 uses
  %i.f = icmp slt i32 %i.e, 0
  %i.g = icmp eq i32 %i.e, 2
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or i32 %i.e, %.055                       ; 2 uses
  %.not74 = icmp eq i32 %.057, 0
  br i1 %.not74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.j = call fastcc i32 @get_min_match_length(ptr noundef %i.i, ptr noundef %i.a, ptr noundef nonnull %1) ; 2 uses
  %.not75 = icmp eq i32 %i.j, 0
  br i1 %.not75, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.a, align 8, !tbaa !40
  %.not76 = icmp eq i64 %i.k, 0
  %spec.select = zext i1 %.not76 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.158 = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.f ]
  %i.l = getelementptr i8, ptr %.054, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %.not77 = icmp eq ptr %i.m, null
  br i1 %.not77, label %bb.h, label %bb.c, !llvm.loop !240

.thread:                                          ; preds = %bb.e, %bb.c
  %.059.ph = phi i32 [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.ret118

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.ret118

.preheader:                                       ; preds = %tailrecurse, %bb.i
  %.062 = phi ptr [ %i.u, %bb.i ], [ %.tr, %tailrecurse ] ; 2 uses
  %.2 = phi i32 [ %i.s, %bb.i ], [ 1, %tailrecurse ]
  %i.n = getelementptr i8, ptr %.062, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.o, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = icmp ne i32 %i.p, 2
  %or.cond4.not = and i1 %i.q, %i.r
  br i1 %or.cond4.not, label %bb.i, label %common.ret118

bb.i:                                             ; preds = %.preheader
  %i.s = and i32 %i.p, %.2                        ; 2 uses
  %i.t = getelementptr i8, ptr %.062, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %.not71 = icmp eq ptr %i.u, null
  br i1 %.not71, label %common.ret118, label %.preheader, !llvm.loop !241

bb.j:                                             ; preds = %tailrecurse
  %i.v = getelementptr i8, ptr %.tr, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.w, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %common.ret118

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.tr, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ab = icmp ne i32 %i.aa, 0
  %spec.select78 = zext i1 %i.ab to i32
  br label %common.ret118

bb.l:                                             ; preds = %tailrecurse
  %i.ac = getelementptr i8, ptr %.tr, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !109 ; 2 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.split, label %common.ret118

.split:                                           ; preds = %bb.l
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 true)
  %.off = add nsw i32 %i.ag, -10
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %tailrecurse.backedge, label %common.ret118

tailrecurse.backedge:                             ; preds = %.split, %tailrecurse
  %.sink = phi i64 [ 32, %tailrecurse ], [ 8, %.split ]
  %i.ah = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.ah, align 8, !tbaa !41
  br label %tailrecurse

bb.m:                                             ; preds = %tailrecurse
  %i.ai = getelementptr i8, ptr %.tr, i64 4       ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 3 uses
  %i.ak = and i32 %i.aj, 16
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.n, label %common.ret118

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %i.aj, 8
  %.not70 = icmp eq i32 %i.al, 0
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %3 = add nuw nsw i32 %2, 1
  br label %common.ret118

common.ret118:                                    ; preds = %bb.j, %bb.k, %bb.h, %.thread, %bb.m, %bb.o, %bb.i, %.preheader, %tailrecurse, %.split, %bb.l, %bb.p
  %common.ret118.op = phi i32 [ %i.ap, %bb.p ], [ %i.p, %.preheader ], [ %3, %bb.o ], [ %.059.ph, %.thread ], [ %i.x, %bb.j ], [ 0, %bb.m ], [ %spec.select78, %bb.k ], [ %i.h, %bb.h ], [ %i.s, %bb.i ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.l ]
  ret i32 %common.ret118.op

bb.p:                                             ; preds = %bb.n
  %i.am = or disjoint i32 %i.aj, 16
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !41
  %i.an = getelementptr i8, ptr %.tr, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = tail call fastcc i32 @subexp_inf_recursive_check(ptr noundef %i.ao, ptr noundef %1, i32 noundef %2)
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ar = and i32 %i.aq, -17
  store i32 %i.ar, ptr %i.ai, align 4, !tbaa !41
  br label %common.ret118
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @get_min_match_length(ptr nofree noundef captures(address) %0, ptr noundef nonnull initializes((0, 8)) %1, ptr noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %1, align 8, !tbaa !40
  %i.b = load i32, ptr %0, align 8, !tbaa !41
  switch i32 %i.b, label %.critedge [
    i32 4, label %bb.b
    i32 10, label %bb.i
    i32 8, label %.preheader133
    i32 9, label %.preheader136
    i32 0, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
    i32 3, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not124 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %2, i64 104
  %i.f = select i1 %.not124, ptr %i.e, ptr %i.d   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !137
  %i.i = and i32 %i.h, 128
  %.not125 = icmp eq i32 %i.i, 0
  br i1 %.not125, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134  ; 2 uses
  %.not126 = icmp eq ptr %i.k, null
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = select i1 %.not126, ptr %i.l, ptr %i.k   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 92         ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = tail call fastcc i32 @get_min_match_length(ptr noundef %i.t, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not127 = icmp eq i32 %i.u, 0
  br i1 %.not127, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.preheader ] ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17   ; 2 uses
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !59
  %i.ab = icmp sgt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr [8 x i8], ptr %i.f, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = call fastcc i32 @get_min_match_length(ptr noundef %i.ae, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %.not128 = icmp eq i32 %i.af, 0
  br i1 %.not128, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %1, align 8, !tbaa !40
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.ah, ptr %1, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !135
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %.lr.ph, label %.critedge, !llvm.loop !242

bb.i:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !41
  %i.ao = and i32 %i.an, 128
  %.not122 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 3 uses
  br i1 %.not122, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !112
  %i.at = and i32 %i.as, 1
  %.not123 = icmp eq i32 %i.at, 0
  br i1 %.not123, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.aq, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !162
  store i64 %i.av, ptr %1, align 8, !tbaa !40
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.aw = tail call fastcc i32 @get_min_match_length(ptr noundef %i.aq, ptr noundef %1, ptr noundef %2)
  br label %.critedge

.preheader133:                                    ; preds = %bb.a, %bb.m
  %.099 = phi ptr [ %i.bf, %bb.m ], [ %0, %bb.a ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.099, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = call fastcc i32 @get_min_match_length(ptr noundef %i.ay, ptr noundef %i.a, ptr noundef %2) ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.preheader133
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !40
  %i.bc = load i64, ptr %1, align 8, !tbaa !40
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %1, align 8, !tbaa !40
  %i.be = getelementptr i8, ptr %.099, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %.not121 = icmp eq ptr %i.bf, null
  br i1 %.not121, label %.critedge, label %.preheader133, !llvm.loop !243

.preheader136:                                    ; preds = %bb.a, %bb.q
  %.094 = phi ptr [ %i.bp, %bb.q ], [ %0, %bb.a ] ; 3 uses
  %i.bg = getelementptr i8, ptr %.094, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bi = call fastcc i32 @get_min_match_length(ptr noundef %i.bh, ptr noundef %i.a, ptr noundef %2) ; 2 uses
  %.not119 = icmp eq i32 %i.bi, 0
  br i1 %.not119, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.preheader136
  %i.bj = icmp eq ptr %.094, %0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !40
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %1, align 8, !tbaa !40
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ %i.bk, %bb.o ], [ %i.bm, %bb.p ]
  store i64 %.sink, ptr %1, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.bo = getelementptr i8, ptr %.094, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %.not120 = icmp eq ptr %i.bp, null
  br i1 %.not120, label %.critedge, label %.preheader136, !llvm.loop !244

bb.r:                                             ; preds = %bb.a
  %i.bq = getelementptr i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !123
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %1, align 8, !tbaa !40
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  store i64 1, ptr %1, align 8, !tbaa !40
  br label %.critedge

bb.t:                                             ; preds = %bb.a, %bb.a
  store i64 1, ptr %1, align 8, !tbaa !40
  br label %.critedge
end_hunk_0
