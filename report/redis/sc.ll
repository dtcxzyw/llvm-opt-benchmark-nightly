inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @je_reg_size_compute(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %0 to i64
  %i.b = shl nuw i64 1, %i.a
  %i.c = sext i32 %2 to i64
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl i64 %i.c, %i.d
  %i.f = add i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @je_sc_data_init(ptr nofree noundef writeonly initializes((76, 94), (96, 122), (124, 150), (152, 178), (180, 188)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  store <4 x i32> <i32 0, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1, i32 3, i32 1, i32 3>, ptr %i.d, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 3, ptr %i.e, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 1, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.h, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x i32> <i32 1, i32 3, i32 2, i32 3>, ptr %i.i, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 3, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 0, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 1, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> splat (i32 3), ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 3, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 3, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.r, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 1, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 3, ptr %i.t, align 4, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %indvars.iv212.i = phi i64 [ 5, %bb.a ], [ %indvars.iv.next213.i, %bb.p ] ; 4 uses
  %indvars.iv210.i = phi i64 [ 3, %bb.a ], [ %indvars.iv.next211.i, %bb.p ] ; 6 uses
  %.2198.i = phi i32 [ 0, %bb.a ], [ %.4.i.lcssa, %bb.p ]
  %.6197.i = phi i32 [ 4, %bb.a ], [ %.8.i.lcssa, %bb.p ]
  %.6145196.i = phi i32 [ 0, %bb.a ], [ %.8147.i.lcssa, %bb.p ]
  %.3151195.i = phi i64 [ 4, %bb.a ], [ %indvars.iv.next.i.lcssa, %bb.p ] ; 3 uses
  %.0155194.i = phi i32 [ 0, %bb.a ], [ %.2157.i.lcssa, %bb.p ]
  %.0158193.i = phi i64 [ 0, %bb.a ], [ %.2160.i.lcssa, %bb.p ]
  %.0161192.i = phi i64 [ 0, %bb.a ], [ %.2163.i.lcssa, %bb.p ]
  %i.u = icmp eq i64 %indvars.iv212.i, 62
  %i.v = shl nuw nsw i64 1, %indvars.iv212.i      ; 4 uses
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 3 uses
  %sext.i = shl i64 %.3151195.i, 32
  %i.w = ashr exact i64 %sext.i, 32               ; 5 uses
  %i.x = trunc nuw nsw i64 %indvars.iv210.i to i32 ; 8 uses
  %i.y = trunc nuw nsw i64 %indvars.iv212.i to i32 ; 4 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next213.i to i32 ; 2 uses
  %i.aa = getelementptr inbounds [28 x i8], ptr %i.a, i64 %i.w ; 9 uses
  %i.ab = trunc i64 %.3151195.i to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.x, ptr %i.ad, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !16
  %i.af = shl nuw i64 1, %indvars.iv210.i
  %i.ag = add nuw i64 %i.af, %i.v                 ; 6 uses
  %i.ah = and i64 %i.ag, 4095
  %i.ai = icmp eq i64 %i.ah, 0                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %i.aj, align 4, !tbaa !11
  %i.al = icmp ult i64 %i.ag, 16384
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 17 ; 2 uses
  br i1 %i.al, label %bb.c, label %.thread.i175.i

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.am, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.023.i.i177.i = phi i64 [ 4096, %bb.c ], [ %i.an, %bb.d ] ; 3 uses
  %i.an = add i64 %.023.i.i177.i, 4096
  %i.ao = urem i64 %.023.i.i177.i, %i.ag
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.d, !llvm.loop !21

.thread.i175.i:                                   ; preds = %bb.b
  store i8 0, ptr %i.am, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !17
  br label %size_class.exit178.i

bb.e:                                             ; preds = %bb.d
  %i.ar = lshr exact i64 %.023.i.i177.i, 12
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 %i.as, ptr %i.at, align 4, !tbaa !17
  %i.au = icmp samesign ult i64 %i.ag, 4097
  %spec.select.i = select i1 %i.au, i32 %i.x, i32 0
  br label %size_class.exit178.i

size_class.exit178.i:                             ; preds = %bb.e, %.thread.i175.i
  %i.av = phi i8 [ 1, %bb.e ], [ 0, %.thread.i175.i ] ; 3 uses
  %.sink.i176.i = phi i32 [ %spec.select.i, %bb.e ], [ 0, %.thread.i175.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %.sink.i176.i, ptr %i.aw, align 4, !tbaa !18
  %.not174.i = icmp eq i32 %.sink.i176.i, 0       ; 2 uses
  %indvars.iv.next.i = add nsw i64 %i.w, 1        ; 3 uses
  %.2163.i = select i1 %.not174.i, i64 %.0161192.i, i64 %i.ag
  %i.ax = trunc nsw i64 %indvars.iv.next.i to i32
  %.4.i = select i1 %.not174.i, i32 %.2198.i, i32 %i.ax
  %i.ay = zext i1 %i.ai to i32
  %.8147.i = add nsw i32 %.6145196.i, %i.ay
  %i.az = trunc nuw i8 %i.av to i1
  %.2160.i = select i1 %i.az, i64 %i.ag, i64 %.0158193.i
  %i.ba = zext nneg i8 %i.av to i32
  %.8.i = add nsw i32 %.6197.i, %i.ba
  %i.bb = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 9 uses
  %i.bc = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.y, ptr %i.bd, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.x, ptr %i.be, align 4, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 2, ptr %i.bf, align 4, !tbaa !16
  %i.bg = shl i64 2, %indvars.iv210.i
  %i.bh = add nuw i64 %i.bg, %i.v                 ; 6 uses
  %i.bi = and i64 %i.bh, 4095
  %i.bj = icmp eq i64 %i.bi, 0                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bl = zext i1 %i.bj to i8
  store i8 %i.bl, ptr %i.bk, align 4, !tbaa !11
  %i.bm = icmp ult i64 %i.bh, 16384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 17 ; 2 uses
  br i1 %i.bm, label %bb.f, label %.thread.i175.i.1

.thread.i175.i.1:                                 ; preds = %size_class.exit178.i
  store i8 0, ptr %i.bn, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !17
  br label %size_class.exit178.i.1

bb.f:                                             ; preds = %size_class.exit178.i
  store i8 1, ptr %i.bn, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.023.i.i177.i.1 = phi i64 [ 4096, %bb.f ], [ %i.bp, %bb.g ] ; 3 uses
  %i.bp = add i64 %.023.i.i177.i.1, 4096
  %i.bq = urem i64 %.023.i.i177.i.1, %i.bh
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.g, !llvm.loop !21

bb.h:                                             ; preds = %bb.g
  %i.bs = lshr exact i64 %.023.i.i177.i.1, 12
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !17
  %i.bv = icmp samesign ult i64 %i.bh, 4097
  %spec.select.i.1 = select i1 %i.bv, i32 %i.x, i32 0
  br label %size_class.exit178.i.1

size_class.exit178.i.1:                           ; preds = %bb.h, %.thread.i175.i.1
  %i.bw = phi i8 [ 1, %bb.h ], [ 0, %.thread.i175.i.1 ] ; 3 uses
  %.sink.i176.i.1 = phi i32 [ %spec.select.i.1, %bb.h ], [ 0, %.thread.i175.i.1 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %.sink.i176.i.1, ptr %i.bx, align 4, !tbaa !18
  %.not174.i.1 = icmp eq i32 %.sink.i176.i.1, 0   ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %i.w, 2      ; 4 uses
  %.2163.i.1 = select i1 %.not174.i.1, i64 %.2163.i, i64 %i.bh
  %i.by = trunc nsw i64 %indvars.iv.next.i.1 to i32
  %.4.i.1 = select i1 %.not174.i.1, i32 %.4.i, i32 %i.by
  %i.bz = zext i1 %i.bj to i32
  %.8147.i.1 = add nsw i32 %.8147.i, %i.bz
  %i.ca = trunc nuw i8 %i.bw to i1
  %.2160.i.1 = select i1 %i.ca, i64 %i.bh, i64 %.2160.i
  %i.cb = or i8 %i.bw, %i.av
  %i.cc = zext nneg i8 %i.bw to i32
  %.8.i.1 = add nsw i32 %.8.i, %i.cc
  %i.cd = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i.1 ; 9 uses
  %i.ce = trunc nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.y, ptr %i.cf, align 4, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.x, ptr %i.cg, align 4, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 3, ptr %i.ch, align 4, !tbaa !16
  %i.ci = shl i64 3, %indvars.iv210.i
  %i.cj = add i64 %i.ci, %i.v                     ; 7 uses
  %i.ck = and i64 %i.cj, 4095
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cn = zext i1 %i.cl to i8
  store i8 %i.cn, ptr %i.cm, align 4, !tbaa !11
  %i.co = icmp ult i64 %i.cj, 16384
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 17 ; 2 uses
  br i1 %i.co, label %bb.i, label %.thread.i175.i.2

.thread.i175.i.2:                                 ; preds = %size_class.exit178.i.1
  store i8 0, ptr %i.cp, align 1, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cq, align 4, !tbaa !17
  br label %size_class.exit178.i.2

bb.i:                                             ; preds = %size_class.exit178.i.1
  store i8 1, ptr %i.cp, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.023.i.i177.i.2 = phi i64 [ 4096, %bb.i ], [ %i.cr, %bb.j ] ; 3 uses
  %i.cr = add i64 %.023.i.i177.i.2, 4096
  %i.cs = urem i64 %.023.i.i177.i.2, %i.cj
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.k, label %bb.j, !llvm.loop !21

bb.k:                                             ; preds = %bb.j
  %i.cu = lshr exact i64 %.023.i.i177.i.2, 12
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !17
  %i.cx = icmp samesign ult i64 %i.cj, 4097
  %spec.select.i.2 = select i1 %i.cx, i32 %i.x, i32 0
  br label %size_class.exit178.i.2

size_class.exit178.i.2:                           ; preds = %bb.k, %.thread.i175.i.2
  %i.cy = phi i8 [ 1, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 3 uses
  %.sink.i176.i.2 = phi i32 [ %spec.select.i.2, %bb.k ], [ 0, %.thread.i175.i.2 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 %.sink.i176.i.2, ptr %i.cz, align 4, !tbaa !18
  %.not174.i.2 = icmp eq i32 %.sink.i176.i.2, 0   ; 2 uses
  %indvars.iv.next.i.2 = add nsw i64 %i.w, 3      ; 5 uses
  %.2163.i.2 = select i1 %.not174.i.2, i64 %.2163.i.1, i64 %i.cj ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next.i.2 to i32
  %.4.i.2 = select i1 %.not174.i.2, i32 %.4.i.1, i32 %i.da ; 2 uses
  %i.db = zext i1 %i.cl to i32
  %.8147.i.2 = add nsw i32 %.8147.i.1, %i.db      ; 2 uses
  %i.dc = trunc nuw i8 %i.cy to i1
  %.2160.i.2 = select i1 %i.dc, i64 %i.cj, i64 %.2160.i.1 ; 2 uses
  %1 = or i8 %i.cb, %i.cy
  %.not = icmp eq i8 %1, 0
  %.2157.i.2 = select i1 %.not, i32 %.0155194.i, i32 %i.z ; 2 uses
  %i.dd = zext nneg i8 %i.cy to i32
  %.8.i.2 = add nsw i32 %.8.i.1, %i.dd            ; 2 uses
  br i1 %i.u, label %bb.p, label %bb.l

bb.l:                                             ; preds = %size_class.exit178.i.2
  %i.de = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next.i.2 ; 9 uses
  %i.df = trunc nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.df, ptr %i.de, align 4, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.y, ptr %i.dg, align 4, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.x, ptr %i.dh, align 4, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 4, ptr %i.di, align 4, !tbaa !16
  %i.dj = shl i64 4, %indvars.iv210.i
  %i.dk = add nuw i64 %i.dj, %i.v                 ; 7 uses
  %i.dl = and i64 %i.dk, 4095
  %i.dm = icmp eq i64 %i.dl, 0                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.do = zext i1 %i.dm to i8
  store i8 %i.do, ptr %i.dn, align 4, !tbaa !11
  %i.dp = icmp ult i64 %i.dk, 16384
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 17 ; 2 uses
  br i1 %i.dp, label %bb.m, label %.thread.i175.i.3

.thread.i175.i.3:                                 ; preds = %bb.l
  store i8 0, ptr %i.dq, align 1, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 0, ptr %i.dr, align 4, !tbaa !17
  br label %size_class.exit178.i.3

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.dq, align 1, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.023.i.i177.i.3 = phi i64 [ 4096, %bb.m ], [ %i.ds, %bb.n ] ; 3 uses
  %i.ds = add i64 %.023.i.i177.i.3, 4096
  %i.dt = urem i64 %.023.i.i177.i.3, %i.dk
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.o, label %bb.n, !llvm.loop !21

bb.o:                                             ; preds = %bb.n
  %i.dv = lshr exact i64 %.023.i.i177.i.3, 12
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !17
  %i.dy = icmp samesign ult i64 %i.dk, 4097
  %spec.select.i.3 = select i1 %i.dy, i32 %i.x, i32 0
  br label %size_class.exit178.i.3

size_class.exit178.i.3:                           ; preds = %bb.o, %.thread.i175.i.3
  %i.dz = phi i8 [ 1, %bb.o ], [ 0, %.thread.i175.i.3 ] ; 2 uses
  %.sink.i176.i.3 = phi i32 [ %spec.select.i.3, %bb.o ], [ 0, %.thread.i175.i.3 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i32 %.sink.i176.i.3, ptr %i.ea, align 4, !tbaa !18
  %.not174.i.3 = icmp eq i32 %.sink.i176.i.3, 0   ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %i.w, 4      ; 2 uses
  %.2163.i.3 = select i1 %.not174.i.3, i64 %.2163.i.2, i64 %i.dk
  %i.eb = trunc nsw i64 %indvars.iv.next.i.3 to i32
  %.4.i.3 = select i1 %.not174.i.3, i32 %.4.i.2, i32 %i.eb
  %i.ec = zext i1 %i.dm to i32
  %.8147.i.3 = add nsw i32 %.8147.i.2, %i.ec
  %i.ed = trunc nuw i8 %i.dz to i1                ; 2 uses
  %.2160.i.3 = select i1 %i.ed, i64 %i.dk, i64 %.2160.i.2
  %.2157.i.3 = select i1 %i.ed, i32 %i.z, i32 %.2157.i.2
  %i.ee = zext nneg i8 %i.dz to i32
  %.8.i.3 = add nsw i32 %.8.i.2, %i.ee
  br label %bb.p

bb.p:                                             ; preds = %size_class.exit178.i.3, %size_class.exit178.i.2
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.3, %size_class.exit178.i.3 ], [ %indvars.iv.next.i.2, %size_class.exit178.i.2 ]
  %.2163.i.lcssa = phi i64 [ %.2163.i.3, %size_class.exit178.i.3 ], [ %.2163.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.4.i.3, %size_class.exit178.i.3 ], [ %.4.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.8147.i.lcssa = phi i32 [ %.8147.i.3, %size_class.exit178.i.3 ], [ %.8147.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.2160.i.lcssa = phi i64 [ %.2160.i.3, %size_class.exit178.i.3 ], [ %.2160.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %.2157.i.lcssa = phi i32 [ %.2157.i.3, %size_class.exit178.i.3 ], [ %.2157.i.2, %size_class.exit178.i.2 ] ; 3 uses
  %.8.i.lcssa = phi i32 [ %.8.i.3, %size_class.exit178.i.3 ], [ %.8.i.2, %size_class.exit178.i.2 ] ; 2 uses
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.2, %size_class.exit178.i.3 ], [ %indvars.iv.next.i.1, %size_class.exit178.i.2 ]
  %.lcssa = phi i64 [ %i.dk, %size_class.exit178.i.3 ], [ %i.cj, %size_class.exit178.i.2 ]
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1
  %exitcond217.not.i = icmp eq i64 %indvars.iv.next213.i, 63
  br i1 %exitcond217.not.i, label %size_classes.exit, label %bb.b, !llvm.loop !23

size_classes.exit:                                ; preds = %bb.p
  %i.ef = trunc i64 %.3151195.i to i32
  %i.eg = add i32 %i.ef, 3
  %sext218.i = shl i64 %indvars.iv.i.lcssa, 32
  %i.eh = ashr exact i64 %sext218.i, 32
  %i.ei = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eh, i1 false)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = sub nuw nsw i32 64, %i.ej
  store i32 0, ptr %0, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.4.i.lcssa, ptr %i.el, align 4, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.8.i.lcssa, ptr %i.em, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.eg, ptr %i.en, align 4, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ek, ptr %i.eo, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.8147.i.lcssa, ptr %i.ep, align 4, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.eq, align 8, !tbaa !32
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2163.i.lcssa, ptr %i.er, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.2160.i.lcssa, ptr %i.es, align 8, !tbaa !34
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2157.i.lcssa, ptr %i.et, align 8, !tbaa !35
  %i.eu = zext nneg i32 %.2157.i.lcssa to i64
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.lcssa, ptr %i.ex, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.ey, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @je_sc_data_update_slab_size(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sc_data_update_sc_slab_size.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sc_data_update_sc_slab_size.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14, !range !39, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = zext nneg i32 %i.k to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = sext i32 %i.o to i64
  %i.s = zext nneg i32 %i.m to i64
  %i.t = shl i64 %i.r, %i.s
  %i.u = add i64 %i.t, %i.q                       ; 5 uses
  %.not = icmp ugt i64 %1, %i.u
  %.not18 = icmp ugt i64 %i.u, %2
  %or.cond = or i1 %.not, %.not18
  br i1 %or.cond, label %sc_data_update_sc_slab_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i64 %i.u, 12
  %i.w = and i64 %i.u, 4095
  %.not.i = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %i.v, %i.x     ; 2 uses
  %i.y = lshr i64 %i.u, 3                         ; 2 uses
  %i.z = icmp ugt i64 %spec.select.i, %i.e
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc i64 %spec.select.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = and i64 %i.y, 4503599627370495
  %i.ad = icmp ult i64 %i.ac, %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = trunc i64 %i.y to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.h:                                             ; preds = %bb.f
  store i32 %3, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

sc_data_update_sc_slab_size.exit:                 ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !41

.critedge:                                        ; preds = %sc_data_update_sc_slab_size.exit, %bb.b, %bb.a
  ret void
end_hunk_0
