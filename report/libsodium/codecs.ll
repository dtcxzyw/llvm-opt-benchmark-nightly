Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sodium_base642bin:bb.a
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
  %or.cond = select i1 %.not64, i1 %i.fe, i1 false
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
  %i.g = ptrtoint ptr %.043.lcssa to i64
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
  %.pre193 = ptrtoint ptr %i.j to i64
  %.pre194 = sub i64 %.pre193, %i.h
  %i.t = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 58, i64 noundef %.pre194) #14
  %.not251 = icmp eq ptr %i.t, null
  br i1 %.not251, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread
  %.1217222 = phi ptr [ %.043.lcssa, %.thread ], [ %i.j, %._crit_edge ] ; 9 uses
  %.pre-phi219220 = ptrtoint ptr %.1217222 to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.not.i = icmp ult ptr %1, %.1217222
  br i1 %.not.i, label %bb.g, label %parse_ipv6.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %1, align 1
  %i.w = icmp eq i8 %i.v, 58
  br i1 %i.w, label %bb.h, label %.outer.i.preheader

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %.not96.i = icmp ult ptr %i.x, %.1217222
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
  %.083.ph.i = phi ptr [ %i.an, %bb.n ], [ %i.a, %.outer.i.preheader ] ; 13 uses
  %.182.ph.i = phi ptr [ %.178.ph114157.i.lcssa.a, %bb.n ], [ %.182.ph.i.ph, %.outer.i.preheader ] ; 4 uses
  %.180.ph.i = phi ptr [ %i.at, %bb.n ], [ %.180.ph.i.ph, %.outer.i.preheader ] ; 6 uses
  %i.aa = icmp ult ptr %.180.ph.i, %.1217222
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.thread.i

.lr.ph.i.preheader:                               ; preds = %.outer.i
  %.180.ph.i176 = ptrtoaddr ptr %.180.ph.i to i64
  %i.ab = sub i64 %.pre-phi219220, %.180.ph.i176
  %i.ac = load i8, ptr %.180.ph.i, align 1        ; 2 uses
  switch i8 %i.ac, label %bb.l [
    i8 58, label %bb.k
    i8 46, label %.loopexit212.i
  ]

bb.k:                                             ; preds = %.lr.ph.i.preheader
  %.not103.i.peel = icmp eq ptr %.182.ph.i, null
  br i1 %.not103.i.peel, label %.outer111.i.peel, label %parse_ipv6.exit

.outer111.i.peel:                                 ; preds = %bb.k
  %exitcond178.peel.not = icmp eq i64 %i.ab, 1
  br i1 %exitcond178.peel.not, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer111.i.peel
  %3 = getelementptr i8, ptr %.180.ph.i, i64 1    ; 3 uses
  %.pre = load i8, ptr %3, align 1                ; 2 uses
  switch i8 %.pre, label %bb.l [
    i8 58, label %parse_ipv6.exit
    i8 46, label %.loopexit212.i
  ]

bb.l:                                             ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.178.ph114157.i.lcssa = phi ptr [ %.180.ph.i, %.lr.ph.i.preheader ], [ %3, %.lr.ph.i ] ; 9 uses
  %.178.ph114157.i.lcssa.a = phi ptr [ %.182.ph.i, %.lr.ph.i.preheader ], [ %.083.ph.i, %.lr.ph.i ] ; 6 uses
  %.lcssa = phi i8 [ %i.ac, %.lr.ph.i.preheader ], [ %.pre, %.lr.ph.i ]
  %.178.ph114157.i.lcssa189.pre-phi = ptrtoaddr ptr %.178.ph114157.i.lcssa to i64
  %i.ad = sext i8 %.lcssa to i32                  ; 2 uses
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %or.cond.i.peel.i = icmp ult i32 %i.ae, 10
  br i1 %or.cond.i.peel.i, label %ip_hex_digit.exit.peel.i.thread57, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = or i32 %i.ad, 32                        ; 2 uses
  %i.ag = add nsw i32 %i.af, -87
  %i.ah = add nsw i32 %i.af, -103
  %or.cond60 = icmp ult i32 %i.ah, -6
  br i1 %or.cond60, label %parse_ipv6.exit, label %ip_hex_digit.exit.peel.i.thread57

ip_hex_digit.exit.peel.i.thread57:                ; preds = %bb.m, %bb.l
  %.0.i.peel.i59 = phi i32 [ %i.ag, %bb.m ], [ %i.ae, %bb.l ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.178.ph114157.i.lcssa, i64 1 ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %.1217222
  br i1 %i.aj, label %.peel.next.i.preheader, label %.outer111._crit_edge.i

.peel.next.i.preheader:                           ; preds = %ip_hex_digit.exit.peel.i.thread57
  %i.ak = sub i64 %.pre-phi219220, %.178.ph114157.i.lcssa189.pre-phi
  %i.al = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.am = sext i8 %i.al to i32                    ; 2 uses
  switch i8 %i.al, label %bb.p [
    i8 58, label %.loopexit.i
    i8 46, label %.loopexit212.i
  ]

.loopexit.i:                                      ; preds = %.peel.next.i.3, %.peel.next.i.2, %.peel.next.i.1, %.peel.next.i.preheader
  %.076145.i.lcssa = phi i32 [ %.0.i.peel.i59, %.peel.next.i.preheader ], [ %i.be, %.peel.next.i.1 ], [ %i.bo, %.peel.next.i.2 ], [ %i.bx, %.peel.next.i.3 ] ; 2 uses
  %.180144.i.lcssa = phi ptr [ %i.ai, %.peel.next.i.preheader ], [ %i.bf, %.peel.next.i.1 ], [ %4, %.peel.next.i.2 ], [ %5, %.peel.next.i.3 ]
  %i.an = getelementptr i8, ptr %.083.ph.i, i64 2 ; 2 uses
  %i.ao = icmp ugt ptr %i.an, %i.u
  br i1 %i.ao, label %parse_ipv6.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.ap = lshr i32 %.076145.i.lcssa, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr i8, ptr %.083.ph.i, i64 1
  store i8 %i.aq, ptr %.083.ph.i, align 2
  %i.as = trunc i32 %.076145.i.lcssa to i8
  store i8 %i.as, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %.180144.i.lcssa, i64 1 ; 2 uses
  %.not104.i = icmp ult ptr %i.at, %.1217222
  br i1 %.not104.i, label %.outer.i, label %parse_ipv6.exit, !llvm.loop !31

.loopexit212.i:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.peel.next.i.preheader, %.peel.next.i.1, %.peel.next.i.2, %.peel.next.i.3
  %.178.ph114157.i141 = phi ptr [ %.178.ph114157.i.lcssa, %.peel.next.i.preheader ], [ %.178.ph114157.i.lcssa, %.peel.next.i.3 ], [ %.178.ph114157.i.lcssa, %.peel.next.i.2 ], [ %.178.ph114157.i.lcssa, %.peel.next.i.1 ], [ %3, %.lr.ph.i ], [ %.180.ph.i, %.lr.ph.i.preheader ]
  %.182.ph112155.i132 = phi ptr [ %.178.ph114157.i.lcssa.a, %.peel.next.i.preheader ], [ %.178.ph114157.i.lcssa.a, %.peel.next.i.3 ], [ %.178.ph114157.i.lcssa.a, %.peel.next.i.2 ], [ %.178.ph114157.i.lcssa.a, %.peel.next.i.1 ], [ %.083.ph.i, %.lr.ph.i ], [ %.182.ph.i, %.lr.ph.i.preheader ]
  %i.au = getelementptr i8, ptr %.083.ph.i, i64 4 ; 2 uses
  %i.av = icmp ugt ptr %i.au, %i.u
  br i1 %i.av, label %parse_ipv6.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit212.i
  %i.aw = call fastcc i32 @parse_ipv4(ptr noundef nonnull %.178.ph114157.i141, ptr noundef nonnull readnone %.1217222, ptr noundef %.083.ph.i)
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %parse_ipv6.exit, label %.thread.i

bb.p:                                             ; preds = %.peel.next.i.preheader
  %i.ay = add nsw i32 %i.am, -48                  ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ay, 10
  br i1 %or.cond.i.i, label %ip_hex_digit.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = or i32 %i.am, 32                        ; 2 uses
  %i.ba = add nsw i32 %i.az, -97
  %or.cond10.i.i = icmp ult i32 %i.ba, 6
  %i.bb = add nsw i32 %i.az, -87
  %spec.select.i.i = select i1 %or.cond10.i.i, i32 %i.bb, i32 -1
  br label %ip_hex_digit.exit.i

ip_hex_digit.exit.i:                              ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %spec.select.i.i, %bb.q ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bc = icmp slt i32 %.0.i.i, 0
  br i1 %i.bc, label %parse_ipv6.exit, label %bb.r

bb.r:                                             ; preds = %ip_hex_digit.exit.i
  %i.bd = shl nsw i32 %.0.i.peel.i59, 4
  %i.be = or i32 %.0.i.i, %i.bd                   ; 3 uses
  %exitcond191.not = icmp eq i64 %i.ak, 2
  br i1 %exitcond191.not, label %.outer111._crit_edge.i, label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %.178.ph114157.i.lcssa, i64 2 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  switch i8 %i.bg, label %bb.s [
    i8 58, label %.loopexit.i
    i8 46, label %.loopexit212.i
  ]

bb.s:                                             ; preds = %.peel.next.i.1
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %or.cond.i.i.1 = icmp ult i32 %i.bi, 10
  br i1 %or.cond.i.i.1, label %ip_hex_digit.exit.i.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = or i32 %i.bh, 32                        ; 2 uses
  %i.bk = add nsw i32 %i.bj, -97
  %or.cond10.i.i.1 = icmp ult i32 %i.bk, 6
  %i.bl = add nsw i32 %i.bj, -87
  %spec.select.i.i.1 = select i1 %or.cond10.i.i.1, i32 %i.bl, i32 -1
  br label %ip_hex_digit.exit.i.1

ip_hex_digit.exit.i.1:                            ; preds = %bb.t, %bb.s
  %.0.i.i.1 = phi i32 [ %spec.select.i.i.1, %bb.t ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bm = icmp slt i32 %.0.i.i.1, 0
  br i1 %i.bm, label %parse_ipv6.exit, label %bb.u

bb.u:                                             ; preds = %ip_hex_digit.exit.i.1
  %i.bn = shl nsw i32 %i.be, 4
  %i.bo = or i32 %.0.i.i.1, %i.bn                 ; 3 uses
  %4 = getelementptr i8, ptr %.178.ph114157.i.lcssa, i64 3 ; 3 uses
  %exitcond191.not.1 = icmp eq ptr %4, %.1217222
  br i1 %exitcond191.not.1, label %.outer111._crit_edge.i, label %.peel.next.i.2

.peel.next.i.2:                                   ; preds = %bb.u
  %i.bp = load i8, ptr %4, align 1                ; 2 uses
  %i.bq = sext i8 %i.bp to i32                    ; 2 uses
  switch i8 %i.bp, label %bb.v [
    i8 58, label %.loopexit.i
    i8 46, label %.loopexit212.i
  ]

bb.v:                                             ; preds = %.peel.next.i.2
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %or.cond.i.i.2 = icmp ult i32 %i.br, 10
  br i1 %or.cond.i.i.2, label %ip_hex_digit.exit.i.2, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = or i32 %i.bq, 32                        ; 2 uses
  %i.bt = add nsw i32 %i.bs, -97
  %or.cond10.i.i.2 = icmp ult i32 %i.bt, 6
  %i.bu = add nsw i32 %i.bs, -87
  %spec.select.i.i.2 = select i1 %or.cond10.i.i.2, i32 %i.bu, i32 -1
  br label %ip_hex_digit.exit.i.2

ip_hex_digit.exit.i.2:                            ; preds = %bb.w, %bb.v
  %.0.i.i.2 = phi i32 [ %spec.select.i.i.2, %bb.w ], [ %i.br, %bb.v ] ; 2 uses
  %i.bv = icmp slt i32 %.0.i.i.2, 0
  br i1 %i.bv, label %parse_ipv6.exit, label %bb.x

bb.x:                                             ; preds = %ip_hex_digit.exit.i.2
  %i.bw = shl i32 %i.bo, 4
  %i.bx = or i32 %.0.i.i.2, %i.bw                 ; 2 uses
  %5 = getelementptr i8, ptr %.178.ph114157.i.lcssa, i64 4 ; 3 uses
  %exitcond191.not.2 = icmp eq ptr %5, %.1217222
  br i1 %exitcond191.not.2, label %.outer111._crit_edge.i, label %.peel.next.i.3

.peel.next.i.3:                                   ; preds = %bb.x
  %i.by = load i8, ptr %5, align 1                ; 2 uses
  switch i8 %i.by, label %ip_hex_digit.exit.i.3 [
    i8 58, label %.loopexit.i
    i8 46, label %.loopexit212.i
  ]

ip_hex_digit.exit.i.3:                            ; preds = %.peel.next.i.3
  %i.bz = sext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48
  %or.cond.i.i.3 = icmp ult i32 %i.ca, 10         ; 0 uses
  br label %parse_ipv6.exit

.outer111._crit_edge.i:                           ; preds = %ip_hex_digit.exit.peel.i.thread57, %bb.r, %bb.u, %bb.x
  %.076.lcssa.i = phi i32 [ %i.be, %bb.r ], [ %i.bx, %bb.x ], [ %i.bo, %bb.u ], [ %.0.i.peel.i59, %ip_hex_digit.exit.peel.i.thread57 ] ; 2 uses
  %i.cb = getelementptr i8, ptr %.083.ph.i, i64 2 ; 2 uses
  %i.cc = icmp ugt ptr %i.cb, %i.u
  br i1 %i.cc, label %parse_ipv6.exit, label %bb.y

bb.y:                                             ; preds = %.outer111._crit_edge.i
  %i.cd = lshr i32 %.076.lcssa.i, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.083.ph.i, i64 1
  store i8 %i.ce, ptr %.083.ph.i, align 1
  %i.cg = trunc i32 %.076.lcssa.i to i8
  store i8 %i.cg, ptr %i.cf, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %.outer.i, %.outer111.i.peel, %bb.y, %bb.o
  %.182.ph112139.i = phi ptr [ %.178.ph114157.i.lcssa.a, %bb.y ], [ %.182.ph112155.i132, %bb.o ], [ %.182.ph.i, %.outer.i ], [ %.083.ph.i, %.outer111.i.peel ] ; 4 uses
  %.2.i = phi ptr [ %i.cb, %bb.y ], [ %i.au, %bb.o ], [ %.083.ph.i, %.outer111.i.peel ], [ %.083.ph.i, %.outer.i ] ; 2 uses
  %.not99.i = icmp eq ptr %.182.ph112139.i, null
  %.not101.i = icmp eq ptr %.2.i, %i.u            ; 2 uses
  br i1 %.not99.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread.i
  br i1 %.not101.i, label %parse_ipv6.exit, label %.thread108.i

.thread108.i:                                     ; preds = %bb.z
  %i.ch = ptrtoint ptr %.2.i to i64
  %i.ci = ptrtoint ptr %.182.ph112139.i to i64    ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = sub i64 0, %i.cj
  %i.cl = getelementptr i8, ptr %i.u, i64 %i.ck   ; 2 uses
  %i.cm = icmp ugt i64 %i.cj, 16
  %i.cn = select i1 %i.cm, i64 0, i64 %i.cj
  %i.co = call ptr @__memmove_chk(ptr noundef nonnull %i.cl, ptr noundef nonnull %.182.ph112139.i, i64 noundef %i.cj, i64 noundef %i.cn) #16 ; 0 uses
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.cp, %i.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.182.ph112139.i, i8 noundef 0, i64 noundef %i.cq, i1 noundef false) #16
  br label %bb.ab

bb.aa:                                            ; preds = %.thread.i
  br i1 %.not101.i, label %bb.ab, label %parse_ipv6.exit

bb.ab:                                            ; preds = %bb.aa, %.thread108.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 noundef 16, i1 noundef false) #16
  br label %parse_ipv6.exit

parse_ipv6.exit:                                  ; preds = %bb.m, %.loopexit.i, %bb.n, %.lr.ph.i, %bb.k, %ip_hex_digit.exit.i.3, %ip_hex_digit.exit.i, %ip_hex_digit.exit.i.1, %ip_hex_digit.exit.i.2, %bb.f, %bb.h, %bb.i, %.loopexit212.i, %bb.o, %.outer111._crit_edge.i, %bb.z, %bb.aa, %bb.ab
  %.186.i = phi i32 [ -1, %.loopexit212.i ], [ -1, %bb.f ], [ -1, %bb.z ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.o ], [ -1, %.outer111._crit_edge.i ], [ -1, %bb.aa ], [ 0, %bb.ab ], [ -1, %ip_hex_digit.exit.i.3 ], [ -1, %ip_hex_digit.exit.i.2 ], [ -1, %ip_hex_digit.exit.i.1 ], [ -1, %ip_hex_digit.exit.i ], [ -1, %bb.k ], [ -1, %.lr.ph.i ], [ -1, %bb.n ], [ -1, %.loopexit.i ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

bb.ac:                                            ; preds = %.thread
  %i.cr = call fastcc i32 @parse_ipv4(ptr noundef nonnull %1, ptr noundef nonnull %.043.lcssa, ptr noundef nonnull %i.b)
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, i8 noundef 0, i64 noundef 10, i1 noundef false) #16
  %i.ct = getelementptr i8, ptr %0, i64 10
  store i8 -1, ptr %i.ct, align 1
  %i.cu = getelementptr i8, ptr %0, i64 11
  store i8 -1, ptr %i.cu, align 1
  %i.cv = getelementptr i8, ptr %0, i64 12
  %i.cw = load i32, ptr %i.b, align 4
  store i32 %i.cw, ptr %i.cv, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.ac, %._crit_edge, %bb.ad, %parse_ipv6.exit
  %.044 = phi i32 [ -1, %bb.c ], [ -1, %bb.ac ], [ %.186.i, %parse_ipv6.exit ], [ -1, %._crit_edge ], [ 0, %bb.ad ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.044
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @parse_ipv4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond.not56 = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %2, null
  %or.cond3.not53 = and i1 %or.cond.not56, %i.d
  %.not = icmp ult ptr %0, %1
  %or.cond48 = and i1 %.not, %or.cond3.not53
  br i1 %or.cond48, label %.preheader.preheader, label %.critedge51

.preheader.preheader:                             ; preds = %bb.a
  %.0356572 = ptrtoaddr ptr %0 to i64
  %i.e = trunc i64 %i.a to i32
  %i.f = trunc i64 %.0356572 to i32
  %i.g = load i8, ptr %0, align 1
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %or.cond49 = icmp ugt i8 %i.h, 9                ; 2 uses
  br i1 %or.cond49, label %.critedge51, label %bb.i

bb.b:                                             ; preds = %bb.i
  %i.i = load i8, ptr %i.ab, align 1
  %i.j = add i8 %i.i, -48                         ; 2 uses
  %or.cond49.1189 = icmp ult i8 %i.j, 10
  br i1 %or.cond49.1189, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = mul nuw nsw i32 %i.aa, 10
  %i.l = zext nneg i8 %i.j to i32
  %i.m = add nuw nsw i32 %i.k, %i.l               ; 4 uses
  %i.n = icmp samesign ugt i32 %i.m, 255
  br i1 %i.n, label %.critedge51, label %bb.d, !llvm.loop !32

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 2          ; 3 uses
  %i.p = icmp ult ptr %i.o, %1
  br i1 %i.p, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.o, align 1
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond49.2191 = icmp ult i8 %i.r, 10
  br i1 %or.cond49.2191, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = mul nuw nsw i32 %i.m, 10
  %i.t = zext nneg i8 %i.r to i32
  %i.u = add nuw nsw i32 %i.s, %i.t               ; 3 uses
  %i.v = icmp samesign ugt i32 %i.u, 255
  br i1 %i.v, label %.critedge51, label %bb.g, !llvm.loop !32

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 3          ; 3 uses
  %i.x = icmp ult ptr %i.w, %1
  br i1 %i.x, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.w, align 1
  %i.z = add i8 %i.y, -48
  %or.cond49.3193 = icmp ult i8 %i.z, 10
  br i1 %or.cond49.3193, label %.critedge51, label %.critedge, !llvm.loop !32

bb.i:                                             ; preds = %.preheader.preheader
  %i.aa = zext nneg i8 %i.h to i32                ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 1         ; 3 uses
  %i.ac = icmp ult ptr %i.ab, %1
  br i1 %i.ac, label %bb.b, label %.critedge.thread

.critedge:                                        ; preds = %bb.h, %bb.e, %bb.b
  %.032144.lcssa = phi i32 [ %i.u, %bb.h ], [ %i.aa, %bb.b ], [ %i.m, %bb.e ]
  %.1143.lcssa = phi ptr [ %i.w, %bb.h ], [ %i.ab, %bb.b ], [ %i.o, %bb.e ] ; 5 uses
  br i1 %or.cond49, label %.critedge51, label %bb.j

.critedge.thread:                                 ; preds = %bb.g, %bb.d, %bb.i
  %.lcssa188 = phi i32 [ %i.aa, %bb.i ], [ %i.m, %bb.d ], [ %i.u, %bb.g ]
  %i.ad = icmp eq i32 %i.e, %i.f
  br i1 %i.ad, label %.critedge51, label %.thread

.thread:                                          ; preds = %.critedge.thread
  %i.ae = trunc nuw i32 %.lcssa188 to i8
  store i8 %i.ae, ptr %2, align 1
  br label %.critedge51

bb.j:                                             ; preds = %.critedge
  %i.af = trunc nuw i32 %.032144.lcssa to i8
  store i8 %i.af, ptr %2, align 1
  %i.ag = load i8, ptr %.1143.lcssa, align 1
  %.not47 = icmp eq i8 %i.ag, 46
  br i1 %.not47, label %.preheader.1, label %.critedge51

.preheader.1:                                     ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %.1143.lcssa, i64 1 ; 3 uses
  %.0356572.1 = ptrtoaddr ptr %i.ah to i64        ; 2 uses
  %umax.1 = tail call i64 @llvm.umax.i64(i64 %.0356572.1, i64 %i.a)
  %i.ai = trunc i64 %umax.1 to i32
  %i.aj = trunc i64 %.0356572.1 to i32
  %i.ak = icmp ult ptr %i.ah, %1
  br i1 %i.ak, label %.lr.ph, label %.critedge.1.thread

.lr.ph.1:                                         ; preds = %bb.p
  %i.al = load i8, ptr %i.bq, align 1
  %i.am = add i8 %i.al, -48                       ; 2 uses
  %or.cond49.1.1 = icmp ult i8 %i.am, 10
  br i1 %or.cond49.1.1, label %bb.k, label %.critedge.1

bb.k:                                             ; preds = %.lr.ph.1
  %i.an = mul nuw nsw i32 %i.bp, 10
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = add nuw nsw i32 %i.an, %i.ao            ; 4 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 255
  br i1 %i.aq, label %.critedge51, label %bb.l, !llvm.loop !32

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %.1143.lcssa, i64 3 ; 3 uses
  %i.as = icmp ult ptr %i.ar, %1
  br i1 %i.as, label %.lr.ph.2, label %..critedge.1.thread_crit_edge

.lr.ph.2:                                         ; preds = %bb.l
  %i.at = load i8, ptr %i.ar, align 1
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %or.cond49.1.2 = icmp ult i8 %i.au, 10
  br i1 %or.cond49.1.2, label %bb.m, label %.critedge.1

bb.m:                                             ; preds = %.lr.ph.2
  %i.av = mul nuw nsw i32 %i.ap, 10
  %i.aw = zext nneg i8 %i.au to i32
  %i.ax = add nuw nsw i32 %i.av, %i.aw            ; 3 uses
  %i.ay = icmp samesign ugt i32 %i.ax, 255
  br i1 %i.ay, label %.critedge51, label %bb.n, !llvm.loop !32

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %.1143.lcssa, i64 4 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %1
  br i1 %i.ba, label %.lr.ph.3, label %..critedge.1.thread_crit_edge

.lr.ph.3:                                         ; preds = %bb.n
  %i.bb = load i8, ptr %i.az, align 1
  %i.bc = add i8 %i.bb, -48
  %or.cond49.1.3 = icmp ult i8 %i.bc, 10
end_hunk_0
