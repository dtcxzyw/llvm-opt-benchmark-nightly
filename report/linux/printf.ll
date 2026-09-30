Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/printf?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@vsprintf:bb.a
.lr.ph163:                                        ; preds = %.preheader, %.lr.ph163
  %.in = phi i32 [ %i.bd, %.lr.ph163 ], [ %.076, %.preheader ] ; 2 uses
  %.189162 = phi ptr [ %i.be, %.lr.ph163 ], [ %.088, %.preheader ] ; 2 uses
  %i.bd = add nsw i32 %.in, -1
  %i.be = getelementptr inbounds nuw i8, ptr %.189162, i32 1 ; 2 uses
  store i8 32, ptr %.189162, align 1
  %i.bf = icmp sgt i32 %.in, 2
  br i1 %i.bf, label %.lr.ph163, label %.loopexit137.thread, !llvm.loop !8

.loopexit137.thread:                              ; preds = %.lr.ph163, %.preheader
  %.290.ph = phi ptr [ %.088, %.preheader ], [ %i.be, %.lr.ph163 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.bh = load i32, ptr %.3, align 4
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %.290.ph, align 1
  %.391166193 = getelementptr inbounds nuw i8, ptr %.290.ph, i32 1
  br label %.loopexit

.loopexit137:                                     ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i32 4 ; 2 uses
  %i.bk = load i32, ptr %.3, align 4
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %.088, align 1
  %.391166 = getelementptr inbounds nuw i8, ptr %.088, i32 1 ; 2 uses
  %i.bm = icmp sgt i32 %.076, 1
  br i1 %i.bm, label %.lr.ph169, label %.loopexit

.lr.ph169:                                        ; preds = %.loopexit137, %.lr.ph169
  %.391168 = phi ptr [ %.391, %.lr.ph169 ], [ %.391166, %.loopexit137 ] ; 2 uses
  %.379167 = phi i32 [ %i.bn, %.lr.ph169 ], [ %.076, %.loopexit137 ] ; 2 uses
  %i.bn = add nsw i32 %.379167, -1
  store i8 32, ptr %.391168, align 1
  %.391 = getelementptr inbounds nuw i8, ptr %.391168, i32 1 ; 2 uses
  %i.bo = icmp samesign ugt i32 %.379167, 2
  br i1 %i.bo, label %.lr.ph169, label %.loopexit, !llvm.loop !9

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i32 4 ; 2 uses
  %i.bq = load ptr, ptr %.3, align 4              ; 2 uses
  %i.br = tail call i32 @strnlen(ptr inreg noundef %i.bq, i32 inreg noundef %.175) #6 ; 7 uses
  %i.bs = and i32 %.183, 16
  %.not112 = icmp eq i32 %i.bs, 0
  br i1 %.not112, label %.preheader140, label %.loopexit141

.preheader140:                                    ; preds = %bb.s
  %i.bt = add nsw i32 %.076, -1                   ; 2 uses
  %i.bu = icmp slt i32 %i.br, %.076
  br i1 %i.bu, label %.lr.ph, label %.loopexit141

.lr.ph:                                           ; preds = %.preheader140, %.lr.ph
  %i.bv = phi i32 [ %i.bx, %.lr.ph ], [ %i.bt, %.preheader140 ] ; 2 uses
  %.492151 = phi ptr [ %i.bw, %.lr.ph ], [ %.088, %.preheader140 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.492151, i32 1 ; 2 uses
  store i8 32, ptr %.492151, align 1
  %i.bx = add nsw i32 %i.bv, -1
  %i.by = icmp slt i32 %i.br, %i.bv
  br i1 %i.by, label %.lr.ph, label %.loopexit141.loopexit, !llvm.loop !10

.loopexit141.loopexit:                            ; preds = %.lr.ph
  %i.bz = add i32 %i.br, -1
  br label %.loopexit141

.loopexit141:                                     ; preds = %.loopexit141.loopexit, %.preheader140, %bb.s
  %.593 = phi ptr [ %.088, %bb.s ], [ %.088, %.preheader140 ], [ %i.bw, %.loopexit141.loopexit ] ; 2 uses
  %.581 = phi i32 [ %.076, %bb.s ], [ %i.bt, %.preheader140 ], [ %i.bz, %.loopexit141.loopexit ] ; 2 uses
  %i.ca = icmp sgt i32 %i.br, 0
  br i1 %i.ca, label %.lr.ph156, label %.preheader138

.preheader138:                                    ; preds = %.lr.ph156, %.loopexit141
  %.694.lcssa = phi ptr [ %.593, %.loopexit141 ], [ %i.ce, %.lr.ph156 ] ; 2 uses
  %i.cb = icmp slt i32 %i.br, %.581
  br i1 %i.cb, label %.lr.ph160, label %.loopexit

.lr.ph156:                                        ; preds = %.loopexit141, %.lr.ph156
  %.087155 = phi ptr [ %i.cc, %.lr.ph156 ], [ %i.bq, %.loopexit141 ] ; 2 uses
  %.694154 = phi ptr [ %i.ce, %.lr.ph156 ], [ %.593, %.loopexit141 ] ; 2 uses
  %.097153 = phi i32 [ %i.cf, %.lr.ph156 ], [ 0, %.loopexit141 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.087155, i32 1
  %i.cd = load i8, ptr %.087155, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.694154, i32 1 ; 2 uses
  store i8 %i.cd, ptr %.694154, align 1
  %i.cf = add nuw nsw i32 %.097153, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.br
  br i1 %exitcond.not, label %.preheader138, label %.lr.ph156, !llvm.loop !11

.lr.ph160:                                        ; preds = %.preheader138, %.lr.ph160
  %.6159 = phi i32 [ %i.cg, %.lr.ph160 ], [ %.581, %.preheader138 ]
  %.795158 = phi ptr [ %i.ch, %.lr.ph160 ], [ %.694.lcssa, %.preheader138 ] ; 2 uses
  %i.cg = add nsw i32 %.6159, -1                  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.795158, i32 1 ; 2 uses
  store i8 32, ptr %.795158, align 1
  %i.ci = icmp slt i32 %i.br, %i.cg
  br i1 %i.ci, label %.lr.ph160, label %.loopexit, !llvm.loop !12

bb.t:                                             ; preds = %bb.q
  %i.cj = icmp eq i32 %.076, -1                   ; 2 uses
  %i.ck = zext i1 %i.cj to i32
  %spec.select = or i32 %.183, %i.ck
  %spec.select115 = select i1 %i.cj, i32 8, i32 %.076
  %i.cl = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.cm = load ptr, ptr %.3, align 4
  %i.cn = ptrtoint ptr %i.cm to i32
  %i.co = tail call fastcc ptr @number(ptr inreg noundef %.088, i32 inreg noundef %i.cn, i32 inreg noundef 16, i32 noundef %spec.select115, i32 noundef %.175, i32 noundef %spec.select) #7
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.cq = load ptr, ptr %.3, align 4
  %i.cr = ptrtoint ptr %.088 to i32
  %i.cs = sub i32 %i.cr, %i.a
  store i32 %i.cs, ptr %i.cq, align 4
  br label %.loopexit

bb.v:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %.088, i32 1
  store i8 37, ptr %.088, align 1
  br label %.loopexit

bb.w:                                             ; preds = %bb.q
  br label %bb.ad

bb.x:                                             ; preds = %bb.q
  %i.cu = or i32 %.183, 32
  br label %bb.ad

bb.y:                                             ; preds = %bb.q
  br label %bb.ad

bb.z:                                             ; preds = %bb.q, %bb.q
  %i.cv = or i32 %.183, 2
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.088, i32 1 ; 2 uses
  store i8 37, ptr %.088, align 1
  %i.cx = load i8, ptr %.4133, align 1            ; 2 uses
  %.not114 = icmp eq i8 %i.cx, 0
  br i1 %.not114, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.088, i32 2
  store i8 %i.cx, ptr %i.cw, align 1
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds i8, ptr %.4133, i32 -1
  br label %.loopexit

bb.ad:                                            ; preds = %bb.x, %bb.z, %bb.y, %bb.w, %bb.q
  %.096 = phi i32 [ 8, %bb.w ], [ 10, %bb.q ], [ 10, %bb.z ], [ 16, %bb.x ], [ 16, %bb.y ]
  %.486 = phi i32 [ %.183, %bb.w ], [ %.183, %bb.q ], [ %i.cv, %bb.z ], [ %i.cu, %bb.x ], [ %.183, %bb.y ] ; 2 uses
  %i.da = load i32, ptr %.3, align 4              ; 3 uses
  br i1 %.073, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.db = and i32 %i.da, 65535
  %i.dc = and i32 %.486, 2
  %.not111 = icmp eq i32 %i.dc, 0
  br i1 %.not111, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %sext = shl i32 %i.da, 16
  %i.dd = ashr exact i32 %sext, 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae
  %.098 = phi i32 [ %i.db, %bb.ae ], [ %i.dd, %bb.af ], [ %i.da, %bb.ad ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.de = tail call fastcc ptr @number(ptr inreg noundef %.088, i32 inreg noundef %.098, i32 inreg noundef %.096, i32 noundef %.076, i32 noundef %.175, i32 noundef %.486) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph160, %.lr.ph169, %bb.u, %.loopexit137.thread, %.preheader138, %.loopexit137, %bb.ab, %bb.ac, %bb.ag, %bb.v, %bb.t, %bb.c
  %.5134 = phi ptr [ %storemerge, %bb.c ], [ %i.cz, %bb.ac ], [ %.4133, %bb.ab ], [ %.4133, %bb.ag ], [ %.4133, %.loopexit137 ], [ %.4133, %bb.t ], [ %.4133, %bb.u ], [ %.4133, %.lr.ph169 ], [ %.4133, %bb.v ], [ %.4133, %.preheader138 ], [ %.4133, %.loopexit137.thread ], [ %.4133, %.lr.ph160 ]
  %.8 = phi ptr [ %i.c, %bb.c ], [ %i.cw, %bb.ac ], [ %i.cy, %bb.ab ], [ %i.de, %bb.ag ], [ %.391166, %.loopexit137 ], [ %i.co, %bb.t ], [ %.088, %bb.u ], [ %.391, %.lr.ph169 ], [ %i.ct, %bb.v ], [ %.694.lcssa, %.preheader138 ], [ %.391166193, %.loopexit137.thread ], [ %i.ch, %.lr.ph160 ]
  %.5 = phi ptr [ %.0, %bb.c ], [ %.3, %bb.ac ], [ %.3, %bb.ab ], [ %.4, %bb.ag ], [ %i.bj, %.loopexit137 ], [ %i.cl, %bb.t ], [ %i.cp, %bb.u ], [ %i.bj, %.lr.ph169 ], [ %.3, %bb.v ], [ %i.bp, %.preheader138 ], [ %i.bg, %.loopexit137.thread ], [ %i.bp, %.lr.ph160 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.5134, i32 1
  br label %bb.b, !llvm.loop !13

bb.ah:                                            ; preds = %bb.b
  store i8 0, ptr %.088, align 1
  %i.dg = ptrtoint ptr %.088 to i32
  %i.dh = sub i32 %i.dg, %i.a
  ret i32 %i.dh
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: optsize
declare dso_local i32 @strnlen(ptr inreg noundef, i32 inreg noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none, target_mem: none)
define internal fastcc nonnull ptr @number(ptr inreg nofree noundef writeonly captures(ret: address, provenance) %0, i32 inreg noundef %1, i32 inreg noundef range(i32 8, 17) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = and i32 %5, 16
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %5, -2
  %spec.select = select i1 %.not, i32 %5, i32 %i.c ; 7 uses
  %.067.tr = trunc i32 %spec.select to i8
  %6 = shl i8 %.067.tr, 4
  %7 = and i8 %6, 16
  %8 = or disjoint i8 %7, 32
  %i.d = and i32 %spec.select, 2
  %.not84 = icmp eq i32 %i.d, 0
  br i1 %.not84, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %1
  %i.g = add nsw i32 %3, -1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = and i32 %spec.select, 4
  %.not85 = icmp eq i32 %i.h, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %3, -1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = and i32 %spec.select, 8
  %.not86 = icmp eq i32 %i.j, 0
  br i1 %.not86, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %3, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.e, %bb.a
  %.077 = phi i32 [ %i.f, %bb.c ], [ %1, %bb.e ], [ %1, %bb.g ], [ %1, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %.070 = phi i32 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.k, %bb.g ], [ %3, %bb.f ], [ %3, %bb.a ] ; 4 uses
  %.not90 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.a ]
  %.066 = phi i8 [ 45, %bb.c ], [ 43, %bb.e ], [ 32, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ]
  %i.l = and i32 %spec.select, 64
  %.not87 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %.not87, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %2, label %bb.l [
    i32 16, label %bb.j
    i32 8, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.m = add nsw i32 %.070, -2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.n = add nsw i32 %.070, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %.171 = phi i32 [ %i.m, %bb.j ], [ %i.n, %bb.k ], [ %.070, %bb.i ], [ %.070, %bb.h ]
  %i.o = icmp eq i32 %.077, 0
  br i1 %i.o, label %bb.m, label %.preheader97

.preheader97:                                     ; preds = %bb.l
  %i.p = trunc i32 %5 to i8
  %i.q = and i8 %i.p, 32
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 48, ptr %i.a, align 1
  br label %.loopexit98

bb.n:                                             ; preds = %.preheader97, %bb.n
  %.063101 = phi i32 [ 0, %.preheader97 ], [ %i.w, %bb.n ] ; 2 uses
  %.178100 = phi i32 [ %.077, %.preheader97 ], [ %i.s, %bb.n ] ; 3 uses
  %i.r = urem i32 %.178100, %2
  %i.s = udiv i32 %.178100, %2
  %i.t = getelementptr inbounds nuw i8, ptr @number.digits, i32 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = or i8 %i.u, %i.q
  %i.w = add nuw nsw i32 %.063101, 1              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i32 %.063101
  store i8 %i.v, ptr %i.x, align 1
  %.not88 = icmp ugt i32 %2, %.178100
  br i1 %.not88, label %.loopexit98, label %bb.n, !llvm.loop !14

.loopexit98:                                      ; preds = %bb.n, %bb.m
  %.164 = phi i32 [ 1, %bb.m ], [ %i.w, %bb.n ]   ; 4 uses
  %spec.select92 = tail call i32 @llvm.smax.i32(i32 %.164, i32 %4) ; 2 uses
  %i.y = sub nsw i32 %.171, %spec.select92        ; 3 uses
  %i.z = and i32 %spec.select, 17
  %.not89 = icmp eq i32 %i.z, 0
  br i1 %.not89, label %.preheader95, label %.loopexit96

.preheader95:                                     ; preds = %.loopexit98
  %i.aa = add nsw i32 %i.y, -1                    ; 2 uses
  %i.ab = icmp sgt i32 %i.y, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit96

.lr.ph:                                           ; preds = %.preheader95, %.lr.ph
  %i.ac = phi i32 [ %i.ae, %.lr.ph ], [ %i.aa, %.preheader95 ] ; 2 uses
  %.062102 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %.preheader95 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.062102, i32 1 ; 2 uses
  store i8 32, ptr %.062102, align 1
  %i.ae = add nsw i32 %i.ac, -1
  %.not131 = icmp eq i32 %i.ac, 0
  br i1 %.not131, label %.loopexit96, label %.lr.ph, !llvm.loop !15

.loopexit96:                                      ; preds = %.lr.ph, %.preheader95, %.loopexit98
  %.373 = phi i32 [ %i.y, %.loopexit98 ], [ %i.aa, %.preheader95 ], [ -1, %.lr.ph ] ; 3 uses
  %.1 = phi ptr [ %0, %.loopexit98 ], [ %0, %.preheader95 ], [ %i.ad, %.lr.ph ] ; 3 uses
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit96
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i32 1
  store i8 %.066, ptr %.1, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit96
  %.2 = phi ptr [ %i.af, %bb.o ], [ %.1, %.loopexit96 ] ; 7 uses
  br i1 %.not87, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %2, label %bb.t [
    i32 8, label %bb.r
    i32 16, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.2, i32 1
  store i8 48, ptr %.2, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i32 1
  store i8 48, ptr %.2, align 1
  %i.ai = trunc i32 %5 to i8
  %i.aj = and i8 %i.ai, 32
  %i.ak = or disjoint i8 %i.aj, 88
  %i.al = getelementptr inbounds nuw i8, ptr %.2, i32 2
  store i8 %i.ak, ptr %i.ah, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p
  %.3 = phi ptr [ %i.ag, %bb.r ], [ %i.al, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.p ] ; 3 uses
  %i.am = and i32 %spec.select, 16
  %.not91 = icmp eq i32 %i.am, 0
  br i1 %.not91, label %.preheader94, label %.loopexit

.preheader94:                                     ; preds = %bb.t
  %i.an = add nsw i32 %.373, -1                   ; 2 uses
  %i.ao = icmp sgt i32 %.373, 0
  br i1 %i.ao, label %.lr.ph105, label %.loopexit

.lr.ph105:                                        ; preds = %.preheader94, %.lr.ph105
  %i.ap = phi i32 [ %i.ar, %.lr.ph105 ], [ %i.an, %.preheader94 ] ; 2 uses
  %.4104 = phi ptr [ %i.aq, %.lr.ph105 ], [ %.3, %.preheader94 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.4104, i32 1 ; 2 uses
  store i8 %8, ptr %.4104, align 1
  %i.ar = add nsw i32 %i.ap, -1
  %.not132 = icmp eq i32 %i.ap, 0
  br i1 %.not132, label %.loopexit, label %.lr.ph105, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph105, %.preheader94, %bb.t
  %.575 = phi i32 [ %.373, %bb.t ], [ %i.an, %.preheader94 ], [ -1, %.lr.ph105 ] ; 2 uses
  %.5 = phi ptr [ %.3, %bb.t ], [ %.3, %.preheader94 ], [ %i.aq, %.lr.ph105 ] ; 2 uses
  %i.as = icmp sgt i32 %4, %.164
  br i1 %i.as, label %.lr.ph110, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %.lr.ph110, %.loopexit
  %.7113.ph = phi ptr [ %.5, %.loopexit ], [ %i.au, %.lr.ph110 ]
  br label %.preheader93

.lr.ph110:                                        ; preds = %.loopexit, %.lr.ph110
  %.6109 = phi ptr [ %i.au, %.lr.ph110 ], [ %.5, %.loopexit ] ; 2 uses
  %.169108 = phi i32 [ %i.at, %.lr.ph110 ], [ %spec.select92, %.loopexit ]
  %i.at = add nsw i32 %.169108, -1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.6109, i32 1 ; 2 uses
  store i8 48, ptr %.6109, align 1
  %i.av = icmp slt i32 %.164, %i.at
  br i1 %i.av, label %.lr.ph110, label %.preheader93.preheader, !llvm.loop !17

.preheader:                                       ; preds = %.preheader93
  %i.aw = icmp sgt i32 %.575, 0
  br i1 %i.aw, label %.lr.ph116, label %._crit_edge

.preheader93:                                     ; preds = %.preheader93.preheader, %.preheader93
  %.7113 = phi ptr [ %i.ba, %.preheader93 ], [ %.7113.ph, %.preheader93.preheader ] ; 2 uses
  %.265112 = phi i32 [ %i.ax, %.preheader93 ], [ %.164, %.preheader93.preheader ] ; 2 uses
  %i.ax = add nsw i32 %.265112, -1                ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.a, i32 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.7113, i32 1 ; 3 uses
  store i8 %i.az, ptr %.7113, align 1
  %i.bb = icmp sgt i32 %.265112, 1
  br i1 %i.bb, label %.preheader93, label %.preheader, !llvm.loop !18

.lr.ph116:                                        ; preds = %.preheader, %.lr.ph116
  %.8115 = phi ptr [ %i.bd, %.lr.ph116 ], [ %i.ba, %.preheader ] ; 2 uses
  %.676114 = phi i32 [ %i.bc, %.lr.ph116 ], [ %.575, %.preheader ] ; 2 uses
  %i.bc = add nsw i32 %.676114, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.8115, i32 1 ; 2 uses
  store i8 32, ptr %.8115, align 1
  %i.be = icmp samesign ugt i32 %.676114, 1
  br i1 %i.be, label %.lr.ph116, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph116, %.preheader
  %.8.lcssa = phi ptr [ %i.ba, %.preheader ], [ %i.bd, %.lr.ph116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.8.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind optsize
define dso_local i32 @sprintf(ptr inreg noundef %0, ptr inreg nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.va_start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %i.a, align 4
  %i.c = call i32 @vsprintf(ptr inreg noundef %0, ptr inreg noundef %1, ptr inreg noundef %i.b) #7
  call void @llvm.va_end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nounwind optsize
define dso_local i32 @printf(ptr inreg nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 1              ; 4 uses
  %i.b = alloca ptr, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.va_start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %i.b, align 4
  %i.d = call i32 @vsprintf(ptr inreg noundef nonnull %i.a, ptr inreg noundef %0, ptr inreg noundef %i.c) #7
  call void @llvm.va_end.p0(ptr nonnull %i.b)
  call void @puts(ptr inreg noundef nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.d
}

; Function Attrs: optsize
declare dso_local void @puts(ptr inreg noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind optsize "no-builtins" }
attributes #7 = { nobuiltin optsize "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 3}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"override-stack-alignment", i32 4}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
end_hunk_0
