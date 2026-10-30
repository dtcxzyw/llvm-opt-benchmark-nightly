Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sodium_base642bin:bb.a
  %i.cw = xor i32 %i.cv, 63
  %i.cx = or i32 %i.cw, %i.cs
  %i.cy = extractelement <2 x i32> %i.co, i64 0
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = extractelement <2 x i32> %i.co, i64 1
  %i.db = or i32 %i.cz, %i.da
  %i.dc = or i32 %i.db, %i.ca                     ; 2 uses
  %i.dd = sub nsw i32 0, %i.dc
  %i.de = lshr i32 %i.dd, 8
  %i.df = and i32 %i.de, 255
  %i.dg = xor i32 %i.df, 255
  %i.dh = xor i32 %i.br, 65470
  %.neg16.i = add nuw nsw i32 %i.dh, 1
  %i.di = lshr i32 %.neg16.i, 8
  %i.dj = and i32 %i.dg, %i.di
  %i.dk = or i32 %i.dj, %i.dc                     ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 255
  br i1 %i.dl, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  br i1 %.not60, label %.loopexit94, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.bq) #14
  %.not61 = icmp eq ptr %i.dm, null
  br i1 %.not61, label %.loopexit94, label %sodium_base64_check_variant.exit

sodium_base64_check_variant.exit:                 ; preds = %bb.j
  %i.dn = add nuw i64 %.082106, 1                 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %3
  br i1 %i.do, label %bb.h, label %.loopexit94.loopexit250.split.loop.exit287, !llvm.loop !26

.split:                                           ; preds = %bb.h
  %i.dp = shl i32 %.043.ph139, 6
  %i.dq = add i32 %i.dk, %i.dp                    ; 4 uses
  %i.dr = add nuw nsw i64 %.049.ph137, 6
  %i.ds = icmp ugt i64 %.049.ph137, 1
  br i1 %i.ds, label %bb.k, label %sodium_base64_check_variant.exit.outer

bb.k:                                             ; preds = %.split
  %i.dt = add nsw i64 %.049.ph137, -2             ; 3 uses
  %.not59 = icmp ult i64 %.046.ph138, %1
  br i1 %.not59, label %bb.l, label %.split157.us

.split157.us:                                     ; preds = %bb.k, %bb.e
  %.us-phi158 = phi i64 [ %.046.ph138.us, %bb.e ], [ %.046.ph138, %bb.k ]
  %.us-phi159 = phi i64 [ %i.bg, %bb.e ], [ %i.dt, %bb.k ]
  %.us-phi160 = phi i32 [ %i.bd, %bb.e ], [ %i.dq, %bb.k ]
  %.us-phi161 = phi i64 [ %.082106.us.us, %bb.e ], [ %.082106, %bb.k ]
  %i.du = tail call ptr @__errno_location() #15
  store i32 34, ptr %i.du, align 4
  br label %.loopexit94

bb.l:                                             ; preds = %bb.k
  %i.dv = trunc nuw nsw i64 %i.dt to i32
  %i.dw = lshr i32 %i.dq, %i.dv
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = add nuw i64 %.046.ph138, 1
  %i.dz = getelementptr i8, ptr %0, i64 %.046.ph138
  store i8 %i.dx, ptr %i.dz, align 1
  br label %sodium_base64_check_variant.exit.outer

sodium_base64_check_variant.exit.outer:           ; preds = %bb.l, %.split
  %.150 = phi i64 [ %i.dt, %bb.l ], [ %i.dr, %.split ] ; 2 uses
  %.147 = phi i64 [ %i.dy, %bb.l ], [ %.046.ph138, %.split ] ; 2 uses
  %i.ea = add nuw i64 %.082106, 1                 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %.lr.ph, label %.loopexit94, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %sodium_base64_check_variant.exit.outer
  %.043.ph139 = phi i32 [ %i.dq, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.046.ph138 = phi i64 [ %.147, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 8 uses
  %.049.ph137 = phi i64 [ %.150, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.082.ph136 = phi i64 [ %i.ea, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 3 uses
  br label %bb.h

.loopexit94.loopexit.split.loop.exit299:          ; preds = %sodium_base64_check_variant.exit.us.us
  %i.ec = add nuw i64 %.082.ph136.us, 1
  %umax211.le = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ec)
  br label %.loopexit94

.loopexit94.loopexit250.split.loop.exit287:       ; preds = %sodium_base64_check_variant.exit
  %i.ed = add nuw i64 %.082.ph136, 1
  %umax.le = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ed)
  br label %.loopexit94

.loopexit94:                                      ; preds = %sodium_base64_check_variant.exit.outer, %bb.i, %bb.j, %sodium_base64_check_variant.exit.outer.us, %bb.c, %bb.d, %.loopexit94.loopexit250.split.loop.exit287, %.loopexit94.loopexit.split.loop.exit299, %.split157.us
  %.046.ph104 = phi i64 [ %.us-phi158, %.split157.us ], [ %.147.us, %sodium_base64_check_variant.exit.outer.us ], [ %.046.ph138.us, %bb.c ], [ %.046.ph138, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.046.ph138, %bb.i ], [ %.046.ph138.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.046.ph138.us, %bb.d ], [ %.046.ph138, %bb.j ], [ %.147, %sodium_base64_check_variant.exit.outer ]
  %.08299 = phi i64 [ %.us-phi161, %.split157.us ], [ %i.bm, %sodium_base64_check_variant.exit.outer.us ], [ %.082.ph136.us, %bb.c ], [ %umax.le, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.082106, %bb.j ], [ %umax211.le, %.loopexit94.loopexit.split.loop.exit299 ], [ %.082106.us.us, %bb.d ], [ %.082.ph136, %bb.i ], [ %i.ea, %sodium_base64_check_variant.exit.outer ] ; 2 uses
  %.251 = phi i64 [ %.us-phi159, %.split157.us ], [ %.150.us, %sodium_base64_check_variant.exit.outer.us ], [ %.049.ph137.us, %bb.c ], [ %.049.ph137, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.049.ph137, %bb.i ], [ %.049.ph137.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.049.ph137.us, %bb.d ], [ %.049.ph137, %bb.j ], [ %.150, %sodium_base64_check_variant.exit.outer ] ; 2 uses
  %.not69 = phi i1 [ true, %.split157.us ], [ false, %sodium_base64_check_variant.exit.outer.us ], [ false, %bb.c ], [ false, %.loopexit94.loopexit250.split.loop.exit287 ], [ false, %bb.i ], [ false, %.loopexit94.loopexit.split.loop.exit299 ], [ false, %bb.d ], [ false, %bb.j ], [ false, %sodium_base64_check_variant.exit.outer ]
  %.1 = phi i32 [ %.us-phi160, %.split157.us ], [ %i.bd, %sodium_base64_check_variant.exit.outer.us ], [ %.043.ph139.us, %bb.c ], [ %.043.ph139, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.043.ph139, %bb.i ], [ %.043.ph139.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.043.ph139.us, %bb.d ], [ %.043.ph139, %bb.j ], [ %i.dq, %sodium_base64_check_variant.exit.outer ]
  %i.ee = icmp ugt i64 %.251, 4
  br i1 %i.ee, label %.critedge, label %.loopexit94.thread

.loopexit94.thread:                               ; preds = %sodium_base64_check_variant.exit.preheader, %.loopexit94
  %.1245 = phi i32 [ %.1, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ]
  %.not69244 = phi i1 [ %.not69, %.loopexit94 ], [ false, %sodium_base64_check_variant.exit.preheader ]
  %.251243 = phi i64 [ %.251, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 2 uses
  %.08299242 = phi i64 [ %.08299, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 13 uses
  %.046.ph104241 = phi i64 [ %.046.ph104, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 5 uses
  %i.ef = trunc nuw nsw i64 %.251243 to i32
  %notmask = shl nsw i32 -1, %i.ef
  %i.eg = xor i32 %notmask, -1
  %i.eh = and i32 %.1245, %i.eg
  %.not62 = icmp ne i32 %i.eh, 0
  %brmerge = or i1 %.not69244, %.not62
  br i1 %brmerge, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.loopexit94.thread
  %i.ei = and i32 %7, 2
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ek = lshr i64 %.251243, 1                    ; 3 uses
  %.not15.i = icmp eq i64 %i.ek, 0
  br i1 %.not15.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.el = icmp eq ptr %4, null
  br i1 %i.el, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %umax212 = tail call i64 @llvm.umax.i64(i64 %.08299242, i64 %3) ; 3 uses
  %exitcond.not355.not = icmp ult i64 %.08299242, %3
  br i1 %exitcond.not355.not, label %.lr.ph358, label %.loopexit.sink.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.em = icmp eq i64 %i.ek, 1
  %umax213 = tail call i64 @llvm.umax.i64(i64 %.08299242, i64 %3)
  %exitcond214.peel.not.not = icmp ult i64 %.08299242, %3
  br i1 %exitcond214.peel.not.not, label %bb.o, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %.lr.ph.split.us.preheader.i
  fence acquire
  %i.en = getelementptr i8, ptr %2, i64 %.08299242
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = icmp eq i8 %i.eo, 61
  br i1 %i.ep, label %bb.p, label %.loopexit.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.eq = add nuw i64 %.08299242, 1               ; 4 uses
  br i1 %i.em, label %.critedge, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.p
  %exitcond214.not = icmp eq i64 %3, %i.eq
  br i1 %exitcond214.not, label %.loopexit.sink.split.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.i
  fence acquire
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.es, 61
  br i1 %i.et, label %.loopexit.loopexit.loopexit, label %.loopexit.sink.split.i

.lr.ph.split.i:                                   ; preds = %bb.t
  %exitcond.not = icmp eq i64 %i.fb, %umax212
  br i1 %exitcond.not, label %.loopexit.sink.split.i, label %.lr.ph358, !llvm.loop !27

.lr.ph358:                                        ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %.016.i357 = phi i64 [ %.1.i, %.lr.ph.split.i ], [ %i.ek, %.lr.ph.split.i.preheader ] ; 2 uses
  %.4356 = phi i64 [ %i.fb, %.lr.ph.split.i ], [ %.08299242, %.lr.ph.split.i.preheader ] ; 3 uses
  fence acquire
  %i.eu = getelementptr i8, ptr %2, i64 %.4356
  %i.ev = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.ew = icmp eq i8 %i.ev, 61
  br i1 %i.ew, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph358
  %i.ex = add nsw i64 %.016.i357, -1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph358
  %i.ey = sext i8 %i.ev to i32
  %i.ez = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %4, i32 noundef %i.ey) #14
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.loopexit.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i64 [ %i.ex, %bb.r ], [ %.016.i357, %bb.s ] ; 2 uses
  %i.fb = add i64 %.4356, 1                       ; 3 uses
  %.not.i73 = icmp eq i64 %.1.i, 0
  br i1 %.not.i73, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !27

.loopexit.sink.split.i:                           ; preds = %.lr.ph.split.i, %bb.s, %.lr.ph.split.i.preheader, %.lr.ph.split.us.preheader.i, %bb.o, %bb.q, %.lr.ph.split.us.i
  %.5 = phi i64 [ %umax213, %.lr.ph.split.us.i ], [ %.08299242, %.lr.ph.split.us.preheader.i ], [ %.08299242, %bb.o ], [ %i.eq, %bb.q ], [ %umax212, %.lr.ph.split.i.preheader ], [ %.4356, %bb.s ], [ %umax212, %.lr.ph.split.i ]
  %.sink.i = phi i32 [ 34, %.lr.ph.split.us.i ], [ 34, %.lr.ph.split.us.preheader.i ], [ 22, %bb.o ], [ 22, %bb.q ], [ 34, %.lr.ph.split.i.preheader ], [ 22, %bb.s ], [ 34, %.lr.ph.split.i ]
  %i.fc = tail call ptr @__errno_location() #15
  store i32 %.sink.i, ptr %i.fc, align 4
  br label %.critedge

.loopexit.loopexit.loopexit:                      ; preds = %bb.q
  %i.fd = add i64 %.08299242, 2
  br label %.critedge

.loopexit:                                        ; preds = %bb.t, %bb.m, %bb.n
  %.183.ph = phi i64 [ %.08299242, %bb.n ], [ %.08299242, %bb.m ], [ %i.fb, %bb.t ] ; 3 uses
  %.not64 = icmp ne ptr %4, null
  %i.fe = icmp ult i64 %.183.ph, %3
  %or.cond = and i1 %.not64, %i.fe
  br i1 %or.cond, label %.lr.ph167, label %.critedge

.lr.ph167:                                        ; preds = %.loopexit, %bb.u
  %.284166 = phi i64 [ %i.fj, %bb.u ], [ %.183.ph, %.loopexit ] ; 3 uses
  %i.ff = getelementptr i8, ptr %2, i64 %.284166
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i8 %i.fg to i32
  %i.fi = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.fh) #14
  %.not65 = icmp eq ptr %i.fi, null
  br i1 %.not65, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph167
  %i.fj = add i64 %.284166, 1                     ; 2 uses
  %exitcond216.not = icmp eq i64 %i.fj, %3
  br i1 %exitcond216.not, label %.critedge, label %.lr.ph167, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph167, %bb.u, %.loopexit.loopexit.loopexit, %bb.p, %.loopexit94, %.loopexit94.thread, %.loopexit.sink.split.i, %.loopexit
  %.14589 = phi i32 [ 0, %.loopexit ], [ -1, %.loopexit94.thread ], [ -1, %.loopexit.sink.split.i ], [ -1, %.loopexit94 ], [ 0, %bb.p ], [ 0, %.loopexit.loopexit.loopexit ], [ 0, %bb.u ], [ 0, %.lr.ph167 ] ; 2 uses
  %.3 = phi i64 [ %.183.ph, %.loopexit ], [ %.08299242, %.loopexit94.thread ], [ %.5, %.loopexit.sink.split.i ], [ %.08299, %.loopexit94 ], [ %i.eq, %bb.p ], [ %i.fd, %.loopexit.loopexit.loopexit ], [ %.284166, %.lr.ph167 ], [ %3, %bb.u ] ; 2 uses
  %.248 = phi i64 [ %.046.ph104241, %.loopexit ], [ 0, %.loopexit94.thread ], [ 0, %.loopexit.sink.split.i ], [ 0, %.loopexit94 ], [ %.046.ph104241, %bb.p ], [ %.046.ph104241, %.loopexit.loopexit.loopexit ], [ %.046.ph104241, %bb.u ], [ %.046.ph104241, %.lr.ph167 ]
  %.not66 = icmp eq ptr %6, null
  br i1 %.not66, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.fk = getelementptr i8, ptr %2, i64 %.3
  store ptr %i.fk, ptr %6, align 8
  br label %bb.y

bb.w:                                             ; preds = %.critedge
  %.not67 = icmp eq i64 %.3, %3
  br i1 %.not67, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = tail call ptr @__errno_location() #15
  store i32 22, ptr %i.fl, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.2 = phi i32 [ %.14589, %bb.v ], [ -1, %bb.x ], [ %.14589, %bb.w ]
  %.not68 = icmp eq ptr %5, null
  br i1 %.not68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %.248, ptr %5, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  ret i32 %.2
}

; Function Attrs: nofree nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @sodium_ip2bin(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 %2         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = icmp ult ptr %1, %i.c
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.043116 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.043116, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.043116, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.043.lcssa = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ], [ %.043116, %.lr.ph ] ; 5 uses
  %i.g = ptrtoint ptr %.043.lcssa to i64          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 37, i64 noundef %i.i) #14 ; 4 uses
  %.not50 = icmp eq ptr %i.j, null
  br i1 %.not50, label %.thread, label %bb.c

.thread:                                          ; preds = %.critedge
  %i.k = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 58, i64 noundef %i.i) #14
  %.not252 = icmp eq ptr %i.k, null
  br i1 %.not252, label %bb.ac, label %bb.f

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  %i.m = icmp ult ptr %i.l, %.043.lcssa
  br i1 %i.m, label %.lr.ph120, label %.loopexit

.lr.ph120:                                        ; preds = %bb.c, %bb.e
  %.0119 = phi ptr [ %i.s, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.n = load i8, ptr %.0119, align 1             ; 3 uses
  %i.o = add i8 %i.n, -48
  %or.cond53 = icmp ult i8 %i.o, 10
  %i.p = and i8 %i.n, -33
  %i.q = add i8 %i.p, -65
  %i.r = icmp ult i8 %i.q, 26
  %or.cond62 = or i1 %or.cond53, %i.r
  br i1 %or.cond62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph120
  switch i8 %i.n, label %.loopexit [
    i8 45, label %bb.e
    i8 95, label %bb.e
    i8 46, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %.lr.ph120
  %i.s = getelementptr i8, ptr %.0119, i64 1      ; 2 uses
  %exitcond174.not = icmp eq ptr %i.s, %.043.lcssa
  br i1 %exitcond174.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.e
  %.pre193 = ptrtoint ptr %i.j to i64             ; 2 uses
  %.pre194 = sub i64 %.pre193, %i.h
  %i.t = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 58, i64 noundef %.pre194) #14
  %.not251 = icmp eq ptr %i.t, null
  br i1 %.not251, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi217222 = phi i64 [ %i.g, %.thread ], [ %.pre193, %._crit_edge ] ; 2 uses
  %.1218221 = phi ptr [ %.043.lcssa, %.thread ], [ %i.j, %._crit_edge ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.not.i = icmp ult ptr %1, %.1218221
  br i1 %.not.i, label %bb.g, label %parse_ipv6.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %1, align 1
  %i.w = icmp eq i8 %i.v, 58
  br i1 %i.w, label %bb.h, label %.outer.i.preheader

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %.not96.i = icmp ult ptr %i.x, %.1218221
  br i1 %.not96.i, label %bb.i, label %parse_ipv6.exit

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %i.x, align 1
  %.not97.i = icmp eq i8 %i.y, 58
  br i1 %.not97.i, label %bb.j, label %parse_ipv6.exit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %1, i64 2
  br label %.outer.i.preheader

.outer.i.preheader:                               ; preds = %bb.j, %bb.g
  %.182.ph.i.ph = phi ptr [ null, %bb.g ], [ %i.a, %bb.j ]
  %.180.ph.i.ph = phi ptr [ %1, %bb.g ], [ %i.z, %bb.j ]
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.preheader, %bb.n
  %.083.ph.i = phi ptr [ %i.ao, %bb.n ], [ %i.a, %.outer.i.preheader ] ; 13 uses
  %.182.ph.i = phi ptr [ %.182.ph112155.i.lcssa, %bb.n ], [ %.182.ph.i.ph, %.outer.i.preheader ] ; 4 uses
  %.180.ph.i = phi ptr [ %i.au, %bb.n ], [ %.180.ph.i.ph, %.outer.i.preheader ] ; 6 uses
  %i.aa = icmp ult ptr %.180.ph.i, %.1218221
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.thread.i

.lr.ph.i.preheader:                               ; preds = %.outer.i
  %.180.ph.i176 = ptrtoaddr ptr %.180.ph.i to i64 ; 2 uses
  %i.ab = sub i64 %.pre-phi217222, %.180.ph.i176
  %i.ac = load i8, ptr %.180.ph.i, align 1        ; 2 uses
  switch i8 %i.ac, label %bb.l [
    i8 58, label %bb.k
    i8 46, label %.loopexit212.i
  ]

bb.k:                                             ; preds = %.lr.ph.i.preheader
  %.not103.i.peel = icmp eq ptr %.182.ph.i, null
  br i1 %.not103.i.peel, label %.outer111.i.peel, label %parse_ipv6.exit

.outer111.i.peel:                                 ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.180.ph.i, i64 1 ; 4 uses
  %exitcond178.peel.not = icmp eq i64 %i.ab, 1
  br i1 %exitcond178.peel.not, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer111.i.peel
  %.pre = load i8, ptr %i.ad, align 1             ; 2 uses
  switch i8 %.pre, label %.loopexit180 [
    i8 58, label %parse_ipv6.exit
    i8 46, label %.loopexit212.i
  ]

.loopexit180:                                     ; preds = %.lr.ph.i
  %.pre192 = ptrtoaddr ptr %i.ad to i64
  br label %bb.l

bb.l:                                             ; preds = %.loopexit180, %.lr.ph.i.preheader
  %.178.ph114157.i.lcssa189.pre-phi = phi i64 [ %.pre192, %.loopexit180 ], [ %.180.ph.i176, %.lr.ph.i.preheader ]
  %.178.ph114157.i.lcssa = phi ptr [ %i.ad, %.loopexit180 ], [ %.180.ph.i, %.lr.ph.i.preheader ] ; 8 uses
  %.182.ph112155.i.lcssa = phi ptr [ %.083.ph.i, %.loopexit180 ], [ %.182.ph.i, %.lr.ph.i.preheader ] ; 6 uses
  %.lcssa = phi i8 [ %.pre, %.loopexit180 ], [ %i.ac, %.lr.ph.i.preheader ]
  %i.ae = sext i8 %.lcssa to i32                  ; 2 uses
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %or.cond.i.peel.i = icmp ult i32 %i.af, 10
  br i1 %or.cond.i.peel.i, label %ip_hex_digit.exit.peel.i.thread57, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
