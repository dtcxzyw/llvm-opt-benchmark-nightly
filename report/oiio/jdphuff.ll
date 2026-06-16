inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitread_working_state = type { ptr, i64, i64, i32, ptr }
%struct.savable_state = type { i32, [4 x i32] }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_phuff_decoder(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 1, i64 noundef 120) #5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.d, ptr %i.e, align 8, !tbaa !35
  store ptr @start_pass_phuff_decoder, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !tbaa !41
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = shl nsw i32 %i.j, 7
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call ptr %i.h(ptr noundef %0, i32 noundef 1, i64 noundef %i.m) #5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.n, ptr %i.o, align 8, !tbaa !43
  %i.p = load i32, ptr %i.i, align 8, !tbaa !42
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a, %.preheader
  %.01926 = phi i32 [ %i.r, %.preheader ], [ 0, %bb.a ]
  %.02025 = phi ptr [ %scevgep, %.preheader ], [ %i.n, %bb.a ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %.02025, i8 -1, i64 256, i1 false), !tbaa !3
  %scevgep = getelementptr i8, ptr %.02025, i64 256
  %i.r = add nuw nsw i32 %.01926, 1               ; 2 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !42
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.preheader, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff_decoder(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 3 uses
  %i.e = icmp eq i32 %i.d, 0                      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not121 = icmp ne i32 %i.g, 0
  br label %._crit_edge165

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.d, %i.g
  %i.i = icmp sgt i32 %i.g, 63
  %or.cond = or i1 %i.h, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %.not = icmp ne i32 %i.k, 1
  %narrow = select i1 %.not, i1 true, i1 %or.cond
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %bb.c, %bb.b
  %.1.in = phi i1 [ %narrow, %bb.c ], [ %.not121, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49   ; 2 uses
  %.not122 = icmp ne i32 %i.m, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %.not123 = icmp ne i32 %.pre, %i.n
  %.not174 = select i1 %.not122, i1 %.not123, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.p = icmp sgt i32 %.pre, 13
  %i.q = select i1 %i.p, i1 true, i1 %.not174
  %.not124.not = select i1 %i.q, i1 true, i1 %.1.in
  br i1 %.not124.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge165
  %i.r = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 17, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i32 %i.d, ptr %i.t, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.v = load i32, ptr %i.u, align 8, !tbaa !47
  %i.w = load ptr, ptr %0, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 %i.v, ptr %i.x, align 4, !tbaa !54
  %i.y = load i32, ptr %i.l, align 4, !tbaa !49
  %i.z = load ptr, ptr %0, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !54
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !50
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !54
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  tail call void %i.af(ptr noundef nonnull %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge165
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge151.critedge

.lr.ph146:                                        ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph146, %._crit_edge143
  %indvars.iv156 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next157, %._crit_edge143 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv156
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !56 ; 4 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [256 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.al, align 8, !tbaa !42
  %i.aw = add nsw i32 %i.av, %i.ar
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [256 x i8], ptr %i.as, i64 %i.ax
  br i1 %i.e, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 118, ptr %i.bc, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  store i32 %i.ar, ptr %i.bd, align 4, !tbaa !54
  %i.be = load ptr, ptr %0, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  %i.bg = load ptr, ptr %0, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !46
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 1)
  %smin = sext i32 %i.bk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %smin, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bl = load i32, ptr %i.an, align 4, !tbaa !59
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.sink = phi i32 [ %i.bo, %bb.i ], [ 0, %.lr.ph ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 %.sink, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %spec.select131 = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 9)
  %i.br = zext nneg i32 %spec.select131 to i64
  %.not125 = icmp sgt i64 %indvars.iv.next, %i.br
  br i1 %.not125, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.j
  %.pre166 = load i32, ptr %i.c, align 4, !tbaa !46 ; 2 uses
  %.not126139 = icmp sgt i32 %.pre166, %i.bq
  br i1 %.not126139, label %._crit_edge143, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %._crit_edge
  %i.bs = sext i32 %.pre166 to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %bb.l
  %indvars.iv153 = phi i64 [ %i.bs, %.lr.ph142.preheader ], [ %indvars.iv.next154, %bb.l ] ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv153 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %spec.select132 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !49
  %.not127 = icmp eq i32 %i.bv, %spec.select132
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph142
  %i.bw = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 118, ptr %i.bx, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  store i32 %i.ar, ptr %i.by, align 4, !tbaa !54
  %i.bz = load ptr, ptr %0, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = trunc nsw i64 %indvars.iv153 to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !54
  %i.cc = load ptr, ptr %0, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !58
  tail call void %i.ce(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph142
  %i.cf = load i32, ptr %i.o, align 8, !tbaa !50
  store i32 %i.cf, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !47
  %i.ch = sext i32 %i.cg to i64
  %.not126 = icmp sgt i64 %indvars.iv.next154, %i.ch
  br i1 %.not126, label %._crit_edge143, label %.lr.ph142, !llvm.loop !61

._crit_edge143:                                   ; preds = %bb.l, %._crit_edge
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.ci = load i32, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next157, %i.cj
  br i1 %i.ck, label %bb.f, label %._crit_edge147.loopexit, !llvm.loop !62

._crit_edge147.loopexit:                          ; preds = %._crit_edge143
  %i.cl = icmp sgt i32 %i.ci, 0
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !49
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %decode_mcu_DC_refine.decode_mcu_AC_refine = select i1 %i.e, ptr @decode_mcu_DC_refine, ptr @decode_mcu_AC_refine
  %decode_mcu_DC_first.decode_mcu_AC_first = select i1 %i.e, ptr @decode_mcu_DC_first, ptr @decode_mcu_AC_first
  %decode_mcu_DC_refine.sink = select i1 %i.cn, ptr %decode_mcu_DC_first.decode_mcu_AC_first, ptr %decode_mcu_DC_refine.decode_mcu_AC_refine
  store ptr %decode_mcu_DC_refine.sink, ptr %i.co, align 8, !tbaa !63
  br i1 %i.cl, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %._crit_edge147.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  br i1 %i.e, label %.lr.ph150.split.us, label %.lr.ph150.split

.lr.ph150.split.us:                               ; preds = %.lr.ph150, %bb.n
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.n ], [ 0, %.lr.ph150 ] ; 3 uses
  %i.ct = load i32, ptr %i.l, align 4, !tbaa !49
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph150.split.us
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv162
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !64 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cz
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.cy, ptr noundef nonnull %i.da) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph150.split.us
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv162
  store i32 0, ptr %i.db, align 4, !tbaa !3
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.dc = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next163, %i.dd
  br i1 %i.de, label %.lr.ph150.split.us, label %._crit_edge151, !llvm.loop !65

.lr.ph150.split:                                  ; preds = %.lr.ph150, %.lr.ph150.split
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph150.split ], [ 0, %.lr.ph150 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv159
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !66 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.dj ; 2 uses
  tail call void @jpeg_make_d_derived_tbl(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.di, ptr noundef nonnull %i.dk) #5
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !41
  store ptr %i.dl, ptr %i.cr, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv159
  store i32 0, ptr %i.dm, align 4, !tbaa !3
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.dn = load i32, ptr %i.ag, align 8, !tbaa !48
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next160, %i.do
  br i1 %i.dp, label %.lr.ph150.split, label %._crit_edge151, !llvm.loop !65

._crit_edge151.critedge:                          ; preds = %bb.e
  %i.dq = load i32, ptr %i.l, align 4, !tbaa !49
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %decode_mcu_DC_refine.decode_mcu_AC_refine.c = select i1 %i.e, ptr @decode_mcu_DC_refine, ptr @decode_mcu_AC_refine
  %decode_mcu_DC_first.decode_mcu_AC_first.c = select i1 %i.e, ptr @decode_mcu_DC_first, ptr @decode_mcu_AC_first
  %decode_mcu_DC_refine.sink.c = select i1 %i.dr, ptr %decode_mcu_DC_first.decode_mcu_AC_first.c, ptr %decode_mcu_DC_refine.decode_mcu_AC_refine.c
  store ptr %decode_mcu_DC_refine.sink.c, ptr %i.ds, align 8, !tbaa !63
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %.lr.ph150.split, %bb.n, %._crit_edge151.critedge, %._crit_edge147.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.du, align 8, !tbaa !68
  store i64 0, ptr %i.dt, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.dv, align 8, !tbaa !70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.dw, align 8, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !72
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !73
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @decode_mcu_DC_first(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.bitread_working_state, align 8 ; 11 uses
  %3 = alloca %struct.savable_state, align 4      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %process_restart.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !73
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %process_restart.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  %i.l = sdiv i32 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75
  %i.q = add i32 %i.p, %i.l
  store i32 %i.q, ptr %i.o, align 4, !tbaa !75
  store i32 0, ptr %i.j, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0) #5, !inline_history !78
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.u, align 8, !tbaa !48
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %bb.d, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.ac, align 8, !tbaa !71
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !72  ; 3 uses
  store i32 %i.ad, ptr %i.g, align 4, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %process_restart.exit.thread

bb.e:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.ah, align 8, !tbaa !70
  br label %process_restart.exit.thread

process_restart.exit.thread:                      ; preds = %._crit_edge.i, %bb.e, %bb.b, %bb.a
  %i.ai = phi i32 [ %i.ad, %._crit_edge.i ], [ %i.ad, %bb.e ], [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !70
  %.not108 = icmp eq i32 %i.ak, 0
  br i1 %.not108, label %bb.f, label %bb.v

bb.f:                                             ; preds = %process_restart.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.al, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i64 20, i1 false), !tbaa.struct !90
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !91
  %i.az = icmp sgt i32 %i.ay, 0
end_hunk_0
begin_hunk_1_@decode_mcu_AC_first:bb.a
._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !71
  %i.af = load i32, ptr %i.g, align 4, !tbaa !72  ; 3 uses
  store i32 %i.af, ptr %i.i, align 4, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !80
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %process_restart.exit.thread

bb.e:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.aj, align 8, !tbaa !70
  br label %process_restart.exit.thread

process_restart.exit.thread:                      ; preds = %._crit_edge.i, %bb.e, %bb.b, %bb.a
  %.pre149 = phi i32 [ %i.af, %._crit_edge.i ], [ %i.af, %bb.e ], [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !70
  %.not125 = icmp eq i32 %i.al, 0
  br i1 %.not125, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %process_restart.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %.not126 = icmp eq i32 %i.an, 0
  br i1 %.not126, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add i32 %i.an, -1
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.ap, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  store ptr %i.as, ptr %2, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !69 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %.not127140 = icmp sgt i32 %i.be, %i.d
  br i1 %.not127140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 296
  %i.bi = zext nneg i32 %i.f to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.aa
  %.092143 = phi i32 [ %i.az, %.lr.ph ], [ %.8, %bb.aa ] ; 3 uses
  %.096142 = phi i64 [ %i.ax, %.lr.ph ], [ %.8104, %bb.aa ] ; 2 uses
  %.0106141 = phi i32 [ %i.be, %.lr.ph ], [ %i.do, %bb.aa ] ; 2 uses
  %i.bj = icmp slt i32 %.092143, 8
  br i1 %i.bj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bk = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.096142, i32 noundef %.092143, i32 noundef 0) #5
  %.not128 = icmp eq i32 %i.bk, 0
  br i1 %.not128, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !94 ; 2 uses
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !95 ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 8
  br i1 %i.bn, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.197 = phi i64 [ %i.bl, %bb.k ], [ %.096142, %bb.i ] ; 3 uses
  %.193 = phi i32 [ %i.bm, %bb.k ], [ %.092143, %bb.i ] ; 3 uses
  %i.bo = add nsw i32 %.193, -8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 %.197, %i.bp
  %i.br = and i64 %i.bq, 255
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3  ; 2 uses
  %i.bu = ashr i32 %i.bt, 8                       ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 9
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = sub nsw i32 %.193, %i.bu
  %i.bx = and i32 %i.bt, 255
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %bb.l
  %.298 = phi i64 [ %.197, %bb.l ], [ %i.bl, %bb.k ]
  %.294 = phi i32 [ %.193, %bb.l ], [ %i.bm, %bb.k ]
  %.087 = phi i32 [ %i.bu, %bb.l ], [ 1, %bb.k ]
  %i.by = call i32 @jpeg_huff_decode(ptr noundef nonnull %2, i64 noundef %.298, i32 noundef %.294, ptr noundef %i.bc, i32 noundef %.087) #5 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %i.bf, align 8, !tbaa !94
  %i.cb = load i32, ptr %i.bg, align 8, !tbaa !95
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.4100 = phi i64 [ %i.ca, %bb.o ], [ %.197, %bb.m ] ; 6 uses
  %.4 = phi i32 [ %i.cb, %bb.o ], [ %i.bw, %bb.m ] ; 8 uses
  %.291 = phi i32 [ %i.by, %bb.o ], [ %i.bx, %bb.m ] ; 2 uses
  %i.cc = lshr i32 %.291, 4                       ; 7 uses
  %i.cd = and i32 %.291, 15                       ; 6 uses
  %.not129 = icmp eq i32 %i.cd, 0
  br i1 %.not129, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add nsw i32 %i.cc, %.0106141            ; 2 uses
  %i.cf = icmp slt i32 %.4, %i.cd
  br i1 %i.cf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cg = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.4100, i32 noundef %.4, i32 noundef %i.cd) #5
  %.not132 = icmp eq i32 %i.cg, 0
  br i1 %.not132, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !94
  %i.ci = load i32, ptr %i.bg, align 8, !tbaa !95
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.5101 = phi i64 [ %i.ch, %bb.s ], [ %.4100, %bb.q ] ; 2 uses
  %.5 = phi i32 [ %i.ci, %bb.s ], [ %.4, %bb.q ]
  %i.cj = sub nsw i32 %.5, %i.cd                  ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %.5101, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %notmask = shl nsw i32 -1, %i.cd                ; 2 uses
  %i.cn = xor i32 %notmask, -1
  %i.co = and i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = add nsw i32 %i.cd, -1
  %.highbits = lshr i32 %i.co, %i.cp
  %i.cq = icmp eq i32 %.highbits, 0
  %i.cr = or disjoint i32 %notmask, 1
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.cs, %i.co
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl i64 %i.cu, %i.bi
  %i.cw = trunc i64 %i.cv to i16
  %i.cx = sext i32 %i.ce to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.da
  store i16 %i.cw, ptr %i.db, align 2, !tbaa !96
  br label %bb.aa

bb.u:                                             ; preds = %bb.p
  switch i32 %i.cc, label %bb.w [
    i32 15, label %bb.v
    i32 0, label %.loopexit
  ]

bb.v:                                             ; preds = %bb.u
  %i.dc = add nsw i32 %.0106141, 15
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.dd = icmp slt i32 %.4, %i.cc
  br i1 %i.dd, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.de = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.4100, i32 noundef %.4, i32 noundef %i.cc) #5
  %.not131 = icmp eq i32 %i.de, 0
  br i1 %.not131, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load i64, ptr %i.bf, align 8, !tbaa !94
  %i.dg = load i32, ptr %i.bg, align 8, !tbaa !95
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.6102 = phi i64 [ %i.df, %bb.y ], [ %.4100, %bb.w ] ; 2 uses
  %.6 = phi i32 [ %i.dg, %bb.y ], [ %.4, %bb.w ]
  %i.dh = sub nsw i32 %.6, %i.cc                  ; 2 uses
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 %.6102, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %notmask159 = shl nsw i32 -1, %i.cc
  %i.dl = xor i32 %notmask159, -1                 ; 2 uses
  %i.dm = and i32 %i.dl, %i.dk
  %i.dn = add nuw i32 %i.dm, %i.dl
  br label %.loopexit

bb.aa:                                            ; preds = %bb.t, %bb.v
  %.1107 = phi i32 [ %i.ce, %bb.t ], [ %i.dc, %bb.v ]
  %.8104 = phi i64 [ %.5101, %bb.t ], [ %.4100, %bb.v ] ; 2 uses
  %.8 = phi i32 [ %i.cj, %bb.t ], [ %.4, %bb.v ]  ; 2 uses
  %i.do = add nsw i32 %.1107, 1                   ; 2 uses
  %.not127 = icmp sgt i32 %i.do, %i.d
  br i1 %.not127, label %.loopexit, label %bb.i, !llvm.loop !98

.loopexit:                                        ; preds = %bb.aa, %bb.u, %bb.h, %bb.z
  %.1109 = phi i32 [ 0, %bb.h ], [ %i.dn, %bb.z ], [ 0, %bb.aa ], [ %i.cc, %bb.u ]
  %.9105 = phi i64 [ %i.ax, %bb.h ], [ %.6102, %bb.z ], [ %.8104, %bb.aa ], [ %.4100, %bb.u ]
  %.9 = phi i32 [ %i.az, %bb.h ], [ %i.dh, %bb.z ], [ %.8, %bb.aa ], [ %.4, %bb.u ]
  %i.dp = load ptr, ptr %2, align 8, !tbaa !87
  %i.dq = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !85
  %i.dr = load i64, ptr %i.av, align 8, !tbaa !89
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !88
  store i64 %.9105, ptr %i.aw, align 8, !tbaa !69
  store i32 %.9, ptr %i.ay, align 8, !tbaa !68
  %.pre.pre = load i32, ptr %i.g, align 4, !tbaa !72
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.g
  %.pre = phi i32 [ %.pre149, %bb.g ], [ %.pre.pre, %.loopexit ]
  %.2110 = phi i32 [ %i.ao, %bb.g ], [ %.1109, %.loopexit ]
  store i32 %.2110, ptr %i.am, align 8, !tbaa !71
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %process_restart.exit.thread
  %i.dt = phi i32 [ %.pre, %bb.ab ], [ %.pre149, %process_restart.exit.thread ]
  %.not133 = icmp eq i32 %i.dt, 0
  br i1 %.not133, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !73
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !73
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.n, %bb.r, %bb.c, %bb.ac, %bb.ad, %bb.x
  %.2 = phi i32 [ 0, %bb.x ], [ 1, %bb.ad ], [ 0, %bb.c ], [ 1, %bb.ac ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @decode_mcu_DC_refine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.bitread_working_state, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %i.e = shl nuw i32 1, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %process_restart.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %process_restart.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
  %i.m = sdiv i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75
  %i.r = add i32 %i.q, %i.m
  store i32 %i.r, ptr %i.p, align 4, !tbaa !75
  store i32 0, ptr %i.k, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0) #5, !inline_history !78
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %process_restart.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 0, ptr %i.z, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !48
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.ad, align 8, !tbaa !71
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !72  ; 3 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !80
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %process_restart.exit.thread

bb.e:                                             ; preds = %._crit_edge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.ai, align 8, !tbaa !70
  br label %process_restart.exit.thread

process_restart.exit.thread:                      ; preds = %._crit_edge.i, %bb.e, %bb.b, %bb.a
  %i.aj = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.ae, %bb.e ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.ak, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85 ; 2 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !91
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %process_restart.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = trunc i32 %i.e to i16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.044 = phi i32 [ %i.au, %.lr.ph ], [ %i.bh, %bb.k ] ; 3 uses
  %.03043 = phi i64 [ %i.as, %.lr.ph ], [ %.131, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %i.bd = icmp slt i32 %.044, 1
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.03043, i32 noundef %.044, i32 noundef 1) #5
  %.not36 = icmp eq i32 %i.be, 0
  br i1 %.not36, label %process_restart.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !94
  %i.bg = load i32, ptr %i.az, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.131 = phi i64 [ %i.bf, %bb.h ], [ %.03043, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.bg, %bb.h ], [ %.044, %bb.f ]
  %i.bh = add nsw i32 %.1, -1                     ; 3 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bj, %.131
  %.not37 = icmp eq i64 %i.bk, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i16, ptr %i.bc, align 2, !tbaa !96
  %i.bm = or i16 %i.bl, %i.ba
  store i16 %i.bm, ptr %i.bc, align 2, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.av, align 8, !tbaa !91
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !99

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !87
  %.pre47 = load ptr, ptr %i.al, align 8, !tbaa !84
  %.pre48 = load i64, ptr %i.aq, align 8, !tbaa !89
  %.pre49 = load i32, ptr %i.f, align 4, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %process_restart.exit.thread
  %i.bq = phi i32 [ %i.aj, %process_restart.exit.thread ], [ %.pre49, %._crit_edge.loopexit ]
  %i.br = phi i64 [ %i.ap, %process_restart.exit.thread ], [ %.pre48, %._crit_edge.loopexit ]
  %i.bs = phi ptr [ %i.am, %process_restart.exit.thread ], [ %.pre47, %._crit_edge.loopexit ] ; 2 uses
  %i.bt = phi ptr [ %i.an, %process_restart.exit.thread ], [ %.pre, %._crit_edge.loopexit ]
  %.030.lcssa = phi i64 [ %i.as, %process_restart.exit.thread ], [ %.131, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.au, %process_restart.exit.thread ], [ %i.bh, %._crit_edge.loopexit ]
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !88
  store i64 %.030.lcssa, ptr %i.ar, align 8, !tbaa !69
  store i32 %.0.lcssa, ptr %i.at, align 8, !tbaa !68
  %.not35 = icmp eq i32 %i.bq, 0
  br i1 %.not35, label %process_restart.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !73
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !73
  br label %process_restart.exit

process_restart.exit:                             ; preds = %bb.g, %bb.c, %._crit_edge, %bb.l
  %.032 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.c ], [ 1, %bb.l ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @decode_mcu_AC_refine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.bitread_working_state, align 8 ; 16 uses
  %i.a = alloca [64 x i32], align 16              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %i.h = shl nuw i32 1, %i.g                      ; 5 uses
  %i.i = shl nsw i32 -1, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !72   ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %process_restart.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %process_restart.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  %i.q = sdiv i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  %i.v = add i32 %i.u, %i.q
  store i32 %i.v, ptr %i.t, align 4, !tbaa !75
  store i32 0, ptr %i.o, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = tail call i32 %i.x(ptr noundef nonnull %0) #5, !inline_history !78
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %process_restart.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !48
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  store i32 0, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !48
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i, %i.af
  br i1 %i.ag, label %bb.d, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !71
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !72  ; 3 uses
  store i32 %i.ai, ptr %i.l, align 4, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !80
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %process_restart.exit.thread

bb.e:                                             ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.am, align 8, !tbaa !70
  br label %process_restart.exit.thread

process_restart.exit.thread:                      ; preds = %._crit_edge.i, %bb.e, %bb.b, %bb.a
  %i.an = phi i32 [ %i.ai, %._crit_edge.i ], [ %i.ai, %bb.e ], [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !70
  %.not182 = icmp eq i32 %i.ap, 0
  br i1 %.not182, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %process_restart.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.aq, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  store ptr %i.at, ptr %2, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !69 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !68 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !92    ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !67 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46 ; 3 uses
  %i.bi = icmp ne i32 %i.bc, 0
  %.not183234 = icmp sgt i32 %i.bh, %i.e
  %or.cond = select i1 %i.bi, i1 true, i1 %.not183234
  br i1 %or.cond, label %.loopexit215, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 296
  %i.bm = shl i32 65535, %i.g
  %3 = sext i32 %i.e to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.aj
  %.0128238 = phi i32 [ 0, %.lr.ph ], [ %.1129, %bb.aj ] ; 10 uses
  %.0132237 = phi i32 [ %i.bh, %.lr.ph ], [ %i.ej, %bb.aj ] ; 3 uses
  %.0137236 = phi i32 [ %i.ba, %.lr.ph ], [ %.11, %bb.aj ] ; 3 uses
  %.0142235 = phi i64 [ %i.ay, %.lr.ph ], [ %.11153, %bb.aj ] ; 2 uses
  %i.bn = icmp slt i32 %.0137236, 8
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bo = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.0142235, i32 noundef %.0137236, i32 noundef 0) #5
  %.not184 = icmp eq i32 %i.bo, 0
  br i1 %.not184, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !94 ; 2 uses
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !95 ; 3 uses
  %i.br = icmp slt i32 %i.bq, 8
  br i1 %i.br, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.1143 = phi i64 [ %i.bp, %bb.i ], [ %.0142235, %bb.g ] ; 3 uses
  %.1138 = phi i32 [ %i.bq, %bb.i ], [ %.0137236, %bb.g ] ; 3 uses
  %i.bs = add nsw i32 %.1138, -8
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i64 %.1143, %i.bt
  %i.bv = and i64 %i.bu, 255
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = ashr i32 %i.bx, 8                       ; 3 uses
  %i.bz = icmp slt i32 %i.by, 9
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = sub nsw i32 %.1138, %i.by
  %i.cb = and i32 %i.bx, 255
  br label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.j
  %.2144 = phi i64 [ %.1143, %bb.j ], [ %i.bp, %bb.i ]
  %.2139 = phi i32 [ %.1138, %bb.j ], [ %i.bq, %bb.i ]
  %.0126 = phi i32 [ %i.by, %bb.j ], [ 1, %bb.i ]
  %i.cc = call i32 @jpeg_huff_decode(ptr noundef nonnull %2, i64 noundef %.2144, i32 noundef %.2139, ptr noundef %i.bf, i32 noundef %.0126) #5 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %i.bj, align 8, !tbaa !94
  %i.cf = load i32, ptr %i.bk, align 8, !tbaa !95
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.4146.ph = phi i64 [ %.1143, %bb.k ], [ %i.ce, %bb.m ] ; 6 uses
  %.4141.ph = phi i32 [ %i.ca, %bb.k ], [ %i.cf, %bb.m ] ; 8 uses
  %.2.ph = phi i32 [ %i.cb, %bb.k ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cg = lshr i32 %.2.ph, 4                      ; 7 uses
  %i.ch = and i32 %.2.ph, 15
  switch i32 %i.ch, label %bb.o [
    i32 0, label %bb.t
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 121, ptr %i.cj, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !58
  call void %i.cl(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cm = icmp slt i32 %.4141.ph, 1
  br i1 %i.cm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cn = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.4146.ph, i32 noundef %.4141.ph, i32 noundef 1) #5
  %.not195 = icmp eq i32 %i.cn, 0
  br i1 %.not195, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load i64, ptr %i.bj, align 8, !tbaa !94
  %i.cp = load i32, ptr %i.bk, align 8, !tbaa !95
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.5147 = phi i64 [ %i.co, %bb.r ], [ %.4146.ph, %bb.p ] ; 2 uses
  %.5 = phi i32 [ %i.cp, %bb.r ], [ %.4141.ph, %bb.p ]
  %i.cq = add nsw i32 %.5, -1                     ; 2 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %.5147
  %.not196 = icmp eq i64 %i.ct, 0
  %. = select i1 %.not196, i32 %i.i, i32 %i.h
  br label %bb.z

bb.t:                                             ; preds = %bb.n
  %.not186 = icmp eq i32 %i.cg, 15
  br i1 %.not186, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = shl nuw i32 1, %i.cg                    ; 2 uses
  %.not187 = icmp eq i32 %i.cg, 0
  br i1 %.not187, label %.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp slt i32 %.4141.ph, %i.cg
  br i1 %i.cv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cw = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.4146.ph, i32 noundef %.4141.ph, i32 noundef %i.cg) #5
  %.not188 = icmp eq i32 %i.cw, 0
  br i1 %.not188, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.bj, align 8, !tbaa !94
  %i.cy = load i32, ptr %i.bk, align 8, !tbaa !95
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.6148 = phi i64 [ %i.cx, %bb.x ], [ %.4146.ph, %bb.v ] ; 2 uses
  %.6 = phi i32 [ %i.cy, %bb.x ], [ %.4141.ph, %bb.v ]
  %i.cz = sub nsw i32 %.6, %i.cg                  ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 %.6148, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add nsw i32 %i.cu, -1
  %i.de = and i32 %i.dd, %i.dc
  %i.df = add nuw i32 %i.de, %i.cu
  br label %.preheader

bb.z:                                             ; preds = %bb.s, %bb.t
  %.7149 = phi i64 [ %.5147, %bb.s ], [ %.4146.ph, %bb.t ]
  %.7 = phi i32 [ %i.cq, %bb.s ], [ %.4141.ph, %bb.t ]
  %.3 = phi i32 [ %., %bb.s ], [ 0, %bb.t ]       ; 2 uses
  %i.dg = sext i32 %.0132237 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ %i.dg, %bb.z ] ; 3 uses
  %.0159 = phi i32 [ %.1160, %bb.ah ], [ %i.cg, %bb.z ] ; 5 uses
  %.8150 = phi i64 [ %.10152, %bb.ah ], [ %.7149, %bb.z ] ; 4 uses
  %.8 = phi i32 [ %.10, %bb.ah ], [ %.7, %bb.z ]  ; 5 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.dj ; 3 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !96
  %.not197 = icmp eq i16 %i.dl, 0
  br i1 %.not197, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = icmp slt i32 %.8, 1
  br i1 %i.dm, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dn = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.8150, i32 noundef %.8, i32 noundef 1) #5
  %.not198 = icmp eq i32 %i.dn, 0
  br i1 %.not198, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = load i64, ptr %i.bj, align 8, !tbaa !94
  %i.dp = load i32, ptr %i.bk, align 8, !tbaa !95
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.9151 = phi i64 [ %i.do, %bb.ad ], [ %.8150, %bb.ab ] ; 4 uses
  %.9 = phi i32 [ %i.dp, %bb.ad ], [ %.8, %bb.ab ]
  %i.dq = add nsw i32 %.9, -1                     ; 4 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %.9151
  %.not199 = icmp eq i64 %i.dt, 0
  br i1 %.not199, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load i16, ptr %i.dk, align 2, !tbaa !96 ; 3 uses
  %i.dv = sext i16 %i.du to i32
  %i.dw = and i32 %i.h, %i.dv
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %.sink.split, label %bb.ah

.sink.split:                                      ; preds = %bb.af
  %i.dy = icmp slt i16 %i.du, 0
  %.328.v = select i1 %i.dy, i32 %i.bm, i32 %i.h
  %.328 = trunc i32 %.328.v to i16
  %i.dz = add i16 %i.du, %.328
  store i16 %i.dz, ptr %i.dk, align 2, !tbaa !96
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.ea = add nsw i32 %.0159, -1
  %i.eb = icmp slt i32 %.0159, 1
  br i1 %i.eb, label %.split.loop.exit321, label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag, %bb.ae, %bb.af
  %.1160 = phi i32 [ %.0159, %bb.ae ], [ %i.ea, %bb.ag ], [ %.0159, %bb.af ], [ %.0159, %.sink.split ]
  %.10152 = phi i64 [ %.9151, %bb.ae ], [ %.8150, %bb.ag ], [ %.9151, %bb.af ], [ %.9151, %.sink.split ] ; 2 uses
  %.10 = phi i32 [ %i.dq, %bb.ae ], [ %.8, %bb.ag ], [ %i.dq, %bb.af ], [ %i.dq, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.not200 = icmp sgt i64 %indvars.iv.next, %3
  br i1 %.not200, label %.split.loop.exit321, label %bb.aa, !llvm.loop !100

.split.loop.exit321:                              ; preds = %bb.ag, %bb.ah
  %.11153 = phi i64 [ %.10152, %bb.ah ], [ %.8150, %bb.ag ] ; 2 uses
  %.11 = phi i32 [ %.10, %bb.ah ], [ %.8, %bb.ag ] ; 2 uses
  %.2134.in = phi i64 [ %indvars.iv.next, %bb.ah ], [ %indvars.iv, %bb.ag ] ; 2 uses
  %.2134 = trunc i64 %.2134.in to i32
  %.not201 = icmp eq i32 %.3, 0
  br i1 %.not201, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.split.loop.exit321
  %sext = shl i64 %.2134.in, 32
  %4 = ashr exact i64 %sext, 30
  %5 = getelementptr inbounds i8, ptr @jpeg_natural_order, i64 %4
  %i.ec = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.ed = trunc i32 %.3 to i16
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.ee
  store i16 %i.ed, ptr %i.ef, align 2, !tbaa !96
  %i.eg = add nsw i32 %.0128238, 1
  %i.eh = sext i32 %.0128238 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh
  store i32 %i.ec, ptr %i.ei, align 4, !tbaa !3
  br label %bb.aj

bb.aj:                                            ; preds = %.split.loop.exit321, %bb.ai
  %.1129 = phi i32 [ %i.eg, %bb.ai ], [ %.0128238, %.split.loop.exit321 ]
  %i.ej = add nsw i32 %.2134, 1                   ; 2 uses
  %.not183 = icmp sgt i32 %i.ej, %i.e
  br i1 %.not183, label %.loopexit215.thread300, label %bb.g, !llvm.loop !101

.loopexit215:                                     ; preds = %bb.f
  %.not189 = icmp eq i32 %i.bc, 0
  br i1 %.not189, label %.loopexit215.thread300, label %.preheader

.preheader:                                       ; preds = %bb.u, %bb.y, %.loopexit215
  %.2130299 = phi i32 [ 0, %.loopexit215 ], [ %.0128238, %bb.y ], [ %.0128238, %bb.u ]
  %.3135298 = phi i32 [ %i.bh, %.loopexit215 ], [ %.0132237, %bb.y ], [ %.0132237, %bb.u ] ; 2 uses
  %.12297 = phi i32 [ %i.ba, %.loopexit215 ], [ %i.cz, %bb.y ], [ %.4141.ph, %bb.u ] ; 2 uses
  %.12154296 = phi i64 [ %i.ay, %.loopexit215 ], [ %.6148, %bb.y ], [ %.4146.ph, %bb.u ] ; 2 uses
  %.0161295 = phi i32 [ %i.bc, %.loopexit215 ], [ %i.df, %bb.y ], [ 1, %bb.u ]
  %.not190242 = icmp sgt i32 %.3135298, %i.e
  br i1 %.not190242, label %._crit_edge, label %.lr.ph246

.lr.ph246:                                        ; preds = %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.em = shl i32 65535, %i.g
  %i.en = sext i32 %.3135298 to i64
  %6 = sext i32 %i.e to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph246, %bb.aq
  %indvars.iv269 = phi i64 [ %i.en, %.lr.ph246 ], [ %indvars.iv.next270, %bb.aq ] ; 2 uses
  %.13244 = phi i32 [ %.12297, %.lr.ph246 ], [ %.15, %bb.aq ] ; 4 uses
  %.13155243 = phi i64 [ %.12154296, %.lr.ph246 ], [ %.15157, %bb.aq ] ; 3 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv269
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.eq ; 3 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !96
  %.not191 = icmp eq i16 %i.es, 0
  br i1 %.not191, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = icmp slt i32 %.13244, 1
  br i1 %i.et, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.eu = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.13155243, i32 noundef %.13244, i32 noundef 1) #5
  %.not192 = icmp eq i32 %i.eu, 0
  br i1 %.not192, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ev = load i64, ptr %i.ek, align 8, !tbaa !94
  %i.ew = load i32, ptr %i.el, align 8, !tbaa !95
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.14156 = phi i64 [ %i.ev, %bb.an ], [ %.13155243, %bb.al ] ; 4 uses
  %.14 = phi i32 [ %i.ew, %bb.an ], [ %.13244, %bb.al ]
  %i.ex = add nsw i32 %.14, -1                    ; 4 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %.14156
  %.not193 = icmp eq i64 %i.fa, 0
  br i1 %.not193, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = load i16, ptr %i.er, align 2, !tbaa !96 ; 3 uses
  %i.fc = sext i16 %i.fb to i32
  %i.fd = and i32 %i.h, %i.fc
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.sink.split326, label %bb.aq

.sink.split326:                                   ; preds = %bb.ap
  %i.ff = icmp slt i16 %i.fb, 0
  %.329.v = select i1 %i.ff, i32 %i.em, i32 %i.h
  %.329 = trunc i32 %.329.v to i16
  %i.fg = add i16 %i.fb, %.329
  store i16 %i.fg, ptr %i.er, align 2, !tbaa !96
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split326, %bb.ak, %bb.ap, %bb.ao
  %.15157 = phi i64 [ %.14156, %bb.ao ], [ %.13155243, %bb.ak ], [ %.14156, %bb.ap ], [ %.14156, %.sink.split326 ] ; 2 uses
  %.15 = phi i32 [ %i.ex, %bb.ao ], [ %.13244, %bb.ak ], [ %i.ex, %bb.ap ], [ %i.ex, %.sink.split326 ] ; 2 uses
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, 1 ; 2 uses
  %.not190 = icmp sgt i64 %indvars.iv.next270, %6
  br i1 %.not190, label %._crit_edge, label %bb.ak, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.aq, %.preheader
  %.13155.lcssa = phi i64 [ %.12154296, %.preheader ], [ %.15157, %bb.aq ]
  %.13.lcssa = phi i32 [ %.12297, %.preheader ], [ %.15, %bb.aq ]
  %i.fh = add i32 %.0161295, -1
  br label %.loopexit215.thread300

.loopexit215.thread300:                           ; preds = %bb.aj, %._crit_edge, %.loopexit215
  %.1162 = phi i32 [ %i.fh, %._crit_edge ], [ 0, %.loopexit215 ], [ 0, %bb.aj ]
  %.16158 = phi i64 [ %.13155.lcssa, %._crit_edge ], [ %i.ay, %.loopexit215 ], [ %.11153, %bb.aj ]
  %.16 = phi i32 [ %.13.lcssa, %._crit_edge ], [ %i.ba, %.loopexit215 ], [ %.11, %bb.aj ]
  %i.fi = load ptr, ptr %2, align 8, !tbaa !87
  %i.fj = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !85
  %i.fk = load i64, ptr %i.aw, align 8, !tbaa !89
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !88
  store i64 %.16158, ptr %i.ax, align 8, !tbaa !69
  store i32 %.16, ptr %i.az, align 8, !tbaa !68
  store i32 %.1162, ptr %i.bb, align 8, !tbaa !71
  %.pre = load i32, ptr %i.j, align 4, !tbaa !72
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit215.thread300, %process_restart.exit.thread
  %i.fm = phi i32 [ %.pre, %.loopexit215.thread300 ], [ %i.an, %process_restart.exit.thread ]
  %.not202 = icmp eq i32 %i.fm, 0
  br i1 %.not202, label %process_restart.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !73
  %i.fp = add i32 %i.fo, -1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !73
  br label %process_restart.exit

.loopexit:                                        ; preds = %bb.h, %bb.l, %bb.q, %bb.ac, %bb.am, %bb.w
  %.3131 = phi i32 [ %.0128238, %bb.ac ], [ %.0128238, %bb.w ], [ %.2130299, %bb.am ], [ %.0128238, %bb.q ], [ %.0128238, %bb.l ], [ %.0128238, %bb.h ] ; 3 uses
  %i.fq = icmp sgt i32 %.3131, 0
  br i1 %i.fq, label %.lr.ph251.preheader, label %process_restart.exit

.lr.ph251.preheader:                              ; preds = %.loopexit
  %i.fr = zext nneg i32 %.3131 to i64             ; 3 uses
  %xtraiter = and i64 %i.fr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol

.lr.ph251.prol:                                   ; preds = %.lr.ph251.preheader, %.lr.ph251.prol
  %indvars.iv273.prol = phi i64 [ %indvars.iv.next274.prol, %.lr.ph251.prol ], [ %i.fr, %.lr.ph251.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph251.prol ], [ 0, %.lr.ph251.preheader ]
  %indvars.iv.next274.prol = add nsw i64 %indvars.iv273.prol, -1 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next274.prol
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.fu
  store i16 0, ptr %i.fv, align 2, !tbaa !96
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol, !llvm.loop !103

.lr.ph251.prol.loopexit:                          ; preds = %.lr.ph251.prol, %.lr.ph251.preheader
  %indvars.iv273.unr = phi i64 [ %i.fr, %.lr.ph251.preheader ], [ %indvars.iv.next274.prol, %.lr.ph251.prol ]
  %i.fw = icmp ult i32 %.3131, 4
  br i1 %i.fw, label %process_restart.exit, label %.lr.ph251

.lr.ph251:                                        ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251
  %indvars.iv273 = phi i64 [ %indvars.iv.next274.3, %.lr.ph251 ], [ %indvars.iv273.unr, %.lr.ph251.prol.loopexit ] ; 5 uses
  %i.fx = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv273
  %i.fy = getelementptr i8, ptr %i.fx, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.ga
  store i16 0, ptr %i.gb, align 2, !tbaa !96
  %i.gc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv273
  %i.gd = getelementptr i8, ptr %i.gc, i64 -8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.gf
  store i16 0, ptr %i.gg, align 2, !tbaa !96
  %i.gh = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv273
  %i.gi = getelementptr i8, ptr %i.gh, i64 -12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.gk
  store i16 0, ptr %i.gl, align 2, !tbaa !96
  %indvars.iv.next274.3 = add nsw i64 %indvars.iv273, -4 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next274.3
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.go
  store i16 0, ptr %i.gp, align 2, !tbaa !96
  %i.gq = icmp sgt i64 %indvars.iv273, 4
  br i1 %i.gq, label %.lr.ph251, label %process_restart.exit, !llvm.loop !105

process_restart.exit:                             ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251, %.loopexit, %bb.c, %bb.ar, %bb.as
  %.0 = phi i32 [ 1, %bb.ar ], [ 0, %bb.c ], [ 1, %bb.as ], [ 0, %.loopexit ], [ 0, %.lr.ph251 ], [ 0, %.lr.ph251.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %.0
}

declare void @jpeg_make_d_derived_tbl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!33, !10, i64 0}
!33 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !34, i64 88, !34, i64 96}
!34 = !{!"long", !5, i64 0}
!35 = !{!8, !27, i64 616}
!36 = !{!37, !10, i64 0}
!37 = !{!"", !38, i64 0, !39, i64 40, !40, i64 56, !4, i64 76, !5, i64 80, !10, i64 112}
!38 = !{!"jpeg_entropy_decoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!39 = !{!"", !34, i64 0, !4, i64 8}
!40 = !{!"", !4, i64 0, !5, i64 4}
!41 = !{!10, !10, i64 0}
!42 = !{!8, !4, i64 56}
!43 = !{!8, !17, i64 192}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!8, !4, i64 532}
!47 = !{!8, !4, i64 536}
!48 = !{!8, !4, i64 440}
!49 = !{!8, !4, i64 540}
!50 = !{!8, !4, i64 544}
!51 = !{!8, !9, i64 0}
!52 = !{!53, !4, i64 40}
!53 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !34, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!54 = !{!5, !5, i64 0}
!55 = !{!53, !10, i64 0}
!56 = !{!57, !4, i64 4}
!57 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!58 = !{!53, !10, i64 8}
!59 = !{!8, !4, i64 172}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = !{!37, !10, i64 8}
!64 = !{!57, !4, i64 20}
!65 = distinct !{!65, !45}
!66 = !{!57, !4, i64 24}
!67 = !{!37, !10, i64 112}
!68 = !{!37, !4, i64 48}
!69 = !{!37, !34, i64 40}
!70 = !{!37, !4, i64 32}
!71 = !{!37, !4, i64 56}
!72 = !{!8, !4, i64 372}
!73 = !{!37, !4, i64 76}
!74 = !{!8, !26, i64 608}
!75 = !{!76, !4, i64 36}
!76 = !{!"jpeg_marker_reader", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36}
!77 = !{!76, !10, i64 16}
!78 = distinct !{null}
!79 = distinct !{!79, !45}
!80 = !{!8, !4, i64 564}
!81 = !{!82, !83, i64 32}
!82 = !{!"", !20, i64 0, !34, i64 8, !34, i64 16, !4, i64 24, !83, i64 32}
!83 = !{!"p1 _ZTS22jpeg_decompress_struct", !10, i64 0}
!84 = !{!8, !13, i64 40}
!85 = !{!86, !20, i64 0}
!86 = !{!"jpeg_source_mgr", !20, i64 0, !34, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!87 = !{!82, !20, i64 0}
!88 = !{!86, !34, i64 8}
!89 = !{!82, !34, i64 8}
!90 = !{i64 0, i64 4, !3, i64 4, i64 16, !54}
!91 = !{!8, !4, i64 488}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 short", !10, i64 0}
!94 = !{!82, !34, i64 16}
!95 = !{!82, !4, i64 24}
!96 = !{!18, !18, i64 0}
!97 = distinct !{!97, !45}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45}
!100 = distinct !{!100, !45}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !45}
end_hunk_1
