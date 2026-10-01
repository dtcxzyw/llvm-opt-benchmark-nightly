Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inflate?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@zng_inflatePrime:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 9144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
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
    i32 16207, label %._crit_edge2835
    i32 16208, label %.loopexit1260.loopexit3901
    i32 16209, label %.loopexit1260
  ]

._crit_edge2835:                                  ; preds = %bb.l
  %.pre2836.a = load i32, ptr %i.aj, align 16, !tbaa !26
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
  %.lcssa4101 = phi i32 [ %i.cj, %bb.o ], [ %i.cr, %bb.p ]
  %.lcssa4100 = phi ptr [ %i.ck, %bb.o ], [ %i.cs, %bb.p ]
  %.lcssa4099.a = phi i64 [ %i.co, %bb.o ], [ %i.cw, %bb.p ]
  %indvars.iv.next2815.lcssa = phi i64 [ %indvars.iv.next2815, %bb.o ], [ %indvars.iv.next2815.1, %bb.p ]
  %i.cx = trunc nuw nsw i64 %indvars.iv.next2815.lcssa to i32
  br label %._crit_edge2310

._crit_edge2310:                                  ; preds = %._crit_edge2310.loopexit, %.preheader1269
  %.11049.lcssa = phi ptr [ %.01048, %.preheader1269 ], [ %.lcssa4100, %._crit_edge2310.loopexit ] ; 5 uses
  %.1984.lcssa = phi i32 [ %.0983, %.preheader1269 ], [ %.lcssa4101, %._crit_edge2310.loopexit ] ; 5 uses
  %.1921.lcssa = phi i64 [ %.0920, %.preheader1269 ], [ %.lcssa4099.a, %._crit_edge2310.loopexit ] ; 8 uses
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

end_hunk_0
begin_hunk_1_@zng_inflate:bb.a
  %.7105529162930 = phi ptr [ %.01048, %.preheader1275 ], [ %.61054.lcssa, %.thread2909 ] ; 4 uses
  %.799029182929 = phi i32 [ %.0983, %.preheader1275 ], [ %.6989.lcssa, %.thread2909 ] ; 3 uses
  %.792729202928 = phi i64 [ %.0920, %.preheader1275 ], [ 0, %.thread2909 ] ; 2 uses
  %.791629222927 = phi i32 [ %.0909, %.preheader1275 ], [ 0, %.thread2909 ] ; 2 uses
  %i.ii = phi i32 [ %i.id, %.preheader1275 ], [ %i.if, %.thread2909 ] ; 2 uses
  %i.ij = zext nneg i32 %.791629222927 to i64     ; 3 uses
  %i.ik = icmp eq i32 %.799029182929, 0
  br i1 %i.ik, label %.loopexit1260.loopexit2322, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2290.preheader
  %i.il = add i32 %.799029182929, -1              ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.7105529162930, i64 1 ; 3 uses
  %i.in = load i8, ptr %.7105529162930, align 1, !tbaa !55
  %i.io = zext i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, %i.ij
  %i.iq = add i64 %i.ip, %.792729202928           ; 3 uses
  %indvars.iv.next2803 = add nuw nsw i64 %i.ij, 8 ; 2 uses
  %i.ir = icmp samesign ult i32 %.791629222927, 8
  br i1 %i.ir, label %.lr.ph2290.1, label %._crit_edge2291

.lr.ph2290.1:                                     ; preds = %bb.bg
  %i.is = icmp eq i32 %i.il, 0
  br i1 %i.is, label %.loopexit1260.loopexit2322, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph2290.1
  %i.it = add i32 %.799029182929, -2
  %i.iu = getelementptr inbounds nuw i8, ptr %.7105529162930, i64 2
  %i.iv = load i8, ptr %i.im, align 1, !tbaa !55
  %i.iw = zext i8 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, %indvars.iv.next2803
  %i.iy = add i64 %i.ix, %i.iq
  br label %._crit_edge2291

._crit_edge2291:                                  ; preds = %bb.bg, %bb.bh, %.preheader1275
  %i.iz = phi i32 [ %i.id, %.preheader1275 ], [ %i.ii, %bb.bh ], [ %i.ii, %bb.bg ]
  %.81056.lcssa = phi ptr [ %.01048, %.preheader1275 ], [ %i.im, %bb.bg ], [ %i.iu, %bb.bh ] ; 3 uses
  %.8991.lcssa = phi i32 [ %.0983, %.preheader1275 ], [ %i.il, %bb.bg ], [ %i.it, %bb.bh ] ; 3 uses
  %.8928.lcssa = phi i64 [ %.0920, %.preheader1275 ], [ %i.iq, %bb.bg ], [ %i.iy, %bb.bh ] ; 2 uses
  %i.ja = trunc i64 %.8928.lcssa to i32
  %i.jb = and i32 %i.ja, 65535                    ; 2 uses
  store i32 %i.jb, ptr %i.ar, align 4, !tbaa !62
  %i.jc = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1212 = icmp eq ptr %i.jc, null
  br i1 %.not1212, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge2291
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store i32 %i.jb, ptr %i.jd, align 8, !tbaa !97
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge2291
  %i.je = and i32 %i.iz, 512
  %.not1213 = icmp eq i32 %i.je, 0
  br i1 %.not1213, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jf = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.jg = and i32 %i.jf, 4
  %.not1214 = icmp eq i32 %i.jg, 0
  br i1 %.not1214, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jh = trunc i64 %.8928.lcssa to i16
  store i16 %i.jh, ptr %i.a, align 4
  %i.ji = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = call i32 @zng_crc32(i32 noundef %i.jj, ptr noundef nonnull %i.a, i32 noundef 2) #14
  %i.jl = zext i32 %i.jk to i64
  store i64 %i.jl, ptr %i.ao, align 32, !tbaa !28
  br label %bb.bo

bb.bm:                                            ; preds = %.thread2909, %bb.bf
  %.79162921 = phi i32 [ 0, %.thread2909 ], [ %.0909, %bb.bf ] ; 2 uses
  %.79272919 = phi i64 [ 0, %.thread2909 ], [ %.0920, %bb.bf ] ; 2 uses
  %.79902917 = phi i32 [ %.6989.lcssa, %.thread2909 ], [ %.0983, %bb.bf ] ; 2 uses
  %.710552915 = phi ptr [ %.61054.lcssa, %.thread2909 ], [ %.01048, %bb.bf ] ; 2 uses
  %i.jm = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1211 = icmp eq ptr %i.jm, null
  br i1 %.not1211, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr null, ptr %i.jn, align 8, !tbaa !98
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bm, %bb.bn
  %.91057 = phi ptr [ %.710552915, %bb.bm ], [ %.710552915, %bb.bn ], [ %.81056.lcssa, %bb.bj ], [ %.81056.lcssa, %bb.bk ], [ %.81056.lcssa, %bb.bl ]
  %.9992 = phi i32 [ %.79902917, %bb.bm ], [ %.79902917, %bb.bn ], [ %.8991.lcssa, %bb.bj ], [ %.8991.lcssa, %bb.bk ], [ %.8991.lcssa, %bb.bl ]
  %.9929 = phi i64 [ %.79272919, %bb.bm ], [ %.79272919, %bb.bn ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ]
  %.9918 = phi i32 [ %.79162921, %bb.bm ], [ %.79162921, %bb.bn ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ]
  store i32 16185, ptr %i.p, align 8, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.l
  %.101058 = phi ptr [ %.91057, %bb.bo ], [ %.01048, %bb.l ] ; 5 uses
  %.10993 = phi i32 [ %.9992, %bb.bo ], [ %.0983, %bb.l ] ; 4 uses
  %.10930 = phi i64 [ %.9929, %bb.bo ], [ %.0920, %bb.l ] ; 2 uses
  %.10919 = phi i32 [ %.9918, %bb.bo ], [ %.0909, %bb.l ] ; 2 uses
  %i.jo = load i32, ptr %i.am, align 8, !tbaa !31 ; 4 uses
  %i.jp = and i32 %i.jo, 1024
  %.not1215 = icmp eq i32 %i.jp, 0
  br i1 %.not1215, label %bb.ca, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jq = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jq, i32 %.10993) ; 7 uses
  %.not1216 = icmp eq i32 %spec.select, 0
  br i1 %.not1216, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = load ptr, ptr %i.br, align 16, !tbaa !32 ; 4 uses
  %.not1217 = icmp eq ptr %i.jr, null
  br i1 %.not1217, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !98 ; 2 uses
  %.not1218 = icmp eq ptr %i.jt, null
  br i1 %.not1218, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !97
  %i.jw = sub i32 %i.jv, %i.jq                    ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !99 ; 3 uses
  %i.jz = icmp ult i32 %i.jw, %i.jy
  br i1 %i.jz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ka = zext i32 %i.jw to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ka
  %i.kc = add i32 %i.jw, %spec.select
  %i.kd = icmp ugt i32 %i.kc, %i.jy
  %i.ke = sub nuw i32 %i.jy, %i.jw
  %i.kf = select i1 %i.kd, i32 %i.ke, i32 %spec.select
  %i.kg = zext i32 %i.kf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr align 1 %.101058, i64 %i.kg, i1 false)
  %.pre2829 = load i32, ptr %i.am, align 8, !tbaa !31
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs, %bb.br
  %i.kh = phi i32 [ %i.jo, %bb.bt ], [ %.pre2829, %bb.bu ], [ %i.jo, %bb.bs ], [ %i.jo, %bb.br ]
  %i.ki = and i32 %i.kh, 512
  %.not1219 = icmp eq i32 %i.ki, 0
  br i1 %.not1219, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kj = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.kk = and i32 %i.kj, 4
  %.not1220 = icmp eq i32 %i.kk, 0
  br i1 %.not1220, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kl = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.km = trunc i64 %i.kl to i32
  %i.kn = call i32 @zng_crc32(i32 noundef %i.km, ptr noundef %.101058, i32 noundef %spec.select) #14
  %i.ko = zext i32 %i.kn to i64
  store i64 %i.ko, ptr %i.ao, align 32, !tbaa !28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.kp = sub nuw i32 %.10993, %spec.select
  %i.kq = zext i32 %spec.select to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.101058, i64 %i.kq
  %i.ks = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.kt = sub i32 %i.ks, %spec.select             ; 2 uses
  store i32 %i.kt, ptr %i.ar, align 4, !tbaa !62
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bq
  %i.ku = phi i32 [ %i.kt, %bb.by ], [ %i.jq, %bb.bq ]
  %.111059 = phi ptr [ %i.kr, %bb.by ], [ %.101058, %bb.bq ] ; 2 uses
  %.11994 = phi i32 [ %i.kp, %bb.by ], [ %.10993, %bb.bq ] ; 2 uses
  %.not1221 = icmp eq i32 %i.ku, 0
  br i1 %.not1221, label %bb.ca, label %.loopexit1260

bb.ca:                                            ; preds = %bb.bz, %bb.bp
  %.121060 = phi ptr [ %.111059, %bb.bz ], [ %.101058, %bb.bp ]
  %.12995 = phi i32 [ %.11994, %bb.bz ], [ %.10993, %bb.bp ]
  store i32 0, ptr %i.ar, align 4, !tbaa !62
  store i32 16186, ptr %i.p, align 8, !tbaa !23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.l
  %.131061 = phi ptr [ %.121060, %bb.ca ], [ %.01048, %bb.l ] ; 6 uses
  %.13996 = phi i32 [ %.12995, %bb.ca ], [ %.0983, %bb.l ] ; 5 uses
  %.11931 = phi i64 [ %.10930, %bb.ca ], [ %.0920, %bb.l ] ; 3 uses
  %.11 = phi i32 [ %.10919, %bb.ca ], [ %.0909, %bb.l ] ; 3 uses
  %i.kv = load i32, ptr %i.am, align 8, !tbaa !31
  %i.kw = and i32 %i.kv, 2048
  %.not1222 = icmp eq i32 %i.kw, 0
  br i1 %.not1222, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kx = icmp eq i32 %.13996, 0
  br i1 %i.kx, label %.loopexit1260, label %.preheader1274.preheader

.preheader1274.preheader:                         ; preds = %bb.cc
  %i.ky = zext i32 %.13996 to i64
  %.pre2831 = load ptr, ptr %i.br, align 16, !tbaa !32
  br label %.preheader1274

.preheader1274:                                   ; preds = %.preheader1274.preheader, %bb.cg
  %2 = phi ptr [ %.pre2831, %.preheader1274.preheader ], [ %3, %bb.cg ] ; 5 uses
  %indvars.iv2805 = phi i64 [ 0, %.preheader1274.preheader ], [ %indvars.iv.next2806, %bb.cg ] ; 2 uses
  %indvars.iv.next2806 = add nuw nsw i64 %indvars.iv2805, 1 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.131061, i64 %indvars.iv2805
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !55  ; 2 uses
  %.not1224 = icmp eq ptr %2, null
  br i1 %.not1224, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.preheader1274
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !100 ; 2 uses
  %.not1225 = icmp eq ptr %i.lc, null
  br i1 %.not1225, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ld = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !101
  %i.lg = icmp ult i32 %i.ld, %i.lf
  br i1 %i.lg, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lh = add nuw i32 %i.ld, 1
  store i32 %i.lh, ptr %i.ar, align 4, !tbaa !62
  %i.li = zext i32 %i.ld to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.li
  store i8 %i.la, ptr %i.lj, align 1, !tbaa !55
  %.pre2830 = load ptr, ptr %i.br, align 16, !tbaa !32
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader1274, %bb.cd, %bb.ce, %bb.cf
  %3 = phi ptr [ null, %.preheader1274 ], [ %2, %bb.cd ], [ %2, %bb.ce ], [ %.pre2830, %bb.cf ]
  %i.lk = icmp ne i8 %i.la, 0                     ; 2 uses
  %i.ll = icmp samesign ult i64 %indvars.iv.next2806, %i.ky
  %i.lm = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %i.lm, label %.preheader1274, label %bb.ch, !llvm.loop !75

bb.ch:                                            ; preds = %bb.cg
  %i.ln = trunc nuw i64 %indvars.iv.next2806 to i32 ; 2 uses
  %i.lo = load i32, ptr %i.am, align 8, !tbaa !31
  %i.lp = and i32 %i.lo, 512
  %.not1226 = icmp eq i32 %i.lp, 0
  br i1 %.not1226, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lq = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.lr = and i32 %i.lq, 4
  %.not1227 = icmp eq i32 %i.lr, 0
  br i1 %.not1227, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ls = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = call i32 @zng_crc32(i32 noundef %i.lt, ptr noundef nonnull %.131061, i32 noundef %i.ln) #14
  %i.lv = zext i32 %i.lu to i64
  store i64 %i.lv, ptr %i.ao, align 32, !tbaa !28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.lw = sub nuw i32 %.13996, %i.ln              ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.131061, i64 %indvars.iv.next2806 ; 2 uses
  br i1 %i.lk, label %.loopexit1260, label %bb.cn

bb.cl:                                            ; preds = %bb.cb
  %i.ly = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1223 = icmp eq ptr %i.ly, null
  br i1 %.not1223, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store ptr null, ptr %i.lz, align 8, !tbaa !100
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %bb.ck
  %.141062 = phi ptr [ %i.lx, %bb.ck ], [ %.131061, %bb.cm ], [ %.131061, %bb.cl ]
  %.14997 = phi i32 [ %i.lw, %bb.ck ], [ %.13996, %bb.cm ], [ %.13996, %bb.cl ]
  store i32 0, ptr %i.ar, align 4, !tbaa !62
  store i32 16187, ptr %i.p, align 8, !tbaa !23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.l
  %.151063 = phi ptr [ %.141062, %bb.cn ], [ %.01048, %bb.l ] ; 6 uses
  %.15998 = phi i32 [ %.14997, %bb.cn ], [ %.0983, %bb.l ] ; 5 uses
  %.12932 = phi i64 [ %.11931, %bb.cn ], [ %.0920, %bb.l ] ; 3 uses
  %.12 = phi i32 [ %.11, %bb.cn ], [ %.0909, %bb.l ] ; 3 uses
  %i.ma = load i32, ptr %i.am, align 8, !tbaa !31
  %i.mb = and i32 %i.ma, 4096
  %.not1228 = icmp eq i32 %i.mb, 0
  br i1 %.not1228, label %bb.cy, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mc = icmp eq i32 %.15998, 0
  br i1 %i.mc, label %.loopexit1260, label %.preheader1273.preheader

.preheader1273.preheader:                         ; preds = %bb.cp
  %i.md = zext i32 %.15998 to i64
  %.pre2833 = load ptr, ptr %i.br, align 16, !tbaa !32
  br label %.preheader1273

.preheader1273:                                   ; preds = %.preheader1273.preheader, %bb.ct
  %4 = phi ptr [ %.pre2833, %.preheader1273.preheader ], [ %5, %bb.ct ] ; 5 uses
  %indvars.iv2808 = phi i64 [ 0, %.preheader1273.preheader ], [ %indvars.iv.next2809, %bb.ct ] ; 2 uses
  %indvars.iv.next2809 = add nuw nsw i64 %indvars.iv2808, 1 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.151063, i64 %indvars.iv2808
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !55  ; 2 uses
  %.not1230 = icmp eq ptr %4, null
  br i1 %.not1230, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %.preheader1273
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !102 ; 2 uses
  %.not1231 = icmp eq ptr %i.mh, null
  br i1 %.not1231, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mi = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !103
  %i.ml = icmp ult i32 %i.mi, %i.mk
  br i1 %i.ml, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mm = add nuw i32 %i.mi, 1
  store i32 %i.mm, ptr %i.ar, align 4, !tbaa !62
  %i.mn = zext i32 %i.mi to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mn
  store i8 %i.mf, ptr %i.mo, align 1, !tbaa !55
  %.pre2832 = load ptr, ptr %i.br, align 16, !tbaa !32
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader1273, %bb.cq, %bb.cr, %bb.cs
  %5 = phi ptr [ null, %.preheader1273 ], [ %4, %bb.cq ], [ %4, %bb.cr ], [ %.pre2832, %bb.cs ]
  %i.mp = icmp ne i8 %i.mf, 0                     ; 2 uses
  %i.mq = icmp samesign ult i64 %indvars.iv.next2809, %i.md
  %i.mr = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %i.mr, label %.preheader1273, label %bb.cu, !llvm.loop !76

bb.cu:                                            ; preds = %bb.ct
  %i.ms = trunc nuw i64 %indvars.iv.next2809 to i32 ; 2 uses
  %i.mt = load i32, ptr %i.am, align 8, !tbaa !31
  %i.mu = and i32 %i.mt, 512
  %.not1232 = icmp eq i32 %i.mu, 0
  br i1 %.not1232, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mv = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.mw = and i32 %i.mv, 4
  %.not1233 = icmp eq i32 %i.mw, 0
  br i1 %.not1233, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mx = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.my = trunc i64 %i.mx to i32
  %i.mz = call i32 @zng_crc32(i32 noundef %i.my, ptr noundef nonnull %.151063, i32 noundef %i.ms) #14
  %i.na = zext i32 %i.mz to i64
  store i64 %i.na, ptr %i.ao, align 32, !tbaa !28
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.nb = sub nuw i32 %.15998, %i.ms              ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.151063, i64 %indvars.iv.next2809 ; 2 uses
  br i1 %i.mp, label %.loopexit1260, label %bb.da

bb.cy:                                            ; preds = %bb.co
  %i.nd = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1229 = icmp eq ptr %i.nd, null
  br i1 %.not1229, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  store ptr null, ptr %i.ne, align 8, !tbaa !102
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cx
  %.161064 = phi ptr [ %i.nc, %bb.cx ], [ %.151063, %bb.cz ], [ %.151063, %bb.cy ]
  %.16999 = phi i32 [ %i.nb, %bb.cx ], [ %.15998, %bb.cz ], [ %.15998, %bb.cy ]
  store i32 16188, ptr %i.p, align 8, !tbaa !23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.l
  %.171065 = phi ptr [ %.161064, %bb.da ], [ %.01048, %bb.l ] ; 6 uses
  %.171000 = phi i32 [ %.16999, %bb.da ], [ %.0983, %bb.l ] ; 5 uses
  %.13933 = phi i64 [ %.12932, %bb.da ], [ %.0920, %bb.l ] ; 4 uses
  %.13 = phi i32 [ %.12, %bb.da ], [ %.0909, %bb.l ] ; 5 uses
  %i.nf = load i32, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ng = and i32 %i.nf, 512
  %.not1234 = icmp eq i32 %i.ng, 0
  br i1 %.not1234, label %bb.dg, label %.preheader1271

.preheader1271:                                   ; preds = %bb.db
  %i.nh = icmp ult i32 %.13, 16
  br i1 %i.nh, label %.lr.ph2299.preheader, label %._crit_edge2300

.lr.ph2299.preheader:                             ; preds = %.preheader1271
  %i.ni = zext nneg i32 %.13 to i64               ; 4 uses
  %i.nj = icmp eq i32 %.171000, 0
  br i1 %i.nj, label %.loopexit1260.loopexit2321, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph2299.preheader
  %i.nk = add i32 %.171000, -1                    ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.171065, i64 1 ; 3 uses
  %i.nm = load i8, ptr %.171065, align 1, !tbaa !55
  %i.nn = zext i8 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, %i.ni
  %i.np = add i64 %i.no, %.13933                  ; 3 uses
  %indvars.iv.next2812 = add nuw nsw i64 %i.ni, 8 ; 3 uses
  %i.nq = icmp ult i32 %.13, 8
  br i1 %i.nq, label %.lr.ph2299.1, label %._crit_edge2300.loopexit

.lr.ph2299.1:                                     ; preds = %bb.dc
  %i.nr = icmp eq i32 %i.nk, 0
  br i1 %i.nr, label %.loopexit1260.loopexit2321, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph2299.1
  %i.ns = add i32 %.171000, -2
  %i.nt = getelementptr inbounds nuw i8, ptr %.171065, i64 2
  %i.nu = load i8, ptr %i.nl, align 1, !tbaa !55
  %i.nv = zext i8 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, %indvars.iv.next2812
  %i.nx = add i64 %i.nw, %i.np
  %indvars.iv.next2812.1 = or disjoint i64 %i.ni, 16
  br label %._crit_edge2300.loopexit

._crit_edge2300.loopexit:                         ; preds = %bb.dd, %bb.dc
  %.lcssa4095 = phi i32 [ %i.nk, %bb.dc ], [ %i.ns, %bb.dd ]
  %.lcssa4094 = phi ptr [ %i.nl, %bb.dc ], [ %i.nt, %bb.dd ]
  %.lcssa4093 = phi i64 [ %i.np, %bb.dc ], [ %i.nx, %bb.dd ]
  %indvars.iv.next2812.lcssa = phi i64 [ %indvars.iv.next2812, %bb.dc ], [ %indvars.iv.next2812.1, %bb.dd ]
  %i.ny = trunc nuw nsw i64 %indvars.iv.next2812.lcssa to i32
  br label %._crit_edge2300

._crit_edge2300:                                  ; preds = %._crit_edge2300.loopexit, %.preheader1271
  %.181066.lcssa = phi ptr [ %.171065, %.preheader1271 ], [ %.lcssa4094, %._crit_edge2300.loopexit ] ; 3 uses
  %.181001.lcssa = phi i32 [ %.171000, %.preheader1271 ], [ %.lcssa4095, %._crit_edge2300.loopexit ] ; 3 uses
  %.14934.lcssa = phi i64 [ %.13933, %.preheader1271 ], [ %.lcssa4093, %._crit_edge2300.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1271 ], [ %i.ny, %._crit_edge2300.loopexit ]
  %i.nz = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.oa = and i32 %i.nz, 4
  %.not1235 = icmp eq i32 %i.oa, 0
  br i1 %.not1235, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %._crit_edge2300
  %i.ob = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.oc = and i64 %i.ob, 65535
  %.not1236 = icmp eq i64 %.14934.lcssa, %i.oc
  br i1 %.not1236, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.5, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.dg:                                            ; preds = %bb.de, %._crit_edge2300, %bb.db
  %.191067 = phi ptr [ %.171065, %bb.db ], [ %.181066.lcssa, %._crit_edge2300 ], [ %.181066.lcssa, %bb.de ]
  %.191002 = phi i32 [ %.171000, %bb.db ], [ %.181001.lcssa, %._crit_edge2300 ], [ %.181001.lcssa, %bb.de ]
  %.15935 = phi i64 [ %.13933, %bb.db ], [ 0, %._crit_edge2300 ], [ 0, %bb.de ]
  %.15 = phi i32 [ %.13, %bb.db ], [ 0, %._crit_edge2300 ], [ 0, %bb.de ]
  %i.od = load ptr, ptr %i.br, align 16, !tbaa !32 ; 3 uses
  %.not1237 = icmp eq ptr %i.od, null
  br i1 %.not1237, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oe = lshr i32 %i.nf, 9
  %i.of = and i32 %i.oe, 1
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 68
  store i32 %i.of, ptr %i.og, align 4, !tbaa !104
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 72
  store i32 1, ptr %i.oh, align 8, !tbaa !61
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.oi = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.oj = and i32 %i.oi, 4
  %.not1238 = icmp eq i32 %i.oj, 0
  %.not1239 = icmp eq i32 %i.nf, 0
  %or.cond1257 = or i1 %.not1239, %.not1238
  br i1 %or.cond1257, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ok = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 72), align 8, !tbaa !105
  %i.ol = call i32 %i.ok(ptr noundef nonnull %i.an) #14 ; 2 uses
  %i.om = zext i32 %i.ol to i64
  store i64 %i.om, ptr %i.ao, align 32, !tbaa !28
  store i32 %i.ol, ptr %i.ap, align 4, !tbaa !27
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.dl:                                            ; preds = %.lr.ph2096.preheader
  %i.on = add i32 %.0983, -1                      ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.op = load i8, ptr %.01048, align 1, !tbaa !55
  %i.oq = zext i8 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, %i.bz
  %i.os = add i64 %i.or, %.0920                   ; 3 uses
  %indvars.iv.next2791 = add nuw nsw i64 %i.bz, 8 ; 2 uses
  %i.ot = icmp ult i32 %.0909, 24
  br i1 %i.ot, label %.lr.ph2096.1, label %._crit_edge2097

.lr.ph2096.1:                                     ; preds = %bb.dl
  %i.ou = icmp eq i32 %i.on, 0
  br i1 %i.ou, label %.loopexit1260.loopexit2326, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph2096.1
  %i.ov = add i32 %.0983, -2                      ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.ox = load i8, ptr %i.oo, align 1, !tbaa !55
  %i.oy = zext i8 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, %indvars.iv.next2791
  %i.pa = add i64 %i.oz, %i.os                    ; 3 uses
  %indvars.iv.next2791.1 = add nuw nsw i64 %i.bz, 16 ; 2 uses
  %i.pb = icmp ult i32 %.0909, 16
  br i1 %i.pb, label %.lr.ph2096.2, label %._crit_edge2097

.lr.ph2096.2:                                     ; preds = %bb.dm
  %i.pc = icmp eq i32 %i.ov, 0
  br i1 %i.pc, label %.loopexit1260.loopexit2326, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph2096.2
  %i.pd = add i32 %.0983, -3                      ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.01048, i64 3 ; 3 uses
  %i.pf = load i8, ptr %i.ow, align 1, !tbaa !55
  %i.pg = zext i8 %i.pf to i64
  %i.ph = shl nuw nsw i64 %i.pg, %indvars.iv.next2791.1
  %i.pi = add i64 %i.ph, %i.pa                    ; 3 uses
  %indvars.iv.next2791.2 = add nuw nsw i64 %i.bz, 24 ; 2 uses
  %i.pj = icmp ult i32 %.0909, 8
  br i1 %i.pj, label %.lr.ph2096.3, label %._crit_edge2097

.lr.ph2096.3:                                     ; preds = %bb.dn
end_hunk_1
