Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_convert?download=true
inline.NumInlined: 46
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcre2_real_convert_context_8 = type { %struct.pcre2_memctl, i32, i32 }
%struct.pcre2_memctl = type { ptr, ptr, ptr }
%struct.pcre2_output_context = type { ptr, ptr, i64, [8 x i8] }

@_pcre2_default_convert_context_8 = external constant %struct.pcre2_real_convert_context_8, align 8
@.str = private unnamed_addr constant [15 x i8] c"\\?*+|.^${}[]()\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"alnum:alpha:ascii:blank:cntrl:digit:graph:lower:print:punct:space:upper:word:xdigit:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(){}123456789\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @pcre2_pattern_convert_8(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.pcre2_output_context, align 8 ; 96 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = and i32 %2, 28                           ; 2 uses
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i32 %2, 128
  %i.f = tail call range(i32 0, 4) i32 @llvm.ctpop.i32(i32 %i.c)
  %or.cond4.not = icmp eq i32 %i.f, 1
  %or.cond91 = select i1 %.not, i1 %or.cond4.not, i1 false
  br i1 %or.cond91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !25
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @_pcre2_strlen_8(ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.077 = phi i64 [ %i.h, %bb.e ], [ %1, %bb.d ]  ; 7 uses
  %i.i = icmp eq ptr %5, null
  %spec.store.select = select i1 %i.i, ptr @_pcre2_default_convert_context_8, ptr %5 ; 3 uses
  %i.j = and i32 %2, 3
  %or.cond93 = icmp eq i32 %i.j, 1
  br i1 %or.cond93, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.k = call i32 @_pcre2_valid_utf_8(ptr noundef nonnull %0, i64 noundef %.077, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not87 = icmp eq i32 %i.k, 0
  br i1 %.not87, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.l, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.thread

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.f
  %.not88 = icmp eq ptr %3, null                  ; 3 uses
  br i1 %.not88, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load i64, ptr %4, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.069 = phi ptr [ %i.m, %bb.k ], [ %i.a, %bb.j ], [ %i.a, %bb.i ]
  %.067 = phi i64 [ %i.n, %bb.k ], [ 100, %bb.j ], [ 100, %bb.i ]
  %i.o = and i32 %2, 8
  %.not.i95 = icmp eq i32 %i.o, 0                 ; 5 uses
  %.not250102.i = icmp eq i64 %.077, 0            ; 3 uses
  %i.p = trunc i32 %2 to i1                       ; 6 uses
  %i.q = getelementptr i8, ptr %spec.store.select, i64 24
  %i.r = getelementptr i8, ptr %spec.store.select, i64 28
  %i.s = ptrtoaddr ptr %0 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.077 ; 20 uses
  %i.u = and i32 %2, 32
  %i.v = icmp eq i32 %i.u, 0                      ; 6 uses
  %.not.i = icmp samesign ult i32 %2, 64
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 47 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 83 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 33 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 26 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 4 uses
  %brmerge.not.i = icmp samesign ult i32 %2, 32
  %.not52.i = icmp eq i64 %.077, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 30
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 31
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.ma
  %.168156 = phi i64 [ %.067, %bb.l ], [ %i.ark, %bb.ma ] ; 4 uses
  %.170155 = phi ptr [ %.069, %bb.l ], [ %i.ari, %bb.ma ] ; 17 uses
  %i.ai = phi i1 [ true, %bb.l ], [ false, %bb.ma ]
  br i1 %.not88, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %3, align 8, !tbaa !27
  %i.ak = icmp ne ptr %i.aj, null
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not130.i = phi i1 [ false, %bb.m ], [ %i.ak, %bb.n ] ; 11 uses
  switch i32 %i.c, label %bb.lx [
    i32 16, label %bb.p
    i32 4, label %bb.jx
    i32 8, label %bb.jx
  ]

bb.p:                                             ; preds = %bb.o
  %spec.store.select.val = load i32, ptr %i.q, align 8, !tbaa !29 ; 3 uses
  %spec.store.select.val94 = load i32, ptr %i.r, align 4, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.al = trunc i32 %spec.store.select.val to i8  ; 13 uses
  %i.am = trunc i32 %spec.store.select.val94 to i8 ; 5 uses
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = and i32 %spec.store.select.val, 128
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = and i32 %spec.store.select.val94, 128
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %convert_glob.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = and i32 %spec.store.select.val, 255     ; 5 uses
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.ar, i64 15)
  store ptr %.170155, ptr %6, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.170155, i64 %.168156 ; 4 uses
  store ptr %i.as, ptr %i.w, align 8, !tbaa !33
  store i64 0, ptr %i.x, align 8, !tbaa !34
  store <4 x i8> <i8 40, i8 63, i8 115, i8 41>, ptr %i.y, align 8, !tbaa !35
  %.not225.i = icmp eq i64 %.168156, 0
  br i1 %.not225.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.170155, i64 1
  store i8 40, ptr %.170155, align 1, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.115.i.i = phi ptr [ %i.z, %bb.s ], [ %i.y, %bb.r ] ; 3 uses
  %.1.i.i = phi ptr [ %i.at, %bb.s ], [ %.170155, %bb.r ] ; 4 uses
  %i.au = icmp ult ptr %.1.i.i, %i.as
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.115.i.i, i64 1
  %i.aw = load i8, ptr %.115.i.i, align 1, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  store i8 %i.aw, ptr %.1.i.i, align 1, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.115.i.1.i = phi ptr [ %i.av, %bb.u ], [ %.115.i.i, %bb.t ] ; 3 uses
  %.1.i.1.i = phi ptr [ %i.ax, %bb.u ], [ %.1.i.i, %bb.t ] ; 4 uses
  %i.ay = icmp ult ptr %.1.i.1.i, %i.as
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.115.i.1.i, i64 1
  %i.ba = load i8, ptr %.115.i.1.i, align 1, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.1.i, i64 1
  store i8 %i.ba, ptr %.1.i.1.i, align 1, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.115.i.2.i = phi ptr [ %i.az, %bb.w ], [ %.115.i.1.i, %bb.v ]
  %.1.i.2.i = phi ptr [ %i.bb, %bb.w ], [ %.1.i.1.i, %bb.v ] ; 4 uses
  %i.bc = icmp ult ptr %.1.i.2.i, %i.as
  br i1 %i.bc, label %bb.y, label %convert_glob_write_str.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bd = load i8, ptr %.115.i.2.i, align 1, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i.2.i, i64 1
  store i8 %i.bd, ptr %.1.i.2.i, align 1, !tbaa !35
  br label %convert_glob_write_str.exit.i

convert_glob_write_str.exit.i:                    ; preds = %bb.y, %bb.x
  %.1.i.3.i = phi ptr [ %i.be, %bb.y ], [ %.1.i.2.i, %bb.x ] ; 5 uses
  %.not53.i = icmp eq ptr %memchr.i, null         ; 6 uses
  store ptr %.1.i.3.i, ptr %6, align 8, !tbaa !32
  store i64 4, ptr %i.x, align 8, !tbaa !34
  br i1 %.not250102.i, label %.critedge134.i, label %bb.z

bb.z:                                             ; preds = %convert_glob_write_str.exit.i
  %i.bf = load i8, ptr %0, align 1, !tbaa !35
  %i.bg = icmp eq i8 %i.bf, 42
  br i1 %i.bg, label %bb.aa, label %.critedge134.i

bb.aa:                                            ; preds = %bb.z
  br i1 %brmerge.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not52.i, label %.critedge134.i, label %.split.i

.split.i:                                         ; preds = %bb.ab
  %i.bh = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.bi = icmp eq i8 %i.bh, 42
  br i1 %i.bi, label %.lr.ph.i, label %.critedge134.i

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.v, label %.critedge134.i, label %.lr.ph.i

.critedge134.i:                                   ; preds = %bb.ac, %.split.i, %bb.ab, %bb.z, %convert_glob_write_str.exit.i
  store i8 92, ptr %i.y, align 8, !tbaa !35
  store i8 65, ptr %i.z, align 1, !tbaa !35
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !33  ; 2 uses
  %i.bk = icmp ult ptr %.1.i.3.i, %i.bj
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge134.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.3.i, i64 1
  store i8 92, ptr %.1.i.3.i, align 1, !tbaa !35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge134.i
  %.115.i143.i = phi ptr [ %i.z, %bb.ad ], [ %i.y, %.critedge134.i ]
  %.1.i144.i = phi ptr [ %i.bl, %bb.ad ], [ %.1.i.3.i, %.critedge134.i ] ; 4 uses
  %i.bm = icmp ult ptr %.1.i144.i, %i.bj
  br i1 %i.bm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bn = load i8, ptr %.115.i143.i, align 1, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i144.i, i64 1
  store i8 %i.bn, ptr %.1.i144.i, align 1, !tbaa !35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.i144.1.i = phi ptr [ %i.bo, %bb.af ], [ %.1.i144.i, %bb.ae ] ; 2 uses
  store ptr %.1.i144.1.i, ptr %6, align 8, !tbaa !32
  store i64 6, ptr %i.x, align 8, !tbaa !34
  br i1 %.not250102.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ac, %.split.i
  %.not296.i.i = icmp ne i8 %i.am, 0              ; 2 uses
  %i.bp = and i32 %spec.store.select.val94, 255   ; 3 uses
  %i.bq = zext nneg i32 %i.ar to i64              ; 12 uses
  %i.br = icmp eq i8 %i.al, 95
  %i.bs = icmp eq i8 %i.al, 9
  %i.bt = icmp eq i8 %i.al, 32
  %i.bu = or i1 %i.bs, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp ne i32 %i.bp, 0                    ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge.i, %.lr.ph.i
  %.09082.i = phi i32 [ 0, %.lr.ph.i ], [ %.090.be.i, %.backedge.i ] ; 14 uses
  %.09181.i = phi i32 [ 0, %.lr.ph.i ], [ %.091.be.i, %.backedge.i ] ; 12 uses
  %.080.i = phi ptr [ %0, %.lr.ph.i ], [ %.0.be.i, %.backedge.i ] ; 10 uses
  %.080104.i = ptrtoaddr ptr %.080.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.080.i, i64 1 ; 20 uses
  %i.by = load i8, ptr %.080.i, align 1, !tbaa !35 ; 3 uses
  switch i8 %i.by, label %bb.jh [
    i8 42, label %bb.ai
    i8 63, label %bb.ep
    i8 91, label %bb.ez
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.bz = icmp eq ptr %.080.i, %0                 ; 4 uses
  %.not121.i = icmp eq i32 %.09181.i, 0
  br i1 %.not121.i, label %convert_glob_write.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = load i64, ptr %i.x, align 8, !tbaa !34
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.x, align 8, !tbaa !34
  %i.cc = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ce = icmp ult ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.ak, label %convert_glob_write.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cf, ptr %6, align 8, !tbaa !32
  store i8 41, ptr %i.cc, align 1, !tbaa !35
  br label %convert_glob_write.exit.i

convert_glob_write.exit.i:                        ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.cg = icmp ult ptr %i.bx, %i.t                ; 2 uses
  %or.cond50.i = select i1 %.not.i, i1 %i.cg, i1 false
  br i1 %or.cond50.i, label %bb.al, label %bb.dc

bb.al:                                            ; preds = %convert_glob_write.exit.i
  %i.ch = load i8, ptr %i.bx, align 1, !tbaa !35
  %i.ci = icmp eq i8 %i.ch, 42
  br i1 %i.ci, label %bb.am, label %bb.dc

bb.am:                                            ; preds = %bb.al
  br i1 %i.bz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cj = getelementptr inbounds i8, ptr %.080.i, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35
  %i.cl = icmp eq i8 %i.ck, %i.al
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cm = phi i1 [ true, %bb.am ], [ %i.cl, %bb.an ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.080.i, i64 2 ; 3 uses
  %i.co = icmp ult ptr %i.cn, %i.t
  br i1 %i.co, label %.lr.ph323, label %convert_glob_write.exit260.i

bb.ap:                                            ; preds = %.lr.ph323
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 3 uses
  %i.cq = icmp ult ptr %i.cp, %i.t
  br i1 %i.cq, label %.lr.ph323, label %convert_glob_write.exit260.i, !llvm.loop !14

.lr.ph323:                                        ; preds = %bb.ao, %bb.ap
  %i.cr = phi ptr [ %i.cp, %bb.ap ], [ %i.cn, %bb.ao ] ; 6 uses
  %.115.i322 = phi ptr [ %i.cr, %bb.ap ], [ %i.bx, %bb.ao ]
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35  ; 3 uses
  %i.ct = icmp eq i8 %i.cs, 42
  br i1 %i.ct, label %bb.ap, label %bb.aq, !llvm.loop !14
end_hunk_0
