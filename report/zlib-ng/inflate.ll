Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inflate?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@zng_inflatePrime:bb.a
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.i, align 64, !tbaa !22
  %.not.i = icmp eq ptr %i.n, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = add i32 %i.p, -16180
  %or.cond.i = icmp ult i32 %i.q, 31
  br i1 %or.cond.i, label %bb.g, label %inflateStateCheck.exit.thread

bb.g:                                             ; preds = %inflateStateCheck.exit
  %i.r = icmp eq i32 %1, 0
  br i1 %i.r, label %inflateStateCheck.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp slt i32 %1, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i64 0, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i32 0, ptr %i.u, align 32, !tbaa !34
  br label %inflateStateCheck.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %1, 16
  br i1 %i.v, label %inflateStateCheck.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.x = load i32, ptr %i.w, align 32, !tbaa !34  ; 2 uses
  %i.y = add i32 %i.x, %1                         ; 2 uses
  %i.z = icmp ugt i32 %i.y, 32
  br i1 %i.z, label %inflateStateCheck.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.aa
  %i.ab = trunc nsw i64 %notmask to i32
  %i.ac = xor i32 %i.ab, -1
  %i.ad = and i32 %2, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = zext nneg i32 %i.x to i64
  %i.ag = shl i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !33
  store i32 %i.y, ptr %i.w, align 32, !tbaa !34
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.d, %bb.j, %bb.k, %bb.g, %inflateStateCheck.exit, %bb.l, %bb.i
  %.0 = phi i32 [ 0, %bb.l ], [ -2, %inflateStateCheck.exit ], [ 0, %bb.i ], [ 0, %bb.g ], [ -2, %bb.k ], [ -2, %bb.j ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @zng_fixedtables(ptr nofree noundef writeonly captures(none) initializes((100, 124)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @lenfix, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 9, ptr %i.b, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @distfix, ptr %i.c, align 16, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 5, ptr %i.d, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %inf_chksum.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %inf_chksum.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %inf_chksum.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 37 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %inf_chksum.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 9144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %inf_chksum.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 64, !tbaa !22
  %.not.i = icmp eq ptr %i.o, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inf_chksum.exit

inflateStateCheck.exit:                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 60 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.r = add i32 %i.q, -16180
  %or.cond.i = icmp ult i32 %i.r, 31
  br i1 %or.cond.i, label %bb.g, label %inf_chksum.exit

bb.g:                                             ; preds = %inflateStateCheck.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %inf_chksum.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !59
  %.not1163 = icmp eq i32 %i.y, 0
  br i1 %.not1163, label %bb.j, label %inf_chksum.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = icmp eq i32 %i.q, 16191
  br i1 %i.z, label %bb.k, label %.split2315

bb.k:                                             ; preds = %bb.j
  store i32 16192, ptr %i.p, align 8, !tbaa !23
  br label %.split2315

.split2315:                                       ; preds = %bb.j, %bb.k
  %i.aa = phi i32 [ %i.q, %bb.j ], [ 16192, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !59 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 5 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 32, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 23 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 20 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 23 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 140 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 148 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 228 ; 14 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 1444 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 100 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 868 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 740
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 4 uses
  %i.bf = icmp eq i32 %1, 6                       ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 132 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.bp = add i32 %1, -5
  %or.cond3 = icmp ult i32 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 14 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.thread, %.split2315
  %i.bu = phi i32 [ %i.aa, %.split2315 ], [ %.pre, %.thread ]
  %.01048 = phi ptr [ %i.v, %.split2315 ], [ %.631111, %.thread ] ; 68 uses
  %.01045 = phi ptr [ %i.t, %.split2315 ], [ %.21047, %.thread ] ; 42 uses
  %.0983 = phi i32 [ %i.ae, %.split2315 ], [ %.63, %.thread ] ; 62 uses
  %.0981 = phi i32 [ %i.ac, %.split2315 ], [ %.1982, %.thread ] ; 83 uses
  %.0920 = phi i64 [ %i.ag, %.split2315 ], [ %.59979, %.thread ] ; 48 uses
  %.0909 = phi i32 [ %i.ai, %.split2315 ], [ %.59, %.thread ] ; 59 uses
  %.0903 = phi i32 [ %i.ac, %.split2315 ], [ %.4907, %.thread ] ; 74 uses
  %.0894 = phi i32 [ 0, %.split2315 ], [ %.8, %.thread ] ; 49 uses
  switch i32 %i.bu, label %inf_chksum.exit [
    i32 16180, label %bb.m
    i32 16181, label %.preheader1279
    i32 16182, label %bb.ap
    i32 16183, label %bb.ay
    i32 16184, label %bb.bf
    i32 16185, label %bb.bp
    i32 16186, label %bb.cb
    i32 16187, label %bb.co
    i32 16188, label %bb.db
    i32 16189, label %.preheader1283
    i32 16190, label %bb.dp
    i32 16191, label %bb.ds
    i32 16192, label %bb.dt
    i32 16193, label %bb.ec
    i32 16194, label %bb.ej
    i32 16195, label %bb.ek
    i32 16196, label %.preheader1297
    i32 16197, label %.split
    i32 16198, label %._crit_edge2819
    i32 16199, label %bb.fn
    i32 16200, label %bb.fo
    i32 16201, label %._crit_edge2822
    i32 16202, label %bb.gd
    i32 16203, label %._crit_edge2827
    i32 16204, label %bb.gl
    i32 16205, label %bb.gw
    i32 16206, label %bb.gy
    i32 16207, label %._crit_edge2839
    i32 16208, label %.loopexit1260.loopexit3905
    i32 16209, label %.loopexit1260
  ]

._crit_edge2839:                                  ; preds = %bb.l
  %.pre2840 = load i32, ptr %i.aj, align 16, !tbaa !26
  br label %bb.hl

._crit_edge2827:                                  ; preds = %bb.l
  %.pre2828 = load i32, ptr %i.bh, align 4, !tbaa !91
  br label %bb.gj

._crit_edge2822:                                  ; preds = %bb.l
  %.pre2823 = load i32, ptr %i.bh, align 4, !tbaa !91
  br label %bb.gb

._crit_edge2819:                                  ; preds = %bb.l
  %.promoted1971.pre = load i32, ptr %i.av, align 4, !tbaa !92
  br label %bb.ev

.preheader1297:                                   ; preds = %bb.l
  %i.bv = icmp ult i32 %.0909, 14
  br i1 %i.bv, label %.lr.ph1750.preheader, label %._crit_edge1751

.lr.ph1750.preheader:                             ; preds = %.preheader1297
  %i.bw = zext nneg i32 %.0909 to i64             ; 4 uses
  %i.bx = icmp eq i32 %.0983, 0
  br i1 %i.bx, label %.loopexit1260.loopexit2335, label %bb.eo

.preheader1283:                                   ; preds = %bb.l
  %i.by = icmp ult i32 %.0909, 32
  br i1 %i.by, label %.lr.ph2096.preheader, label %._crit_edge2097

.lr.ph2096.preheader:                             ; preds = %.preheader1283
  %i.bz = zext nneg i32 %.0909 to i64             ; 5 uses
  %i.ca = icmp eq i32 %.0983, 0
  br i1 %i.ca, label %.loopexit1260.loopexit2326, label %bb.dl

.preheader1279:                                   ; preds = %bb.l
  %i.cb = icmp ult i32 %.0909, 16
  br i1 %i.cb, label %.lr.ph2260.preheader, label %._crit_edge2261

.lr.ph2260.preheader:                             ; preds = %.preheader1279
  %i.cc = zext nneg i32 %.0909 to i64             ; 4 uses
  %i.cd = icmp eq i32 %.0983, 0
  br i1 %i.cd, label %.loopexit1260.loopexit2325, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.aj, align 16, !tbaa !26 ; 3 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.n, label %.preheader1269

.preheader1269:                                   ; preds = %bb.m
  %i.cg = icmp ult i32 %.0909, 16
  br i1 %i.cg, label %.lr.ph2309.preheader, label %._crit_edge2310

.lr.ph2309.preheader:                             ; preds = %.preheader1269
  %i.ch = zext nneg i32 %.0909 to i64             ; 4 uses
  %i.ci = icmp eq i32 %.0983, 0
  br i1 %i.ci, label %.loopexit1260.loopexit2320, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 16192, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.o:                                             ; preds = %.lr.ph2309.preheader
  %i.cj = add i32 %.0983, -1                      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.cl = load i8, ptr %.01048, align 1, !tbaa !55
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, %i.ch
  %i.co = add i64 %i.cn, %.0920                   ; 3 uses
  %indvars.iv.next2815 = add nuw nsw i64 %i.ch, 8 ; 3 uses
  %i.cp = icmp ult i32 %.0909, 8
  br i1 %i.cp, label %.lr.ph2309.1, label %._crit_edge2310.loopexit

.lr.ph2309.1:                                     ; preds = %bb.o
  %i.cq = icmp eq i32 %i.cj, 0
  br i1 %i.cq, label %.loopexit1260.loopexit2320, label %bb.p

bb.p:                                             ; preds = %.lr.ph2309.1
  %i.cr = add i32 %.0983, -2
  %i.cs = getelementptr inbounds nuw i8, ptr %.01048, i64 2
  %i.ct = load i8, ptr %i.ck, align 1, !tbaa !55
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, %indvars.iv.next2815
  %i.cw = add i64 %i.cv, %i.co
  %indvars.iv.next2815.1 = or disjoint i64 %i.ch, 16
  br label %._crit_edge2310.loopexit

._crit_edge2310.loopexit:                         ; preds = %bb.p, %bb.o
  %.lcssa4105.a = phi i32 [ %i.cj, %bb.o ], [ %i.cr, %bb.p ]
  %.lcssa4104 = phi ptr [ %i.ck, %bb.o ], [ %i.cs, %bb.p ]
  %.lcssa4103 = phi i64 [ %i.co, %bb.o ], [ %i.cw, %bb.p ]
  %indvars.iv.next2815.lcssa = phi i64 [ %indvars.iv.next2815, %bb.o ], [ %indvars.iv.next2815.1, %bb.p ]
  %i.cx = trunc nuw nsw i64 %indvars.iv.next2815.lcssa to i32
  br label %._crit_edge2310

._crit_edge2310:                                  ; preds = %._crit_edge2310.loopexit, %.preheader1269
  %.11049.lcssa = phi ptr [ %.01048, %.preheader1269 ], [ %.lcssa4104, %._crit_edge2310.loopexit ] ; 5 uses
  %.1984.lcssa = phi i32 [ %.0983, %.preheader1269 ], [ %.lcssa4105.a, %._crit_edge2310.loopexit ] ; 5 uses
  %.1921.lcssa = phi i64 [ %.0920, %.preheader1269 ], [ %.lcssa4103, %._crit_edge2310.loopexit ] ; 8 uses
  %.1910.lcssa = phi i32 [ %.0909, %.preheader1269 ], [ %i.cx, %._crit_edge2310.loopexit ] ; 3 uses
  %i.cy = and i32 %i.ce, 2
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = icmp eq i64 %.1921.lcssa, 35615
  %or.cond = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond, label %bb.q, label %bb.t

bb.q:                                             ; preds = %._crit_edge2310
  %i.db = load i32, ptr %i.bs, align 4, !tbaa !42
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 15, ptr %i.bs, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 0, ptr %i.ao, align 32, !tbaa !28
  store i8 31, ptr %i.a, align 4, !tbaa !55
  store i8 -117, ptr %i.bt, align 1, !tbaa !55
  %i.dd = call i32 @zng_crc32(i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 2) #14
  %i.de = zext i32 %i.dd to i64
  store i64 %i.de, ptr %i.ao, align 32, !tbaa !28
  store i32 16181, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.t:                                             ; preds = %._crit_edge2310
  %i.df = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1240 = icmp eq ptr %i.df, null
  br i1 %.not1240, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  store i32 -1, ptr %i.dg, align 8, !tbaa !61
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dh = and i32 %i.ce, 1
  %.not1241 = icmp eq i32 %i.dh, 0
  br i1 %.not1241, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = shl i64 %.1921.lcssa, 8
  %i.dj = and i64 %i.di, 65280
  %i.dk = lshr i64 %.1921.lcssa, 8
  %i.dl = add nuw nsw i64 %i.dj, %i.dk
  %i.dm = urem i64 %i.dl, 31
  %.not1242 = icmp eq i64 %i.dm, 0
  br i1 %.not1242, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.1, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.dn = and i64 %.1921.lcssa, 15
  %.not1243 = icmp eq i64 %i.dn, 8
  br i1 %.not1243, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.2, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

end_hunk_0
begin_hunk_1_@zng_inflate:bb.a
  %indvars.iv.next2745.3 = or disjoint i64 %i.alo, 32
  br label %._crit_edge1741.loopexit

._crit_edge1741.loopexit:                         ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %.lcssa3923.a = phi i32 [ %i.alq, %bb.hn ], [ %i.aly, %bb.ho ], [ %i.amg, %bb.hp ], [ %i.amo, %bb.hq ]
  %.lcssa3922 = phi ptr [ %i.alr, %bb.hn ], [ %i.alz, %bb.ho ], [ %i.amh, %bb.hp ], [ %i.amp, %bb.hq ]
  %.lcssa3921 = phi i64 [ %i.alv, %bb.hn ], [ %i.amd, %bb.ho ], [ %i.aml, %bb.hp ], [ %i.amt, %bb.hq ]
  %indvars.iv.next2745.lcssa = phi i64 [ %indvars.iv.next2745, %bb.hn ], [ %indvars.iv.next2745.1, %bb.ho ], [ %indvars.iv.next2745.2, %bb.hp ], [ %indvars.iv.next2745.3, %bb.hq ]
  %i.amu = trunc nuw nsw i64 %indvars.iv.next2745.lcssa to i32
  br label %._crit_edge1741

._crit_edge1741:                                  ; preds = %._crit_edge1741.loopexit, %.preheader1299
  %.601108.lcssa = phi ptr [ %.591107, %.preheader1299 ], [ %.lcssa3922, %._crit_edge1741.loopexit ] ; 3 uses
  %.601043.lcssa = phi i32 [ %.591042, %.preheader1299 ], [ %.lcssa3923.a, %._crit_edge1741.loopexit ] ; 3 uses
  %.56976.lcssa = phi i64 [ %.55975, %.preheader1299 ], [ %.lcssa3921, %._crit_edge1741.loopexit ] ; 2 uses
  %.56.lcssa = phi i32 [ %.55, %.preheader1299 ], [ %i.amu, %._crit_edge1741.loopexit ]
  %i.amv = and i32 %i.all, 4
  %.not1173 = icmp eq i32 %i.amv, 0
  br i1 %.not1173, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge1741
  %i.amw = load i64, ptr %i.al, align 8, !tbaa !24
  %i.amx = and i64 %i.amw, 4294967295
  %.not1174 = icmp eq i64 %.56976.lcssa, %i.amx
  br i1 %.not1174, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.18, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.ht:                                            ; preds = %bb.hr, %._crit_edge1741, %bb.hm, %bb.hl
  %.611109 = phi ptr [ %.591107, %bb.hl ], [ %.591107, %bb.hm ], [ %.601108.lcssa, %._crit_edge1741 ], [ %.601108.lcssa, %bb.hr ]
  %.61 = phi i32 [ %.591042, %bb.hl ], [ %.591042, %bb.hm ], [ %.601043.lcssa, %._crit_edge1741 ], [ %.601043.lcssa, %bb.hr ]
  %.57977 = phi i64 [ %.55975, %bb.hl ], [ %.55975, %bb.hm ], [ 0, %._crit_edge1741 ], [ 0, %bb.hr ]
  %.57 = phi i32 [ %.55, %bb.hl ], [ %.55, %bb.hm ], [ 0, %._crit_edge1741 ], [ 0, %bb.hr ]
  store i32 16208, ptr %i.p, align 8, !tbaa !23
  br label %.loopexit1260

.thread:                                          ; preds = %bb.fa, %bb.ff, %bb.gu, %bb.gv, %bb.fp, %bb.fq, %bb.hs, %bb.hj, %bb.gx, %bb.go, %bb.gh, %bb.fz, %bb.fx, %bb.fv, %bb.fl, %bb.fj, %bb.fh, %bb.et, %bb.eq, %bb.en, %bb.em, %bb.eh, %bb.eb, %bb.du, %bb.dk, %bb.df, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.x, %bb.s, %bb.n
  %.631111 = phi ptr [ %.01048, %bb.n ], [ %.11049.lcssa, %bb.s ], [ %.11049.lcssa, %bb.x ], [ %.11049.lcssa, %bb.z ], [ %.11049.lcssa, %bb.ad ], [ %.11049.lcssa, %bb.ae ], [ %.21050.lcssa, %bb.ah ], [ %.21050.lcssa, %bb.aj ], [ %.181066.lcssa, %bb.df ], [ %.191067, %bb.dk ], [ %.231071, %bb.du ], [ %.241072.lcssa, %bb.eb ], [ %.251073.lcssa, %bb.eh ], [ %i.su, %bb.em ], [ %.271075, %bb.en ], [ %.281076.lcssa, %bb.eq ], [ %.301078.lcssa, %bb.et ], [ %.351083.lcssa, %bb.fa ], [ %.331081.lcssa, %bb.fh ], [ %.331081.lcssa, %bb.fj ], [ %.331081.lcssa, %bb.fl ], [ %i.abd, %bb.fq ], [ %i.abd, %bb.fp ], [ %.451093, %bb.fv ], [ %.451093, %bb.fx ], [ %.451093, %bb.fz ], [ %.521100, %bb.gh ], [ %.561104, %bb.go ], [ %.561104, %bb.gv ], [ %.561104, %bb.gu ], [ %.01048, %bb.gx ], [ %.571105.lcssa, %bb.hj ], [ %.601108.lcssa, %bb.hs ], [ %.381086, %bb.ff ]
  %.21047 = phi ptr [ %.01045, %bb.n ], [ %.01045, %bb.s ], [ %.01045, %bb.x ], [ %.01045, %bb.z ], [ %.01045, %bb.ad ], [ %.01045, %bb.ae ], [ %.01045, %bb.ah ], [ %.01045, %bb.aj ], [ %.01045, %bb.df ], [ %.01045, %bb.dk ], [ %.01045, %bb.du ], [ %.01045, %bb.eb ], [ %.01045, %bb.eh ], [ %i.sw, %bb.em ], [ %.01045, %bb.en ], [ %.01045, %bb.eq ], [ %.01045, %bb.et ], [ %.01045, %bb.fa ], [ %.01045, %bb.fh ], [ %.01045, %bb.fj ], [ %.01045, %bb.fl ], [ %i.abb, %bb.fq ], [ %i.abb, %bb.fp ], [ %.01045, %bb.fv ], [ %.01045, %bb.fx ], [ %.01045, %bb.fz ], [ %.01045, %bb.gh ], [ %.01045, %bb.go ], [ %.11046, %bb.gv ], [ %.11046, %bb.gu ], [ %i.aje, %bb.gx ], [ %.01045, %bb.hj ], [ %.01045, %bb.hs ], [ %.01045, %bb.ff ]
  %.63 = phi i32 [ %.0983, %bb.n ], [ %.1984.lcssa, %bb.s ], [ %.1984.lcssa, %bb.x ], [ %.1984.lcssa, %bb.z ], [ %.1984.lcssa, %bb.ad ], [ %.1984.lcssa, %bb.ae ], [ %.2985.lcssa, %bb.ah ], [ %.2985.lcssa, %bb.aj ], [ %.181001.lcssa, %bb.df ], [ %.191002, %bb.dk ], [ %.231006, %bb.du ], [ %.241007.lcssa, %bb.eb ], [ %.251008.lcssa, %bb.eh ], [ %i.st, %bb.em ], [ %.271010, %bb.en ], [ %.281011.lcssa, %bb.eq ], [ %.301013.lcssa, %bb.et ], [ %.351018.lcssa, %bb.fa ], [ %.331016.lcssa, %bb.fh ], [ %.331016.lcssa, %bb.fj ], [ %.331016.lcssa, %bb.fl ], [ %i.abe, %bb.fq ], [ %i.abe, %bb.fp ], [ %.451028, %bb.fv ], [ %.451028, %bb.fx ], [ %.451028, %bb.fz ], [ %.521035, %bb.gh ], [ %.561039, %bb.go ], [ %.561039, %bb.gv ], [ %.561039, %bb.gu ], [ %.0983, %bb.gx ], [ %.571040.lcssa, %bb.hj ], [ %.601043.lcssa, %bb.hs ], [ %.381021, %bb.ff ]
  %.1982 = phi i32 [ %.0981, %bb.n ], [ %.0981, %bb.s ], [ %.0981, %bb.x ], [ %.0981, %bb.z ], [ %.0981, %bb.ad ], [ %.0981, %bb.ae ], [ %.0981, %bb.ah ], [ %.0981, %bb.aj ], [ %.0981, %bb.df ], [ %.0981, %bb.dk ], [ %.0981, %bb.du ], [ %.0981, %bb.eb ], [ %.0981, %bb.eh ], [ %i.sv, %bb.em ], [ %.0981, %bb.en ], [ %.0981, %bb.eq ], [ %.0981, %bb.et ], [ %.0981, %bb.fa ], [ %.0981, %bb.fh ], [ %.0981, %bb.fj ], [ %.0981, %bb.fl ], [ %i.abc, %bb.fq ], [ %i.abc, %bb.fp ], [ %.0981, %bb.fv ], [ %.0981, %bb.fx ], [ %.0981, %bb.fz ], [ %.0981, %bb.gh ], [ %.0981, %bb.go ], [ %i.aix, %bb.gv ], [ %i.aix, %bb.gu ], [ %i.ajf, %bb.gx ], [ %.0981, %bb.hj ], [ %.0981, %bb.hs ], [ %.0981, %bb.ff ]
  %.59979 = phi i64 [ %.0920, %bb.n ], [ 0, %bb.s ], [ %.1921.lcssa, %bb.x ], [ %.1921.lcssa, %bb.z ], [ %i.do, %bb.ad ], [ 0, %bb.ae ], [ %.2922.lcssa, %bb.ah ], [ %.2922.lcssa, %bb.aj ], [ %.14934.lcssa, %bb.df ], [ %.15935, %bb.dk ], [ %i.qf, %bb.du ], [ %i.qv, %bb.eb ], [ %.21941.lcssa, %bb.eh ], [ %.23943, %bb.em ], [ %.23943, %bb.en ], [ %i.tx, %bb.eq ], [ %.26946.lcssa, %bb.et ], [ %i.xj, %bb.fa ], [ %.29949.lcssa, %bb.fh ], [ %.29949.lcssa, %bb.fj ], [ %.29949.lcssa, %bb.fl ], [ %i.abf, %bb.fq ], [ %i.abf, %bb.fp ], [ %i.adj, %bb.fv ], [ %i.adj, %bb.fx ], [ %i.adj, %bb.fz ], [ %i.ags, %bb.gh ], [ %.52972, %bb.go ], [ %.52972, %bb.gv ], [ %.52972, %bb.gu ], [ %.0920, %bb.gx ], [ %.53973.lcssa, %bb.hj ], [ %.56976.lcssa, %bb.hs ], [ %.34954, %bb.ff ]
  %.59 = phi i32 [ %.0909, %bb.n ], [ 0, %bb.s ], [ %.1910.lcssa, %bb.x ], [ %.1910.lcssa, %bb.z ], [ %i.dp, %bb.ad ], [ 0, %bb.ae ], [ %.2911.lcssa, %bb.ah ], [ %.2911.lcssa, %bb.aj ], [ %.14.lcssa, %bb.df ], [ %.15, %bb.dk ], [ %i.qg, %bb.du ], [ %i.qw, %bb.eb ], [ %.21.lcssa, %bb.eh ], [ %.23, %bb.em ], [ %.23, %bb.en ], [ %i.ty, %bb.eq ], [ %.26.lcssa, %bb.et ], [ %i.xk, %bb.fa ], [ %.29.lcssa, %bb.fh ], [ %.29.lcssa, %bb.fj ], [ %.29.lcssa, %bb.fl ], [ %i.abg, %bb.fq ], [ %i.abg, %bb.fp ], [ %i.adk, %bb.fv ], [ %i.adk, %bb.fx ], [ %i.adk, %bb.fz ], [ %i.agt, %bb.gh ], [ %.52, %bb.go ], [ %.52, %bb.gv ], [ %.52, %bb.gu ], [ %.0909, %bb.gx ], [ %.53.lcssa, %bb.hj ], [ %.56.lcssa, %bb.hs ], [ %.34, %bb.ff ]
  %.4907 = phi i32 [ %.0903, %bb.n ], [ %.0903, %bb.s ], [ %.0903, %bb.x ], [ %.0903, %bb.z ], [ %.0903, %bb.ad ], [ %.0903, %bb.ae ], [ %.0903, %bb.ah ], [ %.0903, %bb.aj ], [ %.0903, %bb.df ], [ %.0903, %bb.dk ], [ %.0903, %bb.du ], [ %.0903, %bb.eb ], [ %.0903, %bb.eh ], [ %.0903, %bb.em ], [ %.0903, %bb.en ], [ %.0903, %bb.eq ], [ %.0903, %bb.et ], [ %.0903, %bb.fa ], [ %.0903, %bb.fh ], [ %.0903, %bb.fj ], [ %.0903, %bb.fl ], [ %.0903, %bb.fq ], [ %.0903, %bb.fp ], [ %.0903, %bb.fv ], [ %.0903, %bb.fx ], [ %.0903, %bb.fz ], [ %.0903, %bb.gh ], [ %.0903, %bb.go ], [ %.0903, %bb.gv ], [ %.0903, %bb.gu ], [ %.0903, %bb.gx ], [ %.0981, %bb.hj ], [ %.2905, %bb.hs ], [ %.0903, %bb.ff ]
  %.8 = phi i32 [ %.0894, %bb.n ], [ %.0894, %bb.s ], [ %.0894, %bb.x ], [ %.0894, %bb.z ], [ %.0894, %bb.ad ], [ %.0894, %bb.ae ], [ %.0894, %bb.ah ], [ %.0894, %bb.aj ], [ %.0894, %bb.df ], [ %.0894, %bb.dk ], [ %.0894, %bb.du ], [ %.0894, %bb.eb ], [ %.0894, %bb.eh ], [ %.0894, %bb.em ], [ %.0894, %bb.en ], [ %.0894, %bb.eq ], [ %i.ve, %bb.et ], [ %.1, %bb.fa ], [ %.1, %bb.fh ], [ %i.aar, %bb.fj ], [ %i.aax, %bb.fl ], [ %.3, %bb.fq ], [ %.3, %bb.fp ], [ %.3, %bb.fv ], [ %.3, %bb.fx ], [ %.3, %bb.fz ], [ %.5, %bb.gh ], [ %.7, %bb.go ], [ %.7, %bb.gv ], [ %.7, %bb.gu ], [ %.0894, %bb.gx ], [ %.0894, %bb.hj ], [ %.0894, %bb.hs ], [ %.1, %bb.ff ]
  %.pre = load i32, ptr %i.p, align 8, !tbaa !23
  br label %bb.l

.loopexit1260.loopexit:                           ; preds = %.lr.ph1962
  %i.amy = trunc nuw nsw i64 %indvars.iv2767 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2317:                       ; preds = %.lr.ph1952
  %i.amz = trunc nuw nsw i64 %indvars.iv2764 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2318:                       ; preds = %.lr.ph1942
  %i.ana = trunc nuw nsw i64 %indvars.iv2761 to i32
  br label %.loopexit1260

.loopexit1260.loopexit2320:                       ; preds = %.lr.ph2309.1, %.lr.ph2309.preheader
  %indvars.iv2814.lcssa = phi i64 [ %i.ch, %.lr.ph2309.preheader ], [ %indvars.iv.next2815, %.lr.ph2309.1 ]
  %.19212307.lcssa = phi i64 [ %.0920, %.lr.ph2309.preheader ], [ %i.co, %.lr.ph2309.1 ]
  %.110492305.lcssa = phi ptr [ %.01048, %.lr.ph2309.preheader ], [ %i.ck, %.lr.ph2309.1 ]
  %i.anb = trunc nuw nsw i64 %indvars.iv2814.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2321:                       ; preds = %.lr.ph2299.1, %.lr.ph2299.preheader
  %indvars.iv2811.lcssa = phi i64 [ %i.nm, %.lr.ph2299.preheader ], [ %indvars.iv.next2812, %.lr.ph2299.1 ]
  %.149342297.lcssa = phi i64 [ %.13933, %.lr.ph2299.preheader ], [ %i.nt, %.lr.ph2299.1 ]
  %.1810662295.lcssa = phi ptr [ %.171065, %.lr.ph2299.preheader ], [ %i.np, %.lr.ph2299.1 ]
  %i.anc = trunc nuw nsw i64 %indvars.iv2811.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2322:                       ; preds = %.lr.ph2290.1, %.lr.ph2290.preheader
  %indvars.iv2802.lcssa = phi i64 [ %i.ij, %.lr.ph2290.preheader ], [ %indvars.iv.next2803, %.lr.ph2290.1 ]
  %.89282288.lcssa = phi i64 [ %.792729242932, %.lr.ph2290.preheader ], [ %i.iq, %.lr.ph2290.1 ]
  %.810562286.lcssa = phi ptr [ %.7105529202934, %.lr.ph2290.preheader ], [ %i.im, %.lr.ph2290.1 ]
  %i.and = trunc nuw nsw i64 %indvars.iv2802.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2323:                       ; preds = %.lr.ph2281.1, %.lr.ph2281.preheader
  %indvars.iv2799.lcssa = phi i64 [ %i.gx, %.lr.ph2281.preheader ], [ %indvars.iv.next2800, %.lr.ph2281.1 ]
  %.69262278.lcssa = phi i64 [ %.59252911, %.lr.ph2281.preheader ], [ %i.he, %.lr.ph2281.1 ]
  %.610542276.lcssa = phi ptr [ %.510532909, %.lr.ph2281.preheader ], [ %i.ha, %.lr.ph2281.1 ]
  %i.ane = trunc nuw nsw i64 %indvars.iv2799.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2324:                       ; preds = %.lr.ph2271.3, %.lr.ph2271.2, %.lr.ph2271.1, %.lr.ph2271.preheader
  %indvars.iv2796.lcssa = phi i64 [ %i.fe, %.lr.ph2271.preheader ], [ %indvars.iv.next2797, %.lr.ph2271.1 ], [ %indvars.iv.next2797.1, %.lr.ph2271.2 ], [ %indvars.iv.next2797.2, %.lr.ph2271.3 ]
  %.49242268.lcssa = phi i64 [ %.39232902, %.lr.ph2271.preheader ], [ %i.fl, %.lr.ph2271.1 ], [ %i.ft, %.lr.ph2271.2 ], [ %i.gb, %.lr.ph2271.3 ]
  %.410522266.lcssa = phi ptr [ %.310512900, %.lr.ph2271.preheader ], [ %i.fh, %.lr.ph2271.1 ], [ %i.fp, %.lr.ph2271.2 ], [ %i.fx, %.lr.ph2271.3 ]
  %i.anf = trunc nuw nsw i64 %indvars.iv2796.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2325:                       ; preds = %.lr.ph2260.1, %.lr.ph2260.preheader
  %indvars.iv2793.lcssa = phi i64 [ %i.cc, %.lr.ph2260.preheader ], [ %indvars.iv.next2794, %.lr.ph2260.1 ]
  %.29222258.lcssa = phi i64 [ %.0920, %.lr.ph2260.preheader ], [ %i.ef, %.lr.ph2260.1 ]
  %.210502256.lcssa = phi ptr [ %.01048, %.lr.ph2260.preheader ], [ %i.eb, %.lr.ph2260.1 ]
  %i.ang = trunc nuw nsw i64 %indvars.iv2793.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2326:                       ; preds = %.lr.ph2096.3, %.lr.ph2096.2, %.lr.ph2096.1, %.lr.ph2096.preheader
  %indvars.iv2790.lcssa = phi i64 [ %i.bz, %.lr.ph2096.preheader ], [ %indvars.iv.next2791, %.lr.ph2096.1 ], [ %indvars.iv.next2791.1, %.lr.ph2096.2 ], [ %indvars.iv.next2791.2, %.lr.ph2096.3 ]
  %.169362094.lcssa = phi i64 [ %.0920, %.lr.ph2096.preheader ], [ %i.ow, %.lr.ph2096.1 ], [ %i.pe, %.lr.ph2096.2 ], [ %i.pm, %.lr.ph2096.3 ]
  %.2010682092.lcssa = phi ptr [ %.01048, %.lr.ph2096.preheader ], [ %i.os, %.lr.ph2096.1 ], [ %i.pa, %.lr.ph2096.2 ], [ %i.pi, %.lr.ph2096.3 ]
  %i.anh = trunc nuw nsw i64 %indvars.iv2790.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2327:                       ; preds = %.lr.ph2086.3, %.lr.ph2086.2, %.lr.ph2086.1, %.lr.ph2086.preheader
  %indvars.iv2788.lcssa = phi i64 [ %i.rd, %.lr.ph2086.preheader ], [ %indvars.iv.next2789, %.lr.ph2086.1 ], [ %indvars.iv.next2789.1, %.lr.ph2086.2 ], [ %indvars.iv.next2789.2, %.lr.ph2086.3 ]
  %.219412083.lcssa = phi i64 [ %i.qz, %.lr.ph2086.preheader ], [ %i.rk, %.lr.ph2086.1 ], [ %i.rr, %.lr.ph2086.2 ], [ %i.rz, %.lr.ph2086.3 ]
  %.2510732081.lcssa = phi ptr [ %.01048, %.lr.ph2086.preheader ], [ %i.rg, %.lr.ph2086.1 ], [ %i.rn, %.lr.ph2086.2 ], [ %i.rv, %.lr.ph2086.3 ]
  %i.ani = trunc nuw nsw i64 %indvars.iv2788.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2335:                       ; preds = %.lr.ph1750.1, %.lr.ph1750.preheader
  %indvars.iv2747.lcssa = phi i64 [ %i.bw, %.lr.ph1750.preheader ], [ %indvars.iv.next2748, %.lr.ph1750.1 ]
  %.249441748.lcssa = phi i64 [ %.0920, %.lr.ph1750.preheader ], [ %i.te, %.lr.ph1750.1 ]
  %.2810761746.lcssa = phi ptr [ %.01048, %.lr.ph1750.preheader ], [ %i.ta, %.lr.ph1750.1 ]
  %i.anj = trunc nuw nsw i64 %indvars.iv2747.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2336:                       ; preds = %.lr.ph1740.3, %.lr.ph1740.2, %.lr.ph1740.1, %.lr.ph1740.preheader
  %indvars.iv2744.lcssa = phi i64 [ %i.alo, %.lr.ph1740.preheader ], [ %indvars.iv.next2745, %.lr.ph1740.1 ], [ %indvars.iv.next2745.1, %.lr.ph1740.2 ], [ %indvars.iv.next2745.2, %.lr.ph1740.3 ]
  %.569761738.lcssa = phi i64 [ %.55975, %.lr.ph1740.preheader ], [ %i.alv, %.lr.ph1740.1 ], [ %i.amd, %.lr.ph1740.2 ], [ %i.aml, %.lr.ph1740.3 ]
  %.6011081736.lcssa = phi ptr [ %.591107, %.lr.ph1740.preheader ], [ %i.alr, %.lr.ph1740.1 ], [ %i.alz, %.lr.ph1740.2 ], [ %i.amh, %.lr.ph1740.3 ]
  %i.ank = trunc nuw nsw i64 %indvars.iv2744.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2337:                       ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aji, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.539731731.lcssa = phi i64 [ %.0920, %.lr.ph.preheader ], [ %i.ajp, %.lr.ph.1 ], [ %i.ajx, %.lr.ph.2 ], [ %i.akf, %.lr.ph.3 ]
  %.5711051729.lcssa = phi ptr [ %.01048, %.lr.ph.preheader ], [ %i.ajl, %.lr.ph.1 ], [ %i.ajt, %.lr.ph.2 ], [ %i.akb, %.lr.ph.3 ]
  %i.anl = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit1260

.loopexit1260.loopexit2945:                       ; preds = %.lr.ph1928.preheader, %.lr.ph1928
  %.309501926.lcssa = phi i64 [ %i.vy, %.lr.ph1928 ], [ %.299491977, %.lr.ph1928.preheader ]
  %i.anm = zext i32 %.3310161976 to i64
  %i.ann = shl i32 %.3310161976, 3
  %i.ano = add i32 %i.ann, %.291978
  %scevgep.le = getelementptr i8, ptr %.3310811975, i64 %i.anm
  br label %.loopexit1260

.loopexit1260.loopexit2946:                       ; preds = %.lr.ph2075.preheader, %.lr.ph2075
  %.509702073.lcssa = phi i64 [ %i.ahj, %.lr.ph2075 ], [ %.49969, %.lr.ph2075.preheader ]
  %i.anp = shl i32 %.531036, 3
  %i.anq = add i32 %.49, %i.anp
  %i.anr = zext i32 %.531036 to i64
  %scevgep2787.le = getelementptr i8, ptr %.531101, i64 %i.anr
  br label %.loopexit1260

.loopexit1260.loopexit2947:                       ; preds = %.lr.ph2062.preheader, %.lr.ph2062
  %.479672060.lcssa = phi i64 [ %i.age, %.lr.ph2062 ], [ %.46966.lcssa, %.lr.ph2062.preheader ]
  %i.ans = zext i32 %.501033.lcssa to i64
  %i.ant = shl i32 %.501033.lcssa, 3
  %i.anu = add i32 %i.ant, %.46.lcssa
  %scevgep2785.le = getelementptr i8, ptr %.501098.lcssa, i64 %i.ans
  br label %.loopexit1260

.loopexit1260.loopexit2948:                       ; preds = %.lr.ph2041.preheader, %.lr.ph2041
  %.469662038.lcssa = phi i64 [ %i.aff, %.lr.ph2041 ], [ %.45965, %.lr.ph2041.preheader ]
  %i.anv = zext i32 %.491032 to i64
  %i.anw = shl i32 %.491032, 3
  %i.anx = add i32 %i.anw, %.45
  %scevgep2781.le = getelementptr i8, ptr %.491097, i64 %i.anv
  br label %.loopexit1260

.loopexit1260.loopexit2949:                       ; preds = %.lr.ph2026.preheader, %.lr.ph2026
  %.439632024.lcssa = phi i64 [ %i.aec, %.lr.ph2026 ], [ %.42962, %.lr.ph2026.preheader ]
  %i.any = shl i32 %.461029, 3
  %i.anz = add i32 %.42, %i.any
  %i.aoa = zext i32 %.461029 to i64
  %scevgep2778.le = getelementptr i8, ptr %.461094, i64 %i.aoa
  br label %.loopexit1260

.loopexit1260.loopexit2950:                       ; preds = %.lr.ph2013.preheader, %.lr.ph2013
  %.409602011.lcssa = phi i64 [ %i.acx, %.lr.ph2013 ], [ %.39959.lcssa, %.lr.ph2013.preheader ]
  %i.aob = zext i32 %.431026.lcssa to i64
  %i.aoc = shl i32 %.431026.lcssa, 3
  %i.aod = add i32 %i.aoc, %.39.lcssa
  %scevgep2776.le = getelementptr i8, ptr %.431091.lcssa, i64 %i.aob
  br label %.loopexit1260

.loopexit1260.loopexit2951:                       ; preds = %.lr.ph1994.preheader, %.lr.ph1994
  %.399591991.lcssa = phi i64 [ %i.aby, %.lr.ph1994 ], [ %.38958, %.lr.ph1994.preheader ]
  %i.aoe = zext i32 %.421025 to i64
  %i.aof = shl i32 %.421025, 3
  %i.aog = add i32 %i.aof, %.38
  %scevgep2772.le = getelementptr i8, ptr %.421090, i64 %i.aoe
  br label %.loopexit1260

.loopexit1260.loopexit3905:                       ; preds = %bb.l
  br label %.loopexit1260

.loopexit1260:                                    ; preds = %bb.bz, %bb.cc, %bb.ck, %bb.cp, %bb.cx, %bb.ds, %bb.ei, %bb.el, %bb.fm, %bb.gl, %bb.gw, %.lr.ph2105, %.lr.ph1760, %bb.l, %.loopexit1260.loopexit3905, %.loopexit1260.loopexit2951, %.loopexit1260.loopexit2950, %.loopexit1260.loopexit2949, %.loopexit1260.loopexit2948, %.loopexit1260.loopexit2947, %.loopexit1260.loopexit2946, %.loopexit1260.loopexit2945, %.loopexit1260.loopexit2337, %.loopexit1260.loopexit2336, %.loopexit1260.loopexit2335, %.loopexit1260.loopexit2327, %.loopexit1260.loopexit2326, %.loopexit1260.loopexit2325, %.loopexit1260.loopexit2324, %.loopexit1260.loopexit2323, %.loopexit1260.loopexit2322, %.loopexit1260.loopexit2321, %.loopexit1260.loopexit2320, %.loopexit1260.loopexit2318, %.loopexit1260.loopexit2317, %.loopexit1260.loopexit, %bb.ht, %bb.dy
  %.09812657 = phi i32 [ %.0981, %.loopexit1260.loopexit2318 ], [ %.0981, %.loopexit1260.loopexit2322 ], [ %.0981, %.loopexit1260.loopexit2321 ], [ %.0981, %.loopexit1260.loopexit2320 ], [ %.0981, %bb.l ], [ %.0981, %.loopexit1260.loopexit2327 ], [ %.0981, %.loopexit1260.loopexit2945 ], [ %.0981, %.loopexit1260.loopexit2946 ], [ %.0981, %.loopexit1260.loopexit2951 ], [ %.0981, %bb.ht ], [ %.0981, %.loopexit1260.loopexit2949 ], [ %.0981, %.loopexit1260.loopexit2324 ], [ %.0981, %.loopexit1260.loopexit ], [ %.0981, %.loopexit1260.loopexit2323 ], [ %.0981, %bb.dy ], [ %.0981, %.loopexit1260.loopexit2326 ], [ %.0981, %.loopexit1260.loopexit2335 ], [ %.0981, %.loopexit1260.loopexit2950 ], [ %.0981, %.loopexit1260.loopexit2947 ], [ %.0981, %.loopexit1260.loopexit2317 ], [ %.0981, %.loopexit1260.loopexit2337 ], [ %.0981, %.loopexit1260.loopexit2948 ], [ %.0981, %.lr.ph1760 ], [ %.0981, %.loopexit1260.loopexit2325 ], [ %.0981, %.loopexit1260.loopexit2336 ], [ %.0981, %bb.bz ], [ %.0981, %bb.cc ], [ %.0981, %bb.ck ], [ %.0981, %bb.cp ], [ %.0981, %bb.cx ], [ %.0981, %bb.ds ], [ %.0981, %bb.ei ], [ %.0981, %bb.el ], [ %.0981, %bb.fm ], [ 0, %bb.gl ], [ 0, %bb.gw ], [ %.0981, %.lr.ph2105 ], [ %.0981, %.loopexit1260.loopexit3905 ] ; 3 uses
  %.641112 = phi ptr [ %.3610841938, %.loopexit1260.loopexit2318 ], [ %.810562286.lcssa, %.loopexit1260.loopexit2322 ], [ %.1810662295.lcssa, %.loopexit1260.loopexit2321 ], [ %.110492305.lcssa, %.loopexit1260.loopexit2320 ], [ %.01048, %bb.l ], [ %.2510732081.lcssa, %.loopexit1260.loopexit2327 ], [ %scevgep.le, %.loopexit1260.loopexit2945 ], [ %scevgep2787.le, %.loopexit1260.loopexit2946 ], [ %scevgep2772.le, %.loopexit1260.loopexit2951 ], [ %.611109, %bb.ht ], [ %scevgep2778.le, %.loopexit1260.loopexit2949 ], [ %.410522266.lcssa, %.loopexit1260.loopexit2324 ], [ %.3710851958, %.loopexit1260.loopexit ], [ %.610542276.lcssa, %.loopexit1260.loopexit2323 ], [ %.241072.lcssa, %bb.dy ], [ %.2010682092.lcssa, %.loopexit1260.loopexit2326 ], [ %.2810761746.lcssa, %.loopexit1260.loopexit2335 ], [ %scevgep2776.le, %.loopexit1260.loopexit2950 ], [ %scevgep2785.le, %.loopexit1260.loopexit2947 ], [ %.3510831948, %.loopexit1260.loopexit2317 ], [ %.5711051729.lcssa, %.loopexit1260.loopexit2337 ], [ %scevgep2781.le, %.loopexit1260.loopexit2948 ], [ %.3010781906, %.lr.ph1760 ], [ %.210502256.lcssa, %.loopexit1260.loopexit2325 ], [ %.6011081736.lcssa, %.loopexit1260.loopexit2336 ], [ %.111059, %bb.bz ], [ %.131061, %bb.cc ], [ %i.lz, %bb.ck ], [ %.151063, %bb.cp ], [ %i.ng, %bb.cx ], [ %.221070, %bb.ds ], [ %.251073.lcssa, %bb.ei ], [ %.271075, %bb.el ], [ %.331081.lcssa, %bb.fm ], [ %.561104, %bb.gl ], [ %.01048, %bb.gw ], [ %.231071, %.lr.ph2105 ], [ %.01048, %.loopexit1260.loopexit3905 ]
  %.64 = phi i32 [ 0, %.loopexit1260.loopexit2318 ], [ 0, %.loopexit1260.loopexit2322 ], [ 0, %.loopexit1260.loopexit2321 ], [ 0, %.loopexit1260.loopexit2320 ], [ %.0983, %bb.l ], [ 0, %.loopexit1260.loopexit2327 ], [ 0, %.loopexit1260.loopexit2945 ], [ 0, %.loopexit1260.loopexit2946 ], [ 0, %.loopexit1260.loopexit2951 ], [ %.61, %bb.ht ], [ 0, %.loopexit1260.loopexit2949 ], [ 0, %.loopexit1260.loopexit2324 ], [ 0, %.loopexit1260.loopexit ], [ 0, %.loopexit1260.loopexit2323 ], [ %.241007.lcssa, %bb.dy ], [ 0, %.loopexit1260.loopexit2326 ], [ 0, %.loopexit1260.loopexit2335 ], [ 0, %.loopexit1260.loopexit2950 ], [ 0, %.loopexit1260.loopexit2947 ], [ 0, %.loopexit1260.loopexit2317 ], [ 0, %.loopexit1260.loopexit2337 ], [ 0, %.loopexit1260.loopexit2948 ], [ 0, %.lr.ph1760 ], [ 0, %.loopexit1260.loopexit2325 ], [ 0, %.loopexit1260.loopexit2336 ], [ %.11994, %bb.bz ], [ 0, %bb.cc ], [ %i.ly, %bb.ck ], [ 0, %bb.cp ], [ %i.nf, %bb.cx ], [ %.221005, %bb.ds ], [ %.251008.lcssa, %bb.ei ], [ %.271010, %bb.el ], [ %.331016.lcssa, %bb.fm ], [ %.561039, %bb.gl ], [ %.0983, %bb.gw ], [ 0, %.lr.ph2105 ], [ %.0983, %.loopexit1260.loopexit3905 ] ; 4 uses
  %.60980 = phi i64 [ %.329521940, %.loopexit1260.loopexit2318 ], [ %.89282288.lcssa, %.loopexit1260.loopexit2322 ], [ %.149342297.lcssa, %.loopexit1260.loopexit2321 ], [ %.19212307.lcssa, %.loopexit1260.loopexit2320 ], [ %.0920, %bb.l ], [ %.219412083.lcssa, %.loopexit1260.loopexit2327 ], [ %.309501926.lcssa, %.loopexit1260.loopexit2945 ], [ %.509702073.lcssa, %.loopexit1260.loopexit2946 ], [ %.399591991.lcssa, %.loopexit1260.loopexit2951 ], [ %.57977, %bb.ht ], [ %.439632024.lcssa, %.loopexit1260.loopexit2949 ], [ %.49242268.lcssa, %.loopexit1260.loopexit2324 ], [ %.339531960, %.loopexit1260.loopexit ], [ %.69262278.lcssa, %.loopexit1260.loopexit2323 ], [ %i.qt, %bb.dy ], [ %.169362094.lcssa, %.loopexit1260.loopexit2326 ], [ %.249441748.lcssa, %.loopexit1260.loopexit2335 ], [ %.409602011.lcssa, %.loopexit1260.loopexit2950 ], [ %.479672060.lcssa, %.loopexit1260.loopexit2947 ], [ %.319511950, %.loopexit1260.loopexit2317 ], [ %.539731731.lcssa, %.loopexit1260.loopexit2337 ], [ %.469662038.lcssa, %.loopexit1260.loopexit2948 ], [ %.269461908, %.lr.ph1760 ], [ %.29222258.lcssa, %.loopexit1260.loopexit2325 ], [ %.569761738.lcssa, %.loopexit1260.loopexit2336 ], [ %.10930, %bb.bz ], [ %.11931, %bb.cc ], [ %.11931, %bb.ck ], [ %.12932, %bb.cp ], [ %.12932, %bb.cx ], [ %.18938, %bb.ds ], [ 0, %bb.ei ], [ %.23943, %bb.el ], [ %.29949.lcssa, %bb.fm ], [ %.52972, %bb.gl ], [ %.0920, %bb.gw ], [ %.19939, %.lr.ph2105 ], [ %.0920, %.loopexit1260.loopexit3905 ]
  %.60 = phi i32 [ %i.ana, %.loopexit1260.loopexit2318 ], [ %i.and, %.loopexit1260.loopexit2322 ], [ %i.anc, %.loopexit1260.loopexit2321 ], [ %i.anb, %.loopexit1260.loopexit2320 ], [ %.0909, %bb.l ], [ %i.ani, %.loopexit1260.loopexit2327 ], [ %i.ano, %.loopexit1260.loopexit2945 ], [ %i.anq, %.loopexit1260.loopexit2946 ], [ %i.aog, %.loopexit1260.loopexit2951 ], [ %.57, %bb.ht ], [ %i.anz, %.loopexit1260.loopexit2949 ], [ %i.anf, %.loopexit1260.loopexit2324 ], [ %i.amy, %.loopexit1260.loopexit ], [ %i.ane, %.loopexit1260.loopexit2323 ], [ %i.qu, %bb.dy ], [ %i.anh, %.loopexit1260.loopexit2326 ], [ %i.anj, %.loopexit1260.loopexit2335 ], [ %i.aod, %.loopexit1260.loopexit2950 ], [ %i.anu, %.loopexit1260.loopexit2947 ], [ %i.amz, %.loopexit1260.loopexit2317 ], [ %i.anl, %.loopexit1260.loopexit2337 ], [ %i.anx, %.loopexit1260.loopexit2948 ], [ %.261909, %.lr.ph1760 ], [ %i.ang, %.loopexit1260.loopexit2325 ], [ %i.ank, %.loopexit1260.loopexit2336 ], [ %.10919, %bb.bz ], [ %.11, %bb.cc ], [ %.11, %bb.ck ], [ %.12, %bb.cp ], [ %.12, %bb.cx ], [ %.18, %bb.ds ], [ 0, %bb.ei ], [ %.23, %bb.el ], [ %.29.lcssa, %bb.fm ], [ %.52, %bb.gl ], [ %.0909, %bb.gw ], [ %.19, %.lr.ph2105 ], [ %.0909, %.loopexit1260.loopexit3905 ] ; 4 uses
  %.5908 = phi i32 [ %.0903, %.loopexit1260.loopexit2318 ], [ %.0903, %.loopexit1260.loopexit2322 ], [ %.0903, %.loopexit1260.loopexit2321 ], [ %.0903, %.loopexit1260.loopexit2320 ], [ %.0903, %bb.l ], [ %.0903, %.loopexit1260.loopexit2327 ], [ %.0903, %.loopexit1260.loopexit2945 ], [ %.0903, %.loopexit1260.loopexit2946 ], [ %.0903, %.loopexit1260.loopexit2951 ], [ %.2905, %bb.ht ], [ %.0903, %.loopexit1260.loopexit2949 ], [ %.0903, %.loopexit1260.loopexit2324 ], [ %.0903, %.loopexit1260.loopexit ], [ %.0903, %.loopexit1260.loopexit2323 ], [ %.0903, %bb.dy ], [ %.0903, %.loopexit1260.loopexit2326 ], [ %.0903, %.loopexit1260.loopexit2335 ], [ %.0903, %.loopexit1260.loopexit2950 ], [ %.0903, %.loopexit1260.loopexit2947 ], [ %.0903, %.loopexit1260.loopexit2317 ], [ %.0903, %.loopexit1260.loopexit2337 ], [ %.0903, %.loopexit1260.loopexit2948 ], [ %.0903, %.lr.ph1760 ], [ %.0903, %.loopexit1260.loopexit2325 ], [ %.2905, %.loopexit1260.loopexit2336 ], [ %.0903, %.lr.ph2105 ], [ %.0903, %bb.gw ], [ %.0903, %bb.gl ], [ %.0903, %bb.fm ], [ %.0903, %bb.el ], [ %.0903, %bb.ei ], [ %.0903, %bb.ds ], [ %.0903, %bb.cx ], [ %.0903, %bb.cp ], [ %.0903, %bb.ck ], [ %.0903, %bb.cc ], [ %.0903, %bb.bz ], [ %.0903, %.loopexit1260.loopexit3905 ] ; 4 uses
  %.9 = phi i32 [ %.1, %.loopexit1260.loopexit2318 ], [ %.0894, %.loopexit1260.loopexit2322 ], [ %.0894, %.loopexit1260.loopexit2321 ], [ %.0894, %.loopexit1260.loopexit2320 ], [ -3, %bb.l ], [ %.0894, %.loopexit1260.loopexit2327 ], [ %.1, %.loopexit1260.loopexit2945 ], [ %.6, %.loopexit1260.loopexit2946 ], [ %.3, %.loopexit1260.loopexit2951 ], [ 1, %bb.ht ], [ %.4, %.loopexit1260.loopexit2949 ], [ %.0894, %.loopexit1260.loopexit2324 ], [ %.1, %.loopexit1260.loopexit ], [ %.0894, %.loopexit1260.loopexit2323 ], [ %.0894, %bb.dy ], [ %.0894, %.loopexit1260.loopexit2326 ], [ %.0894, %.loopexit1260.loopexit2335 ], [ %.3, %.loopexit1260.loopexit2950 ], [ %.5, %.loopexit1260.loopexit2947 ], [ %.1, %.loopexit1260.loopexit2317 ], [ %.0894, %.loopexit1260.loopexit2337 ], [ %.5, %.loopexit1260.loopexit2948 ], [ %.0894, %.lr.ph1760 ], [ %.0894, %.loopexit1260.loopexit2325 ], [ %.0894, %.loopexit1260.loopexit2336 ], [ %.0894, %bb.bz ], [ %.0894, %bb.cc ], [ %.0894, %bb.ck ], [ %.0894, %bb.cp ], [ %.0894, %bb.cx ], [ %.0894, %bb.ds ], [ %.0894, %bb.ei ], [ %.0894, %bb.el ], [ 0, %bb.fm ], [ %.7, %bb.gl ], [ %.0894, %bb.gw ], [ %.0894, %.lr.ph2105 ], [ 1, %.loopexit1260.loopexit3905 ] ; 2 uses
  store ptr %.01045, ptr %i.s, align 8, !tbaa !89
  store i32 %.09812657, ptr %i.ab, align 8, !tbaa !90
  store ptr %.641112, ptr %0, align 8, !tbaa !58
  store i32 %.64, ptr %i.ad, align 8, !tbaa !59
  store i64 %.60980, ptr %i.af, align 8, !tbaa !33
  store i32 %.60, ptr %i.ah, align 32, !tbaa !34
  %i.aoh = sub i32 %.5908, %.09812657             ; 4 uses
  %i.aoi = load i32, ptr %i.bn, align 64, !tbaa !39
  %.not1245 = icmp eq i32 %i.aoi, 0
  br i1 %.not1245, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %.loopexit1260
  %.not1246 = icmp eq i32 %.5908, %.09812657
  %.pre2838 = load i32, ptr %i.p, align 8, !tbaa !23 ; 5 uses
  br i1 %.not1246, label %bb.hy, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aoj = icmp ult i32 %.pre2838, 16209
  br i1 %i.aoj, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.aok = icmp samesign ult i32 %.pre2838, 16206
  %i.aol = icmp ne i32 %1, 4
  %or.cond7 = or i1 %i.aol, %i.aok
  br i1 %or.cond7, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw, %.loopexit1260
  %i.aom = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.aon = and i32 %i.aom, 4
  call fastcc void @updatewindow(ptr noundef nonnull %0, ptr noundef %.01045, i32 noundef %i.aoh, i32 noundef %i.aon)
  %.pre2834 = load i32, ptr %i.ad, align 8, !tbaa !59
  %.pre2835 = load i32, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.pre2836 = load i32, ptr %i.ah, align 32, !tbaa !34
  %.pre2837 = load i32, ptr %i.p, align 8, !tbaa !23
  %.pre2841 = sub i32 %.5908, %.pre2835
  %i.aoo = icmp eq i32 %.5908, %.pre2835
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx, %bb.hv, %bb.hu
  %.pre-phi = phi i32 [ %i.aoh, %bb.hw ], [ %.pre2841, %bb.hx ], [ %i.aoh, %bb.hv ], [ 0, %bb.hu ]
  %i.aop = phi i32 [ %.pre2838, %bb.hw ], [ %.pre2837, %bb.hx ], [ %.pre2838, %bb.hv ], [ %.pre2838, %bb.hu ] ; 3 uses
  %i.aoq = phi i32 [ %.60, %bb.hw ], [ %.pre2836, %bb.hx ], [ %.60, %bb.hv ], [ %.60, %bb.hu ]
  %i.aor = phi i1 [ false, %bb.hw ], [ %i.aoo, %bb.hx ], [ false, %bb.hv ], [ true, %bb.hu ]
  %i.aos = phi i32 [ %.64, %bb.hw ], [ %.pre2834, %bb.hx ], [ %.64, %bb.hv ], [ %.64, %bb.hu ] ; 2 uses
  %i.aot = sub i32 %i.ae, %i.aos
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !25
  %i.aox = add i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aov, align 8, !tbaa !25
  %i.aoy = zext i32 %.pre-phi to i64              ; 2 uses
  %i.aoz = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.apa = add i64 %i.aoz, %i.aoy
  store i64 %i.apa, ptr %i.ak, align 8, !tbaa !68
  %i.apb = load i64, ptr %i.al, align 8, !tbaa !24
  %i.apc = add i64 %i.apb, %i.aoy
  store i64 %i.apc, ptr %i.al, align 8, !tbaa !24
  %i.apd = load i32, ptr %i.bq, align 4, !tbaa !29
  %.not1247 = icmp eq i32 %i.apd, 0
  %i.ape = select i1 %.not1247, i32 0, i32 64
  %i.apf = add nsw i32 %i.ape, %i.aoq
  %i.apg = icmp eq i32 %i.aop, 16191
  %i.aph = select i1 %i.apg, i32 128, i32 0
  %i.api = add nsw i32 %i.apf, %i.aph
  %i.apj = icmp eq i32 %i.aop, 16199
  %i.apk = icmp eq i32 %i.aop, 16194
  %i.apl = or i1 %i.apj, %i.apk
  %i.apm = select i1 %i.apl, i32 256, i32 0
  %i.apn = add nsw i32 %i.api, %i.apm
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.apn, ptr %i.apo, align 8, !tbaa !117
  %i.app = icmp eq i32 %i.ae, %i.aos
  %or.cond9 = select i1 %i.app, i1 %i.aor, i1 false
  %i.apq = icmp eq i32 %1, 4                      ; 2 uses
  %or.cond11 = or i1 %i.apq, %or.cond9
  %i.apr = icmp eq i32 %.9, 0
  %or.cond13 = select i1 %or.cond11, i1 %i.apr, i1 false
  br i1 %or.cond13, label %bb.hz, label %inf_chksum.exit

bb.hz:                                            ; preds = %bb.hy
  %i.aps = load i32, ptr %i.bn, align 64, !tbaa !39
  %i.apt = icmp eq i32 %i.aps, 0
  %or.cond15 = and i1 %i.apq, %i.apt
  br i1 %or.cond15, label %bb.ia, label %inf_chksum.exit

bb.ia:                                            ; preds = %bb.hz
  %i.apu = zext i32 %i.aoh to i64                 ; 3 uses
  %i.apv = sub nsw i64 0, %i.apu
  %i.apw = getelementptr inbounds i8, ptr %.01045, i64 %i.apv ; 2 uses
  %i.apx = load ptr, ptr %i.i, align 8, !tbaa !15 ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !31
  %.not.i1249 = icmp eq i32 %i.apz, 0
  br i1 %.not.i1249, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aqa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 48), align 8, !tbaa !69
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apx, i64 160
  call void %i.aqa(ptr noundef nonnull %i.aqb, ptr noundef %i.apw, i64 noundef %i.apu, i32 noundef 0) #14, !inline_history !70
  br label %inf_chksum.exit

bb.ic:                                            ; preds = %bb.ia
  %i.aqc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 8), align 8, !tbaa !71
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apx, i64 32 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 32, !tbaa !28
  %i.aqf = trunc i64 %i.aqe to i32
  %i.aqg = call i32 %i.aqc(i32 noundef %i.aqf, ptr noundef %i.apw, i64 noundef %i.apu) #14, !inline_history !70 ; 2 uses
  %i.aqh = zext i32 %i.aqg to i64
  store i64 %i.aqh, ptr %i.aqd, align 32, !tbaa !28
  store i32 %i.aqg, ptr %i.ap, align 4, !tbaa !27
  br label %inf_chksum.exit

inf_chksum.exit:                                  ; preds = %bb.l, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.d, %bb.ic, %bb.ib, %bb.hy, %bb.hz, %inflateStateCheck.exit, %bb.g, %bb.i, %bb.dq
  %.0 = phi i32 [ 2, %bb.dq ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.e ], [ -2, %bb.i ], [ -2, %bb.g ], [ %.9, %bb.hy ], [ -5, %bb.ic ], [ -5, %bb.hz ], [ -5, %bb.ib ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @zng_crc32(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

declare hidden i32 @zng_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @chunkcopy_safe(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 5 uses
  %i.e = icmp uge ptr %1, %0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.g = icmp ult ptr %1, %i.f
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  %i.i = icmp uge ptr %0, %1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.k = icmp ult ptr %0, %i.j
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  %or.cond = select i1 %i.h, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.d, i1 false)
  br label %.loopexit73

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.loopexit73, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.b
  %i.p = tail call i64 @llvm.abs.i64(i64 %i.o, i1 true)
  %.not87 = icmp eq i64 %i.d, 0
  br i1 %.not87, label %.loopexit73, label %.lr.ph92

.loopexit:                                        ; preds = %.lr.ph84.prol.loopexit, %.lr.ph84, %middle.block, %vec.epilog.middle.block, %bb.h
  %.469.lcssa = phi ptr [ %.368, %bb.h ], [ %i.be, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %.lcssa132.unr, %.lr.ph84.prol.loopexit ], [ %i.ck, %.lr.ph84 ] ; 2 uses
  %.4.lcssa = phi ptr [ %.364, %bb.h ], [ %i.bd, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %.lcssa133.unr, %.lr.ph84.prol.loopexit ], [ %i.ci, %.lr.ph84 ]
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit73, label %.lr.ph92, !llvm.loop !118

.lr.ph92:                                         ; preds = %bb.d, %.loopexit
  %.06090 = phi i64 [ %i.r, %.loopexit ], [ %i.d, %bb.d ] ; 2 uses
  %.06189 = phi ptr [ %.4.lcssa, %.loopexit ], [ %1, %bb.d ] ; 3 uses
  %.06588 = phi ptr [ %.469.lcssa, %.loopexit ], [ %0, %bb.d ] ; 3 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %.06090) ; 6 uses
  %i.r = sub i64 %.06090, %i.q                    ; 2 uses
  %i.s = icmp samesign ugt i64 %i.q, 15
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph92
  %i.t = add nsw i64 %i.q, -16                    ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.076.prol = phi i64 [ %i.y, %.lr.ph.prol ], [ %i.q, %.lr.ph.preheader ]
  %.16275.prol = phi ptr [ %i.x, %.lr.ph.prol ], [ %.06189, %.lr.ph.preheader ] ; 2 uses
  %.16674.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.06588, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.prol, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.16674.prol, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.16275.prol, i64 16 ; 3 uses
  %i.y = add i64 %.076.prol, -16                  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !119

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.076.unr = phi i64 [ %i.q, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.16275.unr = phi ptr [ %.06189, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.16674.unr = phi ptr [ %.06588, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.lcssa131.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.lcssa130.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp ult i64 %i.t, 48
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.076 = phi i64 [ %i.ai, %.lr.ph ], [ %.076.unr, %.lr.ph.prol.loopexit ]
  %.16275 = phi ptr [ %i.ah, %.lr.ph ], [ %.16275.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.16674 = phi ptr [ %i.ag, %.lr.ph ], [ %.16674.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674, ptr noundef nonnull align 1 dereferenceable(16) %.16275, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.16674, i64 16
end_hunk_1
