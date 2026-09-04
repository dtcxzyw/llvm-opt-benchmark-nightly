Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_tar?download=true
inline.NumInlined: 71
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@checksum:bb.a
  ]

.critedge.6:                                      ; preds = %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5, %.critedge.5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  switch i8 %i.p, label %.loopexit [
    i8 55, label %.critedge.7
    i8 54, label %.critedge.7
    i8 53, label %.critedge.7
    i8 52, label %.critedge.7
    i8 51, label %.critedge.7
    i8 50, label %.critedge.7
    i8 49, label %.critedge.7
    i8 48, label %.critedge.7
    i8 32, label %.critedge.7
    i8 0, label %.critedge.7
  ]

.critedge.7:                                      ; preds = %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6, %.critedge.6
  %i.q = tail call fastcc i64 @tar_atol(ptr noundef %i.a, i64 noundef 8)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.critedge.7
  %.17 = phi i64 [ 0, %.critedge.7 ], [ %i.ak, %bb.b ] ; 5 uses
  %.0486 = phi i32 [ 0, %.critedge.7 ], [ %i.aj, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.17
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %.0486, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.z, %i.ad             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.ae, %i.ai
  %i.ak = add nuw nsw i64 %.17, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ak, 148
  br i1 %exitcond.not.3, label %.lr.ph13.preheader, label %bb.b, !llvm.loop !91

.lr.ph13.preheader:                               ; preds = %bb.b
  %i.al = trunc i64 %i.q to i32                   ; 2 uses
  %i.am = add nuw i32 %i.ae, 256
  %i.an = add i32 %i.am, %i.ai
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph13.preheader
  %index = phi i64 [ 0, %.lr.ph13.preheader ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %.lr.ph13.preheader ], [ %i.bb, %vector.body ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %.lr.ph13.preheader ], [ %i.bc, %vector.body ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 156
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %wide.load = load <4 x i8>, ptr %i.aq, align 1, !tbaa !14
  %wide.load48 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !14
  %i.as = zext <4 x i8> %wide.load to <4 x i32>
  %i.at = zext <4 x i8> %wide.load48 to <4 x i32>
  %i.au = add <4 x i32> %vec.phi, %i.as
  %i.av = add <4 x i32> %vec.phi47, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 164
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %wide.load.1 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !14
  %wide.load48.1 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !14
  %i.az = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.ba = zext <4 x i8> %wide.load48.1 to <4 x i32>
  %i.bb = add <4 x i32> %i.au, %i.az              ; 2 uses
  %i.bc = add <4 x i32> %i.av, %i.ba              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bd = icmp eq i64 %index.next.1, 352
  br i1 %i.bd, label %.lr.ph13, label %vector.body, !llvm.loop !92

.lr.ph13:                                         ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 509
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 510
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 511
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, %i.bt
  %i.bv = icmp eq i32 %i.bu, %i.al
  br i1 %i.bv, label %.loopexit, label %.preheader2

.preheader2:                                      ; preds = %.lr.ph13, %.preheader2
  %.416 = phi i64 [ %i.cp, %.preheader2 ], [ 0, %.lr.ph13 ] ; 5 uses
  %.35115 = phi i32 [ %i.co, %.preheader2 ], [ 0, %.lr.ph13 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.416
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = sext i8 %i.bx to i32
  %i.bz = add nsw i32 %.35115, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.416
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = sext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.416
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ce, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.416
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cn = sext i8 %i.cm to i32                    ; 2 uses
  %i.co = add nsw i32 %i.cj, %i.cn
  %i.cp = add nuw nsw i64 %.416, 4                ; 2 uses
  %exitcond38.not.3 = icmp eq i64 %i.cp, 148
  br i1 %exitcond38.not.3, label %vector.ph50, label %.preheader2, !llvm.loop !93

vector.ph50:                                      ; preds = %.preheader2
  %i.cq = add i32 %i.cj, 256
  %i.cr = add i32 %i.cq, %i.cn
  %i.cs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cr, i64 0
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph50
  %index52 = phi i64 [ 0, %vector.ph50 ], [ %index.next57.1, %vector.body51 ] ; 3 uses
  %vec.phi53 = phi <4 x i32> [ %i.cs, %vector.ph50 ], [ %i.df, %vector.body51 ]
  %vec.phi54 = phi <4 x i32> [ zeroinitializer, %vector.ph50 ], [ %i.dg, %vector.body51 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %index52 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 156
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  %wide.load55 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !14
  %wide.load56 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !14
  %i.cw = sext <4 x i8> %wide.load55 to <4 x i32>
  %i.cx = sext <4 x i8> %wide.load56 to <4 x i32>
  %i.cy = add <4 x i32> %vec.phi53, %i.cw
  %i.cz = add <4 x i32> %vec.phi54, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %index52 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 164
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 168
  %wide.load55.1 = load <4 x i8>, ptr %i.db, align 1, !tbaa !14
  %wide.load56.1 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !14
  %i.dd = sext <4 x i8> %wide.load55.1 to <4 x i32>
  %i.de = sext <4 x i8> %wide.load56.1 to <4 x i32>
  %i.df = add <4 x i32> %i.cy, %i.dd              ; 2 uses
  %i.dg = add <4 x i32> %i.cz, %i.de              ; 2 uses
  %index.next57.1 = add nuw nsw i64 %index52, 16  ; 2 uses
  %i.dh = icmp eq i64 %index.next57.1, 352
  br i1 %i.dh, label %.lr.ph24, label %vector.body51, !llvm.loop !94

.lr.ph24:                                         ; preds = %vector.body51
  %bin.rdx59 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx59)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dl = sext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.di, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 509
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = sext i8 %i.do to i32
  %i.dq = add nsw i32 %i.dm, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 510
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = sext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 511
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !14
  %i.dx = sext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.du, %i.dx
  %i.dz = icmp eq i32 %i.dy, %i.al
  %. = zext i1 %i.dz to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.critedge, %.critedge.1, %.critedge.2, %.critedge.3, %.critedge.4, %.critedge.5, %.critedge.6, %.lr.ph24, %.lr.ph13
  %.256 = phi i32 [ 1, %.lr.ph13 ], [ %., %.lr.ph24 ], [ 0, %.critedge.6 ], [ 0, %.critedge.5 ], [ 0, %.critedge.4 ], [ 0, %.critedge.3 ], [ 0, %.critedge.2 ], [ 0, %.critedge.1 ], [ 0, %.critedge ], [ 0, %bb.a ]
  ret i32 %.256
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @validate_number_field(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 8, 13) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  switch i8 %i.a, label %.preheader [
    i8 -1, label %.loopexit
    i8 -128, label %.loopexit
    i8 0, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.a, %bb.b
  %.035 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.035
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = icmp eq i8 %i.c, 32
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.e = add nuw nsw i64 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %1
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !97

.critedge:                                        ; preds = %.preheader
  %i.f = icmp samesign ult i64 %.035, %1
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge, %bb.c
  %.136 = phi i64 [ %i.j, %bb.c ], [ %.035, %.critedge ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.136
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, -8
  %or.cond = icmp eq i8 %i.i, 48
  br i1 %or.cond, label %bb.c, label %.critedge7

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.136, 1                 ; 2 uses
  %exitcond44.not = icmp eq i64 %i.j, %1
  br i1 %exitcond44.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.critedge7:                                       ; preds = %.lr.ph
  %i.k = icmp samesign ult i64 %.136, %1
  br i1 %i.k, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.critedge7, %bb.d
  %.239 = phi i64 [ %i.n, %bb.d ], [ %.136, %.critedge7 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.239
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  switch i8 %i.m, label %.loopexit [
    i8 32, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph40, %.lr.ph40
  %i.n = add nuw nsw i64 %.239, 1                 ; 2 uses
  %exitcond45.not = icmp eq i64 %i.n, %1
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph40, !llvm.loop !0

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %.lr.ph40, %.critedge, %.critedge7, %bb.a, %bb.a, %bb.a
  %.131 = phi i32 [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %.critedge7 ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %.critedge ], [ 0, %.lr.ph40 ], [ 1, %bb.b ]
  ret i32 %.131
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @tar_atol(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 8, 13) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 5 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %.lr.ph.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 64
  %.not.i = icmp ne i8 %i.b, 0                    ; 5 uses
  %i.c = and i8 %i.a, 63
  %.024.i = sext i1 %.not.i to i64
  %.021.i = select i1 %.not.i, i8 %i.a, i8 %i.c   ; 2 uses
  %.0.i = select i1 %.not.i, i32 255, i32 0       ; 5 uses
  %.not45.i = icmp eq i64 %1, 8
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 %1
  %scevgep.i = getelementptr i8, ptr %i.d, i64 -8 ; 4 uses
  %i.e = zext i8 %.021.i to i32
  %.not34.i = icmp eq i32 %.0.i, %i.e
  br i1 %.not34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.f = select i1 %.not.i, i64 -9223372036854775808, i64 9223372036854775807
  br label %tar_atol256.exit

bb.d:                                             ; preds = %.lr.ph.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 2 uses
  %i.i = icmp samesign ugt i64 %1, 9
  br i1 %i.i, label %.lr.ph.i.1, label %._crit_edge.i

.lr.ph.i.1:                                       ; preds = %bb.d
  %i.j = zext i8 %i.h to i32
  %.not34.i.1 = icmp eq i32 %.0.i, %i.j
  br i1 %.not34.i.1, label %bb.e, label %bb.c

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %.not49 = icmp eq i64 %1, 10
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.e
  %i.m = zext i8 %i.l to i32
  %.not34.i.2 = icmp eq i32 %.0.i, %i.m
  br i1 %.not34.i.2, label %bb.f, label %bb.c

bb.f:                                             ; preds = %.lr.ph.i.2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14    ; 2 uses
  %i.p = icmp samesign ugt i64 %1, 11
  br i1 %i.p, label %.lr.ph.i.3, label %._crit_edge.i

.lr.ph.i.3:                                       ; preds = %bb.f
  %i.q = zext i8 %i.o to i32
  %.not34.i.3 = icmp eq i32 %.0.i, %i.q
  br i1 %.not34.i.3, label %bb.g, label %bb.c

bb.g:                                             ; preds = %.lr.ph.i.3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.022.lcssa.i = phi ptr [ %0, %bb.b ], [ %scevgep.i, %bb.g ], [ %scevgep.i, %bb.f ], [ %scevgep.i, %bb.e ], [ %scevgep.i, %bb.d ] ; 7 uses
  %.1.lcssa.i = phi i8 [ %.021.i, %bb.b ], [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.t = zext i8 %.1.lcssa.i to i32
  %i.u = xor i32 %.0.i, %i.t
  %.not31.i = icmp samesign ult i32 %i.u, 128
  br i1 %.not31.i, label %.preheader.preheader.i, label %bb.h

.preheader.preheader.i:                           ; preds = %._crit_edge.i
  %i.v = zext i8 %.1.lcssa.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = shl nsw i64 %.024.i, 16
  %i.z = shl nuw nsw i64 %i.v, 8
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = zext i8 %i.x to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = shl nsw i64 %i.ac, 16
  %i.aj = shl nuw nsw i64 %i.af, 8
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = zext i8 %i.ah to i64
  %i.am = or disjoint i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = shl i64 %i.am, 16
  %i.at = shl nuw nsw i64 %i.ap, 8
  %i.au = or disjoint i64 %i.as, %i.at
  %i.av = zext i8 %i.ar to i64
  %i.aw = or disjoint i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = shl i64 %i.aw, 16
  %i.bd = shl nuw nsw i64 %i.az, 8
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = zext i8 %i.bb to i64
  %i.bg = or disjoint i64 %i.be, %i.bf
  br label %tar_atol256.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bh = select i1 %.not.i, i64 -9223372036854775808, i64 9223372036854775807
  br label %tar_atol256.exit

.lr.ph.i.ithread-pre-split:                       ; preds = %.critedge2.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.bi, align 1, !tbaa !14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.ithread-pre-split
  %i.bj = phi i8 [ %.pr, %.lr.ph.i.ithread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.04570.i.i = phi i64 [ %i.bk, %.lr.ph.i.ithread-pre-split ], [ %1, %bb.a ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.bi, %.lr.ph.i.ithread-pre-split ], [ %0, %bb.a ] ; 3 uses
  switch i8 %i.bj, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bk = add nsw i64 %.04570.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %tar_atol256.exit, label %.lr.ph.i.ithread-pre-split, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bl = add i64 %.04570.i.i, -1                 ; 2 uses
  %.not51.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not51.i.i, label %tar_atol256.exit, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.bm, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.bj, %.lr.ph.i.i ] ; 2 uses
  %i.bn = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 0, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04196.i.i = phi i64 [ 1152921504606846976, %.preheaderthread-pre-split.i.i ], [ 1152921504606846975, %.lr.ph.i.i ] ; 2 uses
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.bl, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.bm, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.bo = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.bo, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.k ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.bv, %bb.k ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.bx, %bb.k ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.bw, %bb.k ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nuw nsw i64 %.03977.in.i.i, 4294967248
  %i.bp = icmp samesign ult i8 %.03977.in.in.i.i, 56
  %i.bq = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %.critedge4.i.i

bb.i:                                             ; preds = %.lr.ph78.i.i
  %i.br = icmp sgt i64 %.04376.i.i, %.04196.i.i
  br i1 %i.br, label %tar_atol256.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = icmp ne i64 %.04376.i.i, %.04196.i.i
  %i.bt = and i64 %.03977.i.i, 4294967295         ; 2 uses
  %.not52.i.i = icmp samesign ugt i64 %.04097.i.i, %i.bt
  %or.cond54.i.i = select i1 %i.bs, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.k, label %tar_atol256.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = shl nsw i64 %.04376.i.i, 3
  %i.bv = add nsw i64 %i.bt, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.bx = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.bw, align 1, !tbaa !14 ; 2 uses
  %i.by = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.by, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.k, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bv, %bb.k ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.bz = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.bn, i64 %i.bz, i64 %.1.i.i
  br label %tar_atol256.exit
end_hunk_0
