Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/problem?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0_@problem_parse:bb.a

bb.bc:                                            ; preds = %bb.p
  %i.ga = add i32 %i.ar, -2147483647
  %or.cond.i143 = icmp ult i32 %i.ga, -2147483646
  br i1 %or.cond.i143, label %dwim.exit156, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.bc
  %i.gb = zext nneg i32 %i.ar to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bl, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ %i.gb, %.lr.ph.i144 ], [ %indvars.iv.next.i147, %bb.bl ] ; 2 uses
  %.037.i146 = phi ptr [ %1, %.lr.ph.i144 ], [ %i.gc, %bb.bl ] ; 6 uses
  %indvars.iv.next.i147 = add nsw i64 %indvars.iv.i145, -1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv.next.i147 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39
  %.not30.i148 = icmp eq i32 %i.ge, 0
  br i1 %.not30.i148, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %.037.i146, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !39
  %i.gh = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gi = icmp eq ptr %.037.i146, %i.au
  %i.gj = select i1 %i.gi, i32 %.095, i32 0
  switch i32 %i.gj, label %default.unreachable [
    i32 0, label %transform_n.exit.i154
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gk = sdiv i32 %i.gh, 2
  %i.gl = shl nsw i32 %i.gk, 1
  %i.gm = add i32 %i.gl, 2
  br label %transform_n.exit.i154

bb.bg:                                            ; preds = %bb.be
  %i.gn = sdiv i32 %i.gh, 2
  %i.go = add nsw i32 %i.gn, 1
  br label %transform_n.exit.i154

transform_n.exit.i154:                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.0.i.i155 = phi i32 [ %i.go, %bb.bg ], [ %i.gm, %bb.bf ], [ %i.gh, %bb.be ]
  %i.gp = mul nsw i32 %.0.i.i155, %i.gg
  store i32 %i.gp, ptr %i.gd, align 4, !tbaa !39
  br label %bb.bh

bb.bh:                                            ; preds = %transform_n.exit.i154, %bb.bd
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !22
  %.not31.i149 = icmp eq i32 %i.gr, 0
  br i1 %.not31.i149, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %.037.i146, i64 8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !22
  %i.gu = load i32, ptr %.037.i146, align 4, !tbaa !40 ; 3 uses
  %i.gv = icmp eq ptr %.037.i146, %i.au
  %i.gw = select i1 %i.gv, i32 %.094, i32 0
  switch i32 %i.gw, label %default.unreachable [
    i32 0, label %transform_n.exit34.i151
    i32 1, label %bb.bj
    i32 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gx = sdiv i32 %i.gu, 2
  %i.gy = shl nsw i32 %i.gx, 1
  %i.gz = add i32 %i.gy, 2
  br label %transform_n.exit34.i151

bb.bk:                                            ; preds = %bb.bi
  %i.ha = sdiv i32 %i.gu, 2
  %i.hb = add nsw i32 %i.ha, 1
  br label %transform_n.exit34.i151

transform_n.exit34.i151:                          ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i32.i152 = phi i32 [ %i.hb, %bb.bk ], [ %i.gz, %bb.bj ], [ %i.gu, %bb.bi ]
  %i.hc = mul nsw i32 %.0.i32.i152, %i.gt
  store i32 %i.hc, ptr %i.gq, align 4, !tbaa !22
  br label %bb.bl

bb.bl:                                            ; preds = %transform_n.exit34.i151, %bb.bh
  %i.hd = icmp samesign ugt i64 %indvars.iv.i145, 1
  br i1 %i.hd, label %bb.bd, label %dwim.exit156, !llvm.loop !28

dwim.exit156:                                     ; preds = %bb.bl, %bb.bc
  store ptr %i.ao, ptr %i.o, align 8, !tbaa !41
  %i.he = call ptr @mktensor(i32 noundef 0) #7    ; 2 uses
  store ptr %i.he, ptr %i.n, align 8, !tbaa !42
  br label %bb.bm

bb.bm:                                            ; preds = %dwim.exit142, %dwim.exit156, %dwim.exit114
  %i.hf = phi ptr [ %i.cc, %dwim.exit114 ], [ %i.dm, %dwim.exit142 ], [ %i.he, %dwim.exit156 ] ; 3 uses
  %.1 = phi ptr [ %i.cb, %dwim.exit114 ], [ %i.dl, %dwim.exit142 ], [ %i.ad, %dwim.exit156 ]
  %.not = icmp eq i32 %.093, 0
  br i1 %.not, label %transpose_tensor.exit159, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hg = load ptr, ptr %i.o, align 8, !tbaa !41  ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !38
  %i.hi = add i32 %i.hh, -2147483647
  %or.cond.i157 = icmp ult i32 %i.hi, -2147483645
  br i1 %or.cond.i157, label %transpose_tensor.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !20 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 20 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !22 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !22
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !40
  %i.hp = mul nsw i32 %i.ho, %i.hm
  store i32 %i.hp, ptr %i.hl, align 4, !tbaa !22
  br label %transpose_tensor.exit

transpose_tensor.exit:                            ; preds = %bb.bn, %bb.bo
  %i.hq = load i32, ptr %i.hf, align 8, !tbaa !38
  %i.hr = add i32 %i.hq, -2147483647
  %or.cond.i158 = icmp ult i32 %i.hr, -2147483645
  br i1 %or.cond.i158, label %transpose_tensor.exit159, label %bb.bp

bb.bp:                                            ; preds = %transpose_tensor.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !20 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 20 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !22 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !22
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !40
  %i.hy = mul nsw i32 %i.hx, %i.hv
  store i32 %i.hy, ptr %i.hu, align 4, !tbaa !22
  br label %transpose_tensor.exit159

transpose_tensor.exit159:                         ; preds = %bb.bp, %transpose_tensor.exit, %bb.bm
  %i.hz = load i32, ptr %i.h, align 4, !tbaa !33
  %.not97 = icmp eq i32 %i.hz, 0
  br i1 %.not97, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %transpose_tensor.exit159
  %i.ia = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8388608
  store ptr %i.ib, ptr %i.f, align 8, !tbaa !44
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %transpose_tensor.exit159
  %i.ic = load ptr, ptr %i.o, align 8, !tbaa !41
  %.not98 = icmp eq ptr %i.ic, null
  %.not99 = icmp eq ptr %i.hf, null
  %or.cond = select i1 %.not98, i1 true, i1 %.not99
  br i1 %or.cond, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @bench_assertion_failed(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @.str.1) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.id = load i8, ptr %.1, align 1, !tbaa !16
  %.not100 = icmp eq i8 %i.id, 0
  br i1 %.not100, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @bench_assertion_failed(ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef nonnull @.str.1) #7
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @bench_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @parsetensor(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.ap, %bb.a
  %.087 = phi ptr [ %0, %bb.a ], [ %i.cx, %bb.ap ] ; 4 uses
  %.085 = phi ptr [ null, %bb.a ], [ %i.a, %bb.ap ]
  %.083 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.ap ]  ; 3 uses
  %i.a = tail call ptr @bench_malloc(i64 noundef 24) #7 ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.085, ptr %i.b, align 8, !tbaa !49
  %i.c = add nuw nsw i32 %.083, 1                 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.d = load i8, ptr %.087, align 1, !tbaa !16
  switch i8 %i.d, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.087, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.087, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.021.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %.087, %bb.b ] ; 4 uses
  %.0.i = phi i32 [ -1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.g = tail call ptr @__ctype_b_loc() #9        ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = load i8, ptr %.021.i, align 1, !tbaa !16 ; 2 uses
  %i.j = sext i8 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = and i16 %i.l, 2048
  %.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.1) #7
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !25 ; 2 uses
  %.pre28.i = load i8, ptr %.021.i, align 1, !tbaa !16 ; 2 uses
  %.phi.trans.insert.i = sext i8 %.pre28.i to i64
  %.phi.trans.insert29.i = getelementptr inbounds [2 x i8], ptr %.pre.i, i64 %.phi.trans.insert.i
  %.pre30.i = load i16, ptr %.phi.trans.insert29.i, align 2, !tbaa !27
  %.pre31.pre.i = load i32, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.pre33.i = and i16 %.pre30.i, 2048
  %i.n = icmp eq i16 %.pre33.i, 0
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.e ]
  %i.p = phi i8 [ %.pre28.i, %bb.f ], [ %i.i, %bb.e ]
  %.pre3138.i = phi i32 [ %.pre31.pre.i, %bb.f ], [ 0, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i32 [ %.pre3138.i, %.lr.ph.i ], [ %i.v, %bb.g ]
  %i.r = phi i8 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.g ]
  %.127.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %i.w, %bb.g ]
  %i.s = sext i8 %i.r to i32
  %i.t = mul nsw i32 %i.q, 10
  %i.u = add i32 %i.t, -48
  %i.v = add i32 %i.u, %i.s                       ; 3 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.127.i, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = and i16 %i.aa, 2048
  %.not25.i = icmp eq i16 %i.ab, 0
  br i1 %.not25.i, label %._crit_edge.i, label %bb.g, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.ac = phi i32 [ %.pre31.pre.i, %bb.f ], [ %i.v, %bb.g ]
  %.1.lcssa.i = phi ptr [ %.021.i, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.ad = mul nsw i32 %i.ac, %.0.i                ; 3 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !17
  %i.ae = load i8, ptr %.1.lcssa.i, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.ae, label %bb.i [
    i8 107, label %bb.h
    i8 75, label %bb.h
  ]

bb.h:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %i.af = shl nsw i32 %i.ad, 10                   ; 2 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.ag, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ah = phi i32 [ %i.ad, %._crit_edge.i ], [ %i.af, %bb.h ]
  %i.ai = phi i8 [ %i.ae, %._crit_edge.i ], [ %.pr.i, %bb.h ] ; 2 uses
  %.2.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ag, %bb.h ] ; 2 uses
  switch i8 %i.ai, label %parseint.exit [
    i8 109, label %bb.j
    i8 77, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aj = shl nsw i32 %i.ah, 20
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !16
  br label %parseint.exit

parseint.exit:                                    ; preds = %bb.i, %bb.j
  %i.al = phi i8 [ %.pre, %bb.j ], [ %i.ai, %bb.i ]
  %.3.i = phi ptr [ %i.ak, %bb.j ], [ %.2.i, %bb.i ] ; 2 uses
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %parseint.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ap = tail call fastcc ptr @parseint(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = icmp eq i8 %i.aq, 58
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = tail call fastcc ptr @parseint(ptr noundef nonnull %i.at, ptr noundef nonnull %i.as)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !50
  store i32 %i.av, ptr %i.as, align 8, !tbaa !51
  br label %bb.o

bb.n:                                             ; preds = %parseint.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.188 = phi ptr [ %i.au, %bb.l ], [ %i.ap, %bb.m ], [ %.3.i, %bb.n ] ; 8 uses
  %i.ay = load i8, ptr %.188, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.ay, label %bb.an [
    i8 102, label %bb.p
    i8 70, label %bb.p
    i8 98, label %bb.q
    i8 66, label %bb.q
    i8 104, label %bb.r
    i8 72, label %bb.r
    i8 101, label %bb.s
    i8 69, label %bb.s
    i8 111, label %bb.s
    i8 79, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %.188, i64 1
  br label %bb.ao

bb.q:                                             ; preds = %bb.o, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.bb, align 4, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %.188, i64 1
  br label %bb.ao

bb.r:                                             ; preds = %bb.o, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 2, ptr %i.bd, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %.188, i64 1
  br label %bb.ao

bb.s:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.188, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  switch i8 %i.bg, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %.188, i64 2
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %.188, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.021.i97 = phi ptr [ %i.bh, %bb.t ], [ %i.bi, %bb.u ], [ %i.bf, %bb.s ] ; 4 uses
  %.0.i98 = phi i32 [ -1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.s ]
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.bk = load i8, ptr %.021.i97, align 1, !tbaa !16 ; 2 uses
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !27
  %i.bo = and i16 %i.bn, 2048
  %.not.i99 = icmp eq i16 %i.bo, 0
  br i1 %.not.i99, label %bb.w, label %.lr.ph.i100

bb.w:                                             ; preds = %bb.v
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.1) #7
  %.pre.i109 = load ptr, ptr %i.g, align 8, !tbaa !25 ; 2 uses
  %.pre28.i110 = load i8, ptr %.021.i97, align 1, !tbaa !16 ; 3 uses
  %.phi.trans.insert.i111 = sext i8 %.pre28.i110 to i64
  %.phi.trans.insert29.i112 = getelementptr inbounds [2 x i8], ptr %.pre.i109, i64 %.phi.trans.insert.i111
  %.pre30.i113 = load i16, ptr %.phi.trans.insert29.i112, align 2, !tbaa !27
  %.pre33.i115 = and i16 %.pre30.i113, 2048
  %i.bp = icmp eq i16 %.pre33.i115, 0
  br i1 %i.bp, label %._crit_edge.i104, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.w, %bb.v
  %i.bq = phi ptr [ %.pre.i109, %bb.w ], [ %i.bj, %bb.v ]
  %i.br = phi i8 [ %.pre28.i110, %bb.w ], [ %i.bk, %bb.v ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i100
  %i.bs = phi i32 [ 0, %.lr.ph.i100 ], [ %i.bx, %bb.x ]
  %i.bt = phi i8 [ %i.br, %.lr.ph.i100 ], [ %i.bz, %bb.x ]
  %.127.i102 = phi ptr [ %.021.i97, %.lr.ph.i100 ], [ %i.by, %bb.x ]
  %i.bu = sext i8 %i.bt to i32
  %i.bv = mul nsw i32 %i.bs, 10
  %i.bw = add i32 %i.bv, -48
  %i.bx = add i32 %i.bw, %i.bu                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.127.i102, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16  ; 3 uses
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !27
  %i.cd = and i16 %i.cc, 2048
  %.not25.i103 = icmp eq i16 %i.cd, 0
  br i1 %.not25.i103, label %._crit_edge.i104.loopexit, label %bb.x, !llvm.loop !0

._crit_edge.i104.loopexit:                        ; preds = %bb.x
  %i.ce = mul nsw i32 %i.bx, %.0.i98
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit, %bb.w
  %i.cf = phi i8 [ %.pre28.i110, %bb.w ], [ %i.bz, %._crit_edge.i104.loopexit ] ; 2 uses
  %i.cg = phi i32 [ 0, %bb.w ], [ %i.ce, %._crit_edge.i104.loopexit ] ; 2 uses
  %.1.lcssa.i105 = phi ptr [ %.021.i97, %bb.w ], [ %i.by, %._crit_edge.i104.loopexit ] ; 2 uses
  switch i8 %i.cf, label %bb.z [
    i8 107, label %bb.y
    i8 75, label %bb.y
  ]

bb.y:                                             ; preds = %._crit_edge.i104, %._crit_edge.i104
  %i.ch = shl nsw i32 %i.cg, 10
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.lcssa.i105, i64 1 ; 2 uses
  %.pr.i106 = load i8, ptr %i.ci, align 1, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i104
  %.0119 = phi i32 [ %i.cg, %._crit_edge.i104 ], [ %i.ch, %bb.y ] ; 2 uses
  %i.cj = phi i8 [ %i.cf, %._crit_edge.i104 ], [ %.pr.i106, %bb.y ]
  %.2.i107 = phi ptr [ %.1.lcssa.i105, %._crit_edge.i104 ], [ %i.ci, %bb.y ] ; 2 uses
  switch i8 %i.cj, label %parseint.exit116 [
    i8 109, label %bb.aa
    i8 77, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.ck = shl nsw i32 %.0119, 20
  %i.cl = getelementptr inbounds nuw i8, ptr %.2.i107, i64 1
  br label %parseint.exit116

parseint.exit116:                                 ; preds = %bb.z, %bb.aa
  %.1120 = phi i32 [ %.0119, %bb.z ], [ %i.ck, %bb.aa ] ; 2 uses
  %.3.i108 = phi ptr [ %.2.i107, %bb.z ], [ %i.cl, %bb.aa ] ; 10 uses
  %i.cm = and i8 %i.ay, -33
  %or.cond = icmp eq i8 %i.cm, 69
  br i1 %or.cond, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %parseint.exit116
  switch i32 %.1120, label %bb.ag [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 10, label %bb.ae
    i32 11, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 3, ptr %i.cn, align 4, !tbaa !52
  br label %bb.ao

bb.ad:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 4, ptr %i.co, align 4, !tbaa !52
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 5, ptr %i.cp, align 4, !tbaa !52
  br label %bb.ao

bb.af:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 6, ptr %i.cq, align 4, !tbaa !52
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ab
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.4, i32 noundef 179, ptr noundef nonnull @.str.1) #7
  br label %bb.ao

bb.ah:                                            ; preds = %parseint.exit116
  switch i32 %.1120, label %bb.am [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 10, label %bb.ak
    i32 11, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 7, ptr %i.cr, align 4, !tbaa !52
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 8, ptr %i.cs, align 4, !tbaa !52
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 9, ptr %i.ct, align 4, !tbaa !52
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 10, ptr %i.cu, align 4, !tbaa !52
  br label %bb.ao

bb.am:                                            ; preds = %bb.ah
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.4, i32 noundef 191, ptr noundef nonnull @.str.1) #7
  br label %bb.ao

bb.an:                                            ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !52
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ae, %bb.ac, %bb.aj, %bb.al, %bb.am, %bb.ak, %bb.ai, %bb.q, %bb.an, %bb.r, %bb.p
  %.2 = phi ptr [ %i.ba, %bb.p ], [ %i.bc, %bb.q ], [ %i.be, %bb.r ], [ %.188, %bb.an ], [ %.3.i108, %bb.ai ], [ %.3.i108, %bb.ak ], [ %.3.i108, %bb.am ], [ %.3.i108, %bb.al ], [ %.3.i108, %bb.aj ], [ %.3.i108, %bb.ac ], [ %.3.i108, %bb.ae ], [ %.3.i108, %bb.ag ], [ %.3.i108, %bb.af ], [ %.3.i108, %bb.ad ] ; 3 uses
  %i.cw = load i8, ptr %.2, align 1, !tbaa !16
  switch i8 %i.cw, label %bb.aq [
    i8 120, label %bb.ap
    i8 88, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.cx = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.b

bb.aq:                                            ; preds = %bb.ao
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %..loopexit_crit_edge, label %bb.ar

..loopexit_crit_edge:                             ; preds = %bb.aq
  %.pre139 = zext nneg i32 %.083 to i64
  br label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.cy = zext nneg i32 %i.c to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = tail call ptr @bench_malloc(i64 noundef %i.cz) #7 ; 2 uses
  store ptr %i.da, ptr %2, align 8, !tbaa !18
  %3 = zext nneg i32 %.083 to i64                 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.au
  %i.db = phi ptr [ %i.da, %bb.ar ], [ %i.dc, %bb.au ]
  %indvars.iv134 = phi i64 [ %3, %bb.ar ], [ %indvars.iv.next135, %bb.au ] ; 3 uses
  %.084126 = phi ptr [ %i.a, %bb.ar ], [ %i.dh, %bb.au ] ; 3 uses
  %.not96 = icmp eq ptr %.084126, null
  br i1 %.not96, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.5, i32 noundef 208, ptr noundef nonnull @.str.1) #7
  %.pre141 = load ptr, ptr %2, align 8, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dc = phi ptr [ %.pre141, %bb.at ], [ %i.db, %bb.as ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.084126, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !52
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv134
  store i32 %i.de, ptr %i.df, align 4, !tbaa !17
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %.084126, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.di = icmp sgt i64 %indvars.iv134, 0
  br i1 %i.di, label %bb.as, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.au, %..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre139, %..loopexit_crit_edge ], [ %3, %bb.au ]
  %i.dj = tail call ptr @mktensor(i32 noundef %i.c) #7 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %bb.ax
  %indvars.iv138 = phi i64 [ %.pre-phi, %.loopexit ], [ %indvars.iv.next139, %bb.ax ] ; 3 uses
  %.186128 = phi ptr [ %i.a, %.loopexit ], [ %i.do, %bb.ax ] ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %indvars.iv138 ; 2 uses
  %.not95 = icmp eq ptr %.186128, null
  br i1 %.not95, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.6, i32 noundef 216, ptr noundef nonnull @.str.1) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dn = getelementptr inbounds nuw i8, ptr %.186128, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !49
  %i.dp = load <2 x i32>, ptr %.186128, align 8, !tbaa !17
  store <2 x i32> %i.dp, ptr %i.dm, align 4, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.186128, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !22
  tail call void @bench_free(ptr noundef nonnull %.186128) #7
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  %i.dt = icmp sgt i64 %indvars.iv138, 0
  br i1 %i.dt, label %bb.av, label %bb.ay, !llvm.loop !46

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.dj, ptr %1, align 8, !tbaa !18
  ret ptr %.2
}

declare ptr @mktensor(i32 noundef) local_unnamed_addr #2

declare void @bench_assertion_failed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @problem_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @problem_free(ptr noundef %0) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @bench_free0(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @bench_free0(ptr noundef %i.d) #7
  tail call void @bench_free(ptr noundef %0) #7
  ret void
}

declare void @problem_free(ptr noundef) local_unnamed_addr #2

declare void @bench_free0(ptr noundef) local_unnamed_addr #2

declare void @bench_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parseint(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !17
  %i.a = load i8, ptr %0, align 1, !tbaa !16
  switch i8 %i.a, label %bb.d [
    i8 45, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.021 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ]
  %i.d = tail call ptr @__ctype_b_loc() #9        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = load i8, ptr %.021, align 1, !tbaa !16   ; 2 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !27
  %i.j = and i16 %i.i, 2048
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 96, ptr noundef nonnull @.str.1) #7
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.pre28 = load i8, ptr %.021, align 1, !tbaa !16 ; 2 uses
  %.phi.trans.insert = sext i8 %.pre28 to i64
  %.phi.trans.insert29 = getelementptr inbounds [2 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre30 = load i16, ptr %.phi.trans.insert29, align 2, !tbaa !27
  %.pre31.pre = load i32, ptr %1, align 4, !tbaa !17 ; 2 uses
  %.pre33 = and i16 %.pre30, 2048
  %i.k = icmp eq i16 %.pre33, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %.pre, %bb.e ], [ %i.e, %bb.d ]
  %i.m = phi i8 [ %.pre28, %bb.e ], [ %i.f, %bb.d ]
  %.pre3138 = phi i32 [ %.pre31.pre, %bb.e ], [ 0, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i32 [ %.pre3138, %.lr.ph ], [ %i.s, %bb.f ]
  %i.o = phi i8 [ %i.m, %.lr.ph ], [ %i.u, %bb.f ]
  %.127 = phi ptr [ %.021, %.lr.ph ], [ %i.t, %bb.f ]
  %i.p = sext i8 %i.o to i32
  %i.q = mul nsw i32 %i.n, 10
  %i.r = add nsw i32 %i.p, -48
  %i.s = add nsw i32 %i.r, %i.q                   ; 3 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.127, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = and i16 %i.x, 2048
  %.not25 = icmp eq i16 %i.y, 0
  br i1 %.not25, label %._crit_edge, label %bb.f, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.z = phi i32 [ %.pre31.pre, %bb.e ], [ %i.s, %bb.f ]
  %.1.lcssa = phi ptr [ %.021, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %i.aa = mul nsw i32 %i.z, %.0                   ; 3 uses
  store i32 %i.aa, ptr %1, align 4, !tbaa !17
  %i.ab = load i8, ptr %.1.lcssa, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.ab, label %bb.h [
    i8 107, label %bb.g
    i8 75, label %bb.g
  ]

bb.g:                                             ; preds = %._crit_edge, %._crit_edge
  %i.ac = shl nsw i32 %i.aa, 10                   ; 2 uses
  store i32 %i.ac, ptr %1, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.ad, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = phi i32 [ %i.aa, %._crit_edge ], [ %i.ac, %bb.g ]
  %i.af = phi i8 [ %i.ab, %._crit_edge ], [ %.pr, %bb.g ]
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ad, %bb.g ] ; 2 uses
  switch i8 %i.af, label %bb.j [
    i8 109, label %bb.i
    i8 77, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ag = shl nsw i32 %i.ae, 20
  store i32 %i.ag, ptr %1, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.3 = phi ptr [ %i.ah, %bb.i ], [ %.2, %bb.h ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"double", !6, i64 0}
end_hunk_0
