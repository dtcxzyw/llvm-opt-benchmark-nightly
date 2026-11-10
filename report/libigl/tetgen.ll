Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 551
begin_hunk_0_@_ZN14tetgenbehavior6syntaxEv:bb.a
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46) ; 0 uses
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47) ; 0 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48) ; 0 uses
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49) ; 0 uses
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50) ; 0 uses
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define void @_ZN14tetgenbehavior5usageEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55) ; 0 uses
  %putchar5 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56) ; 0 uses
  %putchar7 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58) ; 0 uses
  %putchar10 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59) ; 0 uses
  %putchar12 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.216) ; 0 uses
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60) ; 0 uses
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.219) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222) ; 0 uses
  %puts17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64) ; 0 uses
  %puts18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225) ; 0 uses
  %puts19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66) ; 0 uses
  %putchar20 = tail call i32 @putchar(i32 10)     ; 0 uses
  tail call void @_ZN14tetgenbehavior6syntaxEv(ptr nonnull align 8 poison)
  %putchar21 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67) ; 0 uses
  %putchar23 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.229) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.230) ; 0 uses
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.68) ; 0 uses
  %putchar25 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.232) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233) ; 0 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234) ; 0 uses
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.69) ; 0 uses
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.70) ; 0 uses
  %putchar28 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.71) ; 0 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.238) ; 0 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239) ; 0 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.240) ; 0 uses
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.72) ; 0 uses
  %putchar31 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.73) ; 0 uses
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 0, ptr %i.o, align 16, !tbaa !55
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIi, ptr null) #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN14tetgenbehavior17parse_commandlineEiPPc(ptr noundef nonnull align 8 dereferenceable(6544) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 82 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %.not1359 = icmp eq i32 %1, 0                   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  br i1 %.not1359, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !46
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !48
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.c) #40 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  store i16 32, ptr %endptr, align 1
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge1589.thread

.lr.ph:                                           ; preds = %.thread, %bb.b
  %.012101796 = phi i32 [ 0, %.thread ], [ 1, %bb.b ] ; 2 uses
  %.012121795 = phi i32 [ 1, %.thread ], [ %1, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2439
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5516
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6539
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.012001587 = phi i32 [ %.012101796, %.lr.ph ], [ %.012001587.be, %.backedge.backedge ] ; 4 uses
  %i.cg = sext i32 %.012001587 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cg ; 14 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !48
  %i.cj = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.ci) #40 ; 0 uses
  %strlen1357 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.f)
  %endptr1358 = getelementptr inbounds i8, ptr %i.f, i64 %strlen1357
  store i16 32, ptr %endptr1358, align 1
  br i1 %.not1359, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.backedge
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !48 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !46
  %.not1360 = icmp eq i8 %i.cl, 45
  br i1 %.not1360, label %bb.d, label %.loopexit1504.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.cm = add nsw i32 %.012001587, 1              ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cn
  br label %bb.e

bb.e:                                             ; preds = %bb.eg, %bb.d
  %.01176 = phi i32 [ %.012101796, %bb.d ], [ %i.xk, %bb.eg ] ; 64 uses
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !48 ; 45 uses
  %i.cq = sext i32 %.01176 to i64                 ; 6 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq  ; 10 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !46  ; 2 uses
  switch i8 %i.cs, label %bb.ef [
    i8 0, label %.loopexit1504
    i8 112, label %bb.f
    i8 89, label %bb.o
    i8 114, label %bb.w
    i8 113, label %bb.z
    i8 82, label %bb.ac
    i8 119, label %bb.ag
    i8 98, label %bb.ai
    i8 76, label %bb.at
    i8 109, label %bb.au
    i8 97, label %bb.ax
    i8 65, label %bb.bd
    i8 68, label %bb.be
    i8 105, label %bb.bh
    i8 100, label %bb.bi
    i8 99, label %bb.bj
    i8 77, label %bb.bk
    i8 88, label %bb.bp
    i8 122, label %bb.bs
    i8 102, label %bb.bv
    i8 101, label %bb.bw
    i8 110, label %bb.bx
    i8 103, label %bb.by
    i8 107, label %bb.bz
    i8 74, label %bb.cc
    i8 66, label %bb.cd
    i8 78, label %bb.ce
    i8 69, label %bb.cf
    i8 70, label %bb.cg
    i8 73, label %bb.ch
    i8 83, label %bb.ci
    i8 111, label %bb.cl
    i8 79, label %bb.cx
    i8 115, label %bb.dg
    i8 84, label %bb.dq
    i8 67, label %bb.dt
    i8 81, label %bb.du
    i8 87, label %bb.dv
    i8 86, label %bb.dw
    i8 108, label %bb.eg
    i8 120, label %bb.dx
    i8 72, label %bb.ec
    i8 104, label %bb.ee
    i8 63, label %bb.ee
  ]

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 8, !tbaa !113
  %i.ct = getelementptr i8, ptr %i.cr, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !46  ; 3 uses
  %i.cv = add i8 %i.cu, -48
  %or.cond = icmp ult i8 %i.cv, 10
  %i.cw = icmp eq i8 %i.cu, 46
  %or.cond1443 = or i1 %i.cw, %or.cond
  br i1 %or.cond1443, label %.critedge.preheader, label %bb.g

.critedge.preheader:                              ; preds = %bb.f
  %i.cx = add nsw i32 %.01176, 1
  %i.cy = sext i32 %i.cx to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv1727 = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next1728, %.critedge ] ; 2 uses
  %indvars.iv1725 = phi i64 [ %i.cy, %.critedge.preheader ], [ %indvars.iv.next1726, %.critedge ] ; 2 uses
  %i.cz = phi i8 [ %i.cu, %.critedge.preheader ], [ %i.dc, %.critedge ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1727
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !46
  %indvars.iv.next1728 = add nuw nsw i64 %indvars.iv1727, 1 ; 2 uses
  %indvars.iv.next1726 = add nsw i64 %indvars.iv1725, 1 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cp, i64 %indvars.iv.next1726
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !46  ; 3 uses
  %i.dd = add i8 %i.dc, -48
  %or.cond1374 = icmp ult i8 %i.dd, 10
  %i.de = icmp eq i8 %i.dc, 46
  %or.cond1444 = or i1 %i.de, %or.cond1374
  br i1 %or.cond1444, label %.critedge, label %._crit_edge1572, !llvm.loop !515

._crit_edge1572:                                  ; preds = %.critedge
  %i.df = trunc nsw i64 %indvars.iv1725 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next1728
  store i8 0, ptr %i.dg, align 1, !tbaa !46
  %i.dh = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #40
  store double %i.dh, ptr %i.ca, align 8, !tbaa !114
  %.pre1759 = load ptr, ptr %i.ch, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge1572
  %i.di = phi ptr [ %.pre1759, %._crit_edge1572 ], [ %i.cp, %bb.f ] ; 8 uses
  %.21178 = phi i32 [ %i.df, %._crit_edge1572 ], [ %.01176, %bb.f ] ; 3 uses
  %i.dj = add nsw i32 %.21178, 1                  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !46
  switch i8 %i.dm, label %bb.k [
    i8 47, label %bb.h
    i8 44, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.dn = sext i32 %.21178 to i64                 ; 2 uses
  %i.do = getelementptr i8, ptr %i.di, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !46  ; 2 uses
  %i.dr = add i8 %i.dq, -48
  %or.cond1375 = icmp ult i8 %i.dr, 10
  %i.ds = icmp eq i8 %i.dq, 46
  %or.cond1445 = or i1 %i.ds, %or.cond1375
  br i1 %or.cond1445, label %.preheader1483.preheader, label %bb.k

.preheader1483.preheader:                         ; preds = %bb.h
  %i.dt = add nsw i64 %i.dn, 1
  br label %.preheader1483

.preheader1483:                                   ; preds = %.preheader1483.preheader, %.critedge2
  %indvars.iv1731 = phi i64 [ 0, %.preheader1483.preheader ], [ %indvars.iv.next1732, %.critedge2 ] ; 3 uses
  %indvars.iv1729 = phi i64 [ %i.dt, %.preheader1483.preheader ], [ %indvars.iv.next1730, %.critedge2 ] ; 2 uses
  %indvars.iv.next1730 = add nsw i64 %indvars.iv1729, 1 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv.next1730
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !46  ; 3 uses
  %i.dw = add i8 %i.dv, -48
  %or.cond1376 = icmp ult i8 %i.dw, 10
  br i1 %or.cond1376, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %.preheader1483
  switch i8 %i.dv, label %bb.j [
    i8 46, label %.critedge2
    i8 101, label %.critedge2
    i8 45, label %.critedge2
    i8 43, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %.preheader1483
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1731
  store i8 %i.dv, ptr %i.dx, align 1, !tbaa !46
  %indvars.iv.next1732 = add nuw nsw i64 %indvars.iv1731, 1
  br label %.preheader1483, !llvm.loop !516

bb.j:                                             ; preds = %bb.i
  %i.dy = trunc nsw i64 %indvars.iv1729 to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1731
  store i8 0, ptr %i.dz, align 1, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.j
  %.41180 = phi i32 [ %i.dy, %bb.j ], [ %i.dj, %bb.h ], [ %.21178, %bb.g ] ; 4 uses
  %i.ea = add nsw i32 %.41180, 1                  ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !46
  switch i8 %i.ed, label %bb.m [
    i8 47, label %bb.l
    i8 44, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ee = sext i32 %.41180 to i64
  %i.ef = getelementptr i8, ptr %i.di, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !46  ; 3 uses
  %i.ei = add i8 %i.eh, -48
  %or.cond1377 = icmp ult i8 %i.ei, 10
  %i.ej = icmp eq i8 %i.eh, 46
  %or.cond1446 = or i1 %i.ej, %or.cond1377
  br i1 %or.cond1446, label %.critedge4.preheader, label %bb.m

.critedge4.preheader:                             ; preds = %bb.l
  %i.ek = add nsw i32 %.41180, 2
  %i.el = sext i32 %i.ek to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.preheader, %.critedge4
  %indvars.iv1738 = phi i64 [ 0, %.critedge4.preheader ], [ %indvars.iv.next1739, %.critedge4 ] ; 2 uses
  %indvars.iv1736 = phi i64 [ %i.el, %.critedge4.preheader ], [ %indvars.iv.next1737, %.critedge4 ] ; 2 uses
  %i.em = phi i8 [ %i.eh, %.critedge4.preheader ], [ %i.ep, %.critedge4 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1738
  store i8 %i.em, ptr %i.en, align 1, !tbaa !46
  %indvars.iv.next1739 = add nuw nsw i64 %indvars.iv1738, 1 ; 2 uses
  %indvars.iv.next1737 = add nsw i64 %indvars.iv1736, 1 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv.next1737
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !46  ; 3 uses
  %i.eq = add i8 %i.ep, -48
  %or.cond1378 = icmp ult i8 %i.eq, 10
  %i.er = icmp eq i8 %i.ep, 46
  %or.cond1447 = or i1 %i.er, %or.cond1378
  br i1 %or.cond1447, label %.critedge4, label %._crit_edge1578, !llvm.loop !517

._crit_edge1578:                                  ; preds = %.critedge4
  %i.es = trunc nsw i64 %indvars.iv1736 to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next1739
  store i8 0, ptr %i.et, align 1, !tbaa !46
  %i.eu = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #40
  store double %i.eu, ptr %i.cb, align 8, !tbaa !115
  %.pre1760 = load ptr, ptr %i.ch, align 8, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge1578
  %i.ev = phi ptr [ %.pre1760, %._crit_edge1578 ], [ %i.di, %bb.l ], [ %i.di, %bb.k ] ; 3 uses
  %.61182 = phi i32 [ %i.es, %._crit_edge1578 ], [ %i.ea, %bb.l ], [ %.41180, %bb.k ] ; 4 uses
  %i.ew = add nsw i32 %.61182, 1                  ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !46
  switch i8 %i.ez, label %bb.eg [
    i8 47, label %bb.n
    i8 44, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.fa = sext i32 %.61182 to i64
  %i.fb = getelementptr i8, ptr %i.ev, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !46  ; 3 uses
  %i.fe = add i8 %i.fd, -48
  %or.cond1379 = icmp ult i8 %i.fe, 10
  %i.ff = icmp eq i8 %i.fd, 46
  %or.cond1448 = or i1 %i.ff, %or.cond1379
  br i1 %or.cond1448, label %.critedge6.preheader, label %bb.eg

.critedge6.preheader:                             ; preds = %bb.n
  %i.fg = add nsw i32 %.61182, 2
  %i.fh = sext i32 %i.fg to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.preheader, %.critedge6
  %indvars.iv1742 = phi i64 [ 0, %.critedge6.preheader ], [ %indvars.iv.next1743, %.critedge6 ] ; 2 uses
  %indvars.iv1740 = phi i64 [ %i.fh, %.critedge6.preheader ], [ %indvars.iv.next1741, %.critedge6 ] ; 2 uses
  %i.fi = phi i8 [ %i.fd, %.critedge6.preheader ], [ %i.fl, %.critedge6 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1742
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !46
  %indvars.iv.next1743 = add nuw nsw i64 %indvars.iv1742, 1 ; 2 uses
  %indvars.iv.next1741 = add nsw i64 %indvars.iv1740, 1 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv.next1741
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !46  ; 3 uses
  %i.fm = add i8 %i.fl, -48
  %or.cond1380 = icmp ult i8 %i.fm, 10
  %i.fn = icmp eq i8 %i.fl, 46
  %or.cond1449 = or i1 %i.fn, %or.cond1380
  br i1 %or.cond1449, label %.critedge6, label %._crit_edge1584, !llvm.loop !518

._crit_edge1584:                                  ; preds = %.critedge6
  %i.fo = trunc nsw i64 %indvars.iv1740 to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next1743
  store i8 0, ptr %i.fp, align 1, !tbaa !46
  %i.fq = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #40
end_hunk_0
begin_hunk_1_@_ZN14tetgenbehavior17parse_commandlineEiPPc:bb.a
  store i8 %i.vc, ptr %i.ve, align 1, !tbaa !46
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv1631, 1
  br label %.preheader1501, !llvm.loop !535

bb.dl:                                            ; preds = %bb.dk
  %i.vf = trunc nsw i64 %indvars.iv1629 to i32
  %i.vg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1631
  store i8 0, ptr %i.vg, align 1, !tbaa !46
  %i.vh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0) #40
  %i.vi = trunc i64 %i.vh to i32
  store i32 %i.vi, ptr %i.r, align 8, !tbaa !175
  %.pre = load ptr, ptr %i.ch, align 8, !tbaa !48
  br label %bb.dm

bb.dm:                                            ; preds = %bb.di, %bb.dj, %bb.dl
  %i.vj = phi ptr [ %.pre, %bb.dl ], [ %i.cp, %bb.di ], [ %i.cp, %bb.dj ] ; 3 uses
  %.40 = phi i32 [ %i.vf, %bb.dl ], [ %.38, %bb.di ], [ %.pre-phi1779, %bb.dj ] ; 3 uses
  %i.vk = add nsw i32 %.40, 1                     ; 2 uses
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds i8, ptr %i.vj, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !46
  switch i8 %i.vn, label %bb.eg [
    i8 47, label %bb.dn
    i8 44, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm
  %i.vo = sext i32 %.40 to i64                    ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vj, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 2
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !46  ; 2 uses
  %i.vs = add i8 %i.vr, -48
  %or.cond1425 = icmp ult i8 %i.vs, 10
  %i.vt = icmp eq i8 %i.vr, 46
  %or.cond1475 = or i1 %i.vt, %or.cond1425
  br i1 %or.cond1475, label %.preheader1500.preheader, label %bb.eg

.preheader1500.preheader:                         ; preds = %bb.dn
  %i.vu = add nsw i64 %i.vo, 1
  br label %.preheader1500

.preheader1500:                                   ; preds = %.preheader1500.preheader, %.critedge42
  %indvars.iv1638 = phi i64 [ 0, %.preheader1500.preheader ], [ %indvars.iv.next1639, %.critedge42 ] ; 3 uses
  %indvars.iv1636 = phi i64 [ %i.vu, %.preheader1500.preheader ], [ %indvars.iv.next1637, %.critedge42 ] ; 2 uses
  %indvars.iv.next1637 = add nsw i64 %indvars.iv1636, 1 ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %i.vj, i64 %indvars.iv.next1637
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !46  ; 3 uses
  %i.vx = add i8 %i.vw, -48
  %or.cond1426 = icmp ult i8 %i.vx, 10
  br i1 %or.cond1426, label %.critedge42, label %bb.do

bb.do:                                            ; preds = %.preheader1500
  switch i8 %i.vw, label %bb.dp [
    i8 46, label %.critedge42
    i8 101, label %.critedge42
    i8 45, label %.critedge42
    i8 43, label %.critedge42
  ]

.critedge42:                                      ; preds = %bb.do, %bb.do, %bb.do, %bb.do, %.preheader1500
  %i.vy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1638
  store i8 %i.vw, ptr %i.vy, align 1, !tbaa !46
  %indvars.iv.next1639 = add nuw nsw i64 %indvars.iv1638, 1
  br label %.preheader1500, !llvm.loop !536

bb.dp:                                            ; preds = %bb.do
  %i.vz = trunc nsw i64 %indvars.iv1636 to i32
  %i.wa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1638
  store i8 0, ptr %i.wa, align 1, !tbaa !46
  %i.wb = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #40
  store double %i.wb, ptr %i.s, align 8, !tbaa !176
  br label %bb.eg

bb.dq:                                            ; preds = %bb.e
  %i.wc = getelementptr i8, ptr %i.cr, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !46  ; 2 uses
  %i.we = add i8 %i.wd, -48
  %or.cond1427 = icmp ult i8 %i.we, 10
  %i.wf = icmp eq i8 %i.wd, 46
  %or.cond1476 = or i1 %i.wf, %or.cond1427
  br i1 %or.cond1476, label %.preheader1502, label %bb.eg

.preheader1502:                                   ; preds = %bb.dq, %.critedge44
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %.critedge44 ], [ 0, %bb.dq ] ; 3 uses
  %indvars.iv1622 = phi i64 [ %indvars.iv.next1623, %.critedge44 ], [ %i.cq, %bb.dq ] ; 2 uses
  %indvars.iv.next1623 = add nsw i64 %indvars.iv1622, 1 ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %i.cp, i64 %indvars.iv.next1623
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !46  ; 3 uses
  %i.wi = add i8 %i.wh, -48
  %or.cond1428 = icmp ult i8 %i.wi, 10
  br i1 %or.cond1428, label %.critedge44, label %bb.dr

bb.dr:                                            ; preds = %.preheader1502
  switch i8 %i.wh, label %bb.ds [
    i8 46, label %.critedge44
    i8 101, label %.critedge44
    i8 45, label %.critedge44
    i8 43, label %.critedge44
  ]

.critedge44:                                      ; preds = %bb.dr, %bb.dr, %bb.dr, %bb.dr, %.preheader1502
  %i.wj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1624
  store i8 %i.wh, ptr %i.wj, align 1, !tbaa !46
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  br label %.preheader1502, !llvm.loop !537

bb.ds:                                            ; preds = %bb.dr
  %i.wk = trunc nsw i64 %indvars.iv1622 to i32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1624
  store i8 0, ptr %i.wl, align 1, !tbaa !46
  %i.wm = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #40
  store double %i.wm, ptr %i.p, align 8, !tbaa !177
  br label %bb.eg

bb.dt:                                            ; preds = %bb.e
  %i.wn = load i32, ptr %i.o, align 8, !tbaa !178
  %i.wo = add nsw i32 %i.wn, 1
  store i32 %i.wo, ptr %i.o, align 8, !tbaa !178
  br label %bb.eg

bb.du:                                            ; preds = %bb.e
  store i32 1, ptr %i.n, align 4, !tbaa !179
  br label %bb.eg

bb.dv:                                            ; preds = %bb.e
  store i32 1, ptr %i.m, align 8, !tbaa !180
  br label %bb.eg

bb.dw:                                            ; preds = %bb.e
  %i.wp = load i32, ptr %i.l, align 4, !tbaa !181
  %i.wq = add nsw i32 %i.wp, 1
  store i32 %i.wq, ptr %i.l, align 4, !tbaa !181
  br label %bb.eg

bb.dx:                                            ; preds = %bb.e
  %i.wr = getelementptr i8, ptr %i.cr, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !46  ; 2 uses
  %i.wt = add i8 %i.ws, -48
  %or.cond1429 = icmp ult i8 %i.wt, 10
  %i.wu = icmp eq i8 %i.ws, 46
  %or.cond1477 = or i1 %i.wu, %or.cond1429
  br i1 %or.cond1477, label %.preheader1503, label %bb.eg

.preheader1503:                                   ; preds = %bb.dx, %.critedge46
  %indvars.iv1617 = phi i64 [ %indvars.iv.next1618, %.critedge46 ], [ 0, %bb.dx ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge46 ], [ %i.cq, %bb.dx ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.wv = getelementptr inbounds i8, ptr %i.cp, i64 %indvars.iv.next
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !46  ; 3 uses
  %i.wx = add i8 %i.ww, -48
  %or.cond1430 = icmp ult i8 %i.wx, 10
  br i1 %or.cond1430, label %.critedge46, label %bb.dy

bb.dy:                                            ; preds = %.preheader1503
  switch i8 %i.ww, label %bb.dz [
    i8 46, label %.critedge46
    i8 101, label %.critedge46
    i8 45, label %.critedge46
    i8 43, label %.critedge46
  ]

.critedge46:                                      ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %.preheader1503
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1617
  store i8 %i.ww, ptr %i.wy, align 1, !tbaa !46
  %indvars.iv.next1618 = add nuw nsw i64 %indvars.iv1617, 1
  br label %.preheader1503, !llvm.loop !538

bb.dz:                                            ; preds = %bb.dy
  %i.wz = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv1617
  store i8 0, ptr %i.xa, align 1, !tbaa !46
  %i.xb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0) #40
  %i.xc = trunc i64 %i.xb to i32                  ; 4 uses
  store i32 %i.xc, ptr %i.i, align 4, !tbaa !182
  %i.xd = icmp sgt i32 %i.xc, 8188
  br i1 %i.xd, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.xe = lshr i32 %i.xc, 1
  store i32 %i.xe, ptr %i.j, align 8, !tbaa !183
  %i.xf = lshr i32 %i.xc, 2
  store i32 %i.xf, ptr %i.k, align 8, !tbaa !184
  br label %bb.eg

bb.eb:                                            ; preds = %bb.dz
  store i32 8188, ptr %i.i, align 4, !tbaa !182
  br label %bb.eg

bb.ec:                                            ; preds = %bb.e
  %i.xg = load ptr, ptr %i.co, align 8, !tbaa !48 ; 2 uses
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !46
  %.not1362 = icmp eq i8 %i.xh, 45
  br i1 %.not1362, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i32 1, ptr %i.cd, align 8, !tbaa !185
  %i.xi = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ce, ptr noundef nonnull dereferenceable(1) %i.xg, i64 noundef 1023) #40 ; 0 uses
  store i8 0, ptr %i.cf, align 1, !tbaa !46
  br label %.loopexit1504

bb.ee:                                            ; preds = %bb.e, %bb.e
  call void @_ZN14tetgenbehavior5usageEv(ptr nonnull align 8 poison)
  unreachable

bb.ef:                                            ; preds = %bb.e
  %3 = sext i8 %i.cs to i32
  %i.xj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.245, i32 noundef %3) ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.dx, %bb.dq, %bb.dn, %bb.cu, %bb.ci, %bb.au, %bb.af, %bb.ab, %bb.y, %bb.n, %bb.e, %bb.dm, %bb.dc, %bb.ct, %bb.bm, %bb.ae, %bb.aa, %bb.x, %bb.t, %bb.m, %._crit_edge1584, %._crit_edge1566, %._crit_edge1542, %bb.as, %bb.ar, %bb.aw, %bb.bd, %bb.bh, %bb.bj, %bb.br, %bb.bq, %bb.bv, %bb.bx, %bb.cb, %bb.ca, %bb.cd, %bb.cf, %bb.ch, %bb.cw, %bb.dp, %bb.dt, %bb.dv, %bb.ec, %bb.ef, %bb.eb, %bb.ea, %bb.dw, %bb.du, %bb.ds, %bb.df, %bb.dd, %bb.ck, %bb.cg, %bb.ce, %bb.cc, %bb.by, %bb.bw, %bb.bt, %bb.bu, %bb.bo, %bb.bn, %bb.bi, %bb.bf, %bb.bg, %bb.bb, %bb.bc, %bb.at, %bb.ag, %bb.ah, %._crit_edge1554, %bb.v, %bb.u
  %.44 = phi i32 [ %i.fo, %._crit_edge1584 ], [ %i.ew, %bb.n ], [ %.61182, %bb.m ], [ %i.gk, %bb.v ], [ %.01176, %bb.ef ], [ %i.gg, %bb.u ], [ %.81184, %bb.t ], [ %i.hy, %._crit_edge1566 ], [ %i.hg, %bb.y ], [ %.101186, %bb.x ], [ %i.jj, %._crit_edge1554 ], [ %i.ir, %bb.ab ], [ %.131189, %bb.aa ], [ %i.ki, %._crit_edge1542 ], [ %.pre-phi, %bb.af ], [ %.151191, %bb.ae ], [ %i.kl, %bb.ah ], [ %i.wz, %bb.eb ], [ %.01176, %bb.ag ], [ %.24, %bb.as ], [ %.24, %bb.ar ], [ %.01176, %bb.at ], [ %i.of, %bb.aw ], [ %.01176, %bb.au ], [ %i.oq, %bb.bb ], [ %.01176, %bb.bc ], [ %.01176, %bb.bd ], [ %i.ov, %bb.bf ], [ %.01176, %bb.bg ], [ %.01176, %bb.bh ], [ %.01176, %bb.bi ], [ %.01176, %bb.bj ], [ %i.pk, %bb.bo ], [ %.01176, %bb.ec ], [ %.pre-phi1767, %bb.bn ], [ %.27, %bb.bm ], [ %i.pq, %bb.bq ], [ %.01176, %bb.br ], [ %i.pv, %bb.bt ], [ %.01176, %bb.bu ], [ %.01176, %bb.bv ], [ %.01176, %bb.bw ], [ %.01176, %bb.bx ], [ %.01176, %bb.by ], [ %i.qg, %bb.ca ], [ %.01176, %bb.cb ], [ %.01176, %bb.cc ], [ %.01176, %bb.cd ], [ %.01176, %bb.ce ], [ %.01176, %bb.cf ], [ %.01176, %bb.cg ], [ %.01176, %bb.ch ], [ %i.qt, %bb.ck ], [ %.01176, %bb.ci ], [ %i.te, %bb.cw ], [ %i.sp, %bb.cu ], [ %.33, %bb.ct ], [ %i.uj, %bb.df ], [ %.01176, %bb.dx ], [ %i.tv, %bb.dd ], [ %.36, %bb.dc ], [ %i.vz, %bb.dp ], [ %i.vk, %bb.dn ], [ %.40, %bb.dm ], [ %i.wk, %bb.ds ], [ %.01176, %bb.dq ], [ %.01176, %bb.dt ], [ %.01176, %bb.du ], [ %.01176, %bb.dv ], [ %.01176, %bb.dw ], [ %.01176, %bb.e ], [ %i.wz, %bb.ea ]
  %i.xk = add nsw i32 %.44, 1
  br label %bb.e, !llvm.loop !539

.loopexit1504:                                    ; preds = %bb.e, %bb.ed
  %.11201 = phi i32 [ %i.cm, %bb.ed ], [ %.012001587, %bb.e ]
  %i.xl = add nsw i32 %.11201, 1                  ; 2 uses
  %i.xm = icmp slt i32 %i.xl, %.012121795
  br i1 %i.xm, label %.backedge.backedge, label %._crit_edge1589

.backedge.backedge:                               ; preds = %.loopexit1504, %.loopexit1504.thread
  %.012001587.be = phi i32 [ %i.xl, %.loopexit1504 ], [ %i.xo, %.loopexit1504.thread ]
  br label %.backedge, !llvm.loop !540

.loopexit1504.thread:                             ; preds = %bb.c
  %i.xn = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.ck, i64 noundef 1023) #40 ; 0 uses
  store i8 0, ptr %i.h, align 1, !tbaa !46
  %i.xo = add nsw i32 %.012001587, 1              ; 2 uses
  %i.xp = icmp slt i32 %i.xo, %.012121795
  br i1 %i.xp, label %.backedge.backedge, label %._crit_edge1589.thread

._crit_edge1589:                                  ; preds = %.loopexit1504
  br i1 %.not1359, label %bb.eh, label %._crit_edge1589.thread

bb.eh:                                            ; preds = %._crit_edge1589
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.xq, ptr noundef nonnull align 1 dereferenceable(15) @.str.246, i64 15, i1 false) #40
  br label %bb.fe

._crit_edge1589.thread:                           ; preds = %.loopexit1504.thread, %bb.b, %._crit_edge1589
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 3 uses
  %i.xs = load i8, ptr %i.xr, align 8, !tbaa !46
  %i.xt = icmp eq i8 %i.xs, 0
  br i1 %i.xt, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %._crit_edge1589.thread
  call void @_ZN14tetgenbehavior6syntaxEv(ptr nonnull align 8 poison)
  %i.xu = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 0, ptr %i.xu, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %i.xu, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.ej:                                            ; preds = %._crit_edge1589.thread
  %i.xv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xr) #44
  %i.xw = getelementptr i8, ptr %i.xr, i64 %i.xv  ; 3 uses
  %i.xx = getelementptr i8, ptr %i.xw, i64 -5     ; 6 uses
  %i.xy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xx, ptr noundef nonnull dereferenceable(6) @.str.3) #44
  %.not = icmp eq i32 %i.xy, 0
  br i1 %.not, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store i8 0, ptr %i.xx, align 1, !tbaa !46
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 0, ptr %i.xz, align 4, !tbaa !186
  br label %bb.fe

bb.el:                                            ; preds = %bb.ej
  %i.ya = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xx, ptr noundef nonnull dereferenceable(6) @.str.34) #44
  %.not1310 = icmp eq i32 %i.ya, 0
  br i1 %.not1310, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i8 0, ptr %i.xx, align 1, !tbaa !46
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 1, ptr %i.yb, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.en:                                            ; preds = %bb.el
  %i.yc = getelementptr i8, ptr %i.xw, i64 -6     ; 2 uses
  %i.yd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yc, ptr noundef nonnull dereferenceable(7) @.str.35) #44
  %.not1311 = icmp eq i32 %i.yd, 0
  br i1 %.not1311, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i8 0, ptr %i.yc, align 1, !tbaa !46
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 1, ptr %i.ye, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.ep:                                            ; preds = %bb.en
  %i.yf = getelementptr i8, ptr %i.xw, i64 -4     ; 12 uses
  %i.yg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.53) #44
  %.not1312 = icmp eq i32 %i.yg, 0
  br i1 %.not1312, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 2, ptr %i.yh, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.er:                                            ; preds = %bb.ep
  %i.yi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.64) #44
  %.not1313 = icmp eq i32 %i.yi, 0
  br i1 %.not1313, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 3, ptr %i.yj, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.et:                                            ; preds = %bb.er
  %i.yk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.87) #44
  %.not1314 = icmp eq i32 %i.yk, 0
  br i1 %.not1314, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 4, ptr %i.yl, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.ev:                                            ; preds = %bb.et
  %i.ym = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xx, ptr noundef nonnull dereferenceable(6) @.str.94) #44
  %.not1315 = icmp eq i32 %i.ym, 0
  br i1 %.not1315, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  store i8 0, ptr %i.xx, align 1, !tbaa !46
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 5, ptr %i.yn, align 4, !tbaa !186
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !121
  %.not1316 = icmp eq i32 %i.yp, 0
  br i1 %.not1316, label %bb.ex, label %bb.fe

bb.ex:                                            ; preds = %bb.ew
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.ey:                                            ; preds = %bb.ev
  %i.yq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.114) #44
  %.not1317 = icmp eq i32 %i.yq, 0
  br i1 %.not1317, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 6, ptr %i.yr, align 4, !tbaa !186
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fe

bb.fa:                                            ; preds = %bb.ey
  %i.ys = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.14) #44
  %.not1318 = icmp eq i32 %i.ys, 0
  br i1 %.not1318, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 7, ptr %i.yt, align 4, !tbaa !186
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.yu, align 8, !tbaa !121
  br label %bb.fe

bb.fc:                                            ; preds = %bb.fa
  %i.yv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yf, ptr noundef nonnull dereferenceable(5) @.str.247) #44
  %.not1319 = icmp eq i32 %i.yv, 0
  br i1 %.not1319, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i8 0, ptr %i.yf, align 1, !tbaa !46
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 6540
  store i32 8, ptr %i.yw, align 4, !tbaa !186
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.yx, align 8, !tbaa !121
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ek, %bb.eo, %bb.es, %bb.ex, %bb.ew, %bb.fb, %bb.fd, %bb.fc, %bb.ez, %bb.eu, %bb.eq, %bb.em, %bb.eh
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !117
  %.not1320 = icmp eq i32 %i.yz, 0
  br i1 %.not1320, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.za = load i32, ptr %0, align 8, !tbaa !113
  %.not1321 = icmp eq i32 %i.za, 0
  br i1 %.not1321, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !121
  %.not1322 = icmp eq i32 %i.zc, 0
  br i1 %.not1322, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 1, ptr %0, align 8, !tbaa !113
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe
end_hunk_1
