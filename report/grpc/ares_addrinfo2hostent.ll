Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_addrinfo2hostent?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_addrinfo2hostent(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not112 = icmp eq i32 %i.f, 0
  br i1 %.not112, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not113 = icmp eq ptr %i.h, null
  br i1 %.not113, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.099 = phi i32 [ %1, %bb.b ], [ %i.j, %bb.f ], [ %i.f, %bb.d ] ; 8 uses
  %i.k = and i32 %.099, -9
  %or.cond3.not = icmp eq i32 %i.k, 2
  br i1 %or.cond3.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @ares_malloc_zero(i64 noundef 32) #5 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !20
  %.not114 = icmp eq ptr %i.n, null
  br i1 %.not114, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = phi ptr [ %i.n, %bb.i ], [ %i.l, %bb.h ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %.099, ptr %i.p, align 8, !tbaa !24
  switch i32 %.099, label %bb.k [
    i32 2, label %.sink.split
    i32 10, label %.sink.split.fold.split
  ]

.sink.split.fold.split:                           ; preds = %bb.j
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %.sink.split.fold.split
  %.sink = phi i32 [ 4, %bb.j ], [ 16, %.sink.split.fold.split ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %.sink, ptr %i.q, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.sink.split
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not115 = icmp eq ptr %i.t, null
  br i1 %.not115, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = tail call ptr @ares_strdup(ptr noundef %i.v) #5 ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %.not117 = icmp eq ptr %i.ab, null
  br i1 %.not117, label %.lr.ph.i.preheader, label %.thread.sink.split

bb.o:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = tail call ptr @ares_strdup(ptr noundef %i.ad) #5 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !28
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !31
  %.not116 = icmp eq ptr %i.ah, null
  br i1 %.not116, label %bb.q, label %.thread.sink.split

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k
  %i.ai = phi ptr [ %i.o, %bb.k ], [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %i.x, %bb.m ] ; 2 uses
  %.045.i.pr = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.not6.i = icmp eq ptr %.045.i.pr, null
  br i1 %.not6.i, label %ai_nalias.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n, %bb.q
  %.045.i178 = phi ptr [ %.045.i.pr, %bb.q ], [ %i.z, %bb.n ]
  %i.aj = phi ptr [ %i.ai, %bb.q ], [ %i.x, %bb.n ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.048.i = phi ptr [ %.04.i, %.lr.ph.i ], [ %.045.i178, %.lr.ph.i.preheader ]
  %.07.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ak = add i64 %.07.i, 1                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.048.i, i64 24
  %.04.i = load ptr, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq ptr %.04.i, null
  br i1 %.not.i, label %ai_nalias.exit, label %.lr.ph.i

ai_nalias.exit:                                   ; preds = %.lr.ph.i, %bb.q
  %i.am = phi ptr [ %i.ai, %bb.q ], [ %i.aj, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.q ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 3 uses
  %.not.i125 = icmp eq ptr %i.ao, null
  br i1 %.not.i125, label %hostent_nalias.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %ai_nalias.exit, %.lr.ph.split.i
  %.06.i = phi i64 [ %i.ar, %.lr.ph.split.i ], [ 0, %ai_nalias.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.06.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  %.not5.i = icmp eq ptr %i.aq, null
  %i.ar = add i64 %.06.i, 1
  br i1 %.not5.i, label %hostent_nalias.exit, label %.lr.ph.split.i

hostent_nalias.exit:                              ; preds = %.lr.ph.split.i, %ai_nalias.exit
  %.0.lcssa.i126 = phi i64 [ 0, %ai_nalias.exit ], [ %.06.i, %.lr.ph.split.i ] ; 3 uses
  %i.as = shl i64 %.0.lcssa.i126, 3
  %i.at = add i64 %.0.lcssa.i126, %.0.lcssa.i     ; 2 uses
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, 8
  %i.aw = tail call ptr @ares_realloc_zero(ptr noundef %i.ao, i64 noundef %i.as, i64 noundef %i.av) #5 ; 2 uses
  %.not118 = icmp eq ptr %i.aw, null
  %.pre159 = load ptr, ptr %2, align 8, !tbaa !20 ; 5 uses
  br i1 %.not118, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %hostent_nalias.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre159, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !32
  %.not119 = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not119, label %.thread139, label %.preheader144

.preheader144:                                    ; preds = %bb.r
  %.0147 = load ptr, ptr %0, align 8, !tbaa !16   ; 2 uses
  %.not120148 = icmp eq ptr %.0147, null
  br i1 %.not120148, label %.thread139, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader144, %bb.u
  %i.ay = phi ptr [ %i.bj, %bb.u ], [ %.pre159, %.preheader144 ]
  %.0150 = phi ptr [ %.0, %bb.u ], [ %.0147, %.preheader144 ] ; 2 uses
  %.096149 = phi i64 [ %.1, %bb.u ], [ %.0.lcssa.i126, %.preheader144 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0150, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bc = tail call ptr @ares_strdup(ptr noundef nonnull %i.ba) #5 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.096149
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !33
  %i.bh = icmp eq ptr %i.bc, null
  br i1 %i.bh, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add i64 %.096149, 1
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %i.bj = phi ptr [ %i.ay, %.lr.ph ], [ %i.bd, %bb.t ] ; 2 uses
  %.1 = phi i64 [ %.096149, %.lr.ph ], [ %i.bi, %bb.t ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0150, i64 24
  %.0 = load ptr, ptr %i.bk, align 8, !tbaa !16   ; 2 uses
  %.not120 = icmp eq ptr %.0, null
  br i1 %.not120, label %.thread139, label %.lr.ph

.thread139:                                       ; preds = %bb.u, %.preheader144, %bb.r
  %i.bl = phi ptr [ %.pre159, %bb.r ], [ %.pre159, %.preheader144 ], [ %i.bj, %bb.u ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0711.i = load ptr, ptr %i.bm, align 8, !tbaa !17 ; 3 uses
  %.not12.i = icmp eq ptr %.0711.i, null
  br i1 %.not12.i, label %ai_naddr.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.thread139
  %.not9.i = icmp eq i32 %.099, 0
  br i1 %.not9.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i128

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i127, %.lr.ph.split.us.i
  %.0714.us.i = phi ptr [ %.07.us.i, %.lr.ph.split.us.i ], [ %.0711.i, %.lr.ph.i127 ]
  %.013.us.i = phi i64 [ %3, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i127 ]
  %3 = add i64 %.013.us.i, 1                      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0714.us.i, i64 32
  %.07.us.i = load ptr, ptr %4, align 8, !tbaa !17 ; 2 uses
  %.not.us.i = icmp eq ptr %.07.us.i, null
  br i1 %.not.us.i, label %ai_naddr.exit, label %.lr.ph.split.us.i

.lr.ph.split.i128:                                ; preds = %.lr.ph.i127, %.lr.ph.split.i128
  %.0714.i = phi ptr [ %.07.i129, %.lr.ph.split.i128 ], [ %.0711.i, %.lr.ph.i127 ] ; 2 uses
  %.013.i = phi i64 [ %spec.select.i, %.lr.ph.split.i128 ], [ 0, %.lr.ph.i127 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0714.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !14
  %.not10.i = icmp eq i32 %.099, %i.bo
  %i.bp = zext i1 %.not10.i to i64
  %spec.select.i = add i64 %.013.i, %i.bp         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0714.i, i64 32
  %.07.i129 = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %.not.i130 = icmp eq ptr %.07.i129, null
  br i1 %.not.i130, label %ai_naddr.exit, label %.lr.ph.split.i128

ai_naddr.exit:                                    ; preds = %.lr.ph.split.i128, %.lr.ph.split.us.i, %.thread139
  %.0.lcssa.i131 = phi i64 [ 0, %.thread139 ], [ %3, %.lr.ph.split.us.i ], [ %spec.select.i, %.lr.ph.split.i128 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35 ; 3 uses
  %.not.i132 = icmp eq ptr %i.bs, null
  br i1 %.not.i132, label %hostent_naddr.exit, label %.lr.ph.split.i133

.lr.ph.split.i133:                                ; preds = %ai_naddr.exit, %.lr.ph.split.i133
  %.06.i134 = phi i64 [ %i.bv, %.lr.ph.split.i133 ], [ 0, %ai_naddr.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.06.i134
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %.not5.i135 = icmp eq ptr %i.bu, null
  %i.bv = add i64 %.06.i134, 1
  br i1 %.not5.i135, label %hostent_naddr.exit, label %.lr.ph.split.i133

hostent_naddr.exit:                               ; preds = %.lr.ph.split.i133, %ai_naddr.exit
  %.0.lcssa.i136 = phi i64 [ 0, %ai_naddr.exit ], [ %.06.i134, %.lr.ph.split.i133 ] ; 3 uses
  %i.bw = shl i64 %.0.lcssa.i136, 3
  %i.bx = add i64 %.0.lcssa.i136, %.0.lcssa.i131  ; 2 uses
  %i.by = shl i64 %i.bx, 3
  %i.bz = add i64 %i.by, 8
  %i.ca = tail call ptr @ares_realloc_zero(ptr noundef %i.bs, i64 noundef %i.bw, i64 noundef %i.bz) #5 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  br i1 %i.cb, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %hostent_naddr.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !35
  %.not121 = icmp eq i64 %.0.lcssa.i131, 0
  br i1 %.not121, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.097151 = load ptr, ptr %i.bm, align 8, !tbaa !17 ; 2 uses
  %.not122152 = icmp eq ptr %.097151, null
  br i1 %.not122152, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader
  %i.cd = icmp eq i32 %.099, 10
  %.mux = select i1 %i.cd, i64 8, i64 4
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph155, %bb.aa
  %.097154 = phi ptr [ %.097151, %.lr.ph155 ], [ %.097, %bb.aa ] ; 3 uses
  %.2153 = phi i64 [ %.0.lcssa.i136, %.lr.ph155 ], [ %.3, %bb.aa ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.097154, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !14
  %.not123 = icmp eq i32 %i.cf, %.099
  br i1 %.not123, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %2, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = sext i32 %i.ci to i64
  %i.ck = tail call ptr @ares_malloc_zero(i64 noundef %i.cj) #5 ; 3 uses
  %i.cl = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.2153
  store ptr %i.ck, ptr %i.co, align 8, !tbaa !33
  %i.cp = icmp eq ptr %i.ck, null
  br i1 %i.cp, label %.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i32 %.099, label %bb.z [
    i32 10, label %.sink.split186
    i32 2, label %.sink.split186
  ]

.sink.split186:                                   ; preds = %bb.y, %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.097154, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.mux
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !27
  %i.cv = sext i32 %i.cu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 4 %i.cs, i64 %i.cv, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.sink.split186
  %i.cw = add i64 %.2153, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3 = phi i64 [ %.2153, %bb.w ], [ %i.cw, %bb.z ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.097154, i64 32
  %.097 = load ptr, ptr %i.cx, align 8, !tbaa !17 ; 2 uses
  %.not122 = icmp eq ptr %.097, null
  br i1 %.not122, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.aa, %.preheader, %bb.v
  %i.cy = or i64 %i.bx, %i.at
  %or.cond124 = icmp eq i64 %i.cy, 0
  br i1 %or.cond124, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.loopexit
  %i.cz = load ptr, ptr %2, align 8, !tbaa !20
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.s, %bb.x, %bb.i, %bb.n, %bb.p, %hostent_nalias.exit, %hostent_naddr.exit, %bb.ab
  %.sink194 = phi ptr [ %i.cz, %bb.ab ], [ %i.cl, %bb.x ], [ null, %bb.i ], [ %.pre, %hostent_naddr.exit ], [ %.pre159, %hostent_nalias.exit ], [ %i.af, %bb.p ], [ %i.x, %bb.n ], [ %i.bd, %bb.s ]
  %.098.ph = phi i32 [ 1, %bb.ab ], [ 15, %bb.x ], [ 15, %bb.i ], [ 15, %hostent_naddr.exit ], [ 15, %hostent_nalias.exit ], [ 15, %bb.p ], [ 15, %bb.n ], [ 15, %bb.s ]
  tail call void @ares_free_hostent(ptr noundef %.sink194) #5
  store ptr null, ptr %2, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e, %.loopexit, %bb.g, %bb.a
  %.098 = phi i32 [ 0, %.loopexit ], [ 7, %bb.a ], [ 7, %bb.e ], [ 7, %bb.g ], [ %.098.ph, %.thread.sink.split ]
  ret i32 %.098
}

declare ptr @ares_malloc_zero(i64 noundef) local_unnamed_addr #1

declare ptr @ares_strdup(ptr noundef) local_unnamed_addr #1

declare ptr @ares_realloc_zero(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ares_free_hostent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 8) i32 @ares_addrinfo2addrttl(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, -9
  %or.cond.not = icmp eq i32 %i.a, 2
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %5, null
  %or.cond3 = or i1 %i.b, %i.c
  br i1 %or.cond3, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 2
  %i.e = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.d, %i.e
  br i1 %or.cond5, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %1, 10                       ; 2 uses
  %i.g = icmp eq ptr %4, null
  %or.cond7 = and i1 %i.f, %i.g
  %i.h = icmp eq i64 %2, 0
  %or.cond = or i1 %i.h, %or.cond7
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %5, align 8, !tbaa !37
  %.05467 = load ptr, ptr %0, align 8, !tbaa !16  ; 2 uses
  %.not68 = icmp eq ptr %.05467, null
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.05470 = phi ptr [ %.054, %.lr.ph ], [ %.05467, %bb.e ] ; 2 uses
  %.069 = phi i32 [ %spec.select, %.lr.ph ], [ 2147483647, %bb.e ]
  %i.i = load i32, ptr %.05470, align 8, !tbaa !38
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %.069) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05470, i64 24
  %.054 = load ptr, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %.not = icmp eq ptr %.054, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0.lcssa = phi i32 [ 2147483647, %bb.e ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.05571 = load ptr, ptr %i.k, align 8, !tbaa !17 ; 3 uses
  %.not6472 = icmp eq ptr %.05571, null
  br i1 %.not6472, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge
  br i1 %i.f, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %bb.h
  %i.l = phi i64 [ %i.x, %bb.h ], [ 0, %.lr.ph75 ] ; 4 uses
  %.05573.us = phi ptr [ %.055.us, %bb.h ], [ %.05571, %.lr.ph75 ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05573.us, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !14
  %.not65.us = icmp eq i32 %i.n, 10
  br i1 %.not65.us, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph75.split.us
  %.not66.us = icmp ult i64 %i.l, %2
  br i1 %.not66.us, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %.05573.us, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %4, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.lcssa. = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.0.lcssa)
  store i32 %.0.lcssa., ptr %i.q, align 4, !tbaa !42
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %4, i64 %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %.05573.us, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = load i64, ptr %5, align 8, !tbaa !37
  %i.w = add i64 %i.v, 1                          ; 2 uses
  store i64 %i.w, ptr %5, align 8, !tbaa !37
end_hunk_0
