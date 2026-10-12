Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_mask?download=true
inline.NumInlined: 59
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_mask_angle:bb.a
bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %bb.r, %bb.c, %bb.ad, %bb.o
  %.3 = phi i32 [ 1, %bb.r ], [ %.0217., %bb.o ], [ 1, %bb.c ], [ %.0212., %bb.ad ], [ 0, %bb.ao ], [ 0, %bb.an ], [ %.262, %bb.ap ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_mask_radius_init(ptr nofree noundef captures(none) initializes((0, 12), (16, 36)) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @lv_area_get_width(ptr noundef %1) #9
  %i.b = tail call i32 @lv_area_get_height(ptr noundef %1) #9
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.b)
  %i.d = ashr i32 %i.c, 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d) ; 5 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <4 x i32>, ptr %1, align 4, !tbaa !35
  store <4 x i32> %i.f, ptr %i.e, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %spec.store.select, ptr %i.g, align 8, !tbaa !36
  %i.h = zext i1 %3 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  %i.l = or disjoint i8 %i.k, %i.h
  store i8 %i.l, ptr %i.i, align 4
  store ptr @lv_draw_mask_radius, ptr %0, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.m, align 8, !tbaa !72
  %i.n = icmp slt i32 %spec.select, 1
  br i1 %i.n, label %bb.b, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.a
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 664), align 8, !tbaa !73
  %i.p = icmp eq i32 %i.o, %spec.store.select
  br i1 %i.p, label %bb.c, label %.preheader72.1

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !14
  br label %circ_calc_aa4.exit

.preheader72.1:                                   ; preds = %.preheader72.preheader
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 712), align 8, !tbaa !73
  %i.s = icmp eq i32 %i.r, %spec.store.select
  br i1 %i.s, label %bb.c, label %.preheader72.2

.preheader72.2:                                   ; preds = %.preheader72.1
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 760), align 8, !tbaa !73
  %i.u = icmp eq i32 %i.t, %spec.store.select
  br i1 %i.u, label %bb.c, label %.preheader72.3

.preheader72.3:                                   ; preds = %.preheader72.2
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 808), align 8, !tbaa !73
  %i.w = icmp eq i32 %i.v, %spec.store.select
  br i1 %i.w, label %bb.c, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %.preheader72.3
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 660), align 4, !tbaa !20
  %.not91 = icmp eq i32 %i.x, 0
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 708), align 4, !tbaa !20
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  br i1 %.not91, label %.preheader71.1, label %.preheader71.1.thread

bb.c:                                             ; preds = %.preheader72.3, %.preheader72.2, %.preheader72.1, %.preheader72.preheader
  %.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader72.preheader ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader72.1 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader72.2 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %.preheader72.3 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = icmp samesign ult i32 %spec.select, 16
  %i.ag = lshr i32 %spec.store.select, 4
  %i.ah = select i1 %i.af, i32 1, i32 %i.ag
  %i.ai = add nsw i32 %i.ae, %i.ah
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 1000)
  store i32 %spec.select67, ptr %i.ad, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.lcssa, ptr %i.aj, align 8, !tbaa !14
  br label %circ_calc_aa4.exit

.preheader71.1:                                   ; preds = %.preheader71.preheader
  br i1 %i.z, label %bb.d, label %.preheader71.2

.preheader71.1.thread:                            ; preds = %.preheader71.preheader
  br i1 %i.z, label %.preheader71.2, label %.preheader71.2.thread

bb.d:                                             ; preds = %.preheader71.1
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 704), align 8, !tbaa !18
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 656), align 8, !tbaa !18
  %i.am = icmp slt i32 %i.ak, %i.al
  %spec.select68.1 = select i1 %i.am, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 624)
  br label %.preheader71.2

.preheader71.2:                                   ; preds = %.preheader71.1.thread, %bb.d, %.preheader71.1
  %.1.1 = phi ptr [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 672), %.preheader71.1.thread ], [ %spec.select68.1, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 624), %.preheader71.1 ] ; 3 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !20
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %.preheader71.3

.preheader71.2.thread:                            ; preds = %.preheader71.1.thread
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 756), align 4, !tbaa !20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.preheader71.3.thread, label %.preheader71.3

bb.e:                                             ; preds = %.preheader71.2
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 752), align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.1.1, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  %i.au = icmp slt i32 %i.ar, %i.at
  %spec.select68.2 = select i1 %i.au, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), ptr %.1.1
  br label %.preheader71.3

.preheader71.3:                                   ; preds = %.preheader71.2.thread, %bb.e, %.preheader71.2
  %.1.2 = phi ptr [ null, %.preheader71.2.thread ], [ %spec.select68.2, %bb.e ], [ %.1.1, %.preheader71.2 ] ; 3 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !20
  %i.aw = icmp eq i32 %i.av, 0
  %.not66.3 = icmp eq ptr %.1.2, null             ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.g

.preheader71.3.thread:                            ; preds = %.preheader71.2.thread
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 804), align 4, !tbaa !20
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread102, label %.thread106

bb.f:                                             ; preds = %.preheader71.3
  br i1 %.not66.3, label %.thread106, label %.thread102

.thread102:                                       ; preds = %.preheader71.3.thread, %bb.f
  %.1.2101105 = phi ptr [ %.1.2, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader71.3.thread ] ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 800), align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.2101105, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = icmp slt i32 %i.az, %i.bb
  %spec.select68.3 = select i1 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), ptr %.1.2101105
  br label %.thread106

bb.g:                                             ; preds = %.preheader71.3
  br i1 %.not66.3, label %bb.h, label %.thread106

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call ptr @lv_malloc_zeroed(i64 noundef 48) #9 ; 3 uses
  %.not65 = icmp eq ptr %i.bd, null
  br i1 %.not65, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 -1, ptr %i.be, align 8, !tbaa !18
  br label %bb.j

.thread106:                                       ; preds = %.preheader71.3.thread, %.thread102, %bb.f, %bb.g
  %.1.3109 = phi ptr [ %.1.2, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader71.3.thread ], [ %spec.select68.3, %.thread102 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.3109, i64 36 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.3109, i64 32
  %i.bj = icmp samesign ult i32 %spec.select, 16
  %i.bk = lshr i32 %spec.store.select, 4
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 1000)
  %spec.select69 = select i1 %i.bj, i32 1, i32 %i.bl
  store i32 %spec.select69, ptr %i.bi, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.thread106, %bb.i
  %.2 = phi ptr [ %.1.3109, %.thread106 ], [ %i.bd, %bb.i ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.2, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.2, i64 40
  store i32 %spec.store.select, ptr %i.bn, align 8, !tbaa !73
  %i.bo = load ptr, ptr %.2, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_free(ptr noundef nonnull %i.bo) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = mul nuw nsw i32 %spec.store.select, 6
  %i.bq = add nuw nsw i32 %i.bp, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call ptr @lv_malloc(i64 noundef %i.br) #9 ; 6 uses
  store ptr %i.bs, ptr %.2, align 8, !tbaa !21
  %.not195.i = icmp eq ptr %i.bs, null
  br i1 %.not195.i, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  br label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 14 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !19
  %i.bu = shl nuw nsw i32 %spec.store.select, 1   ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 24 ; 4 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !37
  %i.bz = shl nuw nsw i32 %spec.store.select, 2   ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !38
  %i.ce = icmp eq i32 %spec.select, 1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 -76, ptr %i.bs, align 1, !tbaa !29
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  store i16 0, ptr %i.cf, align 2, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 1, ptr %i.cg, align 2, !tbaa !39
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !38
  store i16 0, ptr %i.ch, align 2, !tbaa !39
  br label %circ_calc_aa4.exit

bb.o:                                             ; preds = %bb.m
  %i.ci = add nuw i32 %i.bu, 2                    ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = tail call ptr @lv_malloc_zeroed(i64 noundef %i.cl) #9 ; 19 uses
  %.not196.i = icmp eq ptr %i.cm, null
  br i1 %.not196.i, label %.preheader223.i, label %bb.p

.preheader223.i:                                  ; preds = %bb.o, %.preheader223.i
  br label %.preheader223.i

bb.p:                                             ; preds = %bb.o
  %i.cn = sext i32 %i.ci to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn ; 15 uses
  %i.cp = sub nsw i32 1, %i.bz
  br label %.preheader224.i

.preheader224.i:                                  ; preds = %bb.ai, %bb.p
  %.0178240.i = phi i32 [ 0, %bb.p ], [ %i.hb, %bb.ai ] ; 11 uses
  %.0183239.i = phi i32 [ 0, %bb.p ], [ %i.hc, %bb.ai ] ; 7 uses
  %.0213238.i = phi i32 [ %i.cp, %bb.p ], [ %.3216.3.i, %bb.ai ] ; 3 uses
  %.sroa.0.0237.i = phi i32 [ %i.bz, %bb.p ], [ %.sroa.0.3.3.i, %bb.ai ] ; 3 uses
  %.sroa.10.0236.i = phi i32 [ 0, %bb.p ], [ %i.cq, %bb.ai ] ; 7 uses
  %i.cq = add i32 %.sroa.10.0236.i, 4
  %i.cr = or disjoint i32 %.sroa.10.0236.i, 3     ; 3 uses
  %i.cs = icmp slt i32 %.0213238.i, 1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader224.i
  %i.ct = shl nsw i32 %.sroa.10.0236.i, 1
  %i.cu = add nsw i32 %.0213238.i, 3
  %i.cv = add i32 %i.cu, %i.ct
  br label %circ_next.exit.i

bb.r:                                             ; preds = %.preheader224.i
  %i.cw = sub nsw i32 %.sroa.10.0236.i, %.sroa.0.0237.i
  %i.cx = shl nsw i32 %i.cw, 1
  %i.cy = add nuw i32 %.0213238.i, 5
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = add nsw i32 %.sroa.0.0237.i, -1
  br label %circ_next.exit.i

circ_next.exit.i:                                 ; preds = %bb.r, %bb.q
  %.sroa.0.3.i = phi i32 [ %.sroa.0.0237.i, %bb.q ], [ %i.da, %bb.r ] ; 6 uses
  %.3216.i = phi i32 [ %i.cv, %bb.q ], [ %i.cz, %bb.r ] ; 3 uses
  %.not222.not.i = icmp slt i32 %.sroa.10.0236.i, %.sroa.0.3.i
  br i1 %.not222.not.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %circ_next.exit.i
  %i.db = or disjoint i32 %.sroa.10.0236.i, 1     ; 3 uses
  %i.dc = ashr i32 %.sroa.0.3.i, 2                ; 9 uses
  %i.dd = and i32 %.sroa.0.3.i, 3                 ; 3 uses
  %i.de = icmp slt i32 %.3216.i, 1
  br i1 %i.de, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = sub nsw i32 %i.db, %.sroa.0.3.i
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = add nuw i32 %.3216.i, 5
  %i.di = add i32 %i.dh, %i.dg
  %i.dj = add nsw i32 %.sroa.0.3.i, -1
  br label %circ_next.exit.1.i

bb.u:                                             ; preds = %bb.s
  %i.dk = shl nsw i32 %i.db, 1
  %i.dl = add nuw nsw i32 %i.dk, 3
  %i.dm = add i32 %i.dl, %.3216.i
  br label %circ_next.exit.1.i

circ_next.exit.1.i:                               ; preds = %bb.u, %bb.t
  %.sroa.0.3.1.i = phi i32 [ %.sroa.0.3.i, %bb.u ], [ %i.dj, %bb.t ] ; 6 uses
  %.3216.1.i = phi i32 [ %i.dm, %bb.u ], [ %i.di, %bb.t ] ; 3 uses
  %.not222.not.1.i = icmp slt i32 %i.db, %.sroa.0.3.1.i
  br i1 %.not222.not.1.i, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %circ_next.exit.1.i
  %i.dn = or disjoint i32 %.sroa.10.0236.i, 2     ; 3 uses
  %i.do = ashr i32 %.sroa.0.3.1.i, 2
  %i.dp = and i32 %.sroa.0.3.1.i, 3               ; 3 uses
  %i.dq = icmp slt i32 %.3216.1.i, 1
  br i1 %i.dq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = sub nsw i32 %i.dn, %.sroa.0.3.1.i
  %i.ds = shl nsw i32 %i.dr, 1
  %i.dt = add nuw i32 %.3216.1.i, 5
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = add nsw i32 %.sroa.0.3.1.i, -1
  br label %circ_next.exit.2.i

bb.x:                                             ; preds = %bb.v
  %i.dw = shl nsw i32 %i.dn, 1
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = add i32 %i.dx, %.3216.1.i
  br label %circ_next.exit.2.i

circ_next.exit.2.i:                               ; preds = %bb.x, %bb.w
  %.sroa.0.3.2.i = phi i32 [ %.sroa.0.3.1.i, %bb.x ], [ %i.dv, %bb.w ] ; 6 uses
  %.3216.2.i = phi i32 [ %i.dy, %bb.x ], [ %i.du, %bb.w ] ; 3 uses
  %.not222.not.2.i = icmp slt i32 %i.dn, %.sroa.0.3.2.i
  br i1 %.not222.not.2.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %circ_next.exit.2.i
  %i.dz = ashr i32 %.sroa.0.3.2.i, 2
  %i.ea = and i32 %.sroa.0.3.2.i, 3               ; 4 uses
  %i.eb = icmp slt i32 %.3216.2.i, 1
  br i1 %i.eb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = sub nsw i32 %i.cr, %.sroa.0.3.2.i
  %i.ed = shl nsw i32 %i.ec, 1
  %i.ee = add nuw i32 %.3216.2.i, 5
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = add nsw i32 %.sroa.0.3.2.i, -1
  br label %circ_next.exit.3.i

bb.aa:                                            ; preds = %bb.y
  %i.eh = shl nsw i32 %i.cr, 1
  %i.ei = add i32 %i.eh, 3
  %i.ej = add i32 %i.ei, %.3216.2.i
  br label %circ_next.exit.3.i

circ_next.exit.3.i:                               ; preds = %bb.aa, %bb.z
  %.sroa.0.3.3.i = phi i32 [ %.sroa.0.3.2.i, %bb.aa ], [ %i.eg, %bb.z ] ; 4 uses
  %.3216.3.i = phi i32 [ %i.ej, %bb.aa ], [ %i.ef, %bb.z ]
  %.not222.not.3.i = icmp slt i32 %i.cr, %.sroa.0.3.3.i
  br i1 %.not222.not.3.i, label %bb.ab, label %.thread.i

bb.ab:                                            ; preds = %circ_next.exit.3.i
  %i.ek = ashr i32 %.sroa.0.3.3.i, 2
  %i.el = and i32 %.sroa.0.3.3.i, 3               ; 4 uses
  %i.em = icmp eq i32 %i.dc, %i.ek
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = zext nneg i32 %.0178240.i to i64        ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.en
  store i32 %i.dc, ptr %i.eo, align 4, !tbaa !35
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.en
  store i32 %.0183239.i, ptr %i.ep, align 4, !tbaa !35
  %i.eq = add nuw nsw i32 %i.dp, %i.dd
  %i.er = add nuw nsw i32 %i.eq, %i.ea
  %i.es = add nuw nsw i32 %i.er, %i.el
  %i.et = trunc nuw nsw i32 %i.es to i8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %.not198.i = icmp eq i32 %i.dc, %i.do
  br i1 %.not198.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = zext nneg i32 %.0178240.i to i64        ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.eu
  store i32 %i.dc, ptr %i.ev, align 4, !tbaa !35
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eu
  store i32 %.0183239.i, ptr %i.ew, align 4, !tbaa !35
  %i.ex = trunc nuw nsw i32 %i.dd to i8
  %i.ey = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eu
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !29
  %i.fa = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.eu ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !29
  %i.fd = shl i8 %i.fc, 4
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !29
  %i.fe = add nuw nsw i32 %.0178240.i, 1
  %i.ff = add nsw i32 %i.dc, -1
  %i.fg = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fg
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !35
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fg
  store i32 %.0183239.i, ptr %i.fi, align 4, !tbaa !35
  %i.fj = or disjoint i32 %i.dp, 4
  %i.fk = add nuw nsw i32 %i.fj, %i.ea
  %i.fl = add nuw nsw i32 %i.fk, %i.el
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %.not199.i = icmp eq i32 %i.dc, %i.dz
  %i.fn = zext nneg i32 %.0178240.i to i64        ; 6 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fn
  store i32 %i.dc, ptr %i.fo, align 4, !tbaa !35
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fn
  store i32 %.0183239.i, ptr %i.fp, align 4, !tbaa !35
  %i.fq = add nuw nsw i32 %i.dp, %i.dd            ; 2 uses
  br i1 %.not199.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fr = trunc nuw nsw i32 %i.fq to i8
  %i.fs = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fn
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !29
  %i.fu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fn ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !29
  %i.fx = shl i8 %i.fw, 4
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !29
  %i.fy = add nuw nsw i32 %.0178240.i, 1
  %i.fz = add nsw i32 %i.dc, -1
  %i.ga = zext nneg i32 %i.fy to i64              ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ga
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !35
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ga
  store i32 %.0183239.i, ptr %i.gc, align 4, !tbaa !35
  %i.gd = or disjoint i32 %i.ea, 8
  %i.ge = add nuw nsw i32 %i.gd, %i.el
  %i.gf = trunc nuw nsw i32 %i.ge to i8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gg = add nuw nsw i32 %i.ea, %i.fq
  %i.gh = trunc nuw nsw i32 %i.gg to i8
  %i.gi = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.fn
  store i8 %i.gh, ptr %i.gj, align 1, !tbaa !29
  %i.gk = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fn ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !29
  %i.gn = shl i8 %i.gm, 4
  store i8 %i.gn, ptr %i.gl, align 1, !tbaa !29
  %i.go = add nuw nsw i32 %.0178240.i, 1
  %i.gp = add nsw i32 %i.dc, -1
  %i.gq = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gq
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !35
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gq
  store i32 %.0183239.i, ptr %i.gs, align 4, !tbaa !35
  %i.gt = trunc nuw nsw i32 %i.el to i8
  %i.gu = or disjoint i8 %i.gt, 12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %.sink302.i = phi i64 [ %i.fg, %bb.ae ], [ %i.gq, %bb.ah ], [ %i.ga, %bb.ag ], [ %i.en, %bb.ac ] ; 2 uses
  %.sink299.i = phi i8 [ %i.fm, %bb.ae ], [ %i.gu, %bb.ah ], [ %i.gf, %bb.ag ], [ %i.et, %bb.ac ]
  %.sink.i = phi i32 [ 2, %bb.ae ], [ 2, %bb.ah ], [ 2, %bb.ag ], [ 1, %bb.ac ]
  %i.gv = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink302.i
  store i8 %.sink299.i, ptr %i.gw, align 1, !tbaa !29
  %i.gx = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sink302.i ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !29
  %i.ha = shl i8 %i.gz, 4
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !29
  %i.hb = add nuw nsw i32 %.sink.i, %.0178240.i
  %i.hc = add i32 %.0183239.i, 1
  br label %.preheader224.i

.thread.i:                                        ; preds = %circ_next.exit.3.i, %circ_next.exit.2.i, %circ_next.exit.1.i, %circ_next.exit.i
  %i.hd = mul nuw nsw i32 %spec.store.select, 723 ; 2 uses
  %i.he = lshr i32 %i.hd, 10                      ; 4 uses
  %i.hf = add nsw i32 %.0178240.i, -1
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !35
  %.not200.i = icmp eq i32 %i.hi, %i.he
  br i1 %.not200.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread.i
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !35
  %.not201.i = icmp eq i32 %i.hk, %i.he
  br i1 %.not201.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.hl = and i32 %i.hd, 1023                     ; 4 uses
  %i.hm = icmp samesign ult i32 %i.hl, 513
  br i1 %i.hm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hn = mul nuw nsw i32 %i.hl, %i.hl
  %i.ho = lshr i32 %i.hn, 15
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hp = sub nuw nsw i32 1024, %i.hl             ; 2 uses
  %i.hq = mul nuw nsw i32 %i.hp, %i.hp
  %i.hr = lshr i32 %i.hq, 15
  %i.hs = sub nuw nsw i32 15, %i.hr
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0177.i = phi i32 [ %i.ho, %bb.al ], [ %i.hs, %bb.am ]
  %i.ht = zext nneg i32 %.0178240.i to i64        ; 4 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ht
  store i32 %i.he, ptr %i.hu, align 4, !tbaa !35
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ht
  store i32 %i.he, ptr %i.hv, align 4, !tbaa !35
  %i.hw = trunc nuw nsw i32 %.0177.i to i8
  %i.hx = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ht
  store i8 %i.hw, ptr %i.hy, align 1, !tbaa !29
  %i.hz = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ht ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !29
  %i.ic = shl i8 %i.ib, 4
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !29
  %i.id = add nuw nsw i32 %.0178240.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.2.i = phi i32 [ %i.id, %bb.an ], [ %.0178240.i, %bb.aj ] ; 4 uses
  %i.ie = icmp sgt i32 %.2.i, 1
  br i1 %i.ie, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %i.if = add nsw i32 %.2.i, -2                   ; 2 uses
  %i.ig = zext nneg i32 %.2.i to i64              ; 5 uses
  %i.ih = zext i32 %i.if to i64                   ; 6 uses
  %i.ii = and i64 %i.ih, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ii, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ih
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !35
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ig
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !35
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ih
  %i.in = load i32, ptr %i.im, align 4, !tbaa !35
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ig
  store i32 %i.in, ptr %i.io, align 4, !tbaa !35
  %i.ip = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ih
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !29
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ig
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !29
  %indvars.iv.next258.i.prol = add nsw i64 %i.ih, -1
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.ig, 1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %indvars.iv257.i.unr = phi i64 [ %i.ih, %.lr.ph.preheader.i ], [ %indvars.iv.next258.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.ig, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.it = icmp eq i32 %i.if, 0
  br i1 %i.it, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i.1, %.lr.ph.i ], [ %indvars.iv257.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv257.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !35
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !35
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv257.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !35
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !35
  %i.ja = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv257.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv.i
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !29
  %indvars.iv.next258.i = add nsw i64 %indvars.iv257.i, -1 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next258.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !35
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !35
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next258.i
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !35
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !35
  %i.jk = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv.next258.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv.next.i
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !29
  %indvars.iv.next258.i.1 = add nsw i64 %indvars.iv257.i, -2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not303.i.1 = icmp eq i64 %indvars.iv.next258.i, 0
  br i1 %.not303.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next.i.1, %.lr.ph.i ]
  %i.jo = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  %4 = load ptr, ptr %i.by, align 8, !tbaa !37    ; 2 uses
  store i16 0, ptr %4, align 2, !tbaa !39
  br label %.lr.ph248.i

._crit_edge.i:                                    ; preds = %bb.ao
  %i.jp = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  store i16 0, ptr %i.jp, align 2, !tbaa !39
  %5 = icmp eq i32 %.2.i, 1
  br i1 %5, label %.lr.ph248.i, label %._crit_edge249.i

.lr.ph248.i:                                      ; preds = %._crit_edge.i, %._crit_edge.loopexit.i
  %6 = phi ptr [ %4, %._crit_edge.loopexit.i ], [ %i.jp, %._crit_edge.i ]
  %.3.lcssa290.i = phi i32 [ %i.jo, %._crit_edge.loopexit.i ], [ 1, %._crit_edge.i ] ; 2 uses
  %i.jq = load ptr, ptr %i.cd, align 8, !tbaa !38
  %i.jr = zext nneg i32 %.3.lcssa290.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge.i, %.lr.ph248.i
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph248.i ], [ %indvars.iv.next266.i, %.critedge.i ] ; 4 uses
  %.2181245.i = phi i32 [ 0, %.lr.ph248.i ], [ %i.kk, %.critedge.i ] ; 2 uses
  %i.js = trunc i32 %.2181245.i to i16
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv265.i
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !39
  %i.ju = sext i32 %.2181245.i to i64             ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !35 ; 2 uses
  %i.jx = trunc i32 %i.jw to i16
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %indvars.iv265.i ; 2 uses
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.jz = phi i32 [ %i.jw, %bb.ap ], [ %i.kh, %bb.ar ]
  %indvars.iv262.i = phi i64 [ %i.ju, %bb.ap ], [ %indvars.iv.next263.i, %bb.ar ] ; 4 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv262.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !35
  %i.kc = zext i32 %i.kb to i64
  %i.kd = icmp eq i64 %indvars.iv265.i, %i.kc
  br i1 %i.kd, label %bb.ar, label %.critedge.i

bb.ar:                                            ; preds = %bb.aq
  %i.ke = and i32 %i.jz, 65535
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv262.i
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !35
  %i.kh = tail call i32 @llvm.smin.i32(i32 %i.kg, i32 %i.ke) ; 2 uses
  %i.ki = trunc i32 %i.kh to i16
  store i16 %i.ki, ptr %i.jy, align 2, !tbaa !39
  %indvars.iv.next263.i = add nsw i64 %indvars.iv262.i, 1 ; 2 uses
  %i.kj = icmp slt i64 %indvars.iv.next263.i, %i.jr
  br i1 %i.kj, label %bb.aq, label %._crit_edge249.i, !llvm.loop !69

.critedge.i:                                      ; preds = %bb.aq
  %i.kk = trunc nsw i64 %indvars.iv262.i to i32   ; 2 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1
  %i.kl = icmp sgt i32 %.3.lcssa290.i, %i.kk
  br i1 %i.kl, label %bb.ap, label %._crit_edge249.i, !llvm.loop !70

._crit_edge249.i:                                 ; preds = %.critedge.i, %bb.ar, %._crit_edge.i
  tail call void @lv_free(ptr noundef nonnull %i.cm) #9
  br label %circ_calc_aa4.exit

circ_calc_aa4.exit:                               ; preds = %._crit_edge249.i, %bb.n, %bb.c, %bb.b
  ret void
}

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #3

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @lv_draw_mask_radius(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #1 {
bb.a:
  %5 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.f = load i32, ptr %i.a, align 8, !tbaa !76   ; 5 uses
  store i32 %i.f, ptr %5, align 4, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.k, ptr %i.l, align 4, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.n, ptr %i.o, align 4, !tbaa !79
  %i.p = trunc i8 %i.c to i1                      ; 2 uses
  %i.q = icmp slt i32 %2, %i.h
  %i.r = icmp sgt i32 %2, %i.n
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  %.mask = and i8 %i.c, 1
  %. = zext nneg i8 %.mask to i32
  br i1 %or.cond, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.f, %i.e
  %.not = icmp slt i32 %1, %i.s
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %3, %1
  %i.u = sub nsw i32 %i.k, %i.e
  %.not207 = icmp sgt i32 %i.t, %i.u
  br i1 %.not207, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = add nsw i32 %i.h, %i.e
  %.not208 = icmp slt i32 %2, %i.v
  %i.w = sub nsw i32 %i.n, %i.e
  %.not209 = icmp sgt i32 %2, %i.w
  %or.cond235 = select i1 %.not208, i1 true, i1 %.not209
  br i1 %or.cond235, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = sub nsw i32 %i.f, %1                     ; 4 uses
  br i1 %i.p, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp sgt i32 %i.x, %3
  br i1 %i.y, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i32 %i.x, -1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %i.x to i64
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.aa) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = sub nsw i32 %i.k, %1                    ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 4 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp slt i32 %i.ac, %3
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = sub nuw nsw i32 %3, %i.ac
  %i.ai = zext nneg i32 %i.ah to i64
  tail call void @lv_memset(ptr noundef nonnull %i.ag, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ai) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aj = icmp eq i32 %i.f, %1
  %i.ak = icmp eq i32 %i.ac, %3
  %or.cond216 = select i1 %i.aj, i1 %i.ak, i1 false
  %spec.select224 = select i1 %or.cond216, i32 1, i32 2
  br label %bb.ag

bb.m:                                             ; preds = %bb.e
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0) ; 5 uses
  %.not210 = icmp sgt i32 %spec.store.select, %3
  br i1 %.not210, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = add i32 %1, %spec.store.select
  %reass.sub = sub i32 %i.k, %i.al
  %i.am = add i32 %reass.sub, 1                   ; 2 uses
  %i.an = add nsw i32 %i.am, %spec.store.select
  %i.ao = icmp sgt i32 %i.an, %3
  %i.ap = sub nuw nsw i32 %3, %spec.store.select
  %spec.select = select i1 %i.ao, i32 %i.ap, i32 %i.am ; 2 uses
  %i.aq = icmp sgt i32 %spec.select, -1
  br i1 %i.aq, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.ar = zext nneg i32 %spec.store.select to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = zext nneg i32 %spec.select to i64
  tail call void @lv_memset(ptr noundef %i.as, i8 noundef zeroext 0, i64 noundef range(i64 -2147483648, 2147483648) %i.at) #9
  br label %bb.ag

bb.p:                                             ; preds = %bb.d
  %i.au = sub nsw i32 %i.f, %1                    ; 2 uses
  %i.av = call i32 @lv_area_get_width(ptr noundef nonnull %5) #9
  %i.aw = call i32 @lv_area_get_height(ptr noundef nonnull %5) #9
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !77
  %i.ay = sub nsw i32 %2, %i.ax                   ; 3 uses
  %i.az = icmp slt i32 %i.ay, %i.e
  %i.ba = xor i32 %i.ay, -1
  %i.bb = add i32 %i.e, %i.ba
  %.neg = sub i32 %i.e, %i.aw
  %i.bc = add i32 %.neg, %i.ay
  %.0177 = select i1 %i.az, i32 %i.bb, i32 %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bh = sext i32 %.0177 to i64                  ; 2 uses
  %i.bi = getelementptr [2 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !39
  %i.bl = zext i16 %i.bk to i32
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !39 ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bl, %i.bn                ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bh
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = zext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !19
  %i.bw = zext i16 %i.bm to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = sub i32 %i.au, %i.e
  %i.bz = add i32 %i.by, %i.av
  %i.ca = add nsw i32 %i.bz, %i.bt                ; 4 uses
  %i.cb = add nsw i32 %i.au, %i.e
  %i.cc = sub i32 %i.cb, %i.bt                    ; 3 uses
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  %i.ce = icmp sgt i32 %i.bo, 0                   ; 2 uses
  br i1 %i.p, label %.preheader243, label %.preheader

.preheader243:                                    ; preds = %bb.p
  br i1 %i.ce, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader243
  %i.cf = zext nneg i32 %i.bo to i64
  %i.cg = sext i32 %i.ca to i64
  %i.ch = sext i32 %3 to i64                      ; 2 uses
  %i.ci = sext i32 %i.cd to i64
  %wide.trip.count = zext nneg i32 %i.bo to i64
  %i.cj = getelementptr i8, ptr %i.bx, i64 %i.cf
  br label %.lr.ph

.preheader:                                       ; preds = %bb.p
  br i1 %i.ce, label %.lr.ph246.preheader, label %._crit_edge247

.lr.ph246.preheader:                              ; preds = %.preheader
  %i.ck = zext nneg i32 %i.bo to i64
  %i.cl = sext i32 %i.ca to i64
  %i.cm = sext i32 %3 to i64                      ; 2 uses
  %i.cn = sext i32 %i.cd to i64
  %wide.trip.count252 = zext nneg i32 %i.bo to i64
  %i.co = getelementptr i8, ptr %i.bx, i64 %i.ck
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %bb.x
  %indvars.iv249 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next250, %bb.x ] ; 4 uses
  %i.cp = xor i64 %indvars.iv249, -1
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.cp
end_hunk_0
