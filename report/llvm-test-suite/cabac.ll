inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@writeMB_typeInfo_CABAC:bb.a
  %.not243 = icmp ne i32 %i.bk, 0
  %i.bl = zext i1 %.not243 to i32
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %spec.select248 = tail call i32 @llvm.smin.i32(i32 %i.q, i32 7)
  switch i32 %spec.select248, label %bb.v [
    i32 0, label %.thread259
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %.thread
    i32 5, label %.thread
    i32 6, label %bb.u
    i32 7, label %.thread262
  ]

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bm) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bn) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bo) #12
  br label %.thread259

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bp) #12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.bq) #12
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.br) #12
  br label %.thread259

bb.t:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bs) #12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.bt) #12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bu) #12
  br label %.thread259

.thread:                                          ; preds = %bb.q, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bv) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bw) #12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.bx) #12
  br label %.thread259

bb.u:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.by) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.bz) #12
  br label %.thread259

.thread262:                                       ; preds = %bb.q
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.q, i32 7)
  %spec.select = add nsw i32 %i.ca, -7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.cb) #12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.cc) #12
  br label %bb.af

bb.v:                                             ; preds = %bb.q
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %i.bl, %bb.p ], [ 0, %bb.o ]
  %i.cd = add nuw nsw i32 %.1, %.1227             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !48
  %i.cf = zext nneg i32 %i.cd to i64              ; 5 uses
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.q, i32 24)
  %spec.select253 = add nsw i32 %i.cg, -24
  %spec.select248254 = tail call i32 @llvm.smin.i32(i32 %i.q, i32 24) ; 3 uses
  %i.ch = icmp eq i32 %i.q, 0
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cf
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.cj) #12
  br label %.thread259

bb.y:                                             ; preds = %bb.w
  %i.ck = icmp slt i32 %i.q, 3
  br i1 %i.ck, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cf
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.cm) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.cn) #12
  %i.co = icmp ne i32 %i.q, 1
  %i.cp = zext i1 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.cp, ptr noundef nonnull %i.cq) #12
  br label %.thread259

bb.aa:                                            ; preds = %bb.y
  %i.cr = icmp samesign ult i32 %i.q, 11
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cf
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.ct) #12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.cu) #12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.cv) #12
  %i.cw = trunc nuw i32 %spec.select248254 to i16
  %i.cx = add nsw i16 %i.cw, -3                   ; 3 uses
  %i.cy = lshr i16 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 3 uses
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.cy, ptr noundef nonnull %i.cz) #12
  %i.da = lshr i16 %i.cx, 1
  %i.db = and i16 %i.da, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.db, ptr noundef nonnull %i.cz) #12
  %i.dc = and i16 %i.cx, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dc, ptr noundef nonnull %i.cz) #12
  br label %.thread259

bb.ac:                                            ; preds = %bb.aa
  switch i32 %spec.select248254, label %bb.ae [
    i32 22, label %bb.ad
    i32 11, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.cf
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.de) #12
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.df) #12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.dg) #12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 3 uses
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.dh) #12
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.dh) #12
  %i.di = icmp ne i32 %i.q, 11
  %i.dj = zext i1 %i.di to i16
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dj, ptr noundef nonnull %i.dh) #12
  br label %.thread259

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp samesign ugt i32 %i.q, 22
  %i.dl = sext i1 %i.dk to i32
  %spec.select249 = add nsw i32 %spec.select248254, %i.dl ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.cf
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.dn) #12
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.do) #12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.dp) #12
  %i.dq = trunc i32 %spec.select249 to i16        ; 3 uses
  %i.dr = add nsw i16 %i.dq, -12                  ; 2 uses
  %i.ds = lshr i16 %i.dr, 3
  %i.dt = and i16 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 4 uses
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dt, ptr noundef nonnull %i.du) #12
  %i.dv = lshr i16 %i.dr, 2
  %i.dw = and i16 %i.dv, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dw, ptr noundef nonnull %i.du) #12
  %i.dx = lshr i16 %i.dq, 1
  %i.dy = and i16 %i.dx, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dy, ptr noundef nonnull %i.du) #12
  %i.dz = and i16 %i.dq, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.dz, ptr noundef nonnull %i.du) #12
  %i.ea = icmp samesign ugt i32 %spec.select249, 21
  %i.eb = zext i1 %i.ea to i32
  %spec.select250 = add nuw nsw i32 %spec.select249, %i.eb
  %i.ec = icmp eq i32 %spec.select250, 24
  br i1 %i.ec, label %bb.af, label %.thread259

bb.af:                                            ; preds = %.thread262, %bb.ae
  %spec.select256265 = phi i32 [ %spec.select, %.thread262 ], [ %spec.select253, %bb.ae ] ; 3 uses
  %i.ed = icmp eq i32 %spec.select256265, 25
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @biari_encode_symbol_final(ptr noundef nonnull %i.a, i16 noundef signext 1) #12
  br label %.thread259

bb.ah:                                            ; preds = %bb.af
  tail call void @biari_encode_symbol_final(ptr noundef nonnull %i.a, i16 noundef signext 0) #12
  %i.ee = udiv i32 %spec.select256265, 12
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ef, ptr noundef nonnull %i.eg) #12
  %i.eh = urem i32 %spec.select256265, 12         ; 2 uses
  %2 = lshr i32 %i.eh, 2                          ; 2 uses
  %i.ei = icmp eq i32 %2, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 320 ; 2 uses
  br i1 %i.ei, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.ej) #12
  %i.ek = icmp ne i32 %2, 1
  %i.el = zext i1 %i.ek to i16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink = phi i16 [ %i.el, %bb.ai ], [ 0, %bb.ah ]
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %.sink, ptr noundef nonnull %i.ej) #12
  %i.em = trunc nuw nsw i32 %i.eh to i16          ; 2 uses
  %i.en = lshr i16 %i.em, 1
  %i.eo = and i16 %i.en, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 336 ; 2 uses
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.eo, ptr noundef nonnull %i.ep) #12
  %i.eq = and i16 %i.em, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.eq, ptr noundef nonnull %i.ep) #12
  br label %.thread259

.thread259:                                       ; preds = %bb.h, %bb.l, %bb.g, %bb.aj, %bb.ae, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %.thread, %bb.ag
  %i.er = load ptr, ptr %1, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store i32 1, ptr %i.es, align 8, !tbaa !53
  %i.et = tail call i32 @arienco_bits_written(ptr noundef nonnull %i.a) #12
  %i.eu = sub nsw i32 %i.et, %i.b
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !55
  ret void
}

declare void @biari_encode_symbol_final(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @writeB8_typeInfo_CABAC(ptr nofree noundef captures(none) initializes((12, 16)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 25 uses
  %i.b = tail call i32 @arienco_bits_written(ptr noundef nonnull %i.a) #12
  %i.c = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 14216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41   ; 7 uses
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.l, label %bb.p [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.m) #12
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.o) #12
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.p) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.r) #12
  br label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.s) #12
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.u) #12
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.l, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 672 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.w) #12
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.w) #12
  %i.x = icmp slt i32 %i.l, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 720 ; 8 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 688
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.z) #12
  %i.aa = icmp ne i32 %i.l, 1
  %i.ab = zext i1 %i.aa to i16
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ab, ptr noundef nonnull %i.y) #12
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp samesign ult i32 %i.l, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 688
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.ad) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 704 ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.ae) #12
  %i.af = trunc nuw nsw i32 %i.l to i16
  %i.ag = add nsw i16 %i.af, -3                   ; 2 uses
  %i.ah = lshr i16 %i.ag, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ah, ptr noundef nonnull %i.y) #12
  %i.ai = and i16 %i.ag, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ai, ptr noundef nonnull %i.y) #12
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.ae) #12
  %i.aj = add nsw i32 %i.l, -7                    ; 2 uses
  %i.ak = and i32 %i.aj, 4
  %.not = icmp eq i32 %i.ak, 0
  %i.al = trunc i32 %i.aj to i16                  ; 3 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef nonnull %i.y) #12
  %i.am = and i16 %i.al, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.am, ptr noundef nonnull %i.y) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef nonnull %i.y) #12
  %i.an = lshr i16 %i.al, 1
  %i.ao = and i16 %i.an, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ao, ptr noundef nonnull %i.y) #12
  %i.ap = and i16 %i.al, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.ap, ptr noundef nonnull %i.y) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.l, %bb.o, %bb.n, %bb.j, %bb.h
  %i.aq = load ptr, ptr %1, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 1, ptr %i.ar, align 8, !tbaa !53
  %i.as = tail call i32 @arienco_bits_written(ptr noundef nonnull %i.a) #12
  %i.at = sub nsw i32 %i.as, %i.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @writeIntraPredMode_CABAC(ptr nofree noundef captures(none) initializes((12, 16)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = tail call i32 @arienco_bits_written(ptr noundef nonnull %i.a) #12
  %i.c = load ptr, ptr @img, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 1, ptr noundef %i.g) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext 0, ptr noundef %i.g) #12
  %i.k = load i32, ptr %i.h, align 4, !tbaa !41
  %i.l = trunc i32 %i.k to i16
  %i.m = and i16 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.m, ptr noundef nonnull %i.n) #12
  %i.o = load i32, ptr %i.h, align 4, !tbaa !41
  %i.p = trunc i32 %i.o to i16
  %i.q = lshr i16 %i.p, 1
  %i.r = and i16 %i.q, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.r, ptr noundef nonnull %i.n) #12
  %i.s = load i32, ptr %i.h, align 4, !tbaa !41
  %i.t = trunc i32 %i.s to i16
  %i.u = lshr i16 %i.t, 2
  %i.v = and i16 %i.u, 1
  tail call void @biari_encode_symbol(ptr noundef nonnull %i.a, i16 noundef signext %i.v, ptr noundef nonnull %i.n) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %1, align 8, !tbaa !49
end_hunk_0
