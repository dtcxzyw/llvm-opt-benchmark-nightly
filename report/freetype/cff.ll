Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_parser_run:bb.a
  %i.cx = load i8, ptr %i.ct, align 4, !tbaa !517
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.1136223, i64 %i.cy
  %i.da = add i32 %.3221, -1                      ; 2 uses
  %.not170 = icmp eq i32 %i.da, 0
  br i1 %.not170, label %.thread185, label %bb.ae, !llvm.loop !510

bb.af:                                            ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %.0140219.lcssa, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !520
  %i.dd = tail call i32 %i.dc(ptr noundef nonnull %0) #18 ; 2 uses
  %.not172 = icmp eq i32 %i.dd, 0
  br i1 %.not172, label %.loopexit, label %.thread199

.lr.ph269:                                        ; preds = %bb.l, %bb.m
  %.0140219268 = phi ptr [ %i.au, %bb.m ], [ @cff_field_handlers, %bb.l ] ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0140219268, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !514
  %i.dg = icmp eq i32 %i.df, %i.am
  br i1 %i.dg, label %._crit_edge.loopexit.split.loop.exit289, label %.lr.ph269.1

.loopexit:                                        ; preds = %bb.ac, %bb.af
  %.not173 = icmp eq i32 %.lcssa, 9
  br i1 %.not173, label %.thread194, label %.thread185

.thread185:                                       ; preds = %.lr.ph269.3, %bb.ae, %.thread, %bb.ad, %bb.w, %bb.v, %bb.u, %bb.t, %.loopexit
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !250
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !252
  br label %.thread194

.thread194:                                       ; preds = %.lr.ph274, %bb.e, %bb.f, %bb.g, %.loopexit, %.thread185
  %.4153 = phi ptr [ %.2151, %.thread185 ], [ %spec.select, %bb.g ], [ %i.ad, %bb.e ], [ %i.ae, %bb.f ], [ %.2151, %.loopexit ], [ %.1150273, %.lr.ph274 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.4153, i64 1 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %2
  br i1 %i.dj, label %bb.b, label %.thread199

.thread199:                                       ; preds = %.thread194, %bb.c, %bb.af, %bb.n, %bb.j, %bb.h, %.preheader.preheader, %.preheader, %bb.a
  %.0155 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 6, %bb.n ], [ %i.dd, %bb.af ], [ 6, %bb.c ], [ 6, %bb.j ], [ 0, %.thread194 ], [ 6, %bb.h ], [ 0, %.preheader.preheader ]
  ret i32 %.0155
}

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -140737488355328, 140737488355328) i64 @cff_parse_num(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(address) %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !130 ; 5 uses
  switch i8 %i.a, label %bb.d [
    i8 30, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = tail call fastcc i64 @cff_parse_real(ptr noundef nonnull %.0.val, ptr noundef %i.c, i64 noundef 0, ptr noundef null)
  %i.e = ashr i64 %i.d, 16
  br label %cff_parse_integer.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !130
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !130
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !130
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = shl nuw i64 %i.r, 40
  %i.t = add i64 %i.s, 140737488355328
  %i.u = ashr i64 %i.t, 48
  br label %cff_parse_integer.exit

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !281  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 1 ; 7 uses
  %i.y = zext i8 %i.a to i32                      ; 3 uses
  switch i8 %i.a, label %bb.i [
    i8 28, label %bb.e
    i8 29, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.aa = icmp ule ptr %i.z, %i.w
  %.not37.i = icmp ult ptr %i.w, %i.x
  %or.cond.i = select i1 %i.aa, i1 true, i1 %.not37.i
  br i1 %or.cond.i, label %bb.f, label %cff_parse_integer.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !130
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw i16 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !130
  %i.ag = zext i8 %i.af to i16
  %i.ah = or disjoint i16 %i.ad, %i.ag
  %i.ai = sext i16 %i.ah to i64
  br label %cff_parse_integer.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  %i.ak = icmp ule ptr %i.aj, %i.w
  %.not36.i = icmp ult ptr %i.w, %i.x
  %or.cond38.i = select i1 %i.ak, i1 true, i1 %.not36.i
  br i1 %or.cond38.i, label %bb.h, label %cff_parse_integer.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.x, align 1
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = zext i32 %i.am to i64
  br label %cff_parse_integer.exit

bb.i:                                             ; preds = %bb.d
  %i.ao = icmp ult i8 %i.a, -9
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %i.y, -139
  %i.aq = sext i32 %i.ap to i64
  br label %cff_parse_integer.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp samesign ult i8 %i.a, -5
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.at = icmp ule ptr %i.as, %i.w
  %.not35.i = icmp ult ptr %i.w, %i.x
  %or.cond39.i = select i1 %i.at, i1 true, i1 %.not35.i ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond39.i, label %bb.m, label %cff_parse_integer.exit

bb.m:                                             ; preds = %bb.l
  %i.au = shl nuw nsw i32 %i.y, 8
  %i.av = load i8, ptr %i.x, align 1, !tbaa !130
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.au, -63124
  %i.ay = add nuw nsw i32 %i.ax, %i.aw
  %i.az = zext nneg i32 %i.ay to i64
  br label %cff_parse_integer.exit

bb.n:                                             ; preds = %bb.k
  br i1 %or.cond39.i, label %bb.o, label %cff_parse_integer.exit

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nuw nsw i32 %i.y, 8
  %i.bb = load i8, ptr %i.x, align 1, !tbaa !130
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = sub nsw i32 64148, %i.bd
  %i.bf = sext i32 %i.be to i64
  br label %cff_parse_integer.exit

cff_parse_integer.exit:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.u, %bb.c ], [ %i.bf, %bb.o ], [ %i.ai, %bb.f ], [ %i.an, %bb.h ], [ %i.aq, %bb.j ], [ %i.az, %bb.m ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 162) i32 @cff_parse_font_matrix(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %i.b = alloca [6 x i64], align 16               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.not = icmp ult ptr %i.k, %i.l
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 1, ptr %i.m, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.t
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %.07089 = phi i64 [ -9223372036854775808, %bb.b ], [ %.2, %bb.t ] ; 2 uses
  %.07288 = phi i64 [ 9223372036854775807, %bb.b ], [ %.173, %bb.t ] ; 2 uses
  %.07487 = phi ptr [ %i.i, %bb.b ], [ %i.o, %bb.t ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07487, i64 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %.074.val = load ptr, ptr %.07487, align 8, !tbaa !127 ; 7 uses
  %i.q = load i8, ptr %.074.val, align 1, !tbaa !130 ; 5 uses
  %i.r = icmp eq i8 %i.q, 30
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !281  ; 7 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.074.val, ptr noundef %i.s, i64 noundef 0, ptr noundef nonnull %i.p)
  br label %cff_parse_fixed_dynamic.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.074.val, i64 1 ; 7 uses
  %i.v = zext i8 %i.q to i32                      ; 3 uses
  switch i8 %i.q, label %bb.i [
    i8 28, label %bb.f
    i8 29, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.074.val, i64 3
  %i.x = icmp ule ptr %i.w, %i.s
  %.not37.i.i = icmp ult ptr %i.s, %i.u
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %.not37.i.i
  br i1 %or.cond.i.i, label %bb.g, label %cff_parse_integer.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.u, align 1, !tbaa !130
  %i.z = zext i8 %i.y to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.074.val, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !130
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  %i.af = sext i16 %i.ae to i64
  br label %cff_parse_integer.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.074.val, i64 5
  %i.ah = icmp ule ptr %i.ag, %i.s
  %.not36.i.i = icmp ult ptr %i.s, %i.u
  %or.cond38.i.i = select i1 %i.ah, i1 true, i1 %.not36.i.i
  br i1 %or.cond38.i.i, label %cff_parse_integer.exit.i, label %cff_parse_integer.exit.thread.i

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult i8 %i.q, -9
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.v, -139
  %i.ak = sext i32 %i.aj to i64
  br label %cff_parse_integer.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.al = icmp samesign ult i8 %i.q, -5
  %i.am = getelementptr inbounds nuw i8, ptr %.074.val, i64 2
  %i.an = icmp ule ptr %i.am, %i.s
  %.not35.i.i = icmp ult ptr %i.s, %i.u
  %or.cond39.i.i = select i1 %i.an, i1 true, i1 %.not35.i.i ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond39.i.i, label %bb.m, label %cff_parse_integer.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ao = shl nuw nsw i32 %i.v, 8
  %i.ap = load i8, ptr %i.u, align 1, !tbaa !130
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.ao, -63124
  %i.as = add nuw nsw i32 %i.ar, %i.aq
  %i.at = zext nneg i32 %i.as to i64
  br label %cff_parse_integer.exit.thread.i

bb.n:                                             ; preds = %bb.k
  br i1 %or.cond39.i.i, label %bb.o, label %cff_parse_integer.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.au = shl nuw nsw i32 %i.v, 8
  %i.av = load i8, ptr %i.u, align 1, !tbaa !130
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = sub nsw i32 64148, %i.ax
  %i.az = sext i32 %i.ay to i64
  br label %cff_parse_integer.exit.thread.i

cff_parse_integer.exit.i:                         ; preds = %bb.h
  %1 = load i32, ptr %i.u, align 1
  %2 = call i32 @llvm.bswap.i32(i32 %1)           ; 7 uses
  %i.ba = zext i32 %2 to i64                      ; 4 uses
  %i.bb = icmp ugt i32 %2, 32767
  br i1 %i.bb, label %.preheader.preheader.i, label %cff_parse_integer.exit.thread.i

.preheader.preheader.i:                           ; preds = %cff_parse_integer.exit.i
  %i.bc = icmp ult i32 %2, 100000
  br i1 %i.bc, label %bb.p, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bd = icmp ult i32 %2, 1000000
  br i1 %i.bd, label %bb.p, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.be = icmp ult i32 %2, 10000000
  br i1 %i.be, label %bb.p, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bf = icmp ult i32 %2, 100000000
  br i1 %i.bf, label %bb.p, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bg = icmp ult i32 %2, 1000000000
  %spec.select.i = select i1 %i.bg, i32 9, i32 10
  br label %bb.p

bb.p:                                             ; preds = %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.0.lcssa.i = phi i32 [ 5, %.preheader.preheader.i ], [ 8, %.preheader.3.i ], [ 6, %.preheader.1.i ], [ %spec.select.i, %.preheader.4.i ], [ 7, %.preheader.2.i ] ; 2 uses
  %i.bh = add nsw i32 %.0.lcssa.i, -5
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !116 ; 2 uses
  %i.bl = sdiv i64 %i.ba, %i.bk
  %i.bm = icmp sgt i64 %i.bl, 32767
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %.0.lcssa.i, -4
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  store i64 %i.bo, ptr %i.p, align 8, !tbaa !116
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = call i64 @FT_DivFix(i64 noundef %i.ba, i64 noundef %i.bq) #18
  br label %cff_parse_fixed_dynamic.exit

bb.r:                                             ; preds = %bb.p
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !116
  %i.bs = call i64 @FT_DivFix(i64 noundef %i.ba, i64 noundef %i.bk) #18
  br label %cff_parse_fixed_dynamic.exit

cff_parse_integer.exit.thread.i:                  ; preds = %cff_parse_integer.exit.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f
  %.0.i2.i = phi i64 [ %i.ba, %cff_parse_integer.exit.i ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.n ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %i.af, %bb.g ], [ %i.az, %bb.o ]
  store i64 0, ptr %i.p, align 8, !tbaa !116
  %i.bt = shl nsw i64 %.0.i2.i, 16
  br label %cff_parse_fixed_dynamic.exit

cff_parse_fixed_dynamic.exit:                     ; preds = %bb.d, %bb.q, %bb.r, %cff_parse_integer.exit.thread.i
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.br, %bb.q ], [ %i.bs, %bb.r ], [ %i.bt, %cff_parse_integer.exit.thread.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %.1.i, ptr %i.bu, align 8, !tbaa !116
  %.not83 = icmp eq i64 %.1.i, 0
  br i1 %.not83, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cff_parse_fixed_dynamic.exit
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !116 ; 2 uses
  %spec.select = call i64 @llvm.smax.i64(i64 %i.bv, i64 %.07089)
  %spec.select85 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %.07288)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %cff_parse_fixed_dynamic.exit
  %.173 = phi i64 [ %.07288, %cff_parse_fixed_dynamic.exit ], [ %spec.select85, %bb.s ] ; 2 uses
  %.2 = phi i64 [ %.07089, %cff_parse_fixed_dynamic.exit ], [ %spec.select, %bb.s ] ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.u, label %bb.c, !llvm.loop !521

bb.u:                                             ; preds = %bb.t
  %i.bw = add i64 %.2, -1
  %or.cond = icmp ult i64 %i.bw, -10
  %i.bx = sub nsw i64 %.2, %.173
  %or.cond84 = icmp ugt i64 %i.bx, 9
  %or.cond86 = select i1 %or.cond, i1 true, i1 %or.cond84
  br i1 %or.cond86, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  %i.by = load i64, ptr %i.a, align 16, !tbaa !116 ; 6 uses
  %.not82 = icmp eq i64 %i.by, 0
  br i1 %.not82, label %.preheader.1, label %bb.v

bb.v:                                             ; preds = %.preheader.preheader
  %i.bz = load i64, ptr %i.b, align 16, !tbaa !116
  %i.ca = sub nsw i64 %.2, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr @power_tens, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !116 ; 2 uses
  %i.cd = ashr i64 %i.cc, 1                       ; 4 uses
  %i.ce = icmp slt i64 %i.by, 0
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = or disjoint i64 %i.cd, -9223372036854775808
  %i.cg = icmp samesign ult i64 %i.cf, %i.by
  %i.ch = sub nuw nsw i64 %i.by, %i.cd
  %spec.select110.a = select i1 %i.cg, i64 %i.ch, i64 -9223372036854775808
  br label %.preheader.1.sink.split

bb.x:                                             ; preds = %bb.v
  %i.ci = sub nsw i64 9223372036854775807, %i.cd
  %i.cj = icmp samesign ugt i64 %i.ci, %i.by
  %i.ck = add nsw i64 %i.cd, %i.by
  %spec.select111.a = select i1 %i.cj, i64 %i.ck, i64 9223372036854775807
  br label %.preheader.1.sink.split

.preheader.1.sink.split:                          ; preds = %bb.x, %bb.w
  %.sink = phi i64 [ %spec.select110.a, %bb.w ], [ %spec.select111.a, %bb.x ]
  %i.cl = sdiv i64 %.sink, %i.cc
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.sink.split, %.preheader.preheader
  %i.cm = phi i64 [ 0, %.preheader.preheader ], [ %i.cl, %.preheader.1.sink.split ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !116 ; 6 uses
  %.not82.1 = icmp eq i64 %i.co, 0
  br i1 %.not82.1, label %.preheader.2, label %bb.y

bb.y:                                             ; preds = %.preheader.1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !116
  %i.cr = sub nsw i64 %.2, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr @power_tens, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !116 ; 2 uses
  %i.cu = ashr i64 %i.ct, 1                       ; 4 uses
  %i.cv = icmp slt i64 %i.co, 0
  br i1 %i.cv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = sub nsw i64 9223372036854775807, %i.cu
  %i.cx = icmp samesign ugt i64 %i.cw, %i.co
  %i.cy = add nsw i64 %i.cu, %i.co
  %spec.select112.a = select i1 %i.cx, i64 %i.cy, i64 9223372036854775807
  br label %.preheader.2.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.cz = or disjoint i64 %i.cu, -9223372036854775808
  %i.da = icmp samesign ult i64 %i.cz, %i.co
  %i.db = sub nuw nsw i64 %i.co, %i.cu
  %spec.select113.a = select i1 %i.da, i64 %i.db, i64 -9223372036854775808
  br label %.preheader.2.sink.split

.preheader.2.sink.split:                          ; preds = %bb.aa, %bb.z
  %.sink105.a = phi i64 [ %spec.select113.a, %bb.aa ], [ %spec.select112.a, %bb.z ]
  %i.dc = sdiv i64 %.sink105.a, %i.ct
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2.sink.split, %.preheader.1
  %i.dd = phi i64 [ 0, %.preheader.1 ], [ %i.dc, %.preheader.2.sink.split ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.df = load i64, ptr %i.de, align 16, !tbaa !116 ; 6 uses
  %.not82.2 = icmp eq i64 %i.df, 0
  br i1 %.not82.2, label %.preheader.3, label %bb.ab

bb.ab:                                            ; preds = %.preheader.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dh = load i64, ptr %i.dg, align 16, !tbaa !116
  %i.di = sub nsw i64 %.2, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr @power_tens, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !116 ; 2 uses
  %i.dl = ashr i64 %i.dk, 1                       ; 4 uses
  %i.dm = icmp slt i64 %i.df, 0
  br i1 %i.dm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = sub nsw i64 9223372036854775807, %i.dl
  %i.do = icmp samesign ugt i64 %i.dn, %i.df
  %i.dp = add nsw i64 %i.dl, %i.df
  %spec.select114.a = select i1 %i.do, i64 %i.dp, i64 9223372036854775807
  br label %.preheader.3.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.dq = or disjoint i64 %i.dl, -9223372036854775808
  %i.dr = icmp samesign ult i64 %i.dq, %i.df
  %i.ds = sub nuw nsw i64 %i.df, %i.dl
  %spec.select115.a = select i1 %i.dr, i64 %i.ds, i64 -9223372036854775808
  br label %.preheader.3.sink.split

.preheader.3.sink.split:                          ; preds = %bb.ad, %bb.ac
  %.sink106.a = phi i64 [ %spec.select115.a, %bb.ad ], [ %spec.select114.a, %bb.ac ]
  %i.dt = sdiv i64 %.sink106.a, %i.dk
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3.sink.split, %.preheader.2
  %i.du = phi i64 [ 0, %.preheader.2 ], [ %i.dt, %.preheader.3.sink.split ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !116 ; 6 uses
  %.not82.3 = icmp eq i64 %i.dw, 0
  br i1 %.not82.3, label %.preheader.4, label %bb.ae

bb.ae:                                            ; preds = %.preheader.3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !116
  %i.dz = sub nsw i64 %.2, %i.dy
  %i.ea = getelementptr inbounds [8 x i8], ptr @power_tens, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !116 ; 2 uses
  %i.ec = ashr i64 %i.eb, 1                       ; 4 uses
  %i.ed = icmp slt i64 %i.dw, 0
  br i1 %i.ed, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = sub nsw i64 9223372036854775807, %i.ec
  %i.ef = icmp samesign ugt i64 %i.ee, %i.dw
  %i.eg = add nsw i64 %i.ec, %i.dw
  %spec.select116.a = select i1 %i.ef, i64 %i.eg, i64 9223372036854775807
  br label %.preheader.4.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.eh = or disjoint i64 %i.ec, -9223372036854775808
  %i.ei = icmp samesign ult i64 %i.eh, %i.dw
  %i.ej = sub nuw nsw i64 %i.dw, %i.ec
  %spec.select117.a = select i1 %i.ei, i64 %i.ej, i64 -9223372036854775808
  br label %.preheader.4.sink.split

.preheader.4.sink.split:                          ; preds = %bb.ag, %bb.af
  %.sink107.a = phi i64 [ %spec.select117.a, %bb.ag ], [ %spec.select116.a, %bb.af ]
  %i.ek = sdiv i64 %.sink107.a, %i.eb
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.4.sink.split, %.preheader.3
  %i.el = phi i64 [ 0, %.preheader.3 ], [ %i.ek, %.preheader.4.sink.split ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.en = load i64, ptr %i.em, align 16, !tbaa !116 ; 6 uses
  %.not82.4 = icmp eq i64 %i.en, 0
  br i1 %.not82.4, label %.preheader.5, label %bb.ah

bb.ah:                                            ; preds = %.preheader.4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ep = load i64, ptr %i.eo, align 16, !tbaa !116
  %i.eq = sub nsw i64 %.2, %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr @power_tens, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116 ; 2 uses
  %i.et = ashr i64 %i.es, 1                       ; 4 uses
  %i.eu = icmp slt i64 %i.en, 0
  br i1 %i.eu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = sub nsw i64 9223372036854775807, %i.et
  %i.ew = icmp samesign ugt i64 %i.ev, %i.en
  %i.ex = add nsw i64 %i.et, %i.en
  %spec.select118.a = select i1 %i.ew, i64 %i.ex, i64 9223372036854775807
  br label %.preheader.5.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.ey = or disjoint i64 %i.et, -9223372036854775808
  %i.ez = icmp samesign ult i64 %i.ey, %i.en
end_hunk_0
begin_hunk_1_@cff_parse_blend:bb.a
  %i.au = icmp ugt i32 %i.ak, %i.at
  br i1 %i.au, label %cff_blend_doBlend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = mul i32 %i.aa, 5                        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 1128 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !259 ; 2 uses
  %i.ay = add i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1132 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !531 ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 1112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !257 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !258 ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = add i32 %i.ba, %i.av
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @ft_mem_qrealloc(ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.bg, i64 noundef %i.bi, ptr noundef %i.bd, ptr noundef nonnull %i.a) #18 ; 4 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !257
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not.i29 = icmp eq i32 %i.bk, 0
  br i1 %.not.i29, label %bb.l, label %cff_blend_doBlend.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.aw, align 8, !tbaa !259 ; 5 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !258
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !531
  %i.bp = add i32 %i.bo, %i.av
  store i32 %i.bp, ptr %i.az, align 4, !tbaa !531
  %.not93.i = icmp eq ptr %i.bd, null
  %.not94.i = icmp eq ptr %i.bj, %i.bd
  %or.cond102.i = select i1 %.not93.i, i1 true, i1 %.not94.i
  br i1 %or.cond102.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !250 ; 8 uses
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !252 ; 3 uses
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i.preheader, label %.thread.i

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bw = ptrtoaddr ptr %i.bu to i64
  %i.bx = ptrtoaddr ptr %i.bt to i64
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %i.by, %i.bw                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %broadcast.splat56 = shufflevector <2 x ptr> %broadcast.splatinsert55, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue66, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue66 ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ce ; 3 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep57 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep58 = getelementptr i8, ptr %i.cg, i64 16
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep59 = getelementptr i8, ptr %i.ch, i64 24
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !127 ; 4 uses
  %wide.load60 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !127 ; 4 uses
  %i.cj = icmp uge <2 x ptr> %wide.load, %broadcast.splat
  %i.ck = icmp uge <2 x ptr> %wide.load60, %broadcast.splat
  %i.cl = icmp ult <2 x ptr> %wide.load, %broadcast.splat56
  %i.cm = icmp ult <2 x ptr> %wide.load60, %broadcast.splat56
  %i.cn = select <2 x i1> %i.cj, <2 x i1> %i.cl, <2 x i1> zeroinitializer ; 2 uses
  %i.co = select <2 x i1> %i.ck, <2 x i1> %i.cm, <2 x i1> zeroinitializer ; 2 uses
  %i.cp = extractelement <2 x i1> %i.cn, i64 0
  br i1 %i.cp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cq = extractelement <2 x ptr> %wide.load, i64 0
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.bs
  store ptr %i.cr, ptr %next.gep, align 8, !tbaa !127
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cs = extractelement <2 x i1> %i.cn, i64 1
  br i1 %i.cs, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue
  %i.ct = extractelement <2 x ptr> %wide.load, i64 1
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bs
  store ptr %i.cu, ptr %next.gep57, align 8, !tbaa !127
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue
  %i.cv = extractelement <2 x i1> %i.co, i64 0
  br i1 %i.cv, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cw = extractelement <2 x ptr> %wide.load60, i64 0
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.bs
  store ptr %i.cx, ptr %next.gep58, align 8, !tbaa !127
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.cy = extractelement <2 x i1> %i.co, i64 1
  br i1 %i.cy, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.cz = extractelement <2 x ptr> %wide.load60, i64 1
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.bs
  store ptr %i.da, ptr %next.gep59, align 8, !tbaa !127
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %pred.store.continue66
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.thread.i, label %.lr.ph.i.preheader68

.lr.ph.i.preheader68:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.082103.i.ph = phi ptr [ %i.bt, %.lr.ph.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader68, %bb.o
  %.082103.i = phi ptr [ %i.df, %bb.o ], [ %.082103.i.ph, %.lr.ph.i.preheader68 ] ; 3 uses
  %i.dc = load ptr, ptr %.082103.i, align 8, !tbaa !127 ; 3 uses
  %.not95.i = icmp uge ptr %i.dc, %i.bd
  %i.dd = icmp ult ptr %i.dc, %i.bf
  %or.cond.i = select i1 %.not95.i, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.bs
  store ptr %i.de, ptr %.082103.i, align 8, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %.082103.i, i64 8 ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.bu
  br i1 %i.dg, label %.lr.ph.i, label %.thread.i, !llvm.loop !528

.thread.i:                                        ; preds = %bb.o, %middle.block, %bb.m, %bb.l, %bb.j
  %i.dh = phi i32 [ %i.ax, %bb.j ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ], [ %i.bl, %middle.block ], [ %i.bl, %bb.o ]
  %i.di = add i32 %i.dh, %i.av
  store i32 %i.di, ptr %i.aw, align 8, !tbaa !259
  %i.dj = sub nuw i32 %i.at, %i.ak                ; 2 uses
  %i.dk = add i32 %i.dj, %i.aa                    ; 2 uses
  %.not114.i = icmp eq i32 %i.aa, 0
  br i1 %.not114.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 10 uses
  %wide.trip.count.i = and i64 %i.z, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph112.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph112.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.085110.i = phi i32 [ %i.dk, %.lr.ph112.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !270
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.dq = trunc nuw i64 %indvars.iv.i to i32
  %i.dr = add i32 %i.dj, %i.dq
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %.val96.i = load ptr, ptr %i.dt, align 8, !tbaa !127
  %i.du = call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val96.i, i64 noundef 0) ; 2 uses
  %i.dv = load i32, ptr %i.ai, align 8, !tbaa !269 ; 2 uses
  %i.dw = icmp ugt i32 %i.dv, 1
  br i1 %i.dw, label %.lr.ph108.i, label %._crit_edge.i

.lr.ph108.i:                                      ; preds = %bb.p, %do_fixed.exit.i
  %i.dx = phi i32 [ %i.fv, %do_fixed.exit.i ], [ %i.dv, %bb.p ] ; 4 uses
  %.0107.i = phi i64 [ %i.gd, %do_fixed.exit.i ], [ %i.du, %bb.p ]
  %.pn106.i = phi ptr [ %.080.i, %do_fixed.exit.i ], [ %i.do, %bb.p ]
  %.083105.i = phi i32 [ %i.ge, %do_fixed.exit.i ], [ 1, %bb.p ]
  %.1104.i = phi i32 [ %i.dz, %do_fixed.exit.i ], [ %.085110.i, %bb.p ] ; 2 uses
  %.080.i = getelementptr inbounds nuw i8, ptr %.pn106.i, i64 4 ; 2 uses
  %i.dy = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.dz = add i32 %.1104.i, 1                     ; 2 uses
  %i.ea = zext i32 %.1104.i to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  %.val.i = load ptr, ptr %i.eb, align 8, !tbaa !127 ; 8 uses
  %i.ec = load i8, ptr %.val.i, align 1, !tbaa !130 ; 5 uses
  switch i8 %i.ec, label %bb.s [
    i8 30, label %bb.q
    i8 -1, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph108.i
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !281
  %i.ee = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.val.i, ptr noundef %i.ed, i64 noundef 0, ptr noundef null)
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !269
  br label %do_fixed.exit.i

bb.r:                                             ; preds = %.lr.ph108.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = call i32 @llvm.bswap.i32(i32 %i.eg)
  %i.ei = sext i32 %i.eh to i64
  br label %do_fixed.exit.i

bb.s:                                             ; preds = %.lr.ph108.i
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !281 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 7 uses
  %i.el = zext i8 %i.ec to i32                    ; 3 uses
  switch i8 %i.ec, label %bb.v [
    i8 28, label %bb.t
    i8 29, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.en = icmp ule ptr %i.em, %i.ej
  %.not37.i.i.i = icmp ult ptr %i.ej, %i.ek
  %or.cond.i.i.i = select i1 %i.en, i1 true, i1 %.not37.i.i.i
  br i1 %or.cond.i.i.i, label %cff_parse_integer.exit.i.thread.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.u:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.ep = icmp ule ptr %i.eo, %i.ej
  %.not36.i.i.i = icmp ult ptr %i.ej, %i.ek
  %or.cond38.i.i.i = select i1 %i.ep, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond38.i.i.i, label %cff_parse_integer.exit.i.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.v:                                             ; preds = %bb.s
  %i.eq = icmp ult i8 %i.ec, -9
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.er = add nsw i32 %i.el, -139
  %i.es = sext i32 %i.er to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

bb.x:                                             ; preds = %bb.v
  %i.et = icmp samesign ult i8 %i.ec, -5
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.ev = icmp ule ptr %i.eu, %i.ej
  %.not35.i.i.i = icmp ult ptr %i.ej, %i.ek
  %or.cond39.i.i.i = select i1 %i.ev, i1 true, i1 %.not35.i.i.i ; 2 uses
  br i1 %i.et, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %or.cond39.i.i.i, label %bb.z, label %cff_parse_integer.exit.i.thread.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ew = shl nuw nsw i32 %i.el, 8
  %i.ex = load i8, ptr %i.ek, align 1, !tbaa !130
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ew, -63124
  %i.fa = add nuw nsw i32 %i.ez, %i.ey
  %i.fb = zext nneg i32 %i.fa to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

bb.aa:                                            ; preds = %bb.x
  br i1 %or.cond39.i.i.i, label %bb.ab, label %cff_parse_integer.exit.i.thread.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.fc = shl nuw nsw i32 %i.el, 8
  %i.fd = load i8, ptr %i.ek, align 1, !tbaa !130
  %i.fe = zext i8 %i.fd to i32
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %i.fg = sub nsw i32 64148, %i.ff
  %i.fh = sext i32 %i.fg to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

cff_parse_integer.exit.i.i:                       ; preds = %bb.u
  %1 = load i32, ptr %i.ek, align 1
  %2 = call i32 @llvm.bswap.i32(i32 %1)           ; 2 uses
  %i.fi = zext nneg i32 %2 to i64
  %i.fj = icmp ugt i32 %2, 32767
  br i1 %i.fj, label %do_fixed.exit.i, label %cff_parse_integer.exit.i.thread.thread.i

cff_parse_integer.exit.i.thread.thread.i:         ; preds = %cff_parse_integer.exit.i.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.u, %bb.t
  %.0.i.i99.ph.i = phi i64 [ %i.fh, %bb.ab ], [ %i.es, %bb.w ], [ %i.fb, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ], [ %i.fi, %cff_parse_integer.exit.i.i ]
  %i.fk = shl nsw i64 %.0.i.i99.ph.i, 16
  br label %do_fixed.exit.i

cff_parse_integer.exit.i.thread.i:                ; preds = %bb.t
  %i.fl = load i8, ptr %i.ek, align 1, !tbaa !130
  %i.fm = zext i8 %i.fl to i16
  %i.fn = shl nuw i16 %i.fm, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !130
  %i.fq = zext i8 %i.fp to i16
  %i.fr = or disjoint i16 %i.fn, %i.fq
  %.fr.i = freeze i16 %i.fr                       ; 2 uses
  %i.fs = sext i16 %.fr.i to i64
  %i.ft = icmp eq i16 %.fr.i, -32768
  %i.fu = shl nsw i64 %i.fs, 16
  %spec.select.i = select i1 %i.ft, i64 -2147483647, i64 %i.fu
  br label %do_fixed.exit.i

do_fixed.exit.i:                                  ; preds = %cff_parse_integer.exit.i.thread.i, %cff_parse_integer.exit.i.thread.thread.i, %cff_parse_integer.exit.i.i, %bb.r, %bb.q
  %i.fv = phi i32 [ %.pre.i, %bb.q ], [ %i.dx, %bb.r ], [ %i.dx, %cff_parse_integer.exit.i.i ], [ %i.dx, %cff_parse_integer.exit.i.thread.thread.i ], [ %i.dx, %cff_parse_integer.exit.i.thread.i ] ; 2 uses
  %.2.i.i = phi i64 [ %i.ee, %bb.q ], [ %i.ei, %bb.r ], [ 2147483647, %cff_parse_integer.exit.i.i ], [ %i.fk, %cff_parse_integer.exit.i.thread.thread.i ], [ %spec.select.i, %cff_parse_integer.exit.i.thread.i ]
  %i.fw = load i32, ptr %.080.i, align 4, !tbaa !67
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul i64 %.2.i.i, %i.fx                  ; 2 uses
  %i.fz = ashr i64 %i.fy, 63
  %i.ga = add i64 %i.fy, 32768
  %i.gb = add i64 %i.ga, %i.fz
  %i.gc = ashr i64 %i.gb, 16
  %i.gd = add nsw i64 %i.gc, %.0107.i             ; 2 uses
  %i.ge = add nuw i32 %.083105.i, 1               ; 2 uses
  %i.gf = icmp ult i32 %i.ge, %i.fv
  br i1 %i.gf, label %.lr.ph108.i, label %._crit_edge.i, !llvm.loop !529

._crit_edge.i:                                    ; preds = %do_fixed.exit.i, %bb.p
  %.1.lcssa.i = phi i32 [ %.085110.i, %bb.p ], [ %i.dz, %do_fixed.exit.i ]
  %.0.lcssa.i = phi i64 [ %i.du, %bb.p ], [ %i.gd, %do_fixed.exit.i ] ; 4 uses
  %i.gg = load ptr, ptr %i.dn, align 8, !tbaa !258 ; 3 uses
  %i.gh = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ds
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !127
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gj, ptr %i.dn, align 8, !tbaa !258
  store i8 -1, ptr %i.gg, align 1, !tbaa !130
  %i.gk = lshr i64 %.0.lcssa.i, 24
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = load ptr, ptr %i.dn, align 8, !tbaa !258 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store ptr %i.gn, ptr %i.dn, align 8, !tbaa !258
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !130
  %i.go = lshr i64 %.0.lcssa.i, 16
  %i.gp = trunc i64 %i.go to i8
  %i.gq = load ptr, ptr %i.dn, align 8, !tbaa !258 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store ptr %i.gr, ptr %i.dn, align 8, !tbaa !258
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !130
  %i.gs = lshr i64 %.0.lcssa.i, 8
  %i.gt = trunc i64 %i.gs to i8
  %i.gu = load ptr, ptr %i.dn, align 8, !tbaa !258 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  store ptr %i.gv, ptr %i.dn, align 8, !tbaa !258
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !130
  %i.gw = trunc i64 %.0.lcssa.i to i8
  %i.gx = load ptr, ptr %i.dn, align 8, !tbaa !258 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.gy, ptr %i.dn, align 8, !tbaa !258
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !130
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge113.loopexit.i, label %bb.p, !llvm.loop !530

._crit_edge113.loopexit.i:                        ; preds = %._crit_edge.i
  %.pre117.pre.i = load i32, ptr %i.a, align 4, !tbaa !67
  br label %._crit_edge113.i

._crit_edge113.i:                                 ; preds = %._crit_edge113.loopexit.i, %.thread.i
  %.pre117.i = phi i32 [ %.pre117.pre.i, %._crit_edge113.loopexit.i ], [ 0, %.thread.i ]
  %i.gz = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.ha = zext i32 %i.dk to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ha
  store ptr %i.hb, ptr %i.w, align 8, !tbaa !252
  br label %cff_blend_doBlend.exit

cff_blend_doBlend.exit:                           ; preds = %bb.i, %bb.k, %._crit_edge113.i
  %i.hc = phi i32 [ %i.bk, %bb.k ], [ %.pre117.i, %._crit_edge113.i ], [ 161, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 1049
  store i8 1, ptr %i.hd, align 1, !tbaa !283
  br label %bb.ac

bb.ac:                                            ; preds = %cff_blend_check_vector.exit, %bb.a, %bb.b, %bb.h, %cff_blend_doBlend.exit
  %.0 = phi i32 [ %i.v, %bb.h ], [ 3, %bb.a ], [ %i.hc, %cff_blend_doBlend.exit ], [ 3, %bb.b ], [ 3, %cff_blend_check_vector.exit ]
  ret i32 %.0
}

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @cff_parse_real(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef range(i64 0, 4) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %.preheader320, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !116
  br label %.preheader320

.preheader320:                                    ; preds = %bb.b, %bb.a
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.j, %.preheader320
  %.0165.ph.ph = phi ptr [ %.1166, %bb.j ], [ %0, %.preheader320 ]
  %.0159.ph.ph = phi i32 [ %i.i, %bb.j ], [ 4, %.preheader320 ]
  %.0152.ph.ph = phi i64 [ %i.r, %bb.j ], [ 0, %.preheader320 ]
  %.0145.ph.ph = phi i32 [ %.0145.ph325, %bb.j ], [ 0, %.preheader320 ]
  %.0136.ph.ph = phi i64 [ %.0136, %bb.j ], [ 0, %.preheader320 ]
  %.0134.ph.ph = phi i64 [ %i.o, %bb.j ], [ 0, %.preheader320 ] ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.i
  %.0165.ph = phi ptr [ %.1166, %bb.i ], [ %.0165.ph.ph, %.outer.outer ]
  %.0159.ph = phi i32 [ %i.i, %bb.i ], [ %.0159.ph.ph, %.outer.outer ]
  %.0152.ph = phi i64 [ 0, %bb.i ], [ %.0152.ph.ph, %.outer.outer ] ; 5 uses
  %.0145.ph = phi i32 [ %.0145.ph325, %bb.i ], [ %.0145.ph.ph, %.outer.outer ]
  %.0136.ph = phi i64 [ %.0136, %bb.i ], [ %.0136.ph.ph, %.outer.outer ]
  %i.a = icmp sgt i64 %.0152.ph, 214748363
  br label %.outer322

.outer322:                                        ; preds = %bb.e, %.outer
  %.0165.ph323 = phi ptr [ %.0165.ph, %.outer ], [ %.1166, %bb.e ]
  %.0159.ph324 = phi i32 [ %.0159.ph, %.outer ], [ %i.i, %bb.e ]
  %.0145.ph325 = phi i32 [ %.0145.ph, %.outer ], [ 1, %bb.e ] ; 3 uses
  %.0136.ph326 = phi i64 [ %.0136.ph, %.outer ], [ %.0136, %bb.e ]
  br label %bb.c

bb.c:                                             ; preds = %.outer322, %bb.h
  %.0165 = phi ptr [ %.1166, %bb.h ], [ %.0165.ph323, %.outer322 ] ; 3 uses
  %.0159 = phi i32 [ %i.i, %bb.h ], [ %.0159.ph324, %.outer322 ] ; 3 uses
  %.0136 = phi i64 [ %i.l, %bb.h ], [ %.0136.ph326, %.outer322 ] ; 6 uses
  %.not193 = icmp eq i32 %.0159, 0
  br i1 %.not193, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.0165, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0165, i64 2
  %i.d = icmp ule ptr %i.c, %1
  %.not194 = icmp ult ptr %1, %i.b
  %or.cond205 = select i1 %i.d, i1 true, i1 %.not194
  br i1 %or.cond205, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1166 = phi ptr [ %.0165, %bb.c ], [ %i.b, %bb.d ] ; 7 uses
  %i.e = load i8, ptr %.1166, align 1, !tbaa !130 ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = lshr i32 %i.f, %.0159
  %i.h = and i32 %i.g, 15                         ; 6 uses
  %i.i = sub nuw nsw i32 4, %.0159                ; 6 uses
  %i.j = icmp eq i32 %i.h, 14
  br i1 %i.j, label %.outer322, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i32 %i.h, 9
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i64 %.0136, 1
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.m = icmp ne i32 %i.h, 0
  %i.n = icmp ne i64 %.0152.ph, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.j, label %.outer

bb.j:                                             ; preds = %bb.i
  %i.o = add nuw nsw i64 %.0134.ph.ph, 1
  %i.p = mul nsw i64 %.0152.ph, 10
  %i.q = zext nneg i32 %i.h to i64
  %i.r = add nsw i64 %i.p, %i.q
  br label %.outer.outer

bb.k:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.h, 10
  br i1 %i.s, label %.preheader221.outer.outer, label %.loopexit223

.preheader221.outer.outer:                        ; preds = %bb.k, %bb.o
  %.ph.ph = phi i8 [ %i.aa, %bb.o ], [ %i.e, %bb.k ]
  %.2167.ph.ph = phi ptr [ %.3168, %bb.o ], [ %.1166, %bb.k ]
  %.1160.ph.ph = phi i32 [ %i.ae, %bb.o ], [ %i.i, %bb.k ]
  %.2154.ph.ph = phi i64 [ 0, %bb.o ], [ %.0152.ph, %bb.k ]
  %.2138.ph.ph = phi i64 [ %i.ah, %bb.o ], [ %.0136, %bb.k ] ; 2 uses
  %.0.ph.ph = phi i64 [ %.0.ph, %bb.o ], [ 0, %bb.k ]
  br label %.preheader221.outer

.preheader221.outer:                              ; preds = %.preheader221.outer.outer, %bb.q
  %.ph = phi i8 [ %i.aa, %bb.q ], [ %.ph.ph, %.preheader221.outer.outer ]
  %.2167.ph = phi ptr [ %.3168, %bb.q ], [ %.2167.ph.ph, %.preheader221.outer.outer ]
  %.1160.ph = phi i32 [ %i.ae, %bb.q ], [ %.1160.ph.ph, %.preheader221.outer.outer ]
end_hunk_1
begin_hunk_2_@cff_encoding_load:bb.a
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.ag, %._crit_edge33.i
  %i.ex = phi i32 [ %i.dt, %bb.ag ], [ %i.ev, %._crit_edge33.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %cff_charset_compute_cids.exit, %bb.ak
  %indvars.iv = phi i64 [ 0, %cff_charset_compute_cids.exit ], [ %indvars.iv.next.pre-phi, %bb.ak ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !66 ; 3 uses
  %.not128 = icmp eq i16 %i.fc, 0
  %i.fd = zext i16 %i.fc to i32
  %.not.i144 = icmp ult i32 %i.ex, %i.fd
  %or.cond226 = or i1 %.not128, %.not.i144
  br i1 %or.cond226, label %cff_charset_cid_to_gindex.exit.thread, label %cff_charset_cid_to_gindex.exit

cff_charset_cid_to_gindex.exit:                   ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !146
  %i.ff = zext i16 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !66 ; 2 uses
  %.not129 = icmp eq i16 %i.fh, 0
  br i1 %.not129, label %cff_charset_cid_to_gindex.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %cff_charset_cid_to_gindex.exit
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !66
  %i.fj = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  store i32 %i.fk, ptr %i.dp, align 8, !tbaa !135
  br label %bb.ak

cff_charset_cid_to_gindex.exit.thread:            ; preds = %bb.ai, %cff_charset_cid_to_gindex.exit
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv
  store i16 0, ptr %i.fl, align 2, !tbaa !66
  store i16 0, ptr %i.fb, align 2, !tbaa !66
  %.pre203 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.ak:                                            ; preds = %cff_charset_cid_to_gindex.exit.thread, %bb.aj
  %indvars.iv.next.pre-phi = phi i64 [ %.pre203, %cff_charset_cid_to_gindex.exit.thread ], [ %i.fj, %bb.aj ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 256
  br i1 %exitcond.not, label %.loopexit151, label %bb.ai, !llvm.loop !629

.loopexit151:                                     ; preds = %bb.ak, %.lr.ph162, %bb.n, %.loopexit, %bb.y, %bb.x, %bb.f, %bb.a, %.thread146..loopexit151_crit_edge, %cff_charset_compute_cids.exit.thread, %bb.g, %bb.w, %bb.c, %bb.d, %bb.e
  %i.fm = phi i32 [ %.pre, %.thread146..loopexit151_crit_edge ], [ 3, %bb.f ], [ 0, %.loopexit ], [ %i.bh, %.lr.ph162 ], [ %i.em, %cff_charset_compute_cids.exit.thread ], [ %i.v, %bb.g ], [ %i.cy, %bb.w ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 3, %bb.a ], [ %i.dd, %bb.y ], [ %i.db, %bb.x ], [ %i.bj, %bb.n ], [ 0, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.fm
}

declare hidden i32 @FT_Stream_ReadULong(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_vstore_done(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %.loopexit25, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader24 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader24 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.g) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr null, ptr %i.i, align 8, !tbaa !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !272
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !630

.loopexit25:                                      ; preds = %.lr.ph, %.preheader24, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %.preheader24 ], [ %i.h, %.lr.ph ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.m) #18
  store ptr null, ptr %i.a, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit25
  %i.p = load i32, ptr %0, align 8, !tbaa !265
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %i.q = phi ptr [ %i.u, %.lr.ph28 ], [ %i.o, %.preheader ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph28 ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.t) #18
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !271
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !265
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next33, %i.y
  br i1 %i.z, label %.lr.ph28, label %.loopexit, !llvm.loop !631

.loopexit:                                        ; preds = %.lr.ph28, %.preheader, %.loopexit25
  %i.aa = phi ptr [ null, %.loopexit25 ], [ %i.o, %.preheader ], [ %i.u, %.lr.ph28 ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.aa) #18
  store ptr null, ptr %i.n, align 8, !tbaa !266
  ret void
}

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_subfont_done(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.h) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !632
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !632
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !633
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.l) #18
  store ptr null, ptr %i.k, align 8, !tbaa !633
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !634
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.n) #18
  store ptr null, ptr %i.m, align 8, !tbaa !634
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !257
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.p) #18
  store ptr null, ptr %i.o, align 8, !tbaa !257
  br label %bb.f

bb.f:                                             ; preds = %cff_index_done.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !68}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS11FT_FaceRec_", !13, i64 0}
!15 = !{!"short", !9, i64 0}
!16 = !{!"FT_CharMapRec_", !14, i64 0, !10, i64 8, !15, i64 12, !15, i64 14}
!17 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !13, i64 0}
!18 = !{!"FT_CMapRec_", !16, i64 0, !17, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!"p1 _ZTS15FT_Bitmap_Size_", !13, i64 0}
!23 = !{!"any p2 pointer", !13, i64 0}
!24 = !{!"p2 _ZTS14FT_CharMapRec_", !23, i64 0}
!25 = !{!"FT_Generic_", !13, i64 0, !13, i64 8}
!26 = !{!"FT_BBox_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!27 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !13, i64 0}
!28 = !{!"p1 _ZTS11FT_SizeRec_", !13, i64 0}
!29 = !{!"p1 _ZTS14FT_CharMapRec_", !13, i64 0}
!30 = !{!"p1 _ZTS13FT_DriverRec_", !13, i64 0}
!31 = !{!"p1 _ZTS13FT_MemoryRec_", !13, i64 0}
!32 = !{!"p1 _ZTS13FT_StreamRec_", !13, i64 0}
!33 = !{!"p1 _ZTS15FT_ListNodeRec_", !13, i64 0}
!34 = !{!"FT_ListRec_", !33, i64 0, !33, i64 8}
!35 = !{!"p1 _ZTS20FT_Face_InternalRec_", !13, i64 0}
!36 = !{!"FT_FaceRec_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !21, i64 40, !21, i64 48, !10, i64 56, !22, i64 64, !10, i64 72, !24, i64 80, !25, i64 88, !26, i64 104, !15, i64 136, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !27, i64 152, !28, i64 160, !29, i64 168, !30, i64 176, !31, i64 184, !32, i64 192, !34, i64 200, !25, i64 216, !13, i64 232, !35, i64 240}
!37 = !{!"p1 long", !13, i64 0}
!38 = !{!"TTC_HeaderRec_", !20, i64 0, !20, i64 8, !20, i64 16, !37, i64 24}
!39 = !{!"p1 _ZTS12TT_TableRec_", !13, i64 0}
!40 = !{!"TT_Header_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !15, i64 32, !15, i64 34, !9, i64 40, !9, i64 56, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !15, i64 84, !15, i64 86, !15, i64 88}
!41 = !{!"TT_HoriHeader_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !15, i64 36, !15, i64 38, !13, i64 40, !13, i64 48}
!42 = !{!"TT_MaxProfile_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !15, i64 32, !15, i64 34}
!43 = !{!"TT_VertHeader_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !15, i64 36, !15, i64 38, !13, i64 40, !13, i64 48}
!44 = !{!"p1 _ZTS11TT_NameRec_", !13, i64 0}
!45 = !{!"p1 _ZTS14TT_LangTagRec_", !13, i64 0}
!46 = !{!"TT_NameTableRec_", !15, i64 0, !10, i64 4, !10, i64 8, !44, i64 16, !10, i64 24, !45, i64 32, !32, i64 40}
!47 = !{!"TT_OS2_", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !9, i64 32, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !9, i64 80, !15, i64 84, !15, i64 86, !15, i64 88, !15, i64 90, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !20, i64 104, !20, i64 112, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !15, i64 130, !15, i64 132}
!48 = !{!"TT_Postscript_", !20, i64 0, !20, i64 8, !15, i64 16, !15, i64 18, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56}
!49 = !{!"p1 _ZTS16TT_GaspRangeRec_", !13, i64 0}
!50 = !{!"TT_Gasp_", !15, i64 0, !15, i64 2, !49, i64 8}
!51 = !{!"TT_PCLT_", !20, i64 0, !20, i64 8, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !9, i64 44, !9, i64 52, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61}
!52 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !13, i64 0}
!53 = !{!"p1 short", !13, i64 0}
!54 = !{!"p2 omnipotent char", !23, i64 0}
!55 = !{!"TT_Post_NamesRec_", !9, i64 0, !15, i64 2, !15, i64 4, !53, i64 8, !54, i64 16}
!56 = !{!"FT_Palette_Data_", !15, i64 0, !53, i64 8, !53, i64 16, !15, i64 24, !53, i64 32}
!57 = !{!"p1 _ZTS9FT_Color_", !13, i64 0}
!58 = !{!"FT_Color_", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3}
!59 = !{!"p1 int", !13, i64 0}
!60 = !{!"p1 _ZTS12GX_BlendRec_", !13, i64 0}
!61 = !{!"TT_BDFRec_", !21, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !10, i64 32, !9, i64 36}
!62 = !{!"TT_FaceRec_", !36, i64 0, !38, i64 248, !20, i64 280, !15, i64 288, !39, i64 296, !40, i64 304, !41, i64 400, !42, i64 456, !9, i64 496, !43, i64 504, !15, i64 560, !46, i64 568, !47, i64 616, !48, i64 752, !21, i64 816, !20, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !50, i64 928, !51, i64 944, !20, i64 1008, !52, i64 1016, !55, i64 1024, !56, i64 1048, !15, i64 1088, !57, i64 1096, !9, i64 1104, !58, i64 1105, !20, i64 1112, !21, i64 1120, !20, i64 1128, !21, i64 1136, !20, i64 1144, !59, i64 1152, !25, i64 1160, !21, i64 1176, !20, i64 1184, !20, i64 1192, !9, i64 1200, !9, i64 1201, !60, i64 1208, !10, i64 1216, !21, i64 1224, !10, i64 1232, !10, i64 1236, !21, i64 1240, !20, i64 1248, !20, i64 1256, !20, i64 1264, !21, i64 1272, !21, i64 1280, !20, i64 1288, !10, i64 1296, !20, i64 1304, !54, i64 1312, !21, i64 1320, !20, i64 1328, !10, i64 1336, !10, i64 1340, !59, i64 1344, !21, i64 1352, !20, i64 1360, !10, i64 1368, !10, i64 1372, !10, i64 1376, !61, i64 1384, !20, i64 1424, !20, i64 1432, !20, i64 1440, !20, i64 1448, !13, i64 1456, !13, i64 1464, !13, i64 1472}
!63 = !{!62, !13, i64 1160}
!64 = !{!"CFF_CMapStdRec_", !18, i64 0, !53, i64 24}
!65 = !{!64, !53, i64 24}
!66 = !{!15, !15, i64 0}
!67 = !{!10, !10, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!36, !31, i64 184}
!70 = !{!"CFF_CharsetRec_", !10, i64 0, !20, i64 8, !53, i64 16, !53, i64 24, !10, i64 32, !10, i64 36}
!71 = !{!70, !53, i64 16}
!72 = !{!"p1 _ZTS14FT_LibraryRec_", !13, i64 0}
!73 = !{!"CFF_IndexRec_", !32, i64 0, !20, i64 8, !10, i64 16, !10, i64 20, !9, i64 24, !20, i64 32, !20, i64 40, !37, i64 48, !21, i64 56}
!74 = !{!"CFF_EncodingRec_", !10, i64 0, !20, i64 8, !10, i64 16, !9, i64 20, !9, i64 532}
!75 = !{!"FT_Matrix_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!76 = !{!"FT_Vector_", !20, i64 0, !20, i64 8}
!77 = !{!"CFF_FontRecDictRec_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !9, i64 24, !20, i64 32, !15, i64 40, !15, i64 42, !10, i64 44, !10, i64 48, !75, i64 56, !9, i64 88, !20, i64 96, !76, i64 104, !20, i64 120, !26, i64 128, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !10, i64 296, !15, i64 300, !15, i64 302, !20, i64 304, !10, i64 312}
!78 = !{!"p1 _ZTS15CFF_SubFontRec_", !13, i64 0}
!79 = !{!"CFF_PrivateRec_", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 8, !9, i64 120, !9, i64 200, !9, i64 312, !20, i64 392, !20, i64 400, !20, i64 408, !20, i64 416, !20, i64 424, !9, i64 432, !9, i64 433, !9, i64 440, !9, i64 544, !9, i64 648, !20, i64 656, !10, i64 664, !10, i64 668, !20, i64 672, !20, i64 680, !20, i64 688, !20, i64 696, !20, i64 704, !10, i64 712, !78, i64 720}
!80 = !{!"p1 _ZTS12CFF_FontRec_", !13, i64 0}
!81 = !{!"CFF_BlendRec_", !9, i64 0, !9, i64 1, !80, i64 8, !10, i64 16, !10, i64 20, !37, i64 24, !10, i64 32, !59, i64 40}
!82 = !{!"CFF_SubFontRec_", !77, i64 0, !79, i64 320, !81, i64 1048, !10, i64 1096, !37, i64 1104, !21, i64 1112, !21, i64 1120, !10, i64 1128, !10, i64 1132, !73, i64 1136, !54, i64 1200, !10, i64 1208}
!83 = !{!"CFF_FDSelectRec_", !9, i64 0, !10, i64 4, !21, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !9, i64 28}
!84 = !{!"p1 _ZTS19PSHinter_Interface_", !13, i64 0}
!85 = !{!"p1 _ZTS22FT_Service_PsCMapsRec_", !13, i64 0}
!86 = !{!"p1 _ZTS15PS_FontInfoRec_", !13, i64 0}
!87 = !{!"p1 _ZTS12CFF_VarData_", !13, i64 0}
!88 = !{!"p1 _ZTS14CFF_VarRegion_", !13, i64 0}
!89 = !{!"CFF_VStoreRec_", !10, i64 0, !87, i64 8, !15, i64 16, !10, i64 20, !88, i64 24}
!90 = !{!"p1 _ZTS16PS_FontExtraRec_", !13, i64 0}
!91 = !{!"CFF_FontRec_", !72, i64 0, !32, i64 8, !31, i64 16, !20, i64 24, !10, i64 32, !10, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !10, i64 44, !9, i64 48, !73, i64 56, !73, i64 120, !73, i64 184, !74, i64 248, !70, i64 1296, !73, i64 1336, !73, i64 1400, !73, i64 1464, !73, i64 1528, !21, i64 1592, !54, i64 1600, !10, i64 1608, !54, i64 1616, !21, i64 1624, !20, i64 1632, !82, i64 1640, !10, i64 2856, !9, i64 2864, !83, i64 4912, !84, i64 4944, !85, i64 4952, !13, i64 4960, !86, i64 4968, !21, i64 4976, !21, i64 4984, !25, i64 4992, !89, i64 5008, !90, i64 5040}
!92 = !{!91, !85, i64 4952}
!93 = !{!"FT_Service_PsCMapsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !53, i64 48, !53, i64 56}
!94 = !{!91, !10, i64 36}
!95 = !{!"p1 _ZTS16FT_Module_Class_", !13, i64 0}
!96 = !{!"FT_ModuleRec_", !95, i64 0, !72, i64 8, !31, i64 16}
!97 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !13, i64 0}
!98 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !13, i64 0}
!99 = !{!"FT_DriverRec_", !96, i64 0, !97, i64 24, !34, i64 32, !98, i64 48}
!100 = !{!"PS_DriverRec_", !99, i64 0, !10, i64 56, !9, i64 60, !9, i64 64, !10, i64 96}
!101 = !{!100, !10, i64 96}
!102 = !{!36, !30, i64 176}
!103 = !{!99, !72, i64 8}
!104 = !{!62, !13, i64 920}
!105 = !{!"SFNT_Interface_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376}
!106 = !{!62, !9, i64 1200}
!107 = !{!91, !10, i64 32}
!108 = !{!91, !84, i64 4944}
!109 = !{!36, !20, i64 8}
!110 = !{!77, !10, i64 220}
!111 = !{!36, !20, i64 16}
!112 = !{!77, !9, i64 88}
!113 = !{!75, !20, i64 24}
!114 = !{!75, !20, i64 16}
!115 = !{!76, !20, i64 8}
!116 = !{!20, !20, i64 0}
!117 = !{!75, !20, i64 0}
!118 = !{!75, !20, i64 8}
!119 = !{!76, !20, i64 0}
!120 = !{!91, !10, i64 2856}
!121 = !{!78, !78, i64 0}
!122 = !{i64 0, i64 8, !116, i64 8, i64 8, !116, i64 16, i64 8, !116, i64 24, i64 8, !116}
!123 = !{!91, !10, i64 1356}
!124 = !{!77, !10, i64 16}
!125 = !{!91, !10, i64 1608}
!126 = !{!91, !54, i64 1616}
!127 = !{!21, !21, i64 0}
!128 = !{!93, !13, i64 40}
!129 = !{!77, !10, i64 12}
!130 = !{!9, !9, i64 0}
!131 = !{!77, !10, i64 296}
!132 = !{!77, !9, i64 24}
!133 = !{!77, !20, i64 32}
!134 = !{!77, !10, i64 20}
!135 = !{!74, !10, i64 16}
!136 = !{!74, !20, i64 8}
!137 = !{!62, !13, i64 880}
!138 = !{!91, !31, i64 16}
!139 = !{!73, !32, i64 0}
!140 = !{!"FT_StreamRec_", !21, i64 0, !20, i64 8, !20, i64 16, !9, i64 24, !9, i64 32, !13, i64 40, !13, i64 48, !31, i64 56, !21, i64 64, !21, i64 72}
!141 = !{!140, !31, i64 56}
!142 = !{!73, !21, i64 56}
!143 = !{!73, !37, i64 48}
!144 = !{!74, !10, i64 0}
!145 = !{!91, !32, i64 8}
!146 = !{!70, !53, i64 24}
!147 = !{!70, !10, i64 32}
!148 = !{!70, !10, i64 0}
!149 = !{!83, !21, i64 8}
!150 = !{!83, !10, i64 16}
!151 = !{!83, !9, i64 0}
!152 = !{!91, !86, i64 4968}
!153 = !{!91, !21, i64 1592}
!154 = !{!91, !90, i64 5040}
!155 = !{!62, !13, i64 896}
!156 = !{!"FT_Service_MultiMastersRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!157 = !{!156, !13, i64 144}
!158 = !{!"FT_Size_Metrics_", !15, i64 0, !15, i64 2, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!159 = !{!"p1 _ZTS20FT_Size_InternalRec_", !13, i64 0}
end_hunk_2
