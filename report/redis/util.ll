Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/util?download=true
inline.NumInlined: 32
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@fgets_async_signal_safe:bb.a
.thread21:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.f = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ null, %.lr.ph ]
  ret ptr %i.f
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @vsnprintf_async_signal_safe(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #22 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %next.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %next.gep115 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %next.gep116 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %next.gep117 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %next.gep118 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %next.gep119 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %next.gep120 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %next.gep121 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %next.gep122 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %next.gep123 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %next.gep124 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %next.gep125 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %next.gep126 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %next.gep127 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %next.gep128 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.054 = phi ptr [ %2, %bb.a ], [ %i.fj, %.loopexit ] ; 5 uses
  %.049 = phi ptr [ %0, %bb.a ], [ %.3.ph, %.loopexit ] ; 11 uses
  %i.j = load i8, ptr %.054, align 1, !tbaa !13   ; 2 uses
  switch i8 %i.j, label %bb.c [
    i8 0, label %bb.aj
    i8 37, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %.049, %i.c
  br i1 %i.k, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.049, i64 1
  store i8 %i.j, ptr %.049, align 1, !tbaa !13
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %.not = icmp eq i8 %i.n, 108                    ; 2 uses
  br i1 %.not, label %.sink.split.i, label %check_longlong_async_signal_safe.exit

.sink.split.i:                                    ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.054, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.p, 108
  %i.q = getelementptr inbounds nuw i8, ptr %.054, i64 3
  %.0.ph.i = select i1 %.not.i, ptr %i.q, ptr %i.o ; 2 uses
  %.pr = load i8, ptr %.0.ph.i, align 1, !tbaa !13
  br label %check_longlong_async_signal_safe.exit

check_longlong_async_signal_safe.exit:            ; preds = %bb.e, %.sink.split.i
  %i.r = phi i8 [ %i.n, %bb.e ], [ %.pr, %.sink.split.i ] ; 2 uses
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %.0.ph.i, %.sink.split.i ] ; 6 uses
  switch i8 %i.r, label %.loopexit [
    i8 115, label %bb.af
    i8 112, label %check_longlong_async_signal_safe.exit..thread79_crit_edge
    i8 100, label %bb.f
    i8 105, label %bb.f
    i8 117, label %bb.f
    i8 120, label %bb.f
  ]

check_longlong_async_signal_safe.exit..thread79_crit_edge: ; preds = %check_longlong_async_signal_safe.exit
  %.pre = load i32, ptr %3, align 8
  br label %.thread79

bb.f:                                             ; preds = %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit, %check_longlong_async_signal_safe.exit
  %i.s = icmp eq i8 %i.r, 117                     ; 2 uses
  %.pre100 = load i32, ptr %3, align 8            ; 9 uses
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %.thread79

bb.h:                                             ; preds = %bb.g
  %i.t = icmp ult i32 %.pre100, 41
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = zext nneg i32 %.pre100 to i64
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = add nuw nsw i32 %.pre100, 8
  store i32 %i.x, ptr %3, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi ptr [ %i.w, %bb.i ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41
  br label %bb.x

.thread79:                                        ; preds = %check_longlong_async_signal_safe.exit..thread79_crit_edge, %bb.g
  %i.ac = phi i32 [ %.pre, %check_longlong_async_signal_safe.exit..thread79_crit_edge ], [ %.pre100, %bb.g ] ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 41
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread79
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = add nuw nsw i32 %i.ac, 8
  store i32 %i.ah, ptr %3, align 8
  br label %bb.n

bb.m:                                             ; preds = %.thread79
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = phi ptr [ %i.ag, %bb.l ], [ %i.ai, %bb.m ]
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  br label %bb.x

bb.o:                                             ; preds = %bb.f
  %i.am = icmp ult i32 %.pre100, 41               ; 2 uses
  br i1 %i.s, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = zext nneg i32 %.pre100 to i64
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao
  %i.aq = add nuw nsw i32 %.pre100, 8
  store i32 %i.aq, ptr %3, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = phi ptr [ %i.ap, %bb.q ], [ %i.ar, %bb.r ]
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = zext i32 %i.au to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr %i.e, align 8
  %i.ax = zext nneg i32 %.pre100 to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %.pre100, 8
  store i32 %i.az, ptr %3, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.d, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bc = phi ptr [ %i.ay, %bb.u ], [ %i.ba, %bb.v ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = sext i32 %i.bd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w, %bb.k, %bb.n
  %.not6477 = phi i1 [ false, %bb.k ], [ false, %bb.n ], [ true, %bb.s ], [ true, %bb.w ]
  %.052 = phi i64 [ 0, %bb.k ], [ %i.al, %bb.n ], [ 0, %bb.s ], [ %i.be, %bb.w ] ; 4 uses
  %.051 = phi i64 [ %i.ab, %bb.k ], [ 0, %bb.n ], [ %i.av, %bb.s ], [ 0, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bf = load i8, ptr %.0.i, align 1, !tbaa !13  ; 3 uses
  %i.bg = icmp eq i8 %i.bf, 120                   ; 2 uses
  %i.bh = icmp eq i8 %i.bf, 112                   ; 2 uses
  %i.bi = or i1 %i.bg, %i.bh                      ; 2 uses
  %i.bj = icmp eq i8 %i.bf, 117
  br i1 %i.bj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.f, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.pn.i = phi ptr [ %i.f, %bb.y ], [ %.07.i, %bb.z ]
  %.0.i68 = phi i64 [ %.051, %bb.y ], [ %i.bn, %bb.z ] ; 3 uses
  %.07.i = getelementptr inbounds i8, ptr %.pn.i, i64 -1 ; 3 uses
  %i.bk = urem i64 %.0.i68, 10
  %i.bl = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  store i8 %i.bm, ptr %.07.i, align 1, !tbaa !13
  %i.bn = udiv i64 %.0.i68, 10
  %.not.i69 = icmp ult i64 %.0.i68, 10
  br i1 %.not.i69, label %u2string_async_signal_safe.exit, label %bb.z, !llvm.loop !71

bb.aa:                                            ; preds = %bb.x
  %i.bo = icmp slt i64 %.052, 0                   ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !13
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %.052, i1 true)
  %i.bp = or i1 %i.bg, %i.bh
  %or.cond.i = and i1 %i.bo, %i.bp                ; 2 uses
  br i1 %or.cond.i, label %.loopexit55.loopexit.i, label %.loopexit55.i

.loopexit55.loopexit.i:                           ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %scevgep.i, i8 48, i64 16, i1 false), !tbaa !13
  %i.bq = xor i64 %.052, -1
  br label %.loopexit55.i

.loopexit55.i:                                    ; preds = %.loopexit55.loopexit.i, %bb.aa
  %.1.i = phi i64 [ %spec.select.i, %bb.aa ], [ %i.bq, %.loopexit55.loopexit.i ]
  %i.br = select i1 %i.bi, i64 16, i64 10         ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.loopexit55.i
  %.050.i = phi ptr [ %i.g, %.loopexit55.i ], [ %i.bv, %bb.ab ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %.loopexit55.i ], [ %i.bw, %bb.ab ] ; 3 uses
  %i.bs = urem i64 %.2.i, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr @HEX, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = getelementptr inbounds i8, ptr %.050.i, i64 -1 ; 3 uses
  store i8 %i.bu, ptr %.050.i, align 1, !tbaa !13
  %i.bw = udiv i64 %.2.i, %i.br
  %.not.i70 = icmp ult i64 %.2.i, %i.br
  br i1 %.not.i70, label %bb.ac, label %bb.ab, !llvm.loop !72

bb.ac:                                            ; preds = %bb.ab
  %not. = xor i1 %i.bi, true
  %or.cond3.i = and i1 %i.bo, %not.
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds i8, ptr %.050.i, i64 -2
  store i8 45, ptr %i.bv, align 1, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.151.i = phi ptr [ %i.bx, %bb.ad ], [ %i.bv, %bb.ac ]
  br i1 %or.cond.i, label %vector.ph, label %i2string_async_signal_safe.exit

vector.ph:                                        ; preds = %bb.ae
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !13
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 17 uses
  %i.by = icmp eq <16 x i8> %reverse, splat (i8 48)
  %i.bz = icmp eq <16 x i8> %reverse, splat (i8 49)
  %i.ca = icmp eq <16 x i8> %reverse, splat (i8 50)
  %i.cb = icmp eq <16 x i8> %reverse, splat (i8 51)
  %i.cc = icmp eq <16 x i8> %reverse, splat (i8 52)
  %i.cd = icmp eq <16 x i8> %reverse, splat (i8 53)
  %i.ce = icmp eq <16 x i8> %reverse, splat (i8 54)
  %i.cf = icmp eq <16 x i8> %reverse, splat (i8 55)
  %i.cg = icmp eq <16 x i8> %reverse, splat (i8 56)
  %i.ch = icmp eq <16 x i8> %reverse, splat (i8 57)
  %i.ci = icmp eq <16 x i8> %reverse, splat (i8 97)
  %i.cj = icmp eq <16 x i8> %reverse, splat (i8 98)
  %i.ck = icmp eq <16 x i8> %reverse, splat (i8 99)
  %i.cl = icmp eq <16 x i8> %reverse, splat (i8 100)
  %i.cm = icmp eq <16 x i8> %reverse, splat (i8 101)
  %i.cn = add <16 x i8> %reverse, splat (i8 -97)
  %i.co = icmp ult <16 x i8> %i.cn, splat (i8 6)
  %i.cp = add <16 x i8> %reverse, splat (i8 -48)
  %i.cq = icmp ult <16 x i8> %i.cp, splat (i8 10)
  %i.cr = or <16 x i1> %i.co, %i.cq               ; 16 uses
  %predphi = select <16 x i1> %i.cm, <16 x i8> splat (i8 49), <16 x i8> splat (i8 48)
  %predphi129 = select <16 x i1> %i.cl, <16 x i8> splat (i8 50), <16 x i8> %predphi
  %predphi130 = select <16 x i1> %i.ck, <16 x i8> splat (i8 51), <16 x i8> %predphi129
  %predphi131 = select <16 x i1> %i.cj, <16 x i8> splat (i8 52), <16 x i8> %predphi130
  %predphi132 = select <16 x i1> %i.ci, <16 x i8> splat (i8 53), <16 x i8> %predphi131
  %predphi133 = select <16 x i1> %i.ch, <16 x i8> splat (i8 54), <16 x i8> %predphi132
  %predphi134 = select <16 x i1> %i.cg, <16 x i8> splat (i8 55), <16 x i8> %predphi133
  %predphi135 = select <16 x i1> %i.cf, <16 x i8> splat (i8 56), <16 x i8> %predphi134
  %predphi136 = select <16 x i1> %i.ce, <16 x i8> splat (i8 57), <16 x i8> %predphi135
  %predphi137 = select <16 x i1> %i.cd, <16 x i8> splat (i8 97), <16 x i8> %predphi136
  %predphi138 = select <16 x i1> %i.cc, <16 x i8> splat (i8 98), <16 x i8> %predphi137
  %predphi139 = select <16 x i1> %i.cb, <16 x i8> splat (i8 99), <16 x i8> %predphi138
  %predphi140 = select <16 x i1> %i.ca, <16 x i8> splat (i8 100), <16 x i8> %predphi139
  %predphi141 = select <16 x i1> %i.bz, <16 x i8> splat (i8 101), <16 x i8> %predphi140
  %predphi142 = select <16 x i1> %i.by, <16 x i8> splat (i8 102), <16 x i8> %predphi141 ; 16 uses
  %i.cs = extractelement <16 x i1> %i.cr, i64 0
  br i1 %i.cs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  %i.ct = extractelement <16 x i8> %predphi142, i64 0
  store i8 %i.ct, ptr %i.g, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.cu = extractelement <16 x i1> %i.cr, i64 1
  br i1 %i.cu, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue
  %i.cv = extractelement <16 x i8> %predphi142, i64 1
  store i8 %i.cv, ptr %next.gep, align 1, !tbaa !13
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue
  %i.cw = extractelement <16 x i1> %i.cr, i64 2
  br i1 %i.cw, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.cx = extractelement <16 x i8> %predphi142, i64 2
  store i8 %i.cx, ptr %next.gep115, align 2, !tbaa !13
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cy = extractelement <16 x i1> %i.cr, i64 3
  br i1 %i.cy, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.cz = extractelement <16 x i8> %predphi142, i64 3
  store i8 %i.cz, ptr %next.gep116, align 1, !tbaa !13
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.da = extractelement <16 x i1> %i.cr, i64 4
  br i1 %i.da, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.db = extractelement <16 x i8> %predphi142, i64 4
  store i8 %i.db, ptr %next.gep117, align 16, !tbaa !13
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.dc = extractelement <16 x i1> %i.cr, i64 5
  br i1 %i.dc, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.dd = extractelement <16 x i8> %predphi142, i64 5
  store i8 %i.dd, ptr %next.gep118, align 1, !tbaa !13
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.de = extractelement <16 x i1> %i.cr, i64 6
  br i1 %i.de, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.df = extractelement <16 x i8> %predphi142, i64 6
  store i8 %i.df, ptr %next.gep119, align 2, !tbaa !13
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.dg = extractelement <16 x i1> %i.cr, i64 7
  br i1 %i.dg, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  %i.dh = extractelement <16 x i8> %predphi142, i64 7
  store i8 %i.dh, ptr %next.gep120, align 1, !tbaa !13
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.di = extractelement <16 x i1> %i.cr, i64 8
  br i1 %i.di, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  %i.dj = extractelement <16 x i8> %predphi142, i64 8
  store i8 %i.dj, ptr %next.gep121, align 4, !tbaa !13
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.dk = extractelement <16 x i1> %i.cr, i64 9
  br i1 %i.dk, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  %i.dl = extractelement <16 x i8> %predphi142, i64 9
  store i8 %i.dl, ptr %next.gep122, align 1, !tbaa !13
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.dm = extractelement <16 x i1> %i.cr, i64 10
  br i1 %i.dm, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  %i.dn = extractelement <16 x i8> %predphi142, i64 10
  store i8 %i.dn, ptr %next.gep123, align 2, !tbaa !13
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.do = extractelement <16 x i1> %i.cr, i64 11
  br i1 %i.do, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  %i.dp = extractelement <16 x i8> %predphi142, i64 11
  store i8 %i.dp, ptr %next.gep124, align 1, !tbaa !13
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.dq = extractelement <16 x i1> %i.cr, i64 12
  br i1 %i.dq, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  %i.dr = extractelement <16 x i8> %predphi142, i64 12
  store i8 %i.dr, ptr %next.gep125, align 8, !tbaa !13
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.ds = extractelement <16 x i1> %i.cr, i64 13
  br i1 %i.ds, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.dt = extractelement <16 x i8> %predphi142, i64 13
  store i8 %i.dt, ptr %next.gep126, align 1, !tbaa !13
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.du = extractelement <16 x i1> %i.cr, i64 14
  br i1 %i.du, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.dv = extractelement <16 x i8> %predphi142, i64 14
  store i8 %i.dv, ptr %next.gep127, align 2, !tbaa !13
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.dw = extractelement <16 x i1> %i.cr, i64 15
  br i1 %i.dw, label %pred.store.if171, label %i2string_async_signal_safe.exit

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.dx = extractelement <16 x i8> %predphi142, i64 15
  store i8 %i.dx, ptr %next.gep128, align 1, !tbaa !13
  br label %i2string_async_signal_safe.exit

i2string_async_signal_safe.exit:                  ; preds = %pred.store.continue170, %pred.store.if171, %bb.ae
  %.3.i = phi ptr [ %.151.i, %bb.ae ], [ %i.h, %pred.store.if171 ], [ %i.h, %pred.store.continue170 ]
end_hunk_0
