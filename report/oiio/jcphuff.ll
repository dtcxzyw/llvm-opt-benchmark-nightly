inline.NumInlined: 23
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@jpeg_nbits_table = external local_unnamed_addr constant [65536 x i8], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_phuff_encoder(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 1, i64 noundef 208) #7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.d, ptr %i.e, align 8, !tbaa !29
  store ptr @start_pass_phuff, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr null, ptr %i.g, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %1, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = icmp eq i32 %i.f, 0                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select = select i1 %i.g, ptr @encode_mcu_DC_first, ptr @encode_mcu_AC_first
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @encode_mcu_AC_first_prepare, ptr %i.l, align 8, !tbaa !41
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @encode_mcu_DC_refine, ptr %i.m, align 8, !tbaa !40
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store ptr @encode_mcu_AC_refine, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @encode_mcu_AC_refine_prepare, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1000) #7
  store ptr %i.u, ptr %i.o, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.not = icmp eq i32 %1, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store ptr @finish_pass_phuff, ptr %i.v, align 8, !tbaa !43
  %i.x = load i32, ptr %i.w, align 8, !tbaa !44
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split.us, label %._crit_edge

.thread:                                          ; preds = %bb.g
  store ptr @finish_pass_gather_phuff, ptr %i.v, align 8, !tbaa !43
  %i.z = load i32, ptr %i.w, align 8, !tbaa !44
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.split, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.j ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv78
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv78
  store i32 0, ptr %i.ah, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !39
  %.not63.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not63.us.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !46 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.ak, ptr noundef nonnull %i.am) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split.us
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.an = load i32, ptr %i.w, align 8, !tbaa !44
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next79, %i.ao
  br i1 %i.ap, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !48

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv75
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv75
  store i32 0, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  store i32 %i.au, ptr %i.ad, align 8, !tbaa !51
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.av
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.au, ptr noundef nonnull %i.aw) #7
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.ax = load i32, ptr %i.w, align 8, !tbaa !44
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next76, %i.ay
  br i1 %i.az, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !48

.lr.ph.split:                                     ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.p
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.p ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv72
  store i32 0, ptr %i.bh, align 4, !tbaa !3
  %i.bi = load i32, ptr %i.h, align 4, !tbaa !39
  %.not63.us66 = icmp eq i32 %i.bi, 0
  br i1 %.not63.us66, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46 ; 3 uses
  %or.cond.us = icmp ugt i32 %i.bk, 3
  br i1 %or.cond.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 52, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !57
  %i.bo = load ptr, ptr %0, align 8, !tbaa !52
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  tail call void %i.bp(ptr noundef nonnull %0) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = sext i32 %i.bk to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !7
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.bw = tail call ptr %i.bv(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #7 ; 2 uses
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bx = phi ptr [ %i.bw, %bb.n ], [ %i.bs, %bb.m ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %i.bx, i8 0, i64 2056, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.split.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.by = load i32, ptr %i.w, align 8, !tbaa !44
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next73, %i.bz
  br i1 %i.ca, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !48

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  store i32 0, ptr %i.cd, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !50 ; 4 uses
  store i32 %i.cf, ptr %i.bc, align 8, !tbaa !51
  %or.cond = icmp ugt i32 %i.cf, 3
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split
  %i.cg = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i32 52, ptr %i.ch, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !57
  %i.cj = load ptr, ptr %0, align 8, !tbaa !52
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  tail call void %i.ck(ptr noundef nonnull %0) #7
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split, %bb.q
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.be, align 8, !tbaa !7
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26
  %i.cr = tail call ptr %i.cq(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #7 ; 2 uses
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !59
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = phi ptr [ %i.cr, %bb.s ], [ %i.cn, %bb.r ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %i.cs, i8 0, i64 2056, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.w, align 8, !tbaa !44
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.t, %bb.p, %.lr.ph.split.us.split, %bb.j, %.thread, %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.cw, align 4, !tbaa !61
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.cx, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.cy, align 8, !tbaa !63
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 0, ptr %i.cz, align 8, !tbaa !64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.db = load i32, ptr %i.da, align 4, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 0, ptr %i.dd, align 4, !tbaa !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_first(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !76
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = add nsw i32 %i.f, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = load i16, ptr %i.af, align 2, !tbaa !79
  %i.am = sext i16 %i.al to i32
  %i.an = ashr i32 %i.am, %i.d                    ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ai ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sub nsw i32 %i.an, %i.ap                ; 2 uses
end_hunk_0
