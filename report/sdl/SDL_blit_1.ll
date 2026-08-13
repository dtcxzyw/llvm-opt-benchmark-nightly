begin_hunk_0_@Blit1to4:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = add nsw i32 %i.o, 7
  %i.q = sdiv i32 %i.p, 8                         ; 8 uses
  %i.r = and i32 %i.o, 7
  %i.s = sext i32 %i.k to i64
  %i.t = sext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.u, %bb.k ]
  %.03959 = phi ptr [ %i.m, %.lr.ph ], [ %i.bt, %bb.k ] ; 8 uses
  %.04758 = phi ptr [ %i.i, %.lr.ph ], [ %i.bu, %bb.k ] ; 8 uses
  %i.u = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.r, label %default.unreachable62 [
    i32 0, label %bb.c
    i32 7, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.g
    i32 3, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b, %bb.j
  %.148 = phi ptr [ %.04758, %bb.b ], [ %i.bq, %bb.j ] ; 2 uses
  %.140 = phi ptr [ %.03959, %bb.b ], [ %i.bl, %bb.j ] ; 2 uses
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.br, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %.140, i64 1
  %i.w = load i8, ptr %.140, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.148, i64 4
  store i32 %i.z, ptr %.148, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.249 = phi ptr [ %i.aa, %bb.c ], [ %.04758, %bb.b ] ; 2 uses
  %.241 = phi ptr [ %i.v, %bb.c ], [ %.03959, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.q, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.241, i64 1
  %i.ac = load i8, ptr %.241, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.249, i64 4
  store i32 %i.af, ptr %.249, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.350 = phi ptr [ %i.ag, %bb.d ], [ %.04758, %bb.b ] ; 2 uses
  %.342 = phi ptr [ %i.ab, %bb.d ], [ %.03959, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.q, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.342, i64 1
  %i.ai = load i8, ptr %.342, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.350, i64 4
  store i32 %i.al, ptr %.350, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.451 = phi ptr [ %i.am, %bb.e ], [ %.04758, %bb.b ] ; 2 uses
  %.443 = phi ptr [ %i.ah, %bb.e ], [ %.03959, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.e ], [ %i.q, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %.443, i64 1
  %i.ao = load i8, ptr %.443, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.451, i64 4
  store i32 %i.ar, ptr %.451, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.552 = phi ptr [ %i.as, %bb.f ], [ %.04758, %bb.b ] ; 2 uses
  %.544 = phi ptr [ %i.an, %bb.f ], [ %.03959, %bb.b ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.f ], [ %i.q, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %.544, i64 1
  %i.au = load i8, ptr %.544, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.552, i64 4
  store i32 %i.ax, ptr %.552, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.653 = phi ptr [ %i.ay, %bb.g ], [ %.04758, %bb.b ] ; 2 uses
  %.645 = phi ptr [ %i.at, %bb.g ], [ %.03959, %bb.b ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.g ], [ %i.q, %bb.b ]
  %i.az = getelementptr inbounds nuw i8, ptr %.645, i64 1
  %i.ba = load i8, ptr %.645, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.653, i64 4
  store i32 %i.bd, ptr %.653, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.754 = phi ptr [ %i.be, %bb.h ], [ %.04758, %bb.b ] ; 2 uses
  %.746 = phi ptr [ %i.az, %bb.h ], [ %.03959, %bb.b ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.h ], [ %i.q, %bb.b ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.746, i64 1
  %i.bg = load i8, ptr %.746, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.754, i64 4
  store i32 %i.bj, ptr %.754, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.855 = phi ptr [ %i.bk, %bb.i ], [ %.04758, %bb.b ] ; 2 uses
  %.8 = phi ptr [ %i.bf, %bb.i ], [ %.03959, %bb.b ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.i ], [ %i.q, %bb.b ]   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.bm = load i8, ptr %.8, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.855, i64 4 ; 2 uses
  store i32 %i.bp, ptr %.855, align 4
  %i.br = add nsw i32 %.7, -1
  %i.bs = icmp sgt i32 %.7, 1
  br i1 %i.bs, label %bb.c, label %bb.k, !llvm.loop !14

default.unreachable62:                            ; preds = %bb.b
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 %i.s
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.t
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit1to1Key(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = load i32, ptr %i.o, align 4              ; 16 uses
  %.not = icmp eq ptr %i.n, null
  %.not167191 = icmp eq i32 %i.d, 0               ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader185

.preheader185:                                    ; preds = %bb.a
  br i1 %.not167191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader185
  %i.q = add nsw i32 %i.b, 7
  %i.r = sdiv i32 %i.q, 8                         ; 8 uses
  %i.s = and i32 %i.b, 7
  %i.t = sext i32 %i.h to i64
  %i.u = sext i32 %i.l to i64
  br label %.lr.ph.split

.preheader:                                       ; preds = %bb.a
  br i1 %.not167191, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %.preheader
  %i.v = add nsw i32 %i.b, 7
  %i.w = sdiv i32 %i.v, 8                         ; 8 uses
  %i.x = and i32 %i.b, 7
  %i.y = sext i32 %i.h to i64
  %i.z = sext i32 %i.l to i64
  br label %.lr.ph194.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.z
  %.in = phi i32 [ %i.aa, %bb.z ], [ %i.d, %.lr.ph ]
  %.0139190 = phi ptr [ %i.ch, %bb.z ], [ %i.f, %.lr.ph ] ; 8 uses
  %.0147189 = phi ptr [ %i.ci, %bb.z ], [ %i.j, %.lr.ph ] ; 8 uses
  %i.aa = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.s, label %.lr.ph.split.unreachabledefault [
    i32 0, label %bb.b
    i32 7, label %bb.e
    i32 6, label %bb.h
    i32 5, label %bb.k
    i32 4, label %bb.n
    i32 3, label %bb.q
    i32 2, label %bb.t
    i32 1, label %bb.w
  ]

bb.b:                                             ; preds = %.lr.ph.split, %bb.y
  %.1148 = phi ptr [ %.0147189, %.lr.ph.split ], [ %i.cd, %bb.y ] ; 2 uses
  %.1140 = phi ptr [ %.0139190, %.lr.ph.split ], [ %i.ce, %bb.y ] ; 2 uses
  %.0129 = phi i32 [ %i.r, %.lr.ph.split ], [ %i.cf, %bb.y ]
  %i.ab = load i8, ptr %.1140, align 1            ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %.not177 = icmp eq i32 %i.p, %i.ac
  br i1 %.not177, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  store i8 %i.af, ptr %.1148, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.1148, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.1140, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  %.2149 = phi ptr [ %i.ag, %bb.d ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.2141 = phi ptr [ %i.ah, %bb.d ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.1130 = phi i32 [ %.0129, %bb.d ], [ %i.r, %.lr.ph.split ]
  %i.ai = load i8, ptr %.2141, align 1            ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %.not178 = icmp eq i32 %i.p, %i.aj
  br i1 %.not178, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  store i8 %i.am, ptr %.2149, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.2149, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.2141, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %.3150 = phi ptr [ %i.an, %bb.g ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.3142 = phi ptr [ %i.ao, %bb.g ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.2131 = phi i32 [ %.1130, %bb.g ], [ %i.r, %.lr.ph.split ]
  %i.ap = load i8, ptr %.3142, align 1            ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %.not179 = icmp eq i32 %i.p, %i.aq
  br i1 %.not179, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = zext i8 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  store i8 %i.at, ptr %.3150, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.3150, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.3142, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split
  %.4151 = phi ptr [ %i.au, %bb.j ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.4143 = phi ptr [ %i.av, %bb.j ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.3132 = phi i32 [ %.2131, %bb.j ], [ %i.r, %.lr.ph.split ]
  %i.aw = load i8, ptr %.4143, align 1            ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %.not180 = icmp eq i32 %i.p, %i.ax
  br i1 %.not180, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %.4151, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.4151, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.4143, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split
  %.5152 = phi ptr [ %i.bb, %bb.m ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.5144 = phi ptr [ %i.bc, %bb.m ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.4133 = phi i32 [ %.3132, %bb.m ], [ %i.r, %.lr.ph.split ]
  %i.bd = load i8, ptr %.5144, align 1            ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %.not181 = icmp eq i32 %i.p, %i.be
  br i1 %.not181, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = zext i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  store i8 %i.bh, ptr %.5152, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.5152, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.5144, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split
  %.6153 = phi ptr [ %i.bi, %bb.p ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.6145 = phi ptr [ %i.bj, %bb.p ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.5134 = phi i32 [ %.4133, %bb.p ], [ %i.r, %.lr.ph.split ]
  %i.bk = load i8, ptr %.6145, align 1            ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %.not182 = icmp eq i32 %i.p, %i.bl
  br i1 %.not182, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = zext i8 %i.bk to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  store i8 %i.bo, ptr %.6153, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.6153, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.6145, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split
  %.7154 = phi ptr [ %i.bp, %bb.s ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.7146 = phi ptr [ %i.bq, %bb.s ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.6135 = phi i32 [ %.5134, %bb.s ], [ %i.r, %.lr.ph.split ]
  %i.br = load i8, ptr %.7146, align 1            ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %.not183 = icmp eq i32 %i.p, %i.bs
  br i1 %.not183, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = zext i8 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %.7154, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.7154, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.7146, i64 1
  br label %bb.w

.lr.ph.split.unreachabledefault:                  ; preds = %.lr.ph.split
  unreachable

default.unreachable:                              ; preds = %.lr.ph194.split
  unreachable

bb.w:                                             ; preds = %.lr.ph.split, %bb.v
  %.8155 = phi ptr [ %i.bw, %bb.v ], [ %.0147189, %.lr.ph.split ] ; 2 uses
  %.8 = phi ptr [ %i.bx, %bb.v ], [ %.0139190, %.lr.ph.split ] ; 2 uses
  %.7136 = phi i32 [ %.6135, %bb.v ], [ %i.r, %.lr.ph.split ] ; 2 uses
  %i.by = load i8, ptr %.8, align 1               ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %.not184 = icmp eq i32 %i.p, %i.bz
  br i1 %.not184, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = zext i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  store i8 %i.cc, ptr %.8155, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %.8155, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.cf = add nsw i32 %.7136, -1
  %i.cg = icmp sgt i32 %.7136, 1
  br i1 %i.cg, label %bb.b, label %bb.z, !llvm.loop !16

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.t
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.u
  %.not176 = icmp eq i32 %i.aa, 0
  br i1 %.not176, label %.loopexit, label %.lr.ph.split, !llvm.loop !17

.lr.ph194.split:                                  ; preds = %.lr.ph194, %bb.ay
  %.in196 = phi i32 [ %i.cj, %bb.ay ], [ %i.d, %.lr.ph194 ]
  %.9193 = phi ptr [ %i.ds, %bb.ay ], [ %i.f, %.lr.ph194 ] ; 8 uses
  %.9156192 = phi ptr [ %i.dt, %bb.ay ], [ %i.j, %.lr.ph194 ] ; 8 uses
  %i.cj = add nsw i32 %.in196, -1                 ; 2 uses
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.aa
    i32 7, label %bb.ad
    i32 6, label %bb.ag
    i32 5, label %bb.aj
    i32 4, label %bb.am
    i32 3, label %bb.ap
    i32 2, label %bb.as
    i32 1, label %bb.av
  ]

bb.aa:                                            ; preds = %.lr.ph194.split, %bb.ax
  %.10157 = phi ptr [ %.9156192, %.lr.ph194.split ], [ %i.do, %bb.ax ] ; 2 uses
  %.10 = phi ptr [ %.9193, %.lr.ph194.split ], [ %i.dp, %bb.ax ] ; 2 uses
  %.0 = phi i32 [ %i.w, %.lr.ph194.split ], [ %i.dq, %bb.ax ]
  %i.ck = load i8, ptr %.10, align 1              ; 2 uses
  %i.cl = zext i8 %i.ck to i32
  %.not168 = icmp eq i32 %i.p, %i.cl
  br i1 %.not168, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 %i.ck, ptr %.10157, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.10157, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph194.split
  %.11158 = phi ptr [ %i.cm, %bb.ac ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.11 = phi ptr [ %i.cn, %bb.ac ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.ac ], [ %i.w, %.lr.ph194.split ]
  %i.co = load i8, ptr %.11, align 1              ; 2 uses
  %i.cp = zext i8 %i.co to i32
  %.not169 = icmp eq i32 %i.p, %i.cp
  br i1 %.not169, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.co, ptr %.11158, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.11158, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph194.split
  %.12159 = phi ptr [ %i.cq, %bb.af ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.12 = phi ptr [ %i.cr, %bb.af ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.af ], [ %i.w, %.lr.ph194.split ]
  %i.cs = load i8, ptr %.12, align 1              ; 2 uses
  %i.ct = zext i8 %i.cs to i32
  %.not170 = icmp eq i32 %i.p, %i.ct
  br i1 %.not170, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 %i.cs, ptr %.12159, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %.12159, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph194.split
  %.13160 = phi ptr [ %i.cu, %bb.ai ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.13 = phi ptr [ %i.cv, %bb.ai ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.ai ], [ %i.w, %.lr.ph194.split ]
  %i.cw = load i8, ptr %.13, align 1              ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %.not171 = icmp eq i32 %i.p, %i.cx
  br i1 %.not171, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.cw, ptr %.13160, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cy = getelementptr inbounds nuw i8, ptr %.13160, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.13, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph194.split
  %.14161 = phi ptr [ %i.cy, %bb.al ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.14 = phi ptr [ %i.cz, %bb.al ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.al ], [ %i.w, %.lr.ph194.split ]
  %i.da = load i8, ptr %.14, align 1              ; 2 uses
  %i.db = zext i8 %i.da to i32
  %.not172 = icmp eq i32 %i.p, %i.db
  br i1 %.not172, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.da, ptr %.14161, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %.14161, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.14, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph194.split
  %.15162 = phi ptr [ %i.dc, %bb.ao ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.15 = phi ptr [ %i.dd, %bb.ao ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.ao ], [ %i.w, %.lr.ph194.split ]
  %i.de = load i8, ptr %.15, align 1              ; 2 uses
  %i.df = zext i8 %i.de to i32
  %.not173 = icmp eq i32 %i.p, %i.df
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 %i.de, ptr %.15162, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dg = getelementptr inbounds nuw i8, ptr %.15162, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.15, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph194.split
  %.16163 = phi ptr [ %i.dg, %bb.ar ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.16 = phi ptr [ %i.dh, %bb.ar ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.ar ], [ %i.w, %.lr.ph194.split ]
  %i.di = load i8, ptr %.16, align 1              ; 2 uses
  %i.dj = zext i8 %i.di to i32
  %.not174 = icmp eq i32 %i.p, %i.dj
  br i1 %.not174, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 %i.di, ptr %.16163, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dk = getelementptr inbounds nuw i8, ptr %.16163, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.16, i64 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph194.split, %bb.au
  %.17164 = phi ptr [ %i.dk, %bb.au ], [ %.9156192, %.lr.ph194.split ] ; 2 uses
  %.17 = phi ptr [ %i.dl, %bb.au ], [ %.9193, %.lr.ph194.split ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.au ], [ %i.w, %.lr.ph194.split ] ; 2 uses
  %i.dm = load i8, ptr %.17, align 1              ; 2 uses
  %i.dn = zext i8 %i.dm to i32
  %.not175 = icmp eq i32 %i.p, %i.dn
  br i1 %.not175, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 %i.dm, ptr %.17164, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %.17164, i64 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.17, i64 1 ; 2 uses
  %i.dq = add nsw i32 %.7, -1
  %i.dr = icmp sgt i32 %.7, 1
  br i1 %i.dr, label %bb.aa, label %bb.ay, !llvm.loop !18

bb.ay:                                            ; preds = %bb.ax
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.y
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.z
  %.not167 = icmp eq i32 %i.cj, 0
  br i1 %.not167, label %.loopexit, label %.lr.ph194.split, !llvm.loop !19

.loopexit:                                        ; preds = %bb.z, %bb.ay, %.preheader185, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit1to2Key(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.f = load i32, ptr %i.e, align 4              ; 8 uses
  %.not99 = icmp eq i32 %i.b, 0
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sdiv i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8                         ; 8 uses
  %i.t = and i32 %i.q, 7
  %i.u = sext i32 %i.m to i64
  %i.v = sext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.w, %bb.aa ]
  %.073101 = phi ptr [ %i.o, %.lr.ph ], [ %i.cd, %bb.aa ] ; 8 uses
  %.081100 = phi ptr [ %i.k, %.lr.ph ], [ %i.ce, %bb.aa ] ; 8 uses
  %i.w = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.t, label %default.unreachable104 [
    i32 0, label %bb.c
    i32 7, label %bb.f
    i32 6, label %bb.i
    i32 5, label %bb.l
    i32 4, label %bb.o
    i32 3, label %bb.r
    i32 2, label %bb.u
    i32 1, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b, %bb.z
  %.182 = phi ptr [ %.081100, %bb.b ], [ %i.ca, %bb.z ] ; 2 uses
  %.174 = phi ptr [ %.073101, %bb.b ], [ %i.bz, %bb.z ] ; 2 uses
  %.0 = phi i32 [ %i.s, %bb.b ], [ %i.cb, %bb.z ]
  %i.x = load i8, ptr %.174, align 1              ; 2 uses
  %i.y = zext i8 %i.x to i32
  %.not91 = icmp eq i32 %i.f, %i.y
  br i1 %.not91, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  store i16 %i.ab, ptr %.182, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.174, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.182, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.283 = phi ptr [ %i.ad, %bb.e ], [ %.081100, %bb.b ] ; 2 uses
  %.275 = phi ptr [ %i.ac, %bb.e ], [ %.073101, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.s, %bb.b ]
  %i.ae = load i8, ptr %.275, align 1             ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %.not92 = icmp eq i32 %i.f, %i.af
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  store i16 %i.ai, ptr %.283, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.275, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.283, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.384 = phi ptr [ %i.ak, %bb.h ], [ %.081100, %bb.b ] ; 2 uses
  %.376 = phi ptr [ %i.aj, %bb.h ], [ %.073101, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.s, %bb.b ]
  %i.al = load i8, ptr %.376, align 1             ; 2 uses
  %i.am = zext i8 %i.al to i32
  %.not93 = icmp eq i32 %i.f, %i.am
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %.384, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.376, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.384, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.485 = phi ptr [ %i.ar, %bb.k ], [ %.081100, %bb.b ] ; 2 uses
  %.477 = phi ptr [ %i.aq, %bb.k ], [ %.073101, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.k ], [ %i.s, %bb.b ]
  %i.as = load i8, ptr %.477, align 1             ; 2 uses
  %i.at = zext i8 %i.as to i32
  %.not94 = icmp eq i32 %i.f, %i.at
  br i1 %.not94, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = zext i8 %i.as to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  store i16 %i.aw, ptr %.485, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.477, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.485, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.586 = phi ptr [ %i.ay, %bb.n ], [ %.081100, %bb.b ] ; 2 uses
  %.578 = phi ptr [ %i.ax, %bb.n ], [ %.073101, %bb.b ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.n ], [ %i.s, %bb.b ]
  %i.az = load i8, ptr %.578, align 1             ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %.not95 = icmp eq i32 %i.f, %i.ba
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  store i16 %i.bd, ptr %.586, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.578, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.586, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %.687 = phi ptr [ %i.bf, %bb.q ], [ %.081100, %bb.b ] ; 2 uses
  %.679 = phi ptr [ %i.be, %bb.q ], [ %.073101, %bb.b ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.q ], [ %i.s, %bb.b ]
  %i.bg = load i8, ptr %.679, align 1             ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %.not96 = icmp eq i32 %i.f, %i.bh
  br i1 %.not96, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = zext i8 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %.687, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.679, i64 1
end_hunk_0
