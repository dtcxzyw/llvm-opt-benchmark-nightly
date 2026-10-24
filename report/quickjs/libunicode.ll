Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@unicode_get_cc:bb.a
  %i.ac = lshr i32 %i.x, 5
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = icmp slt i32 %i.ab, 0
  br i1 %i.ae, label %get_index_pos.exit.thread, label %get_index_pos.exit.thread41

get_index_pos.exit.thread41:                      ; preds = %bb.a, %get_index_pos.exit
  %.029.i45 = phi i32 [ %i.ad, %get_index_pos.exit ], [ 0, %bb.a ]
  %.13844 = phi i32 [ %i.z, %get_index_pos.exit ], [ 0, %bb.a ]
  %i.af = zext nneg i32 %.029.i45 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @unicode_cc_table, i64 %i.af
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %get_index_pos.exit.thread41
  %.037 = phi i32 [ %.13844, %get_index_pos.exit.thread41 ], [ %i.bg, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %i.ag, %get_index_pos.exit.thread41 ], [ %spec.select, %bb.g ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.ai = load i8, ptr %.0, align 1, !tbaa !16    ; 2 uses
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = and i32 %i.aj, 63                       ; 5 uses
  %i.al = icmp samesign ult i32 %i.ak, 48
  br i1 %i.al, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = icmp samesign ult i32 %i.ak, 56
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = shl nuw nsw i32 %i.ak, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.an, -12240
  %i.as = add nuw nsw i32 %i.ar, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.au = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.ak, 16777160
  %i.ax = or i32 %i.aw, %i.av
  %i.ay = shl i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.bb, 2096
  %i.bd = add nuw nsw i32 %i.bc, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.030 = phi i32 [ %i.ak, %bb.c ], [ %i.as, %bb.e ], [ %i.bd, %bb.f ]
  %.1 = phi ptr [ %i.ah, %bb.c ], [ %i.ao, %bb.e ], [ %i.az, %bb.f ]
  %i.be = icmp sgt i8 %i.ai, -1
  %spec.select.idx = zext i1 %i.be to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select.idx ; 3 uses
  %i.bf = add i32 %.037, 1
  %i.bg = add i32 %i.bf, %.030                    ; 2 uses
  %i.bh = icmp ult i32 %0, %i.bg
  br i1 %i.bh, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i32 %i.aj, 6
  switch i32 %i.bi, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %get_index_pos.exit.thread
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds i8, ptr %spec.select, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = zext i8 %i.bk to i32
  br label %get_index_pos.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds i8, ptr %spec.select, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i32
  %i.bp = sub i32 %0, %.037
  %i.bq = add i32 %i.bp, %i.bo
  br label %get_index_pos.exit.thread

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  br label %get_index_pos.exit.thread

get_index_pos.exit.thread:                        ; preds = %bb.b, %bb.i, %bb.j, %bb.k, %bb.h, %get_index_pos.exit
  %.031 = phi i32 [ 0, %get_index_pos.exit ], [ 230, %bb.k ], [ %i.bl, %bb.i ], [ %i.bq, %bb.j ], [ 0, %bb.h ], [ 0, %bb.b ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_script(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.0284 = alloca i32, align 8               ; 4 uses
  %.sroa.5 = alloca i32, align 4                  ; 5 uses
  %.sroa.7 = alloca ptr, align 8                  ; 4 uses
  %.sroa.15 = alloca ptr, align 8                 ; 5 uses
  %.sroa.20 = alloca ptr, align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0284)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  store i32 0, ptr %.sroa.0284, align 8
  store i32 0, ptr %.sroa.5, align 4
  store ptr null, ptr %.sroa.7, align 8
  store ptr null, ptr %.sroa.15, align 8
  store ptr null, ptr %.sroa.20, align 8
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str) #24
  %.not = icmp eq i32 %i.a, 0
  %.0.sroa.gep232 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.sroa.gep235 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.0.sroa.gep241 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.0.sroa.gep244 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.1) #24
  %.not125 = icmp eq i32 %i.b, 0
  br i1 %.not125, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.c
  %.01829.i = phi i32 [ %i.l, %bb.j ], [ 0, %bb.c ] ; 2 uses
  %.01928.i = phi ptr [ %i.k, %bb.j ], [ @unicode_script_name_table, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.preheader.i
  %.1.i = phi ptr [ %i.k, %bb.i ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not23.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %.1.i to i64
  %i.h = sub i64 %i.f, %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ %i.h, %bb.f ], [ %i.e, %bb.e ] ; 2 uses
  %i.i = icmp eq i64 %.0.i, %i.c
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.c)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.k = getelementptr i8, ptr %i.j, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.l = add nuw nsw i32 %.01829.i, 1
  %i.m = load i8, ptr %i.k, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.h
  %i.n = add nuw nsw i32 %.01829.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %unicode_find_name.exit
  %.0108 = phi i32 [ %i.n, %unicode_find_name.exit ], [ 0, %bb.b ], [ 0, %bb.a ] ; 5 uses
  br i1 %2, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %.0.sroa.gep244, align 8, !tbaa !22 ; 2 uses
  %i.p = load ptr, ptr %.0.sroa.gep241, align 8, !tbaa !23 ; 2 uses
  store i32 0, ptr %.sroa.5, align 4
  store ptr %i.o, ptr %.sroa.15, align 8, !tbaa !22
  %.not.i151 = icmp eq ptr %i.p, null
  %i.q = select i1 %.not.i151, ptr @cr_default_realloc, ptr %i.p ; 2 uses
  store ptr %i.q, ptr %.sroa.20, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.39.0 = phi ptr [ %i.o, %bb.l ], [ null, %bb.k ] ; 5 uses
  %.sroa.45.0 = phi ptr [ %i.q, %bb.l ], [ null, %bb.k ] ; 5 uses
  %.0.sroa.phi = phi ptr [ %.sroa.7, %bb.l ], [ %.0.sroa.gep232, %bb.k ] ; 11 uses
  %.0.sroa.phi233 = phi ptr [ %.sroa.5, %bb.l ], [ %.0.sroa.gep235, %bb.k ] ; 4 uses
  %.0.sroa.phi239 = phi ptr [ %.sroa.20, %bb.l ], [ %.0.sroa.gep241, %bb.k ] ; 4 uses
  %.0.sroa.phi242 = phi ptr [ %.sroa.15, %bb.l ], [ %.0.sroa.gep244, %bb.k ] ; 4 uses
  %.0 = phi ptr [ %.sroa.0284, %bb.l ], [ %0, %bb.k ] ; 10 uses
  %i.r = icmp eq i32 %.0108, 0                    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.backedge.backedge, %bb.m
  %.0104317 = phi i32 [ 0, %bb.m ], [ %.0104317.be, %.backedge.backedge ] ; 3 uses
  %.0106.idx316 = phi i64 [ 0, %bb.m ], [ %.0106.idx316.be, %.backedge.backedge ] ; 4 uses
  %.0106.ptr = getelementptr inbounds nuw i8, ptr @unicode_script_table, i64 %.0106.idx316 ; 2 uses
  %.0106.add = add nuw nsw i64 %.0106.idx316, 1   ; 2 uses
  %i.s = load i8, ptr %.0106.ptr, align 1, !tbaa !16 ; 2 uses
  %i.t = and i8 %i.s, 127                         ; 3 uses
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp samesign ult i8 %i.t, 96
  br i1 %i.v, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.ptr128 = getelementptr inbounds nuw i8, ptr @unicode_script_table, i64 %.0106.add
  %i.w = icmp samesign ult i8 %i.t, 112
  %i.x = load i8, ptr %.ptr128, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = shl nuw nsw i32 %i.u, 8
  %.add127 = add nuw nsw i64 %.0106.idx316, 2
  %i.aa = add nsw i32 %i.z, -24480
  %i.ab = add nuw nsw i32 %i.aa, %i.y
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ac = shl nuw nsw i32 %i.u, 16
  %.ptr129 = getelementptr inbounds nuw i8, ptr %.0106.ptr, i64 2
  %i.ad = shl nuw nsw i32 %i.y, 8
  %.add126 = add nuw nsw i64 %.0106.idx316, 3
  %i.ae = load i8, ptr %.ptr129, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ac, -7335840
  %i.ah = add nuw nsw i32 %i.ag, %i.af
  %i.ai = add nuw nsw i32 %i.ah, %i.ad
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.1107.idx = phi i64 [ %.0106.add, %bb.n ], [ %.add127, %bb.p ], [ %.add126, %bb.q ] ; 4 uses
  %.0103 = phi i32 [ %i.u, %bb.n ], [ %i.ab, %bb.p ], [ %i.ai, %bb.q ] ; 2 uses
  %i.aj = icmp sgt i8 %i.s, -1
  br i1 %i.aj, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.ak = add i32 %.0104317, 1
  %i.al = add i32 %i.ak, %.0103
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %.1107.ptr = getelementptr inbounds nuw i8, ptr @unicode_script_table, i64 %.1107.idx
  %.1107.add = add nuw nsw i64 %.1107.idx, 1      ; 2 uses
  %i.am = load i8, ptr %.1107.ptr, align 1, !tbaa !16
  %i.an = zext i8 %i.am to i32
  %i.ao = add i32 %.0104317, 1
  %i.ap = add i32 %i.ao, %.0103                   ; 3 uses
  %i.aq = icmp eq i32 %.0108, %i.an
  %or.cond = or i1 %i.r, %i.aq
  br i1 %or.cond, label %bb.t, label %.thread351

bb.t:                                             ; preds = %bb.s
  %i.ar = load i32, ptr %.0, align 8, !tbaa !26   ; 2 uses
  %i.as = add nsw i32 %i.ar, 2                    ; 2 uses
  %i.at = load i32, ptr %.0.sroa.phi233, align 4, !tbaa !25 ; 2 uses
  %i.au = icmp sgt i32 %i.as, %i.at
  br i1 %i.au, label %bb.u, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24
  br label %cr_add_interval.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.av = mul nsw i32 %i.at, 3
  %i.aw = sdiv i32 %i.av, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.as, i32 range(i32 -1073741824, 1073741824) %i.aw) ; 2 uses
  %i.ax = load ptr, ptr %.0.sroa.phi239, align 8, !tbaa !23
  %i.ay = load ptr, ptr %.0.sroa.phi242, align 8, !tbaa !22
  %i.az = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24
  %i.ba = sext i32 %..i.i.i to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call ptr %i.ax(ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.bb) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %cr_add_interval.exit.preheader, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.u
  store ptr %i.bc, ptr %.0.sroa.phi, align 8, !tbaa !24
  store i32 %..i.i.i, ptr %.0.sroa.phi233, align 4, !tbaa !25
  %.pre13.i = load i32, ptr %.0, align 8, !tbaa !26
  br label %cr_add_interval.exit.thread

cr_add_interval.exit.thread:                      ; preds = %._crit_edge.i, %cr_realloc.exit.thread.i
  %i.bd = phi i32 [ %i.ar, %._crit_edge.i ], [ %.pre13.i, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.be = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bc, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %.0, align 8, !tbaa !26
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  store i32 %.0104317, ptr %i.bh, align 4, !tbaa !14
  %i.bi = load i32, ptr %.0, align 8, !tbaa !26   ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %.0, align 8, !tbaa !26
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bk
  store i32 %i.ap, ptr %i.bl, align 4, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %cr_add_interval.exit.thread, %.thread
  %3 = phi i32 [ %i.al, %.thread ], [ %i.ap, %cr_add_interval.exit.thread ]
  %.2.idx288 = phi i64 [ %.1107.idx, %.thread ], [ %.1107.add, %cr_add_interval.exit.thread ] ; 2 uses
  %i.bm = icmp slt i64 %.2.idx288, 2818
  br i1 %i.bm, label %.backedge.backedge, label %bb.w

.backedge.backedge:                               ; preds = %bb.v, %.thread351
  %.0104317.be = phi i32 [ %3, %bb.v ], [ %i.ap, %.thread351 ]
  %.0106.idx316.be = phi i64 [ %.2.idx288, %bb.v ], [ %.1107.add, %.thread351 ]
  br label %bb.n, !llvm.loop !66

.thread351:                                       ; preds = %bb.s
  %4 = icmp slt i64 %.1107.idx, 2817
  br i1 %4, label %.backedge.backedge, label %bb.ac

bb.w:                                             ; preds = %bb.v
  br i1 %i.r, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bn = load i32, ptr %.0, align 8, !tbaa !26   ; 4 uses
  %i.bo = add nsw i32 %i.bn, 2                    ; 4 uses
  %i.bp = load i32, ptr %.0.sroa.phi233, align 4, !tbaa !25 ; 2 uses
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.y, label %._crit_edge.i154

._crit_edge.i154:                                 ; preds = %bb.x
  %.pre.i156 = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.br = mul nsw i32 %i.bp, 3
  %i.bs = sdiv i32 %i.br, 2
  %..i.i.i158 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.bo, i32 range(i32 -1073741824, 1073741824) %i.bs) ; 2 uses
  %i.bt = load ptr, ptr %.0.sroa.phi239, align 8, !tbaa !23
  %i.bu = load ptr, ptr %.0.sroa.phi242, align 8, !tbaa !22
  %i.bv = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24
  %i.bw = sext i32 %..i.i.i158 to i64
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = tail call ptr %i.bt(ptr noundef %i.bu, ptr noundef %i.bv, i64 noundef %i.bx) #21, !inline_history !45 ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.by, null
  br i1 %.not.i.i159, label %cr_add_interval.exit.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.by, ptr %.0.sroa.phi, align 8, !tbaa !24
  store i32 %..i.i.i158, ptr %.0.sroa.phi233, align 4, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i154
  %i.bz = phi ptr [ %.pre.i156, %._crit_edge.i154 ], [ %i.by, %bb.z ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = sext i32 %i.bn to i64                   ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 4 %i.bz, i64 %i.cc, i1 false)
  %i.cd = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24 ; 8 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !14
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.cb
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  store i32 -1, ptr %i.cf, align 4, !tbaa !14
  store i32 %i.bo, ptr %.0, align 8, !tbaa !26
  %i.cg = icmp sgt i32 %i.bn, -1
  br i1 %i.cg, label %.lr.ph.preheader.i.i, label %cr_invert.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %bb.aa
  %i.ch = zext nneg i32 %i.bn to i64
  %invariant.op.i.i = add nsw i64 %i.ch, -1       ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.i
  %i.ci = phi i32 [ %i.dg, %bb.ab ], [ 1, %.lr.ph.preheader.i.i ]
  %.034.i.i = phi i32 [ %.1.i.i, %bb.ab ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02933.i.i = phi i32 [ %.130.i.i, %bb.ab ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cj = sext i32 %.02933.i.i to i64             ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14 ; 2 uses
  %i.cm = sext i32 %i.ci to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = icmp eq i32 %i.cl, %i.co
  br i1 %i.cp, label %bb.ab, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %i.cq = icmp sgt i64 %invariant.op.i.i, %i.cj
  br i1 %i.cq, label %.lr.ph361, label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.lr.ph361
  %i.cr = icmp slt i64 %indvars.iv.next.i.i, %invariant.op.i.i
  br i1 %i.cr, label %.lr.ph361, label %.critedge.i.i, !llvm.loop !1

.lr.ph361:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i360 = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ %i.cj, %.preheader.i.i.preheader ] ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %i.cd, i64 %indvars.iv.i.i360
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !14
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i360, 2 ; 4 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.cx = icmp eq i32 %i.cu, %i.cw
  br i1 %i.cx, label %.preheader.i.i, label %..critedge.i.i_crit_edge, !llvm.loop !1

..critedge.i.i_crit_edge:                         ; preds = %.lr.ph361
  br label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %..critedge.i.i_crit_edge, %.preheader.i.i.preheader
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i360, %..critedge.i.i_crit_edge ], [ %i.cj, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 2 uses
  %i.cy = trunc nsw i64 %indvars.iv.i.i.lcssa to i32
  %i.cz = sext i32 %.034.i.i to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cz ; 2 uses
  store i32 %i.cl, ptr %i.da, align 4, !tbaa !14
  %i.db = getelementptr [4 x i8], ptr %i.cd, i64 %indvars.iv.i.i.lcssa
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14
  %i.de = getelementptr i8, ptr %i.da, i64 4
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !14
  %i.df = add nsw i32 %.034.i.i, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i, %.lr.ph.i.i
  %.130.in.i.i = phi i32 [ %i.cy, %.critedge.i.i ], [ %.02933.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.df, %.critedge.i.i ], [ %.034.i.i, %.lr.ph.i.i ] ; 2 uses
  %.130.i.i = add nsw i32 %.130.in.i.i, 2
  %i.dg = add nsw i32 %.130.in.i.i, 3             ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.bo
  br i1 %i.dh, label %.lr.ph.i.i, label %cr_invert.exit.thread, !llvm.loop !2

cr_invert.exit.thread:                            ; preds = %bb.ab, %bb.aa
  %.0.lcssa.i.i = phi i32 [ 0, %bb.aa ], [ %.1.i.i, %bb.ab ]
  store i32 %.0.lcssa.i.i, ptr %.0, align 8, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %.thread351, %cr_invert.exit.thread, %bb.w
  br i1 %2, label %.preheader310, label %unicode_find_name.exit.thread

.preheader310:                                    ; preds = %bb.ac, %.loopexit309
  %.1105323 = phi i32 [ %i.dz, %.loopexit309 ], [ 0, %bb.ac ] ; 2 uses
  %.3.idx322 = phi i64 [ %.add133, %.loopexit309 ], [ 0, %bb.ac ] ; 4 uses
  %.sroa.25.1321 = phi ptr [ %.sroa.25.2, %.loopexit309 ], [ null, %bb.ac ] ; 9 uses
  %.sroa.19.1320 = phi i32 [ %.sroa.19.2, %.loopexit309 ], [ 0, %bb.ac ] ; 9 uses
  %.sroa.0.1319 = phi i32 [ %.sroa.0.2, %.loopexit309 ], [ 0, %bb.ac ] ; 6 uses
  %.3.ptr = getelementptr inbounds nuw i8, ptr @unicode_script_ext_table, i64 %.3.idx322 ; 2 uses
  %.3.add = add nuw nsw i64 %.3.idx322, 1         ; 2 uses
  %i.di = load i8, ptr %.3.ptr, align 1, !tbaa !16 ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 3 uses
  %i.dk = icmp sgt i8 %i.di, -1
  br i1 %i.dk, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.preheader310
  %.ptr139 = getelementptr inbounds nuw i8, ptr @unicode_script_ext_table, i64 %.3.add
  %i.dl = icmp samesign ult i8 %i.di, -64
  %i.dm = load i8, ptr %.ptr139, align 1, !tbaa !16
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  br i1 %i.dl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.do = shl nuw nsw i32 %i.dj, 8
  %.add136 = add nuw nsw i64 %.3.idx322, 2
  %i.dp = add nsw i32 %i.do, -32640
  %i.dq = add nuw nsw i32 %i.dp, %i.dn
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dr = shl nuw nsw i32 %i.dj, 16
  %.ptr140 = getelementptr inbounds nuw i8, ptr %.3.ptr, i64 2
  %i.ds = shl nuw nsw i32 %i.dn, 8
  %.add135 = add nuw nsw i64 %.3.idx322, 3
  %i.dt = load i8, ptr %.ptr140, align 1, !tbaa !16
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nsw i32 %i.dr, -12566400
  %i.dw = add nuw nsw i32 %i.dv, %i.du
  %i.dx = add nuw nsw i32 %i.dw, %i.ds
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader310, %bb.ae, %bb.af
  %.4.idx = phi i64 [ %.add135, %bb.af ], [ %.add136, %bb.ae ], [ %.3.add, %.preheader310 ] ; 2 uses
  %.1 = phi i32 [ %i.dx, %bb.af ], [ %i.dq, %bb.ae ], [ %i.dj, %.preheader310 ]
  %.4.ptr = getelementptr inbounds nuw i8, ptr @unicode_script_ext_table, i64 %.4.idx
  %i.dy = add i32 %.1105323, 1
  %i.dz = add i32 %i.dy, %.1                      ; 2 uses
  %.4.add = add nuw nsw i64 %.4.idx, 1            ; 2 uses
  %.ptr137 = getelementptr inbounds nuw i8, ptr @unicode_script_ext_table, i64 %.4.add
  %i.ea = load i8, ptr %.4.ptr, align 1, !tbaa !16 ; 3 uses
  %.not324 = icmp eq i8 %i.ea, 0                  ; 2 uses
  switch i32 %.0108, label %.preheader [
    i32 59, label %bb.ah
    i32 26, label %bb.ah
  ]

.preheader:                                       ; preds = %bb.ag
  br i1 %.not324, label %.loopexit309, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i8 %i.ea to i64
  br label %.lr.ph

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  br i1 %.not324, label %.loopexit309, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = add nsw i32 %.sroa.0.1319, 2            ; 4 uses
  %i.ec = icmp sgt i32 %i.eb, %.sroa.19.1320
  br i1 %i.ec, label %bb.aj, label %.loopexit309.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.ed = mul nsw i32 %.sroa.19.1320, 3
  %i.ee = sdiv i32 %i.ed, 2
  %..i.i.i164 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.eb, i32 range(i32 -1073741824, 1073741824) %i.ee) ; 2 uses
  %i.ef = sext i32 %..i.i.i164 to i64
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = tail call ptr %.sroa.45.0(ptr noundef %.sroa.39.0, ptr noundef %.sroa.25.1321, i64 noundef %i.eg) #21, !inline_history !44 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i165, label %cr_add_interval.exit.preheader, label %.loopexit309.sink.split

bb.ak:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit309, label %.lr.ph, !llvm.loop !67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ak ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.ptr137, i64 %indvars.iv
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16
  %i.ek = zext i8 %i.ej to i32
  %i.el = icmp eq i32 %.0108, %i.ek
  br i1 %i.el, label %bb.al, label %bb.ak

bb.al:                                            ; preds = %.lr.ph
  %i.em = add nsw i32 %.sroa.0.1319, 2            ; 4 uses
  %i.en = icmp sgt i32 %i.em, %.sroa.19.1320
  br i1 %i.en, label %bb.am, label %.loopexit309.sink.split

bb.am:                                            ; preds = %bb.al
  %i.eo = mul nsw i32 %.sroa.19.1320, 3
  %i.ep = sdiv i32 %i.eo, 2
  %..i.i.i173 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.em, i32 range(i32 -1073741824, 1073741824) %i.ep) ; 2 uses
  %i.eq = sext i32 %..i.i.i173 to i64
  %i.er = shl nsw i64 %i.eq, 2
  %i.es = tail call ptr %.sroa.45.0(ptr noundef %.sroa.39.0, ptr noundef %.sroa.25.1321, i64 noundef %i.er) #21, !inline_history !44 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.es, null
  br i1 %.not.i.i174, label %cr_add_interval.exit.preheader, label %.loopexit309.sink.split

.loopexit309.sink.split:                          ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai
  %.sroa.25.7.sink = phi ptr [ %i.eh, %bb.aj ], [ %.sroa.25.1321, %bb.ai ], [ %.sroa.25.1321, %bb.al ], [ %i.es, %bb.am ] ; 2 uses
  %.sroa.0.2.ph = phi i32 [ %i.eb, %bb.aj ], [ %i.eb, %bb.ai ], [ %i.em, %bb.al ], [ %i.em, %bb.am ]
  %.sroa.19.2.ph = phi i32 [ %..i.i.i164, %bb.aj ], [ %.sroa.19.1320, %bb.ai ], [ %.sroa.19.1320, %bb.al ], [ %..i.i.i173, %bb.am ]
  %i.et = sext i32 %.sroa.0.1319 to i64
  %i.eu = getelementptr [4 x i8], ptr %.sroa.25.7.sink, i64 %i.et ; 2 uses
  store i32 %.1105323, ptr %i.eu, align 4, !tbaa !14
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  store i32 %i.dz, ptr %i.ev, align 4, !tbaa !14
  br label %.loopexit309

.loopexit309:                                     ; preds = %bb.ak, %.loopexit309.sink.split, %.preheader, %bb.ah
  %.sroa.0.2 = phi i32 [ %.sroa.0.1319, %.preheader ], [ %.sroa.0.2.ph, %.loopexit309.sink.split ], [ %.sroa.0.1319, %bb.ah ], [ %.sroa.0.1319, %bb.ak ] ; 6 uses
  %.sroa.19.2 = phi i32 [ %.sroa.19.1320, %.preheader ], [ %.sroa.19.2.ph, %.loopexit309.sink.split ], [ %.sroa.19.1320, %bb.ah ], [ %.sroa.19.1320, %bb.ak ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.1321, %.preheader ], [ %.sroa.25.7.sink, %.loopexit309.sink.split ], [ %.sroa.25.1321, %bb.ah ], [ %.sroa.25.1321, %bb.ak ] ; 7 uses
  %i.ew = zext i8 %i.ea to i64
  %.add133 = add nuw nsw i64 %.4.add, %i.ew       ; 2 uses
  %i.ex = icmp slt i64 %.add133, 1278
  br i1 %i.ex, label %.preheader310, label %bb.an, !llvm.loop !68

bb.an:                                            ; preds = %.loopexit309
  switch i32 %.0108, label %bb.ar [
    i32 59, label %bb.ao
    i32 26, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.ey = add nsw i32 %.sroa.0.2, 2               ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, %.sroa.19.2
  br i1 %i.ez, label %bb.ap, label %._crit_edge.i178

bb.ap:                                            ; preds = %bb.ao
  %i.fa = mul nsw i32 %.sroa.19.2, 3
  %i.fb = sdiv i32 %i.fa, 2
  %..i.i.i196 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.ey, i32 range(i32 -1073741824, 1073741824) %i.fb)
  %i.fc = sext i32 %..i.i.i196 to i64
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = tail call ptr %.sroa.45.0(ptr noundef %.sroa.39.0, ptr noundef %.sroa.25.2, i64 noundef %i.fd) #21, !inline_history !45 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i197, label %cr_add_interval.exit.preheader, label %._crit_edge.i178

cr_add_interval.exit.preheader:                   ; preds = %bb.u, %bb.aj, %bb.am, %.loopexit, %bb.ar, %bb.y, %bb.ap
  %.sroa.25.4.ph = phi ptr [ %.sroa.25.2, %bb.ap ], [ %.sroa.25.1321, %bb.aj ], [ %.sroa.25.9, %.loopexit ], [ %.sroa.25.2, %bb.ar ], [ null, %bb.y ], [ %.sroa.25.1321, %bb.am ], [ null, %bb.u ]
  br i1 %2, label %cr_add_interval.exit.us, label %cr_add_interval.exit

cr_add_interval.exit.us:                          ; preds = %cr_add_interval.exit.preheader, %cr_add_interval.exit.us
  %i.ff = load ptr, ptr %.0.sroa.phi239, align 8, !tbaa !23
  %i.fg = load ptr, ptr %.0.sroa.phi242, align 8, !tbaa !22
  %i.fh = load ptr, ptr %.0.sroa.phi, align 8, !tbaa !24
  %i.fi = tail call ptr %i.ff(ptr noundef %i.fg, ptr noundef %i.fh, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.fj = tail call ptr %.sroa.45.0(ptr noundef %.sroa.39.0, ptr noundef %.sroa.25.4.ph, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  br label %cr_add_interval.exit.us

._crit_edge.i178:                                 ; preds = %bb.ap, %bb.ao
  %.sroa.25.9 = phi ptr [ %.sroa.25.2, %bb.ao ], [ %i.fe, %bb.ap ] ; 13 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4
  %i.fl = sext i32 %.sroa.0.2 to i64              ; 2 uses
  %i.fm = shl nsw i64 %i.fl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %.sroa.25.9, i64 %i.fm, i1 false)
  store i32 0, ptr %.sroa.25.9, align 4, !tbaa !14
  %i.fn = getelementptr [4 x i8], ptr %.sroa.25.9, i64 %i.fl
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  store i32 -1, ptr %i.fo, align 4, !tbaa !14
  %i.fp = icmp sgt i32 %.sroa.0.2, -1
  br i1 %i.fp, label %.lr.ph.preheader.i.i184, label %.loopexit

.lr.ph.preheader.i.i184:                          ; preds = %._crit_edge.i178
  %i.fq = zext nneg i32 %.sroa.0.2 to i64
  %invariant.op.i.i185 = add nsw i64 %i.fq, -1    ; 2 uses
  br label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %bb.aq, %.lr.ph.preheader.i.i184
  %i.fr = phi i32 [ %i.gp, %bb.aq ], [ 1, %.lr.ph.preheader.i.i184 ]
  %.034.i.i187 = phi i32 [ %.1.i.i193, %bb.aq ], [ 0, %.lr.ph.preheader.i.i184 ] ; 3 uses
  %.02933.i.i188 = phi i32 [ %.130.i.i194, %bb.aq ], [ 0, %.lr.ph.preheader.i.i184 ] ; 2 uses
  %i.fs = sext i32 %.02933.i.i188 to i64          ; 4 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.sroa.25.9, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !14 ; 2 uses
  %i.fv = sext i32 %i.fr to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %.sroa.25.9, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !14
  %i.fy = icmp eq i32 %i.fu, %i.fx
  br i1 %i.fy, label %bb.aq, label %.preheader.i.i189.preheader

.preheader.i.i189.preheader:                      ; preds = %.lr.ph.i.i186
  %i.fz = icmp sgt i64 %invariant.op.i.i185, %i.fs
  br i1 %i.fz, label %.lr.ph364, label %.critedge.i.i191

.preheader.i.i189:                                ; preds = %.lr.ph364
  %i.ga = icmp slt i64 %indvars.iv.next.i.i195, %invariant.op.i.i185
  br i1 %i.ga, label %.lr.ph364, label %.critedge.i.i191, !llvm.loop !1
end_hunk_0
