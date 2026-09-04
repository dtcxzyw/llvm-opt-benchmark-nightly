Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regexec?download=true
inline.NumInlined: 154
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@onig_region_copy:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @onig_get_match_stack_limit_size() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onig_set_match_stack_limit_size(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  store i32 %0, ptr @MatchStackLimitSize, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.OnigMatchArg, align 8       ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %5, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 -1, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 1, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %.not = icmp eq ptr %4, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45
  %i.n = add i32 %i.m, 1
  %i.o = tail call i32 @onig_region_resize(ptr noundef nonnull %4, i32 noundef %i.n) ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = zext nneg i32 %i.q to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 -1, i64 %i.x, i1 false), !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 -1, i64 %i.x, i1 false), !tbaa !24
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.y = sext i32 %i.o to i64
  br label %bb.e

.thread:                                          ; preds = %bb.c, %.lr.ph.i.i, %bb.a
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.aa, ptr noundef %1, ptr noundef %3, ptr noundef %2) #21
  %i.ac = call fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.ab, ptr noundef %6)
  %.pre = load ptr, ptr %6, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.ad = phi ptr [ %.pre, %.thread ], [ null, %bb.d ]
  %.1 = phi i64 [ %i.ac, %.thread ], [ %i.y, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @free(ptr noundef %i.ad) #21
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !47
  call void @free(ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !48
  call void @free(ptr noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i64 %.1
}

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [18 x i8], align 16               ; 5 uses
  %i.g = alloca [18 x i8], align 16               ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca [18 x i8], align 16               ; 5 uses
  %i.k = alloca [18 x i8], align 16               ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca ptr, align 8                      ; 206 uses
  %i.n = alloca ptr, align 8                      ; 192 uses
  %i.o = alloca ptr, align 8                      ; 302 uses
  %i.p = alloca ptr, align 8                      ; 137 uses
  %i.q = alloca [18 x i8], align 16               ; 3 uses
  %i.r = alloca [18 x i8], align 16               ; 3 uses
  %i.s = alloca ptr, align 8                      ; 2 uses
  %i.t = alloca ptr, align 8                      ; 2 uses
  %i.u = alloca ptr, align 8                      ; 2 uses
  %i.v = alloca ptr, align 8                      ; 2 uses
  %i.w = alloca ptr, align 8                      ; 2 uses
  %i.x = alloca ptr, align 8                      ; 2 uses
  %i.y = alloca ptr, align 8                      ; 2 uses
  %i.z = alloca ptr, align 8                      ; 2 uses
  %i.aa = alloca ptr, align 8                     ; 2 uses
  %i.ab = alloca ptr, align 8                     ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49 ; 6 uses
  %i.ae = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 125 uses
  %i.ag = getelementptr i8, ptr %0, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !50 ; 7 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !118
  %i.al = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !45
  %i.an = shl i32 %i.am, 1
  %i.ao = add i32 %i.ak, 2
  %i.ap = add i32 %i.ao, %i.an                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = icmp sgt i32 %i.ap, 100
  br i1 %i.ar, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #22 ; 4 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !34    ; 5 uses
  %.not2536 = icmp eq ptr %i.au, null
  br i1 %.not2536, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.au, ptr %i.n, align 8, !tbaa !52
  store ptr %i.au, ptr %i.o, align 8, !tbaa !52
  %i.av = getelementptr i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ax = getelementptr [48 x i8], ptr %i.au, i64 %i.aw
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ay = alloca [7680 x i8], align 16            ; 4 uses
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !52
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7680
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ba = load ptr, ptr %5, align 8, !tbaa !34    ; 5 uses
  %.not = icmp eq ptr %i.ba, null
  %i.bb = shl nsw i64 %i.aq, 3                    ; 3 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = alloca i8, i64 %i.bb, align 16
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !52
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !52
  %i.bd = getelementptr i8, ptr %5, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr [48 x i8], ptr %i.ba, i64 %i.be
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bg = add nsw i64 %i.bb, 7680
  %i.bh = alloca i8, i64 %i.bg, align 16          ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bb  ; 4 uses
  store ptr %i.bi, ptr %i.n, align 8, !tbaa !52
  store ptr %i.bi, ptr %i.o, align 8, !tbaa !52
  %i.bj = getelementptr i8, ptr %i.bi, i64 7680
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %.sink = phi ptr [ %i.az, %bb.d ], [ %i.ax, %bb.c ], [ %i.bj, %bb.g ], [ %i.bf, %bb.f ]
  %i.bk = phi ptr [ %i.ay, %bb.d ], [ %i.au, %bb.c ], [ %i.bi, %bb.g ], [ %i.ba, %bb.f ] ; 97 uses
  %.02227 = phi ptr [ %i.at, %bb.d ], [ %i.at, %bb.c ], [ null, %bb.g ], [ null, %bb.f ] ; 49 uses
  %.02226 = phi ptr [ %i.at, %bb.d ], [ %i.at, %bb.c ], [ %i.bh, %bb.g ], [ %i.bc, %bb.f ] ; 18 uses
  store ptr %.sink, ptr %i.p, align 8, !tbaa !52
  %i.bl = getelementptr i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !119 ; 2 uses
  %i.bn = load i32, ptr %i.al, align 8, !tbaa !45 ; 5 uses
  %i.bo = load i32, ptr %i.aj, align 4, !tbaa !118
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %.02226, i64 %i.bp ; 27 uses
  %i.br = add i32 %i.bn, 1                        ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %i.bs ; 24 uses
  %i.bu = getelementptr [8 x i8], ptr %.02226, i64 %i.aq
  %i.bv = icmp ult ptr %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader, label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bw = shl nsw i64 %i.aq, 3
  %6 = shl nsw i64 %i.bp, 3
  %i.bx = xor i64 %6, -1
  %i.by = add nsw i64 %i.bw, %i.bx
  %i.bz = and i64 %i.by, -16
  %i.ca = add nsw i64 %i.bz, 16
  call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 -1, i64 %i.ca, i1 false), !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.preheader
  store i32 1, ptr %i.bk, align 8, !tbaa !121
  %i.cb = getelementptr i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !122
  %i.cc = getelementptr i8, ptr %i.bk, i64 16
  store ptr @match_at.FinishCode, ptr %i.cc, align 8, !tbaa !54
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !52
  store ptr %3, ptr %i.m, align 8, !tbaa !23
  %i.cf = getelementptr i8, ptr %i.ai, i64 1
  %i.cg = getelementptr i8, ptr %i.af, i64 16     ; 27 uses
  %i.ch = getelementptr i8, ptr %i.af, i64 20     ; 39 uses
  %i.ci = getelementptr i8, ptr %5, i64 120       ; 37 uses
  %i.cj = getelementptr i8, ptr %5, i64 88        ; 17 uses
  %i.ck = getelementptr i8, ptr %0, i64 44        ; 7 uses
  %i.cl = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.cm = getelementptr i8, ptr %5, i64 80        ; 14 uses
  %i.cn = getelementptr i8, ptr %5, i64 104       ; 12 uses
  %i.co = getelementptr i8, ptr %5, i64 96        ; 14 uses
  %i.cp = getelementptr i8, ptr %5, i64 112       ; 13 uses
  %i.cq = ptrtoint ptr %1 to i64                  ; 15 uses
  %i.cr = getelementptr i8, ptr %5, i64 64        ; 12 uses
  %i.cs = getelementptr i8, ptr %5, i64 72        ; 4 uses
  %i.ct = getelementptr i8, ptr %0, i64 40        ; 6 uses
  %i.cu = getelementptr i8, ptr %i.af, i64 56     ; 6 uses
  %i.cv = getelementptr i8, ptr %5, i64 40
  %i.cw = and i32 %i.ad, 65536
  %.not2679 = icmp eq i32 %i.cw, 0                ; 5 uses
  %i.cx = getelementptr i8, ptr %i.af, i64 32     ; 41 uses
  %i.cy = getelementptr i8, ptr %5, i64 16        ; 5 uses
  %i.cz = getelementptr i8, ptr %i.af, i64 24     ; 4 uses
  %i.da = getelementptr i8, ptr %i.af, i64 128    ; 14 uses
  %i.db = getelementptr i8, ptr %i.af, i64 88     ; 12 uses
  %i.dc = ptrtoint ptr %3 to i64
  %i.dd = and i32 %i.ad, 16                       ; 2 uses
  %.not2815 = icmp eq i32 %i.dd, 0
  %i.de = getelementptr i8, ptr %5, i64 48        ; 2 uses
  %i.df = getelementptr i8, ptr %5, i64 56
  %i.dg = getelementptr i8, ptr %5, i64 24
  %.not28174093 = icmp slt i32 %i.bn, 1
  %i.dh = and i32 %i.ad, 48
  %.not2818 = icmp eq i32 %i.dh, 0
  %i.di = and i32 %i.ad, 32
  %.not2819 = icmp ne i32 %i.di, 0
  %.not2820 = icmp ne i32 %i.dd, 0
  %i.dj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.br, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.backedge

bb.j:                                             ; preds = %.backedge
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !23  ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = sub i64 %i.dl, %i.dc                    ; 6 uses
  %i.dn = icmp sgt i64 %i.dm, %.32190
  br i1 %i.dn, label %bb.k, label %.loopexit3529

bb.k:                                             ; preds = %bb.j
  br i1 %.not2815, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = load i64, ptr %i.de, align 8, !tbaa !39
  %i.dp = icmp sgt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.m, label %.loopexit3529

bb.m:                                             ; preds = %bb.l
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !39
  store ptr %3, ptr %i.df, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.dq = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 3 uses
  %.not2816 = icmp eq ptr %i.dq, null
  br i1 %.not2816, label %.loopexit3529, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp ugt ptr %.02225, %i.dk
  %i.ds = select i1 %i.dr, ptr %i.dk, ptr %.02225
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cq
  %i.dv = getelementptr i8, ptr %i.dq, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 3 uses
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !24
  %i.dx = sub i64 %i.dl, %i.cq
  %i.dy = getelementptr i8, ptr %i.dq, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !28 ; 3 uses
  store i64 %i.dx, ptr %i.dz, align 8, !tbaa !24
  br i1 %.not28174093, label %.loopexit3529, label %.lr.ph4098

.lr.ph4098:                                       ; preds = %bb.o
  %i.ea = load ptr, ptr %i.n, align 8             ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph4098, %bb.ac
  %indvars.iv = phi i64 [ 1, %.lr.ph4098 ], [ %indvars.iv.next, %bb.ac ] ; 10 uses
  %i.eb = getelementptr [8 x i8], ptr %i.bt, i64 %indvars.iv ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24
  %.not2831 = icmp eq i64 %i.ec, -1
  br i1 %.not2831, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = icmp samesign ult i64 %indvars.iv, 32   ; 2 uses
  %i.ee = load i32, ptr %i.ct, align 8, !tbaa !123 ; 2 uses
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  %i.eg = shl nuw i32 1, %i.ef
  %i.eh = and i32 %i.ee, %i.eg
  %.not2833 = icmp eq i32 %i.eh, 0
  br i1 %.not2833, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ei = and i32 %i.ee, 1
  %.not2832 = icmp eq i32 %i.ei, 0
  br i1 %.not2832, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ej = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24
  %i.el = getelementptr [48 x i8], ptr %i.ea, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !54
  %i.eo = ptrtoint ptr %i.en to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ep = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink5591.a = phi i64 [ %i.eq, %bb.u ], [ %i.eo, %bb.t ]
  %i.er = sub i64 %.sink5591.a, %i.cq
  %i.es = getelementptr [8 x i8], ptr %i.dw, i64 %indvars.iv
  store i64 %i.er, ptr %i.es, align 8, !tbaa !24
  %i.et = load i32, ptr %i.ck, align 4, !tbaa !124 ; 2 uses
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eu = trunc nuw nsw i64 %indvars.iv to i32
  %i.ev = shl nuw i32 1, %i.eu
  %i.ew = and i32 %i.et, %i.ev
  %.not2835 = icmp eq i32 %i.ew, 0
  br i1 %.not2835, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ex = and i32 %i.et, 1
  %.not2834 = icmp eq i32 %i.ex, 0
  br i1 %.not2834, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ey = load i64, ptr %i.eb, align 8, !tbaa !24
  %i.ez = getelementptr [48 x i8], ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !54
  %i.fc = ptrtoint ptr %i.fb to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.fd = load i64, ptr %i.eb, align 8, !tbaa !24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fe = phi i64 [ %i.fc, %bb.y ], [ %i.fd, %bb.z ]
  %i.ff = sub i64 %i.fe, %i.cq
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  %i.fg = getelementptr [8 x i8], ptr %i.dz, i64 %indvars.iv
  store i64 -1, ptr %i.fg, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink5594 = phi ptr [ %i.dz, %bb.aa ], [ %i.dw, %bb.ab ]
  %.sink5592 = phi i64 [ %i.ff, %bb.aa ], [ -1, %bb.ab ]
  %i.fh = getelementptr [8 x i8], ptr %.sink5594, i64 %indvars.iv
  store i64 %.sink5592, ptr %i.fh, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond4510 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond4510, label %.loopexit3529, label %bb.p, !llvm.loop !90

.loopexit3529:                                    ; preds = %bb.ac, %bb.o, %bb.j, %bb.n, %bb.l
  %.02187 = phi i64 [ %.32190, %bb.j ], [ %i.dm, %bb.n ], [ %.32190, %bb.l ], [ %i.dm, %bb.o ], [ %i.dm, %bb.ac ] ; 3 uses
  br i1 %.not2818, label %bb.bcd, label %bb.ad

bb.ad:                                            ; preds = %.loopexit3529
  %i.fi = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %3
  %or.cond = select i1 %.not2819, i1 %i.fj, i1 false
  br i1 %or.cond, label %is_mbc_newline_ex.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = icmp ult ptr %i.fi, %.3
  %or.cond2839 = select i1 %.not2820, i1 %i.fk, i1 false
  br i1 %or.cond2839, label %is_mbc_newline_ex.exit.thread, label %bb.bcd
end_hunk_0
begin_hunk_1_@init_cache_opcodes_inner:bb.a
  %.not121 = icmp eq ptr %.pre171, null
  br i1 %.not121, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.y, ptr %.pre171, align 8, !tbaa !81
  %i.er = getelementptr i8, ptr %.pre171, i64 8
  store i64 %i.ej, ptr %i.er, align 8, !tbaa !82
  %i.es = getelementptr i8, ptr %.pre171, i64 16
  store i32 %i.t, ptr %i.es, align 8, !tbaa !83
  %i.et = getelementptr i8, ptr %.pre171, i64 24
  %i.eu = getelementptr i8, ptr %.pre171, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.eu, align 8, !tbaa !65
  %i.ev = getelementptr i8, ptr %.pre171, i64 48
  store ptr null, ptr %i.ev, align 8, !tbaa !66
  %i.ew = add i64 %i.ej, %i.u                     ; 2 uses
  store i64 %i.ew, ptr %i.b, align 8, !tbaa !24
  %i.ex = getelementptr i8, ptr %.pre171, i64 56  ; 2 uses
  store ptr %i.ex, ptr %i.c, align 8, !tbaa !63
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ey = phi ptr [ %i.ex, %bb.an ], [ null, %bb.am ]
  %i.ez = phi i64 [ %i.ew, %bb.an ], [ %i.ej, %bb.am ]
  %i.fa = add i64 %i.ez, %.neg
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.fb = phi ptr [ %i.ey, %bb.ao ], [ %.pre171, %bb.al ] ; 3 uses
  %i.fc = phi i64 [ %i.fa, %bb.ao ], [ %i.ej, %bb.al ]
  %i.fd = icmp eq i32 %i.ep, 2147483647
  %i.fe = sub i32 %i.ep, %i.en
  %narrow = select i1 %i.fd, i32 1, i32 %i.fe
  %i.ff = sext i32 %narrow to i64
  %i.fg = load i64, ptr %i.f, align 8, !tbaa !24  ; 3 uses
  %i.fh = sext i32 %i.en to i64
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fg, %i.u
  %i.fk = mul i64 %i.fj, %i.ff
  %i.fl = add i64 %i.fc, %i.fi
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.b, align 8, !tbaa !24
  %i.fn = icmp ult ptr %i.ei, %i.fb
  br i1 %i.fn, label %.lr.ph156, label %.thread138

.thread138:                                       ; preds = %.lr.ph156, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.thread140

.lr.ph156:                                        ; preds = %bb.ap, %.lr.ph156
  %.0104155 = phi ptr [ %i.fq, %.lr.ph156 ], [ %i.ei, %bb.ap ] ; 3 uses
  %i.fo = getelementptr i8, ptr %.0104155, i64 24
  store i64 %i.ej, ptr %i.fo, align 8, !tbaa !84
  %i.fp = getelementptr i8, ptr %.0104155, i64 32
  store i64 %i.fg, ptr %i.fp, align 8, !tbaa !85
  %i.fq = getelementptr i8, ptr %.0104155, i64 56 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.fb
  br i1 %i.fr, label %.lr.ph156, label %.thread138, !llvm.loop !173

bb.aq:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.loopexit146

bb.ar:                                            ; preds = %bb.b, %bb.b
  %i.fs = getelementptr i8, ptr %i.y, i64 3
  br label %.loopexit

bb.as:                                            ; preds = %bb.b
  %i.ft = getelementptr i8, ptr %i.y, i64 3
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !23
  br label %.thread140

bb.at:                                            ; preds = %bb.b, %bb.b
  %i.fu = getelementptr i8, ptr %i.y, i64 3
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !23
  br label %.thread140

bb.au:                                            ; preds = %bb.b
  %i.fv = getelementptr i8, ptr %i.y, i64 3
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !23
  br label %.thread140

.sink.split:                                      ; preds = %bb.b, %bb.az
  %.sink201 = phi i64 [ 9, %bb.az ], [ 5, %bb.b ]
  %i.fw = getelementptr i8, ptr %i.y, i64 %.sink201
  store ptr %i.fw, ptr %i.a, align 8, !tbaa !23
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.b
  %i.fx = call fastcc i64 @init_cache_opcodes_inner(ptr noundef nonnull %0, i16 noundef signext %1, i32 noundef %i.r, ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not118 = icmp eq i64 %i.fx, 0
  br i1 %.not118, label %bb.aw, label %.loopexit146

bb.aw:                                            ; preds = %bb.av
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.fz = getelementptr i8, ptr %i.fy, i64 -1
  %i.ga = load ptr, ptr %i.c, align 8, !tbaa !63  ; 4 uses
  %i.gb = icmp ult ptr %i.x, %i.ga
  br i1 %i.gb, label %.lr.ph154, label %.thread140

.lr.ph154:                                        ; preds = %bb.aw, %bb.ay
  %.0103153 = phi ptr [ %i.gf, %bb.ay ], [ %i.x, %bb.aw ] ; 2 uses
  %i.gc = getelementptr i8, ptr %.0103153, i64 48 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !66
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph154
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !66
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph154, %bb.ax
  %i.gf = getelementptr i8, ptr %.0103153, i64 56 ; 2 uses
  %i.gg = icmp ult ptr %i.gf, %i.ga
  br i1 %i.gg, label %.lr.ph154, label %.thread140, !llvm.loop !174

bb.az:                                            ; preds = %bb.b
  br label %.sink.split

bb.ba:                                            ; preds = %bb.b
  %i.gh = call fastcc i64 @init_cache_opcodes_inner(ptr noundef nonnull %0, i16 noundef signext %1, i32 noundef -1, ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %bb.bb, label %.loopexit146

bb.bb:                                            ; preds = %bb.ba
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.gj = getelementptr i8, ptr %i.gi, i64 -1
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !63  ; 4 uses
  %i.gl = icmp ult ptr %i.x, %i.gk
  br i1 %i.gl, label %.lr.ph, label %.thread140

.lr.ph:                                           ; preds = %bb.bb, %bb.bd
  %.0152 = phi ptr [ %i.gp, %bb.bd ], [ %i.x, %bb.bb ] ; 2 uses
  %i.gm = getelementptr i8, ptr %.0152, i64 48    ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !66
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !66
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bc
  %i.gp = getelementptr i8, ptr %.0152, i64 56    ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %i.gk
  br i1 %i.gq, label %.lr.ph, label %.thread140, !llvm.loop !175

bb.be:                                            ; preds = %bb.b
  %i.gr = getelementptr i8, ptr %i.y, i64 5
  store ptr %i.gr, ptr %i.a, align 8, !tbaa !23
  br label %.thread140

bb.bf:                                            ; preds = %bb.b, %bb.b
  %i.gs = getelementptr i8, ptr %i.y, i64 5
  store ptr %i.gs, ptr %i.a, align 8, !tbaa !23
  br label %.thread140

.thread140:                                       ; preds = %bb.bd, %bb.ay, %bb.bb, %bb.aw, %.thread138, %bb.ai, %bb.ae, %bb.af, %bb.ac, %bb.ad, %bb.aa, %bb.y, %bb.z, %bb.w, %bb.x, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.bf, %bb.be, %bb.au, %bb.at, %bb.as, %bb.ab, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.b, %bb.b
  %i.gt = phi ptr [ %i.ga, %bb.ay ], [ %i.x, %bb.b ], [ %i.gk, %bb.bb ], [ %i.ga, %bb.aw ], [ %i.fb, %.thread138 ], [ %i.x, %bb.ai ], [ null, %bb.ae ], [ %i.do, %bb.af ], [ null, %bb.ac ], [ %i.de, %bb.ad ], [ %i.x, %bb.aa ], [ null, %bb.y ], [ %i.cs, %bb.z ], [ null, %bb.w ], [ %i.ci, %bb.x ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.x, %bb.bf ], [ %i.x, %bb.be ], [ %i.x, %bb.au ], [ %i.x, %bb.at ], [ %i.x, %bb.as ], [ %i.x, %bb.ab ], [ %i.x, %bb.v ], [ %i.x, %bb.u ], [ %i.x, %bb.t ], [ %i.x, %bb.s ], [ %i.x, %bb.r ], [ %i.x, %bb.n ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %i.x, %bb.k ], [ %i.x, %bb.j ], [ %i.x, %bb.i ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ], [ %i.x, %bb.b ], [ %i.gk, %bb.bd ]
  %i.gu = load ptr, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  %i.gv = icmp ult ptr %i.gu, %i.l
  br i1 %i.gv, label %bb.b, label %.loopexit, !llvm.loop !176

.loopexit:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %.thread140, %bb.a, %bb.ar
  %i.gw = phi ptr [ %i.fs, %bb.ar ], [ %i.g, %bb.a ], [ %i.z, %bb.b ], [ %i.z, %bb.b ], [ %i.z, %bb.b ], [ %i.z, %bb.b ], [ %i.gu, %.thread140 ]
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !63
  store ptr %i.gx, ptr %3, align 8, !tbaa !63
  store ptr %i.gw, ptr %4, align 8, !tbaa !23
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.gy, ptr %5, align 8, !tbaa !24
  br label %.loopexit146

.loopexit146.loopexit:                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.ba, %bb.av, %bb.ai, %bb.aa, %bb.b, %.loopexit146.loopexit, %bb.aq, %.loopexit
  %.0106 = phi i64 [ -14, %.loopexit146.loopexit ], [ 0, %.loopexit ], [ %i.ek, %bb.aq ], [ -13, %bb.b ], [ %i.gh, %bb.ba ], [ -14, %bb.aa ], [ %i.dz, %bb.ai ], [ %i.fx, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0106
}

declare ptr @onigenc_get_right_adjust_char_head_with_prev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"p1 _ZTS18OnigEncodingTypeST", !15, i64 0}
!18 = !{!"long", !12, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"p1 _ZTS17re_pattern_buffer", !15, i64 0}
!21 = !{!"re_pattern_buffer", !16, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !15, i64 64, !17, i64 72, !15, i64 80, !15, i64 88, !13, i64 96, !13, i64 100, !13, i64 104, !13, i64 108, !18, i64 112, !18, i64 120, !13, i64 128, !16, i64 136, !16, i64 144, !12, i64 152, !19, i64 408, !19, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !20, i64 448}
!22 = !{!21, !16, i64 0}
!23 = !{!16, !16, i64 0}
!24 = !{!18, !18, i64 0}
!25 = !{!"p1 long", !15, i64 0}
!26 = !{!"re_registers", !13, i64 0, !13, i64 4, !25, i64 8, !25, i64 16}
!27 = !{!26, !13, i64 4}
!28 = !{!26, !25, i64 16}
!29 = !{!26, !25, i64 8}
!30 = !{!26, !13, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"p1 _ZTS12re_registers", !15, i64 0}
!33 = !{!"", !15, i64 0, !18, i64 8, !13, i64 16, !32, i64 24, !16, i64 32, !16, i64 40, !18, i64 48, !16, i64 56, !13, i64 64, !18, i64 72, !13, i64 80, !18, i64 88, !18, i64 96, !15, i64 104, !18, i64 112, !16, i64 120}
!34 = !{!33, !15, i64 0}
!35 = !{!33, !13, i64 16}
!36 = !{!33, !32, i64 24}
!37 = !{!33, !16, i64 32}
!38 = !{!33, !16, i64 40}
!39 = !{!33, !18, i64 48}
!40 = !{!33, !13, i64 64}
!41 = !{!33, !18, i64 72}
!42 = !{!33, !13, i64 80}
!43 = !{!33, !18, i64 88}
!44 = !{!33, !18, i64 96}
!45 = !{!21, !13, i64 16}
!46 = !{!21, !17, i64 72}
!47 = !{!33, !15, i64 104}
!48 = !{!33, !16, i64 120}
!49 = !{!21, !13, i64 56}
!50 = !{!21, !13, i64 96}
!51 = !{!"p1 _ZTS14_OnigStackType", !15, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!33, !18, i64 8}
!54 = !{!12, !12, i64 0}
!55 = !{!33, !16, i64 56}
!56 = !{!"OnigEncodingTypeST", !15, i64 0, !16, i64 8, !13, i64 16, !13, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !13, i64 128, !13, i64 132}
!57 = !{!56, !15, i64 56}
!58 = !{!56, !13, i64 16}
!59 = !{!56, !13, i64 20}
!60 = !{!56, !15, i64 32}
!61 = !{ptr @is_mbc_newline_ex}
!62 = !{!56, !15, i64 24}
!63 = !{!15, !15, i64 0}
!64 = !{!"", !16, i64 0, !18, i64 8, !13, i64 16, !18, i64 24, !18, i64 32, !13, i64 40, !16, i64 48}
!65 = !{!64, !13, i64 40}
!66 = !{!64, !16, i64 48}
!67 = !{!"short", !12, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!21, !15, i64 64}
!70 = !{!"", !13, i64 0, !13, i64 4}
!71 = !{!70, !13, i64 0}
!72 = !{!70, !13, i64 4}
!73 = !{!21, !13, i64 8}
!74 = !{!56, !15, i64 104}
!75 = !{!21, !13, i64 100}
!76 = !{!21, !18, i64 432}
!77 = !{!21, !18, i64 424}
!78 = !{!21, !16, i64 136}
!79 = !{!21, !16, i64 144}
!80 = !{!21, !13, i64 128}
!81 = !{!64, !16, i64 0}
!82 = !{!64, !18, i64 8}
!83 = !{!64, !13, i64 16}
!84 = !{!64, !18, i64 24}
!85 = !{!64, !18, i64 32}
!86 = distinct !{!86, !31, !88, !89}
!87 = distinct !{!87, !31, !88}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = !{!21, !13, i64 20}
!119 = !{!21, !13, i64 48}
!120 = !{!"_OnigStackType", !13, i64 0, !18, i64 8, !12, i64 16}
!121 = !{!120, !13, i64 0}
!122 = !{!120, !18, i64 8}
!123 = !{!21, !13, i64 40}
!124 = !{!21, !13, i64 44}
!125 = !{!33, !18, i64 112}
!126 = !{!56, !15, i64 88}
!127 = !{!56, !13, i64 128}
!128 = !{ptr @string_cmp_ic}
!129 = distinct !{!129, !31}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !31}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = !{!21, !13, i64 108}
!138 = !{!21, !18, i64 112}
!139 = !{!21, !18, i64 120}
!140 = !{!21, !13, i64 104}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31, !160}
!143 = distinct !{!143, !31}
!144 = distinct !{!144, !31}
!145 = distinct !{null, null}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !31}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31, !160}
!152 = distinct !{!152, !31}
!153 = distinct !{null, null}
!154 = distinct !{!154, !31}
!155 = distinct !{null, null}
!156 = distinct !{!156, !31, !160}
!157 = distinct !{!157, !31}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = !{!"llvm.loop.unswitch.partial.disable"}
!161 = !{!21, !19, i64 408}
!162 = distinct !{null}
!163 = distinct !{!163, !31}
!164 = distinct !{!164, !31}
!165 = distinct !{null}
!166 = distinct !{null, null}
!167 = distinct !{!167, !31}
!168 = distinct !{!168, !31}
!169 = !{!21, !15, i64 80}
!170 = !{i64 0, i64 8, !63, i64 8, i64 8, !23, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 8, !63, i64 32, i64 8, !63, i64 40, i64 8, !63, i64 48, i64 8, !63, i64 56, i64 8, !63, i64 64, i64 8, !63, i64 72, i64 8, !63, i64 80, i64 8, !63, i64 88, i64 8, !63, i64 96, i64 8, !63, i64 104, i64 8, !63, i64 112, i64 8, !63, i64 120, i64 8, !63, i64 128, i64 4, !14, i64 132, i64 4, !14}
end_hunk_1
