Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_strfmt_putfstr:bb.a

bb.c:                                             ; preds = %lj_buf_more.exit.i
  %i.s = zext i32 %spec.select.i to i64           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull readonly align 4 %i.a, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %lj_buf_more.exit.i
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %.0.i.i, %lj_buf_more.exit.i ] ; 3 uses
  %i.u = icmp ugt i32 %i.e, %spec.select.i
  br i1 %i.u, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.v = xor i32 %spec.select.i, -1
  %i.w = add nsw i32 %i.e, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 32, i64 %i.y, i1 false), !tbaa !18
  %scevgep.i = getelementptr i8, ptr %.0.i, i64 %i.y
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.d ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 3 uses
  br i1 %.not.i, label %bb.e, label %strfmt_putfstrlen.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = zext i32 %spec.select.i to i64           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa.i, ptr nonnull readonly align 4 %i.a, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.z
  br label %strfmt_putfstrlen.exit

strfmt_putfstrlen.exit:                           ; preds = %._crit_edge.i, %bb.e
  %.2.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.aa, %bb.e ]
  store ptr %.2.i, ptr %0, align 8, !tbaa !35
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfxint(ptr noundef returned %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [23 x i8], align 16               ; 20 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = and i32 %1, 15
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = sub i64 0, %2
  %i.g = lshr i32 %1, 24                          ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  %.not102130 = icmp eq i32 %i.g, 0
  %i.i = and i32 %1, -1037
  %spec.select124131 = select i1 %.not102130, i32 %1, i32 %i.i
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %1, 512
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %1, 2048
  %.not101 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not101, i32 0, i32 288
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.078 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 299, %bb.c ] ; 3 uses
  %i.l = lshr i32 %1, 24                          ; 2 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %.not102 = icmp eq i32 %i.l, 0
  %i.n = and i32 %1, -1025
  %spec.select124 = select i1 %.not102, i32 %1, i32 %i.n ; 4 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not112 = icmp ne i32 %i.m, 0
  %i.p = and i32 %spec.select124, 4128
  %i.q = icmp eq i32 %i.p, 4128
  %or.cond = or i1 %.not112, %i.q
  br i1 %or.cond, label %bb.g, label %.loopexit141

bb.g:                                             ; preds = %bb.f
  %.ptr121 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 48, ptr %.ptr121, align 2, !tbaa !18
  br label %.loopexit141

bb.h:                                             ; preds = %.thread, %bb.e
  %spec.select124134 = phi i32 [ %spec.select124131, %.thread ], [ %spec.select124, %bb.e ] ; 9 uses
  %i.r = phi i32 [ %i.h, %.thread ], [ %i.m, %bb.e ] ; 4 uses
  %.078133 = phi i32 [ 301, %.thread ], [ %.078, %bb.e ] ; 4 uses
  %.092132 = phi i64 [ %i.f, %.thread ], [ %2, %bb.e ] ; 5 uses
  %i.s = and i32 %spec.select124134, 48
  %.not103 = icmp eq i32 %i.s, 0
  br i1 %.not103, label %.preheader142, label %bb.j

.preheader142:                                    ; preds = %bb.h
  %.not104145 = icmp ult i64 %.092132, 4294967296
  br i1 %.not104145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader142, %.lr.ph
  %.086.idx147 = phi i64 [ %.086.add, %.lr.ph ], [ 23, %.preheader142 ]
  %.193146 = phi i64 [ %i.w, %.lr.ph ], [ %.092132, %.preheader142 ] ; 3 uses
  %i.t = urem i64 %.193146, 10
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
  %.086.add = add nsw i64 %.086.idx147, -1        ; 3 uses
  %.ptr122 = getelementptr inbounds i8, ptr %i.a, i64 %.086.add
  store i8 %i.v, ptr %.ptr122, align 1, !tbaa !18
  %i.w = udiv i64 %.193146, 10                    ; 2 uses
  %.not104 = icmp ult i64 %.193146, 42949672960
  br i1 %.not104, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %.preheader142
  %.193.lcssa = phi i64 [ %.092132, %.preheader142 ], [ %i.w, %.lr.ph ]
  %.086.idx.lcssa = phi i64 [ 23, %.preheader142 ], [ %.086.add, %.lr.ph ]
  %i.x = trunc nuw i64 %.193.lcssa to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %.187.idx = phi i64 [ %.086.idx.lcssa, %._crit_edge ], [ %.187.add, %bb.i ]
  %.0 = phi i32 [ %i.x, %._crit_edge ], [ %i.ab, %bb.i ] ; 3 uses
  %i.y = urem i32 %.0, 10
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %.187.add = add nsw i64 %.187.idx, -1           ; 3 uses
  %.ptr116 = getelementptr inbounds i8, ptr %i.a, i64 %.187.add
  store i8 %i.aa, ptr %.ptr116, align 1, !tbaa !18
  %i.ab = udiv i32 %.0, 10
  %.not105 = icmp ult i32 %.0, 10
  br i1 %.not105, label %.loopexit141, label %bb.i, !llvm.loop !45

bb.j:                                             ; preds = %bb.h
  %i.ac = and i32 %spec.select124134, 16
  %.not106 = icmp eq i32 %i.ac, 0
  br i1 %.not106, label %.preheader143, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = and i32 %spec.select124134, 8192
  %.not109 = icmp eq i32 %i.ad, 0                 ; 2 uses
  %i.ae = select i1 %.not109, ptr @.str, ptr @.str.2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.294 = phi i64 [ %.092132, %bb.k ], [ %i.ai, %bb.l ] ; 2 uses
  %.288.idx = phi i64 [ 23, %bb.k ], [ %.288.add, %bb.l ]
  %i.af = and i64 %.294, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %.288.add = add nsw i64 %.288.idx, -1           ; 3 uses
  %.ptr119 = getelementptr inbounds i8, ptr %i.a, i64 %.288.add
  store i8 %i.ah, ptr %.ptr119, align 1, !tbaa !18
  %i.ai = lshr i64 %.294, 4                       ; 2 uses
  %.not110 = icmp eq i64 %i.ai, 0
  br i1 %.not110, label %bb.m, label %bb.l, !llvm.loop !46

bb.m:                                             ; preds = %bb.l
  %i.aj = and i32 %spec.select124134, 4096
  %.not111 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not109, i32 632, i32 600
  %spec.select126 = select i1 %.not111, i32 %.078133, i32 %i.ak
  br label %.loopexit141

.preheader143:                                    ; preds = %bb.j, %.preheader143
  %.395 = phi i64 [ %i.ao, %.preheader143 ], [ %.092132, %bb.j ] ; 2 uses
  %.389.idx = phi i64 [ %.389.add, %.preheader143 ], [ 23, %bb.j ] ; 2 uses
  %i.al = trunc i64 %.395 to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.389.add = add nsw i64 %.389.idx, -1           ; 3 uses
  %.ptr117 = getelementptr inbounds i8, ptr %i.a, i64 %.389.add
  store i8 %i.an, ptr %.ptr117, align 1, !tbaa !18
  %i.ao = lshr i64 %.395, 3                       ; 2 uses
  %.not107 = icmp eq i64 %i.ao, 0
  br i1 %.not107, label %bb.n, label %.preheader143, !llvm.loop !47

bb.n:                                             ; preds = %.preheader143
  %i.ap = and i32 %spec.select124134, 4096
  %.not108 = icmp eq i32 %i.ap, 0
  br i1 %.not108, label %.loopexit141, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.389.add115 = add nsw i64 %.389.idx, -2        ; 2 uses
  %.ptr118 = getelementptr inbounds i8, ptr %i.a, i64 %.389.add115
  store i8 48, ptr %.ptr118, align 1, !tbaa !18
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.i, %bb.f, %bb.n, %bb.o, %bb.m, %bb.g
  %spec.select124135 = phi i32 [ %spec.select124, %bb.g ], [ %spec.select124, %bb.f ], [ %spec.select124134, %bb.m ], [ %spec.select124134, %bb.o ], [ %spec.select124134, %bb.n ], [ %spec.select124134, %bb.i ] ; 3 uses
  %i.aq = phi i32 [ %i.m, %bb.g ], [ 0, %bb.f ], [ %i.r, %bb.m ], [ %i.r, %bb.o ], [ %i.r, %bb.n ], [ %i.r, %bb.i ]
  %.490.idx = phi i64 [ 22, %bb.g ], [ 23, %bb.f ], [ %.288.add, %bb.m ], [ %.389.add115, %bb.o ], [ %.389.add, %bb.n ], [ %.187.add, %bb.i ] ; 10 uses
  %.280 = phi i32 [ %.078, %bb.g ], [ %.078, %bb.f ], [ %spec.select126, %bb.m ], [ %.078133, %bb.o ], [ %.078133, %bb.n ], [ %.078133, %bb.i ] ; 3 uses
  %i.ar = trunc i64 %.490.idx to i32              ; 2 uses
  %i.as = sub i32 23, %i.ar                       ; 2 uses
  %spec.select127 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.as) ; 3 uses
  %i.at = lshr i32 %spec.select124135, 16
  %i.au = and i32 %i.at, 255                      ; 4 uses
  %i.av = lshr i32 %.280, 8
  %i.aw = add i32 %spec.select127, %i.av          ; 9 uses
  %i.ax = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.ba = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp ugt i32 %i.ax, %i.be
  br i1 %i.bf, label %bb.p, label %lj_buf_more.exit, !prof !37

bb.p:                                             ; preds = %.loopexit141
  %i.bg = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.ax) #13
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %.loopexit141, %bb.p
  %.0.i = phi ptr [ %i.bg, %bb.p ], [ %i.ba, %.loopexit141 ] ; 4 uses
  %i.bh = and i32 %spec.select124135, 1280        ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.preheader139, label %.loopexit140

.preheader139:                                    ; preds = %lj_buf_more.exit
  %i.bj = add nsw i32 %i.au, -1                   ; 2 uses
  %i.bk = icmp ugt i32 %i.au, %i.aw
  br i1 %i.bk, label %.lr.ph150.preheader, label %.loopexit140

.lr.ph150.preheader:                              ; preds = %.preheader139
  %i.bl = sub nsw i32 %i.bj, %i.aw
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 32, i64 %i.bn, i1 false), !tbaa !18
  %scevgep = getelementptr i8, ptr %.0.i, i64 %i.bn
  %i.bo = add nsw i32 %i.aw, -1
  br label %.loopexit140

.loopexit140:                                     ; preds = %.lr.ph150.preheader, %.preheader139, %lj_buf_more.exit
  %.182 = phi ptr [ %.0.i, %lj_buf_more.exit ], [ %.0.i, %.preheader139 ], [ %scevgep, %.lr.ph150.preheader ] ; 4 uses
  %.1 = phi i32 [ %i.au, %lj_buf_more.exit ], [ %i.bj, %.preheader139 ], [ %i.bo, %.lr.ph150.preheader ] ; 3 uses
  %.not114 = icmp eq i32 %.280, 0
  br i1 %.not114, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.loopexit140
  %i.bp = trunc i32 %.280 to i8                   ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, 87
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.182, i64 1
  store i8 48, ptr %.182, align 1, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.283 = phi ptr [ %i.br, %bb.r ], [ %.182, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.283, i64 1
  store i8 %i.bp, ptr %.283, align 1, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit140
  %.384 = phi ptr [ %i.bs, %bb.s ], [ %.182, %.loopexit140 ] ; 4 uses
  %i.bt = icmp eq i32 %i.bh, 1024
  br i1 %i.bt, label %.preheader137, label %.loopexit138

.preheader137:                                    ; preds = %bb.t
  %i.bu = add nsw i32 %.1, -1                     ; 2 uses
  %i.bv = icmp ugt i32 %.1, %i.aw
  br i1 %i.bv, label %.lr.ph154.preheader, label %.loopexit138

.lr.ph154.preheader:                              ; preds = %.preheader137
  %i.bw = sub i32 %i.bu, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.384, i8 48, i64 %i.by, i1 false), !tbaa !18
  %scevgep179 = getelementptr i8, ptr %.384, i64 %i.by
  %i.bz = add i32 %i.aw, -1
  br label %.loopexit138

.loopexit138:                                     ; preds = %.lr.ph154.preheader, %.preheader137, %bb.t
  %.5 = phi ptr [ %.384, %bb.t ], [ %.384, %.preheader137 ], [ %scevgep179, %.lr.ph154.preheader ] ; 3 uses
  %.3 = phi i32 [ %.1, %bb.t ], [ %i.bu, %.preheader137 ], [ %i.bz, %.lr.ph154.preheader ] ; 2 uses
  %i.ca = icmp ugt i32 %spec.select127, %i.as
  br i1 %i.ca, label %.lr.ph160.preheader, label %.preheader136

.lr.ph160.preheader:                              ; preds = %.loopexit138
  %i.cb = add i32 %spec.select127, %i.ar
  %i.cc = add i32 %i.cb, -24
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.5, i8 48, i64 %i.ce, i1 false), !tbaa !18
  %scevgep180 = getelementptr i8, ptr %.5, i64 %i.ce
  br label %.preheader136

.preheader136:                                    ; preds = %.lr.ph160.preheader, %.loopexit138
  %.6.lcssa = phi ptr [ %.5, %.loopexit138 ], [ %scevgep180, %.lr.ph160.preheader ] ; 8 uses
  %.6.lcssa190 = ptrtoaddr ptr %.6.lcssa to i64
  %i.cf = icmp slt i64 %.490.idx, 23
  br i1 %i.cf, label %iter.check, label %._crit_edge165

iter.check:                                       ; preds = %.preheader136
  %i.cg = sub i64 23, %.490.idx                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.lr.ph164.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ch = add i64 %.490.idx, %i.b
  %i.ci = sub i64 %i.ch, %.6.lcssa190
  %diff.check = icmp ugt i64 %i.ci, -32
  br i1 %diff.check, label %.lr.ph164.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check191 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.cg, 24
  %n.vec = and i64 %i.cg, -32                     ; 5 uses
  %i.ck = getelementptr i8, ptr %.6.lcssa, i64 %n.vec ; 2 uses
  %i.cl = add i64 %.490.idx, %n.vec
  %i.cm = getelementptr i8, ptr %i.a, i64 %.490.idx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.6.lcssa, i64 %index ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <16 x i8>, ptr %i.cn, align 1, !tbaa !18
  %wide.load192 = load <16 x i8>, ptr %i.co, align 1, !tbaa !18
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !18
  store <16 x i8> %wide.load192, ptr %i.cp, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge165, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph164.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec194 = and i64 %i.cg, -8                   ; 4 uses
  %i.cr = getelementptr i8, ptr %.6.lcssa, i64 %n.vec194 ; 2 uses
  %i.cs = add i64 %.490.idx, %n.vec194
  %i.ct = getelementptr i8, ptr %i.a, i64 %.490.idx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index195 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 3 uses
  %next.gep196 = getelementptr i8, ptr %.6.lcssa, i64 %index195
  %i.cu = getelementptr i8, ptr %i.ct, i64 %index195
  %wide.load197 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !18
  store <8 x i8> %wide.load197, ptr %next.gep196, align 1, !tbaa !18
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next198, %n.vec194
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.cg, %n.vec194
  br i1 %cmp.n199, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.7163.ph = phi ptr [ %.6.lcssa, %iter.check ], [ %.6.lcssa, %vector.memcheck ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ] ; 2 uses
  %.591.idx162.ph = phi i64 [ %.490.idx, %iter.check ], [ %.490.idx, %vector.memcheck ], [ %i.cl, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 4 uses
  %i.cw = and i64 %.591.idx162.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.cw, 7
  br i1 %lcmp.mod.not, label %.lr.ph164.prol.loopexit, label %.lr.ph164.prol

.lr.ph164.prol:                                   ; preds = %.lr.ph164.preheader, %.lr.ph164.prol
  %.7163.prol = phi ptr [ %i.cy, %.lr.ph164.prol ], [ %.7163.ph, %.lr.ph164.preheader ] ; 2 uses
  %.591.idx162.prol = phi i64 [ %.591.add.prol, %.lr.ph164.prol ], [ %.591.idx162.ph, %.lr.ph164.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph164.prol ], [ 0, %.lr.ph164.preheader ]
  %.591.ptr.prol = getelementptr inbounds i8, ptr %i.a, i64 %.591.idx162.prol
  %.591.add.prol = add i64 %.591.idx162.prol, 1   ; 2 uses
  %i.cx = load i8, ptr %.591.ptr.prol, align 1, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.7163.prol, i64 1 ; 3 uses
  store i8 %i.cx, ptr %.7163.prol, align 1, !tbaa !18
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.cz = xor i64 %i.cw, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.cz, 7
  br i1 %prol.iter.cmp.not, label %.lr.ph164.prol.loopexit, label %.lr.ph164.prol, !llvm.loop !50

.lr.ph164.prol.loopexit:                          ; preds = %.lr.ph164.prol, %.lr.ph164.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph164.preheader ], [ %i.cy, %.lr.ph164.prol ]
  %.7163.unr = phi ptr [ %.7163.ph, %.lr.ph164.preheader ], [ %i.cy, %.lr.ph164.prol ]
  %.591.idx162.unr = phi i64 [ %.591.idx162.ph, %.lr.ph164.preheader ], [ %.591.add.prol, %.lr.ph164.prol ]
  %i.da = add i64 %.591.idx162.ph, -16
  %i.db = icmp ult i64 %i.da, 7
  br i1 %i.db, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164
  %.7163 = phi ptr [ %i.dy, %.lr.ph164 ], [ %.7163.unr, %.lr.ph164.prol.loopexit ] ; 9 uses
  %.591.idx162 = phi i64 [ %.591.add.7, %.lr.ph164 ], [ %.591.idx162.unr, %.lr.ph164.prol.loopexit ] ; 9 uses
  %.591.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.591.idx162
  %i.dc = load i8, ptr %.591.ptr, align 1, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.7163, i64 1
  store i8 %i.dc, ptr %.7163, align 1, !tbaa !18
  %i.de = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.1 = getelementptr i8, ptr %i.de, i64 1
  %i.df = load i8, ptr %.591.ptr.1, align 1, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.7163, i64 2
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !18
  %i.dh = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.2 = getelementptr i8, ptr %i.dh, i64 2
  %i.di = load i8, ptr %.591.ptr.2, align 1, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.7163, i64 3
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !18
  %i.dk = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.3 = getelementptr i8, ptr %i.dk, i64 3
  %i.dl = load i8, ptr %.591.ptr.3, align 1, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.7163, i64 4
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !18
  %i.dn = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.4 = getelementptr i8, ptr %i.dn, i64 4
  %i.do = load i8, ptr %.591.ptr.4, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.7163, i64 5
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !18
  %i.dq = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.5 = getelementptr i8, ptr %i.dq, i64 5
  %i.dr = load i8, ptr %.591.ptr.5, align 1, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.7163, i64 6
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !18
  %i.dt = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.6 = getelementptr i8, ptr %i.dt, i64 6
  %i.du = load i8, ptr %.591.ptr.6, align 1, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.7163, i64 7
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.a, i64 %.591.idx162
  %.591.ptr.7 = getelementptr i8, ptr %i.dw, i64 7
  %.591.add.7 = add i64 %.591.idx162, 8           ; 2 uses
  %i.dx = load i8, ptr %.591.ptr.7, align 1, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.7163, i64 8 ; 2 uses
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !18
  %exitcond.not.7 = icmp eq i64 %.591.add.7, 23
  br i1 %exitcond.not.7, label %._crit_edge165, label %.lr.ph164, !llvm.loop !51

._crit_edge165:                                   ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164, %middle.block, %vec.epilog.middle.block, %.preheader136
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader136 ], [ %i.cr, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %.lcssa.unr, %.lr.ph164.prol.loopexit ], [ %i.dy, %.lr.ph164 ] ; 3 uses
  %i.dz = and i32 %spec.select124135, 256
  %.not123 = icmp ne i32 %i.dz, 0
  %i.ea = icmp ugt i32 %.3, %i.aw
  %or.cond171 = and i1 %.not123, %i.ea
  br i1 %or.cond171, label %.lr.ph169.preheader, label %.loopexit

.lr.ph169.preheader:                              ; preds = %._crit_edge165
  %i.eb = xor i32 %i.aw, -1
  %i.ec = add i32 %.3, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.7.lcssa, i8 32, i64 %i.ee, i1 false), !tbaa !18
  %scevgep182 = getelementptr i8, ptr %.7.lcssa, i64 %i.ee
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph169.preheader, %._crit_edge165
  %.9 = phi ptr [ %.7.lcssa, %._crit_edge165 ], [ %scevgep182, %.lr.ph169.preheader ]
  store ptr %.9, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfnum_int(ptr noundef returned %0, i32 noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @lj_vm_num2i64(double noundef %2) #14 ; 3 uses
  %i.b = add i64 %i.a, 2147483648
  %i.c = icmp ult i64 %i.b, 4294967296
  %i.d = icmp eq i32 %1, 3
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i64 %i.a to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult i32 %i.l, 11
  br i1 %i.m, label %bb.c, label %lj_strfmt_putint.exit, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 11) #13
  br label %lj_strfmt_putint.exit

lj_strfmt_putint.exit:                            ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.h, %bb.b ]
  %i.o = tail call ptr @lj_strfmt_wint(ptr noundef %.0.i.i, i32 noundef %i.e)
  store ptr %i.o, ptr %0, align 8, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = tail call ptr @lj_strfmt_putfxint(ptr noundef %0, i32 noundef %1, i64 noundef %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %lj_strfmt_putint.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2i64(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfnum_uint(ptr noundef returned %0, i32 noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @lj_vm_num2u64(double noundef %2) #14
  %i.b = tail call ptr @lj_strfmt_putfxint(ptr noundef %0, i32 noundef %1, i64 noundef %i.a) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2u64(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @lj_strfmt_putarg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @lj_lib_checkstr(ptr noundef %0, i32 noundef %2) #13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %lj_strfmt_putfnum_int.exit

lj_strfmt_putfnum_int.exit:                       ; preds = %lj_strfmt_putfnum_int.exit.backedge, %bb.a
  %.sroa.12.0 = phi i32 [ undef, %bb.a ], [ %.sroa.12.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 14 uses
  %.sroa.0.0 = phi ptr [ %i.k, %bb.a ], [ %.sroa.0.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 11 uses
  %.0102 = phi i32 [ %3, %bb.a ], [ %.0102.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 15 uses
  %.0 = phi i32 [ %2, %bb.a ], [ %.0.be, %lj_strfmt_putfnum_int.exit.backedge ] ; 5 uses
  %i.s = icmp ult ptr %.sroa.0.0, %i.o
  br i1 %i.s, label %.lr.ph.preheader.i, label %.thread88.i

.lr.ph.preheader.i:                               ; preds = %lj_strfmt_putfnum_int.exit
  %i.t = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.u = sub i64 %i.p, %i.t
  %scevgep.i = getelementptr i8, ptr %.sroa.0.0, i64 %i.u ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.07192.i = phi ptr [ %i.x, %bb.m ], [ %.sroa.0.0, %.lr.ph.preheader.i ] ; 6 uses
  %i.v = load i8, ptr %.07192.i, align 1, !tbaa !18
  %i.w = icmp eq i8 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %.07192.i, i64 1 ; 6 uses
  br i1 %i.w, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 4 uses
  %i.z = icmp eq i8 %i.y, 37
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.07192.i, i64 2
  br label %.thread88.i

bb.d:                                             ; preds = %bb.b
  %.not.not.i = icmp eq ptr %.07192.i, %.sroa.0.0
  br i1 %.not.not.i, label %.preheader.i, label %.thread88.i

.preheader.i:                                     ; preds = %bb.d
  %i.ab = add i8 %i.y, -32
  %i.ac = icmp ult i8 %i.ab, 17
  br i1 %i.ac, label %.lr.ph95.i, label %._crit_edge.i

.lr.ph95.i:                                       ; preds = %.preheader.i, %switch.lookup
  %.06994.i = phi i32 [ %i.ag, %switch.lookup ], [ 0, %.preheader.i ] ; 3 uses
  %.17293.i = phi ptr [ %i.ah, %switch.lookup ], [ %i.x, %.preheader.i ] ; 3 uses
  %i.ad = phi i8 [ %.pr.i, %switch.lookup ], [ %i.y, %.preheader.i ] ; 3 uses
  %switch.tableidx = add i8 %i.ad, -32            ; 3 uses
  %i.ae = icmp ult i8 %switch.tableidx, 17
  br i1 %i.ae, label %switch.hole_check, label %._crit_edge.i

switch.hole_check:                                ; preds = %.lr.ph95.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 75785, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %._crit_edge.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.af = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.lj_strfmt_putarg, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.ag = or i32 %.06994.i, %switch.ext           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.17293.i, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.ah, align 1, !tbaa !18 ; 3 uses
  %i.ai = add i8 %.pr.i, -32
  %i.aj = icmp ult i8 %i.ai, 17
  br i1 %i.aj, label %.lr.ph95.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %switch.lookup, %.lr.ph95.i, %switch.hole_check, %.preheader.i
  %.lcssa.i = phi i8 [ %i.y, %.preheader.i ], [ %i.ad, %switch.hole_check ], [ %.pr.i, %switch.lookup ], [ %i.ad, %.lr.ph95.i ] ; 2 uses
  %.172.lcssa.i = phi ptr [ %i.x, %.preheader.i ], [ %.17293.i, %switch.hole_check ], [ %i.ah, %switch.lookup ], [ %.17293.i, %.lr.ph95.i ] ; 3 uses
  %.069.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.06994.i, %switch.hole_check ], [ %i.ag, %switch.lookup ], [ %.06994.i, %.lr.ph95.i ] ; 2 uses
  %i.ak = zext i8 %.lcssa.i to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 3 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %.172.lcssa.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.172.lcssa.i, i64 2
  %i.at = mul nuw nsw i32 %i.al, 10
  %i.au = add nuw nsw i32 %i.aq, %i.at
  %.273.i = select i1 %i.ar, ptr %i.as, ptr %i.an ; 2 uses
  %.067.i = select i1 %i.ar, i32 %i.au, i32 %i.al
  %i.av = shl nuw nsw i32 %.067.i, 16
  %i.aw = or i32 %i.av, %.069.lcssa.i
  %.pre.i = load i8, ptr %.273.i, align 1, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ax = phi i8 [ %.pre.i, %bb.e ], [ %.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.374.i = phi ptr [ %.273.i, %bb.e ], [ %.172.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2.i = phi i32 [ %i.aw, %bb.e ], [ %.069.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.374.i, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 3 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.374.i, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18  ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
end_hunk_0
