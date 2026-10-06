Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jcphuff?download=true
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = tail call ptr %i.c(ptr noundef %0, i32 noundef 1, i64 noundef 208) #7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.d, ptr %i.e, align 8, !tbaa !32
  store ptr @start_pass_phuff, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr null, ptr %i.g, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %0, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %1, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = icmp eq i32 %i.f, 0                      ; 5 uses
  %i.h = zext i1 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select = select i1 %i.g, ptr @encode_mcu_DC_first, ptr @encode_mcu_AC_first
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @encode_mcu_AC_first_prepare, ptr %i.m, align 8, !tbaa !42
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @encode_mcu_DC_refine, ptr %i.n, align 8, !tbaa !85
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store ptr @encode_mcu_AC_refine, ptr %i.n, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @encode_mcu_AC_refine_prepare, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = tail call ptr %i.u(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1000) #7
  store ptr %i.v, ptr %i.p, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.not = icmp eq i32 %1, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store ptr @finish_pass_phuff, ptr %i.w, align 8, !tbaa !86
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.split.us, label %._crit_edge

.thread:                                          ; preds = %bb.g
  store ptr @finish_pass_gather_phuff, ptr %i.w, align 8, !tbaa !86
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !44
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.split, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.j ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv78
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv78
  store i32 0, ptr %i.ai, align 4, !tbaa !9
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !41
  %.not63.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not63.us.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef %i.al, ptr noundef nonnull %i.an) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split.us
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !44
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next79, %i.ap
  br i1 %i.aq, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !84

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv75
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv75
  store i32 0, ptr %i.at, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87 ; 3 uses
  store i32 %i.av, ptr %i.ae, align 8, !tbaa !49
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aw
  tail call void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef %i.av, ptr noundef nonnull %i.ax) #7
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.ay = load i32, ptr %i.x, align 8, !tbaa !44
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next76, %i.az
  br i1 %i.ba, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.p
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.p ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv72
  store i32 0, ptr %i.bi, align 4, !tbaa !9
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !41
  %.not63.us66 = icmp eq i32 %i.bj, 0
  br i1 %.not63.us66, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47 ; 3 uses
  %or.cond.us = icmp ugt i32 %i.bl, 3
  br i1 %or.cond.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 52, ptr %i.bn, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !55
  %i.bp = load ptr, ptr %0, align 8, !tbaa !50
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  tail call void %i.bq(ptr noundef nonnull %0) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = sext i32 %i.bl to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = tail call ptr %i.bw(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #7 ; 2 uses
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.by = phi ptr [ %i.bx, %bb.n ], [ %i.bt, %bb.m ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %i.by, i8 0, i64 2056, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.split.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.bz = load i32, ptr %i.x, align 8, !tbaa !44
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next73, %i.ca
  br i1 %i.cb, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !84

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !45
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 0, ptr %i.ce, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !87 ; 4 uses
  store i32 %i.cg, ptr %i.bd, align 8, !tbaa !49
  %or.cond = icmp ugt i32 %i.cg, 3
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split
  %i.ch = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i32 52, ptr %i.ci, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i32 %i.cg, ptr %i.cj, align 4, !tbaa !55
  %i.ck = load ptr, ptr %0, align 8, !tbaa !50
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !56
  tail call void %i.cl(ptr noundef nonnull %0) #7
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split, %bb.q
  %i.cm = sext i32 %i.cg to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = tail call ptr %i.cr(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #7 ; 2 uses
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !58
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = phi ptr [ %i.cs, %bb.s ], [ %i.co, %bb.r ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %i.ct, i8 0, i64 2056, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr %i.x, align 8, !tbaa !44
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.t, %bb.p, %.lr.ph.split.us.split, %bb.j, %.thread, %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.cx, align 4, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.cy, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.cz, align 8, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 0, ptr %i.da, align 8, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 0, ptr %i.de, align 4, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_first(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = load i16, ptr %i.af, align 2, !tbaa !77
  %i.am = sext i16 %i.al to i32
  %i.an = ashr i32 %i.am, %i.d                    ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ai ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = sub nsw i32 %i.an, %i.ap                ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !9
  %i.ar = ashr i32 %i.aq, 31                      ; 3 uses
  %i.as = xor i32 %i.ar, %i.aq
  %i.at = sub nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = xor i32 %i.at, %i.ar
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !55  ; 3 uses
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = icmp slt i32 %i.aa, %i.ay
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 6, ptr %i.bb, align 8, !tbaa !54
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !56
  tail call void %i.bc(ptr noundef nonnull %0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.bf, 0
  %i.bg = sext i32 %i.be to i64                   ; 2 uses
  %i.bh = zext i8 %i.ax to i64                    ; 3 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !78
  %i.bm = add nsw i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !78
  br label %emit_symbol.exit

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bh
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1024
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bh
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !55
  %i.bu = sext i8 %i.bt to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.bq, i32 noundef %i.bu)
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %bb.h, %bb.i
  %.not61 = icmp eq i8 %i.ax, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %emit_symbol.exit
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.au, i32 noundef %i.ay)
  br label %bb.k

bb.k:                                             ; preds = %emit_symbol.exit, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.u, align 8, !tbaa !74
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.e, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !70
  %i.ca = load i64, ptr %i.m, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !72
  %i.cc = load i32, ptr %i.n, align 4, !tbaa !63  ; 2 uses
  %.not60 = icmp eq i32 %i.cc, 0
  br i1 %.not60, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !64 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !65
  %i.ci = add nsw i32 %i.ch, 1
  %i.cj = and i32 %i.ci, 7
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = phi i32 [ %i.cc, %bb.m ], [ %i.ce, %bb.l ]
  %i.cl = add i32 %i.ck, -1
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_first(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [143 x i16], align 16             ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40   ; 3 uses
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !67
  %i.o = add nsw i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 8 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 8 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.d, i32 noundef %i.ac)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.ad = phi i32 [ %i.h, %bb.b ], [ %.pre, %bb.c ], [ %i.h, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = load ptr, ptr %1, align 8, !tbaa !76
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.ah
  call void %i.af(ptr noundef %i.ag, ptr noundef nonnull %i.ai, i32 noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %cond = icmp eq i64 %i.aj, 0
  br i1 %cond, label %._crit_edge79, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59
  %.not62 = icmp eq i32 %i.al, 0
  br i1 %.not62, label %.lr.ph78, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @emit_eobrun(ptr noundef nonnull %i.d)
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.e, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph78, %emit_symbol.exit66
  %.076 = phi ptr [ %i.a, %.lr.ph78 ], [ %i.fn, %emit_symbol.exit66 ]
  %.07075 = phi i64 [ %i.aj, %.lr.ph78 ], [ %i.fo, %emit_symbol.exit66 ] ; 2 uses
  %i.at = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.07075, i1 true) ; 4 uses
  %i.au = trunc nuw nsw i64 %i.at to i32          ; 4 uses
  %i.av = lshr exact i64 %.07075, %i.at
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.076, i64 %i.at ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !77
  %i.ba = zext i16 %i.az to i32
  %i.bb = icmp samesign ugt i64 %i.at, 15
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.bc = load i32, ptr %i.an, align 8, !tbaa !39
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.be = load i32, ptr %i.am, align 8, !tbaa !49
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1920 ; 2 uses
  %.promoted = load i64, ptr %i.bi, align 8, !tbaa !78
  %i.bj = add i64 %.promoted, 1
  %2 = call i32 @llvm.usub.sat.i32(i32 %i.au, i32 31)
  %3 = add nuw nsw i32 %2, 15                     ; 2 uses
  %4 = lshr i32 %3, 4
  %5 = zext nneg i32 %4 to i64
  %i.bk = add i64 %i.bj, %5
  %6 = add nsw i32 %i.au, -16
  %i.bl = and i32 %3, 112
  %7 = sub nsw i32 %6, %i.bl
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !78
  br label %._crit_edge

.lr.ph.splitthread-pre-split:                     ; preds = %emit_symbol.exit
  %.pr = load i32, ptr %i.an, align 8, !tbaa !39
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bm = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %.05972 = phi i32 [ %i.ek, %.lr.ph.splitthread-pre-split ], [ %i.au, %.lr.ph ] ; 2 uses
  %i.bn = load i32, ptr %i.am, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1920 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !78
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !78
  br label %emit_symbol.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bo
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 960
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1264
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !55  ; 2 uses
  %i.ca = sext i8 %i.bz to i32                    ; 2 uses
  %i.cb = zext i32 %i.bx to i64
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !62
  %i.cd = icmp eq i8 %i.bz, 0
  br i1 %i.cd, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 41, ptr %i.cg, align 8, !tbaa !54
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !56
  call void %i.ch(ptr noundef nonnull %i.ce) #7, !inline_history !80
  %.pre86 = load i32, ptr %i.an, align 8, !tbaa !39
  %i.ci = icmp eq i32 %.pre86, 0
  br i1 %i.ci, label %.thread, label %emit_symbol.exit

.thread:                                          ; preds = %bb.i, %bb.j
  %i.cj = zext nneg i32 %i.ca to i64
  %notmask.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i, -1
  %i.cl = and i64 %i.ck, %i.cb
  %i.cm = add nsw i32 %i.cc, %i.ca                ; 4 uses
  %i.cn = sub nsw i32 24, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl i64 %i.cl, %i.co
  %i.cq = load i64, ptr %i.as, align 8, !tbaa !61
  %i.cr = or i64 %i.cq, %i.cp                     ; 2 uses
  %i.cs = icmp sgt i32 %i.cm, 7
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread, %bb.q
  %.034.i = phi i32 [ %i.ei, %bb.q ], [ %i.cm, %.thread ] ; 2 uses
  %.03033.i = phi i64 [ %i.eh, %bb.q ], [ %i.cr, %.thread ] ; 3 uses
  %i.ct = lshr i64 %.03033.i, 16
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.s, align 8, !tbaa !71
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !55
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !73
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.v, align 8, !tbaa !73
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i
  %i.da = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !68 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.df = call i32 %i.de(ptr noundef %i.da) #7, !inline_history !0
  %.not.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i, label %bb.l, label %dump_buffer.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i32 25, ptr %i.di, align 8, !tbaa !54
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !56
  call void %i.dj(ptr noundef nonnull %i.dg) #7, !inline_history !0
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.l, %bb.k
  %i.dk = load ptr, ptr %i.dc, align 8, !tbaa !70
  store ptr %i.dk, ptr %i.s, align 8, !tbaa !71
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !72
  store i64 %i.dm, ptr %i.v, align 8, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %dump_buffer.exit.i, %.lr.ph.i
  %i.dn = and i64 %.03033.i, 16711680
  %i.do = icmp eq i64 %i.dn, 16711680
  br i1 %i.do, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.dq, ptr %i.s, align 8, !tbaa !71
  store i8 0, ptr %i.dp, align 1, !tbaa !55
  %i.dr = load i64, ptr %i.v, align 8, !tbaa !73
  %i.ds = add i64 %i.dr, -1                       ; 2 uses
  store i64 %i.ds, ptr %i.v, align 8, !tbaa !73
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.du = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !68 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !81
  %i.dz = call i32 %i.dy(ptr noundef %i.du) #7, !inline_history !0
  %.not.i31.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i31.i, label %bb.p, label %dump_buffer.exit32.i

bb.p:                                             ; preds = %bb.o
  %i.ea = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store i32 25, ptr %i.ec, align 8, !tbaa !54
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !56
  call void %i.ed(ptr noundef nonnull %i.ea) #7, !inline_history !0
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.p, %bb.o
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !70
  store ptr %i.ee, ptr %i.s, align 8, !tbaa !71
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !72
  store i64 %i.eg, ptr %i.v, align 8, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %dump_buffer.exit32.i, %bb.n, %bb.m
  %i.eh = shl i64 %.03033.i, 8                    ; 2 uses
  %i.ei = add nsw i32 %.034.i, -8                 ; 2 uses
  %i.ej = icmp sgt i32 %.034.i, 15
  br i1 %i.ej, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.q, %.thread
  %.030.lcssa.i = phi i64 [ %i.cr, %.thread ], [ %i.eh, %bb.q ]
  %.0.lcssa.i = phi i32 [ %i.cm, %.thread ], [ %i.ei, %bb.q ]
  store i64 %.030.lcssa.i, ptr %i.as, align 8, !tbaa !61
  store i32 %.0.lcssa.i, ptr %i.aq, align 8, !tbaa !62
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %._crit_edge.i, %bb.j, %bb.h
  %i.ek = add nsw i32 %.05972, -16                ; 2 uses
  %i.el = icmp sgt i32 %.05972, 31
  br i1 %i.el, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %emit_symbol.exit, %.lr.ph.split.us, %bb.g
  %.059.lcssa = phi i32 [ %i.au, %bb.g ], [ %7, %.lr.ph.split.us ], [ %i.ek, %emit_symbol.exit ]
  %i.em = zext i16 %i.ax to i64
  %i.en = getelementptr inbounds nuw i8, ptr @jpeg_nbits_table, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !55
  %i.ep = zext i8 %i.eo to i32                    ; 3 uses
  %i.eq = icmp slt i32 %i.o, %i.ep
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.er = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store i32 6, ptr %i.es, align 8, !tbaa !54
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !56
  call void %i.et(ptr noundef nonnull %0) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.eu = load i32, ptr %i.am, align 8, !tbaa !49
  %i.ev = shl nuw nsw i32 %.059.lcssa, 4
  %i.ew = add nuw nsw i32 %i.ev, %i.ep
  %i.ex = load i32, ptr %i.an, align 8, !tbaa !39
  %.not.i65 = icmp eq i32 %i.ex, 0
  %i.ey = sext i32 %i.eu to i64                   ; 2 uses
  %i.ez = zext nneg i32 %i.ew to i64              ; 3 uses
  br i1 %.not.i65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ey
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !78
  %i.fe = add nsw i64 %i.fd, 1
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !78
  br label %emit_symbol.exit66

bb.u:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ey
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !45 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ez
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1024
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.ez
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !55
  %i.fm = sext i8 %i.fl to i32
  call fastcc void @emit_bits(ptr noundef nonnull %i.d, i32 noundef %i.fi, i32 noundef %i.fm)
  br label %emit_symbol.exit66

emit_symbol.exit66:                               ; preds = %bb.t, %bb.u
  call fastcc void @emit_bits(ptr noundef nonnull %i.d, i32 noundef %i.ba, i32 noundef %i.ep)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  %i.fo = lshr i64 %i.av, 1                       ; 2 uses
  %.not63 = icmp eq i64 %i.fo, 0
  br i1 %.not63, label %._crit_edge79, label %bb.g, !llvm.loop !90

._crit_edge79:                                    ; preds = %emit_symbol.exit66, %bb.d
  %.0.lcssa = phi ptr [ %i.a, %bb.d ], [ %i.fn, %emit_symbol.exit66 ]
  %i.fp = sext i32 %i.j to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fp
  %i.fr = icmp ult ptr %.0.lcssa, %i.fq
  br i1 %i.fr, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge79
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !59
  %i.fu = add i32 %i.ft, 1                        ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !59
  %i.fv = icmp eq i32 %i.fu, 32767
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @emit_eobrun(ptr noundef nonnull %i.d)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %._crit_edge79
  %i.fw = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.fx = load ptr, ptr %i.p, align 8, !tbaa !68  ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !70
  %i.fy = load i64, ptr %i.v, align 8, !tbaa !73
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !72
  %i.ga = load i32, ptr %i.w, align 4, !tbaa !63  ; 2 uses
  %.not64 = icmp eq i32 %i.ga, 0
  br i1 %.not64, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !64 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !65
  %i.gg = add nsw i32 %i.gf, 1
  %i.gh = and i32 %i.gg, 7
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !65
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gi = phi i32 [ %i.ga, %bb.z ], [ %i.gc, %bb.y ]
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr %i.gb, align 8, !tbaa !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @encode_mcu_AC_first_prepare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.031 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %0, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !77   ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = sext i16 %i.f to i32                     ; 2 uses
  %i.i = ashr i32 %i.h, 31                        ; 3 uses
  %i.j = xor i32 %i.i, %i.h
  %i.k = sub nsw i32 %i.j, %i.i
  %i.l = ashr i32 %i.k, %3                        ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.l, %i.i
  %i.o = trunc i32 %i.l to i16
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  store i16 %i.o, ptr %i.p, align 2, !tbaa !77
  %i.q = trunc i32 %i.n to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store i16 %i.q, ptr %i.r, align 2, !tbaa !77
  %i.s = shl nuw i64 1, %indvars.iv
  %i.t = or i64 %i.s, %.031
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.lr.ph, %bb.c
  %.1 = phi i64 [ %.031, %.lr.ph ], [ %.031, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]
  store i64 %.0.lcssa, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !63
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.b, i32 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = load i16, ptr %i.w, align 2, !tbaa !77
  %i.y = sext i16 %i.x to i32
  %i.z = ashr i32 %i.y, %i.d
  tail call fastcc void @emit_bits(ptr noundef nonnull %i.b, i32 noundef %i.z, i32 noundef 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !68  ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !70
  %i.af = load i64, ptr %i.k, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !72
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !63  ; 2 uses
  %.not30 = icmp eq i32 %i.ah, 0
  br i1 %.not30, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !65
  %i.an = add nsw i32 %i.am, 1
  %i.ao = and i32 %i.an, 7
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %i.ah, %bb.f ], [ %i.aj, %bb.e ]
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [79 x i16], align 16              ; 7 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 23 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40   ; 3 uses
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 38 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 38 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !63
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.w = load i32, ptr %i.v, align 8, !tbaa !64
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65
  tail call fastcc void @emit_restart(ptr noundef nonnull %i.d, i32 noundef %i.z)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.aa = phi i32 [ %i.h, %bb.b ], [ %.pre, %bb.c ], [ %i.h, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %1, align 8, !tbaa !76
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.ae
  %i.ag = call i32 %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.af, i32 noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 5 uses
  %i.al = load i64, ptr %i.b, align 16, !tbaa !78 ; 2 uses
  %.not87183 = icmp eq i64 %i.al, 0
  br i1 %.not87183, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.ap = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 27 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 12 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph191, %.backedge
  %.0189 = phi i64 [ %i.an, %.lr.ph191 ], [ %.0.be, %.backedge ]
  %.079188 = phi ptr [ %i.a, %.lr.ph191 ], [ %i.oq, %.backedge ]
  %.080187 = phi i32 [ 0, %.lr.ph191 ], [ %.080.be, %.backedge ] ; 2 uses
  %.081186 = phi ptr [ %i.ar, %.lr.ph191 ], [ %.081.be, %.backedge ] ; 2 uses
  %.083185 = phi i32 [ 0, %.lr.ph191 ], [ %.083.be, %.backedge ]
  %.0166184 = phi i64 [ %i.al, %.lr.ph191 ], [ %.0166.be, %.backedge ] ; 2 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0166184, i1 true) ; 4 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = lshr exact i64 %.0166184, %i.ba
  %i.bd = add nuw nsw i32 %.083185, %i.bb         ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.079188, i64 %i.ba ; 3 uses
  %i.bf = lshr i64 %.0189, %i.ba                  ; 2 uses
  %i.bg = icmp ule ptr %i.be, %i.ai
  %i.bh = icmp sgt i32 %i.bd, 15
  %i.bi = select i1 %i.bh, i1 %i.bg, i1 false
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %emit_buffered_bits.exit
  %.1180 = phi i32 [ 0, %emit_buffered_bits.exit ], [ %.080187, %bb.e ] ; 2 uses
  %.182179 = phi ptr [ %i.oo, %emit_buffered_bits.exit ], [ %.081186, %bb.e ]
  %.184178 = phi i32 [ %i.on, %emit_buffered_bits.exit ], [ %i.bd, %bb.e ] ; 2 uses
  %i.bj = load i32, ptr %i.as, align 4, !tbaa !59 ; 2 uses
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %emit_eobrun.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !55  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -1                   ; 4 uses
  %i.bp = icmp ugt i8 %i.bm, 15
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 41, ptr %i.bs, align 8, !tbaa !54
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !56
  call void %i.bt(ptr noundef nonnull %i.bq) #7, !inline_history !98
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = load i32, ptr %i.au, align 8, !tbaa !49
  %i.bv = shl nsw i32 %i.bo, 4
  %i.bw = load i32, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bw, 0
  %i.bx = sext i32 %i.bu to i64                   ; 2 uses
  %i.by = sext i32 %i.bv to i64                   ; 3 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !58
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !78
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !78
  br label %emit_symbol.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bx
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.by
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 1024
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.by
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !55  ; 2 uses
  %i.cl = sext i8 %i.ck to i32                    ; 2 uses
  %i.cm = zext i32 %i.ch to i64
  %i.cn = load i32, ptr %i.ay, align 8, !tbaa !62
  %i.co = icmp eq i8 %i.ck, 0
  br i1 %i.co, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store i32 41, ptr %i.cr, align 8, !tbaa !54
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !56
  call void %i.cs(ptr noundef nonnull %i.cp) #7, !inline_history !80
  %.pre215 = load i32, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not.i113 = icmp eq i32 %.pre215, 0
  br i1 %.not.i113, label %.thread, label %emit_symbol.exit.i

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ct = zext nneg i32 %i.cl to i64
  %notmask.i114 = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i114, -1
  %i.cv = and i64 %i.cu, %i.cm
  %i.cw = add nsw i32 %i.cn, %i.cl                ; 4 uses
  %i.cx = sub nsw i32 24, %i.cw
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl i64 %i.cv, %i.cy
  %i.da = load i64, ptr %i.az, align 8, !tbaa !61
  %i.db = or i64 %i.da, %i.cz                     ; 2 uses
  %i.dc = icmp sgt i32 %i.cw, 7
  br i1 %i.dc, label %.lr.ph.i118, label %._crit_edge.i115

.lr.ph.i118:                                      ; preds = %.thread, %bb.r
  %.034.i119 = phi i32 [ %i.es, %bb.r ], [ %i.cw, %.thread ] ; 2 uses
  %.03033.i120 = phi i64 [ %i.er, %bb.r ], [ %i.db, %.thread ] ; 3 uses
  %i.dd = lshr i64 %.03033.i120, 16
  %i.de = trunc i64 %i.dd to i8
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %i.p, align 8, !tbaa !71
  store i8 %i.de, ptr %i.df, align 1, !tbaa !55
  %i.dh = load i64, ptr %i.s, align 8, !tbaa !73
  %i.di = add i64 %i.dh, -1                       ; 2 uses
  store i64 %i.di, ptr %i.s, align 8, !tbaa !73
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i118
  %i.dk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !68 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81
  %i.dp = call i32 %i.do(ptr noundef %i.dk) #7, !inline_history !0
  %.not.i.i123 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i123, label %bb.m, label %dump_buffer.exit.i124

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i32 25, ptr %i.ds, align 8, !tbaa !54
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !56
  call void %i.dt(ptr noundef nonnull %i.dq) #7, !inline_history !0
  br label %dump_buffer.exit.i124

dump_buffer.exit.i124:                            ; preds = %bb.m, %bb.l
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !70
  store ptr %i.du, ptr %i.p, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !72
  store i64 %i.dw, ptr %i.s, align 8, !tbaa !73
  br label %bb.n

bb.n:                                             ; preds = %dump_buffer.exit.i124, %.lr.ph.i118
  %i.dx = and i64 %.03033.i120, 16711680
  %i.dy = icmp eq i64 %i.dx, 16711680
  br i1 %i.dy, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.dz, align 1, !tbaa !55
  %i.eb = load i64, ptr %i.s, align 8, !tbaa !73
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  store i64 %i.ec, ptr %i.s, align 8, !tbaa !73
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ee = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !68 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !81
  %i.ej = call i32 %i.ei(ptr noundef %i.ee) #7, !inline_history !0
  %.not.i31.i121 = icmp eq i32 %i.ej, 0
  br i1 %.not.i31.i121, label %bb.q, label %dump_buffer.exit32.i122

bb.q:                                             ; preds = %bb.p
  %i.ek = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i32 25, ptr %i.em, align 8, !tbaa !54
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !56
  call void %i.en(ptr noundef nonnull %i.ek) #7, !inline_history !0
  br label %dump_buffer.exit32.i122

dump_buffer.exit32.i122:                          ; preds = %bb.q, %bb.p
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !70
  store ptr %i.eo, ptr %i.p, align 8, !tbaa !71
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !72
  store i64 %i.eq, ptr %i.s, align 8, !tbaa !73
  br label %bb.r

bb.r:                                             ; preds = %dump_buffer.exit32.i122, %bb.o, %bb.n
  %i.er = shl i64 %.03033.i120, 8                 ; 2 uses
  %i.es = add nsw i32 %.034.i119, -8              ; 2 uses
  %i.et = icmp sgt i32 %.034.i119, 15
  br i1 %i.et, label %.lr.ph.i118, label %._crit_edge.i115.loopexit, !llvm.loop !1

._crit_edge.i115.loopexit:                        ; preds = %bb.r
  %.pre217.pre.pre = load i32, ptr %i.av, align 8, !tbaa !39
  br label %._crit_edge.i115

._crit_edge.i115:                                 ; preds = %._crit_edge.i115.loopexit, %.thread
  %.pre217.pre = phi i32 [ 0, %.thread ], [ %.pre217.pre.pre, %._crit_edge.i115.loopexit ]
  %.030.lcssa.i116 = phi i64 [ %i.db, %.thread ], [ %i.er, %._crit_edge.i115.loopexit ]
  %.0.lcssa.i117 = phi i32 [ %i.cw, %.thread ], [ %i.es, %._crit_edge.i115.loopexit ]
  store i64 %.030.lcssa.i116, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i117, ptr %i.ay, align 8, !tbaa !62
  br label %emit_symbol.exit.i

emit_symbol.exit.i:                               ; preds = %._crit_edge.i115, %bb.k, %bb.i
  %.pre217 = phi i32 [ %.pre217.pre, %._crit_edge.i115 ], [ %.pre215, %bb.k ], [ %i.bw, %bb.i ] ; 2 uses
  %.not19.i = icmp eq i32 %i.bo, 0
  br i1 %.not19.i, label %emit_bits.exit112, label %bb.s

bb.s:                                             ; preds = %emit_symbol.exit.i
  %.not.i101 = icmp eq i32 %.pre217, 0
  br i1 %.not.i101, label %bb.t, label %emit_bits.exit112.thread

emit_bits.exit112.thread:                         ; preds = %bb.s
  store i32 0, ptr %i.as, align 4, !tbaa !59
  br label %emit_buffered_bits.exit.i

bb.t:                                             ; preds = %bb.s
  %i.eu = load i32, ptr %i.ay, align 8, !tbaa !62
  %i.ev = load i32, ptr %i.as, align 4, !tbaa !59
  %i.ew = zext i32 %i.ev to i64
  %i.ex = zext nneg i32 %i.bo to i64
  %notmask.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i, -1
  %i.ez = and i64 %i.ew, %i.ey
  %i.fa = add nsw i32 %i.eu, %i.bo                ; 4 uses
  %i.fb = sub nsw i32 24, %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl i64 %i.ez, %i.fc
  %i.fe = load i64, ptr %i.az, align 8, !tbaa !61
  %i.ff = or i64 %i.fd, %i.fe                     ; 2 uses
  %i.fg = icmp sgt i32 %i.fa, 7
  br i1 %i.fg, label %.lr.ph.i105, label %._crit_edge.i102

.lr.ph.i105:                                      ; preds = %bb.t, %bb.aa
  %.034.i106 = phi i32 [ %i.gw, %bb.aa ], [ %i.fa, %bb.t ] ; 2 uses
  %.03033.i107 = phi i64 [ %i.gv, %bb.aa ], [ %i.ff, %bb.t ] ; 3 uses
  %i.fh = lshr i64 %.03033.i107, 16
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.p, align 8, !tbaa !71
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !55
  %i.fl = load i64, ptr %i.s, align 8, !tbaa !73
  %i.fm = add i64 %i.fl, -1                       ; 2 uses
  store i64 %i.fm, ptr %i.s, align 8, !tbaa !73
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph.i105
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !68 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !81
  %i.ft = call i32 %i.fs(ptr noundef %i.fo) #7, !inline_history !0
  %.not.i.i110 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i110, label %bb.v, label %dump_buffer.exit.i111

bb.v:                                             ; preds = %bb.u
  %i.fu = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !50 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  store i32 25, ptr %i.fw, align 8, !tbaa !54
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !56
  call void %i.fx(ptr noundef nonnull %i.fu) #7, !inline_history !0
  br label %dump_buffer.exit.i111

dump_buffer.exit.i111:                            ; preds = %bb.v, %bb.u
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !70
  store ptr %i.fy, ptr %i.p, align 8, !tbaa !71
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !72
  store i64 %i.ga, ptr %i.s, align 8, !tbaa !73
  br label %bb.w

bb.w:                                             ; preds = %dump_buffer.exit.i111, %.lr.ph.i105
  %i.gb = and i64 %.03033.i107, 16711680
  %i.gc = icmp eq i64 %i.gb, 16711680
  br i1 %i.gc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gd = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.ge, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.gd, align 1, !tbaa !55
  %i.gf = load i64, ptr %i.s, align 8, !tbaa !73
  %i.gg = add i64 %i.gf, -1                       ; 2 uses
  store i64 %i.gg, ptr %i.s, align 8, !tbaa !73
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.gi = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !68 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !81
  %i.gn = call i32 %i.gm(ptr noundef %i.gi) #7, !inline_history !0
  %.not.i31.i108 = icmp eq i32 %i.gn, 0
  br i1 %.not.i31.i108, label %bb.z, label %dump_buffer.exit32.i109

bb.z:                                             ; preds = %bb.y
  %i.go = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !50 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  store i32 25, ptr %i.gq, align 8, !tbaa !54
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !56
  call void %i.gr(ptr noundef nonnull %i.go) #7, !inline_history !0
  br label %dump_buffer.exit32.i109

dump_buffer.exit32.i109:                          ; preds = %bb.z, %bb.y
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !70
  store ptr %i.gs, ptr %i.p, align 8, !tbaa !71
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !72
  store i64 %i.gu, ptr %i.s, align 8, !tbaa !73
  br label %bb.aa

bb.aa:                                            ; preds = %dump_buffer.exit32.i109, %bb.x, %bb.w
  %i.gv = shl i64 %.03033.i107, 8                 ; 2 uses
  %i.gw = add nsw i32 %.034.i106, -8              ; 2 uses
  %i.gx = icmp sgt i32 %.034.i106, 15
  br i1 %i.gx, label %.lr.ph.i105, label %._crit_edge.i102.loopexit, !llvm.loop !1

._crit_edge.i102.loopexit:                        ; preds = %bb.aa
  %.pre216.pre = load i32, ptr %i.av, align 8, !tbaa !39
  br label %._crit_edge.i102

._crit_edge.i102:                                 ; preds = %._crit_edge.i102.loopexit, %bb.t
  %.pre216 = phi i32 [ 0, %bb.t ], [ %.pre216.pre, %._crit_edge.i102.loopexit ]
  %.030.lcssa.i103 = phi i64 [ %i.ff, %bb.t ], [ %i.gv, %._crit_edge.i102.loopexit ]
  %.0.lcssa.i104 = phi i32 [ %i.fa, %bb.t ], [ %i.gw, %._crit_edge.i102.loopexit ]
  store i64 %.030.lcssa.i103, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i104, ptr %i.ay, align 8, !tbaa !62
  br label %emit_bits.exit112

emit_bits.exit112:                                ; preds = %._crit_edge.i102, %emit_symbol.exit.i
  %i.gy = phi i32 [ %.pre216, %._crit_edge.i102 ], [ %.pre217, %emit_symbol.exit.i ]
  store i32 0, ptr %i.as, align 4, !tbaa !59
  %i.gz = load i32, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.ha = icmp eq i32 %i.gy, 0
  %i.hb = icmp ne i32 %i.gz, 0
  %or.cond.i.i = and i1 %i.hb, %i.ha
  br i1 %or.cond.i.i, label %.preheader.i.i.preheader, label %emit_buffered_bits.exit.i

.preheader.i.i.preheader:                         ; preds = %emit_bits.exit112
  %i.hc = load ptr, ptr %i.aj, align 8, !tbaa !37
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %emit_bits.exit
  %.07.i.i = phi ptr [ %i.jg, %emit_bits.exit ], [ %i.hc, %.preheader.i.i.preheader ] ; 2 uses
  %.0.i.i = phi i32 [ %i.jh, %emit_bits.exit ], [ %i.gz, %.preheader.i.i.preheader ]
  %i.hd = load i32, ptr %i.av, align 8, !tbaa !39
  %.not.i99 = icmp eq i32 %i.hd, 0
  br i1 %.not.i99, label %bb.ab, label %emit_bits.exit

bb.ab:                                            ; preds = %.preheader.i.i
  %i.he = load i32, ptr %i.ay, align 8, !tbaa !62 ; 3 uses
  %i.hf = load i8, ptr %.07.i.i, align 1, !tbaa !55
  %i.hg = and i8 %i.hf, 1
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = add nsw i32 %i.he, 1                    ; 2 uses
  %i.hj = sub nsw i32 23, %i.he
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw i64 %i.hh, %i.hk
  %i.hm = load i64, ptr %i.az, align 8, !tbaa !61
  %i.hn = or i64 %i.hl, %i.hm                     ; 2 uses
  %i.ho = icmp sgt i32 %i.he, 6
  br i1 %i.ho, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ai
  %.034.i = phi i32 [ %i.je, %bb.ai ], [ %i.hi, %bb.ab ] ; 2 uses
  %.03033.i = phi i64 [ %i.jd, %bb.ai ], [ %i.hn, %bb.ab ] ; 3 uses
  %i.hp = lshr i64 %.03033.i, 16
  %i.hq = trunc i64 %i.hp to i8
  %i.hr = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store ptr %i.hs, ptr %i.p, align 8, !tbaa !71
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !55
  %i.ht = load i64, ptr %i.s, align 8, !tbaa !73
  %i.hu = add i64 %i.ht, -1                       ; 2 uses
  store i64 %i.hu, ptr %i.s, align 8, !tbaa !73
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hw = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !68 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !81
  %i.ib = call i32 %i.ia(ptr noundef %i.hw) #7, !inline_history !0
  %.not.i.i100 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i100, label %bb.ad, label %dump_buffer.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ic = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !50 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  store i32 25, ptr %i.ie, align 8, !tbaa !54
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !56
  call void %i.if(ptr noundef nonnull %i.ic) #7, !inline_history !0
  br label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.ad, %bb.ac
  %i.ig = load ptr, ptr %i.hy, align 8, !tbaa !70
  store ptr %i.ig, ptr %i.p, align 8, !tbaa !71
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !72
  store i64 %i.ii, ptr %i.s, align 8, !tbaa !73
  br label %bb.ae

bb.ae:                                            ; preds = %dump_buffer.exit.i, %.lr.ph.i
  %i.ij = and i64 %.03033.i, 16711680
  %i.ik = icmp eq i64 %i.ij, 16711680
  br i1 %i.ik, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.il = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store ptr %i.im, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.il, align 1, !tbaa !55
  %i.in = load i64, ptr %i.s, align 8, !tbaa !73
  %i.io = add i64 %i.in, -1                       ; 2 uses
  store i64 %i.io, ptr %i.s, align 8, !tbaa !73
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.iq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !68 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !81
  %i.iv = call i32 %i.iu(ptr noundef %i.iq) #7, !inline_history !0
  %.not.i31.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i31.i, label %bb.ah, label %dump_buffer.exit32.i

bb.ah:                                            ; preds = %bb.ag
  %i.iw = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !50 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store i32 25, ptr %i.iy, align 8, !tbaa !54
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !56
  call void %i.iz(ptr noundef nonnull %i.iw) #7, !inline_history !0
  br label %dump_buffer.exit32.i

dump_buffer.exit32.i:                             ; preds = %bb.ah, %bb.ag
  %i.ja = load ptr, ptr %i.is, align 8, !tbaa !70
  store ptr %i.ja, ptr %i.p, align 8, !tbaa !71
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !72
  store i64 %i.jc, ptr %i.s, align 8, !tbaa !73
  br label %bb.ai

bb.ai:                                            ; preds = %dump_buffer.exit32.i, %bb.af, %bb.ae
  %i.jd = shl i64 %.03033.i, 8                    ; 2 uses
  %i.je = add nsw i32 %.034.i, -8                 ; 2 uses
  %i.jf = icmp sgt i32 %.034.i, 15
  br i1 %i.jf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ab
  %.030.lcssa.i = phi i64 [ %i.hn, %bb.ab ], [ %i.jd, %bb.ai ]
  %.0.lcssa.i = phi i32 [ %i.hi, %bb.ab ], [ %i.je, %bb.ai ]
  store i64 %.030.lcssa.i, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i, ptr %i.ay, align 8, !tbaa !62
  br label %emit_bits.exit

emit_bits.exit:                                   ; preds = %.preheader.i.i, %._crit_edge.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.jh = add i32 %.0.i.i, -1                     ; 2 uses
  %.old1.not.i.i = icmp eq i32 %i.jh, 0
  br i1 %.old1.not.i.i, label %emit_buffered_bits.exit.i, label %.preheader.i.i, !llvm.loop !93

emit_buffered_bits.exit.i:                        ; preds = %emit_bits.exit, %emit_bits.exit112.thread, %emit_bits.exit112
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  br label %emit_eobrun.exit

emit_eobrun.exit:                                 ; preds = %.lr.ph, %emit_buffered_bits.exit.i
  %i.ji = load i32, ptr %i.au, align 8, !tbaa !49
  %i.jj = load i32, ptr %i.av, align 8, !tbaa !39
  %.not.i90 = icmp eq i32 %i.jj, 0
  %i.jk = sext i32 %i.ji to i64                   ; 2 uses
  br i1 %.not.i90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %emit_eobrun.exit
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !58
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1920 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !78
  %i.jp = add nsw i64 %i.jo, 1
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !78
  br label %emit_buffered_bits.exit

bb.ak:                                            ; preds = %emit_eobrun.exit
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.jk
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !45 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 960
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 1264
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !55  ; 2 uses
  %i.jw = sext i8 %i.jv to i32                    ; 2 uses
  %i.jx = zext i32 %i.jt to i64
  %i.jy = load i32, ptr %i.ay, align 8, !tbaa !62
  %i.jz = icmp eq i8 %i.jv, 0
  br i1 %i.jz, label %bb.al, label %.thread247

bb.al:                                            ; preds = %bb.ak
  %i.ka = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !50 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store i32 41, ptr %i.kc, align 8, !tbaa !54
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !56
  call void %i.kd(ptr noundef nonnull %i.ka) #7, !inline_history !80
  %.pre218 = load i32, ptr %i.av, align 8, !tbaa !39
  %i.ke = icmp eq i32 %.pre218, 0
  br i1 %i.ke, label %.thread247, label %emit_buffered_bits.exit

.thread247:                                       ; preds = %bb.ak, %bb.al
  %i.kf = zext nneg i32 %i.jw to i64
  %notmask.i127 = shl nsw i64 -1, %i.kf
  %i.kg = xor i64 %notmask.i127, -1
  %i.kh = and i64 %i.kg, %i.jx
  %i.ki = add nsw i32 %i.jy, %i.jw                ; 4 uses
  %i.kj = sub nsw i32 24, %i.ki
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl i64 %i.kh, %i.kk
  %i.km = load i64, ptr %i.az, align 8, !tbaa !61
  %i.kn = or i64 %i.km, %i.kl                     ; 2 uses
  %i.ko = icmp sgt i32 %i.ki, 7
  br i1 %i.ko, label %.lr.ph.i131, label %emit_symbol.exit

.lr.ph.i131:                                      ; preds = %.thread247, %bb.as
  %.034.i132 = phi i32 [ %i.me, %bb.as ], [ %i.ki, %.thread247 ] ; 2 uses
  %.03033.i133 = phi i64 [ %i.md, %bb.as ], [ %i.kn, %.thread247 ] ; 3 uses
  %i.kp = lshr i64 %.03033.i133, 16
  %i.kq = trunc i64 %i.kp to i8
  %i.kr = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store ptr %i.ks, ptr %i.p, align 8, !tbaa !71
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !55
  %i.kt = load i64, ptr %i.s, align 8, !tbaa !73
  %i.ku = add i64 %i.kt, -1                       ; 2 uses
  store i64 %i.ku, ptr %i.s, align 8, !tbaa !73
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.lr.ph.i131
  %i.kw = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !68 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !81
  %i.lb = call i32 %i.la(ptr noundef %i.kw) #7, !inline_history !0
  %.not.i.i136 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i136, label %bb.an, label %dump_buffer.exit.i137

bb.an:                                            ; preds = %bb.am
  %i.lc = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !50 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  store i32 25, ptr %i.le, align 8, !tbaa !54
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !56
  call void %i.lf(ptr noundef nonnull %i.lc) #7, !inline_history !0
  br label %dump_buffer.exit.i137

dump_buffer.exit.i137:                            ; preds = %bb.an, %bb.am
  %i.lg = load ptr, ptr %i.ky, align 8, !tbaa !70
  store ptr %i.lg, ptr %i.p, align 8, !tbaa !71
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !72
  store i64 %i.li, ptr %i.s, align 8, !tbaa !73
  br label %bb.ao

bb.ao:                                            ; preds = %dump_buffer.exit.i137, %.lr.ph.i131
  %i.lj = and i64 %.03033.i133, 16711680
  %i.lk = icmp eq i64 %i.lj, 16711680
  br i1 %i.lk, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ll = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store ptr %i.lm, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.ll, align 1, !tbaa !55
  %i.ln = load i64, ptr %i.s, align 8, !tbaa !73
  %i.lo = add i64 %i.ln, -1                       ; 2 uses
  store i64 %i.lo, ptr %i.s, align 8, !tbaa !73
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !68 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !81
  %i.lv = call i32 %i.lu(ptr noundef %i.lq) #7, !inline_history !0
  %.not.i31.i134 = icmp eq i32 %i.lv, 0
  br i1 %.not.i31.i134, label %bb.ar, label %dump_buffer.exit32.i135

bb.ar:                                            ; preds = %bb.aq
  %i.lw = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !50 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  store i32 25, ptr %i.ly, align 8, !tbaa !54
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !56
  call void %i.lz(ptr noundef nonnull %i.lw) #7, !inline_history !0
  br label %dump_buffer.exit32.i135

dump_buffer.exit32.i135:                          ; preds = %bb.ar, %bb.aq
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !70
  store ptr %i.ma, ptr %i.p, align 8, !tbaa !71
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !72
  store i64 %i.mc, ptr %i.s, align 8, !tbaa !73
  br label %bb.as

bb.as:                                            ; preds = %dump_buffer.exit32.i135, %bb.ap, %bb.ao
  %i.md = shl i64 %.03033.i133, 8                 ; 2 uses
  %i.me = add nsw i32 %.034.i132, -8              ; 2 uses
  %i.mf = icmp sgt i32 %.034.i132, 15
  br i1 %i.mf, label %.lr.ph.i131, label %._crit_edge.i128.loopexit, !llvm.loop !1

._crit_edge.i128.loopexit:                        ; preds = %bb.as
  %.pre219.pre = load i32, ptr %i.av, align 8, !tbaa !39
  %i.mg = icmp eq i32 %.pre219.pre, 0
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %.thread247, %._crit_edge.i128.loopexit
  %.pre219 = phi i1 [ true, %.thread247 ], [ %i.mg, %._crit_edge.i128.loopexit ]
  %.030.lcssa.i129 = phi i64 [ %i.kn, %.thread247 ], [ %i.md, %._crit_edge.i128.loopexit ]
  %.0.lcssa.i130 = phi i32 [ %i.ki, %.thread247 ], [ %i.me, %._crit_edge.i128.loopexit ]
  store i64 %.030.lcssa.i129, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i130, ptr %i.ay, align 8, !tbaa !62
  %i.mh = icmp ne i32 %.1180, 0
  %or.cond.i = and i1 %i.mh, %.pre219
  br i1 %or.cond.i, label %.preheader.i, label %emit_buffered_bits.exit

.preheader.i:                                     ; preds = %emit_symbol.exit, %emit_bits.exit150
  %.07.i = phi ptr [ %i.ol, %emit_bits.exit150 ], [ %.182179, %emit_symbol.exit ] ; 2 uses
  %.0.i = phi i32 [ %i.om, %emit_bits.exit150 ], [ %.1180, %emit_symbol.exit ]
  %i.mi = load i32, ptr %i.av, align 8, !tbaa !39
  %.not.i139 = icmp eq i32 %i.mi, 0
  br i1 %.not.i139, label %bb.at, label %emit_bits.exit150

bb.at:                                            ; preds = %.preheader.i
  %i.mj = load i32, ptr %i.ay, align 8, !tbaa !62 ; 3 uses
  %i.mk = load i8, ptr %.07.i, align 1, !tbaa !55
  %i.ml = and i8 %i.mk, 1
  %i.mm = zext nneg i8 %i.ml to i64
  %i.mn = add nsw i32 %i.mj, 1                    ; 2 uses
  %i.mo = sub nsw i32 23, %i.mj
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = shl nuw i64 %i.mm, %i.mp
  %i.mr = load i64, ptr %i.az, align 8, !tbaa !61
  %i.ms = or i64 %i.mq, %i.mr                     ; 2 uses
  %i.mt = icmp sgt i32 %i.mj, 6
  br i1 %i.mt, label %.lr.ph.i143, label %._crit_edge.i140

.lr.ph.i143:                                      ; preds = %bb.at, %bb.ba
  %.034.i144 = phi i32 [ %i.oj, %bb.ba ], [ %i.mn, %bb.at ] ; 2 uses
  %.03033.i145 = phi i64 [ %i.oi, %bb.ba ], [ %i.ms, %bb.at ] ; 3 uses
  %i.mu = lshr i64 %.03033.i145, 16
  %i.mv = trunc i64 %i.mu to i8
  %i.mw = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store ptr %i.mx, ptr %i.p, align 8, !tbaa !71
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !55
  %i.my = load i64, ptr %i.s, align 8, !tbaa !73
  %i.mz = add i64 %i.my, -1                       ; 2 uses
  store i64 %i.mz, ptr %i.s, align 8, !tbaa !73
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph.i143
  %i.nb = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !68 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !81
  %i.ng = call i32 %i.nf(ptr noundef %i.nb) #7, !inline_history !0
  %.not.i.i148 = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i148, label %bb.av, label %dump_buffer.exit.i149

bb.av:                                            ; preds = %bb.au
  %i.nh = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !50 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  store i32 25, ptr %i.nj, align 8, !tbaa !54
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !56
  call void %i.nk(ptr noundef nonnull %i.nh) #7, !inline_history !0
  br label %dump_buffer.exit.i149

dump_buffer.exit.i149:                            ; preds = %bb.av, %bb.au
  %i.nl = load ptr, ptr %i.nd, align 8, !tbaa !70
  store ptr %i.nl, ptr %i.p, align 8, !tbaa !71
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !72
  store i64 %i.nn, ptr %i.s, align 8, !tbaa !73
  br label %bb.aw

bb.aw:                                            ; preds = %dump_buffer.exit.i149, %.lr.ph.i143
  %i.no = and i64 %.03033.i145, 16711680
  %i.np = icmp eq i64 %i.no, 16711680
  br i1 %i.np, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.nq = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  store ptr %i.nr, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.nq, align 1, !tbaa !55
  %i.ns = load i64, ptr %i.s, align 8, !tbaa !73
  %i.nt = add i64 %i.ns, -1                       ; 2 uses
  store i64 %i.nt, ptr %i.s, align 8, !tbaa !73
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.nv = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !68 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !81
  %i.oa = call i32 %i.nz(ptr noundef %i.nv) #7, !inline_history !0
  %.not.i31.i146 = icmp eq i32 %i.oa, 0
  br i1 %.not.i31.i146, label %bb.az, label %dump_buffer.exit32.i147

bb.az:                                            ; preds = %bb.ay
  %i.ob = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !50 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 40
  store i32 25, ptr %i.od, align 8, !tbaa !54
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !56
  call void %i.oe(ptr noundef nonnull %i.ob) #7, !inline_history !0
  br label %dump_buffer.exit32.i147

dump_buffer.exit32.i147:                          ; preds = %bb.az, %bb.ay
  %i.of = load ptr, ptr %i.nx, align 8, !tbaa !70
  store ptr %i.of, ptr %i.p, align 8, !tbaa !71
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !72
  store i64 %i.oh, ptr %i.s, align 8, !tbaa !73
  br label %bb.ba

bb.ba:                                            ; preds = %dump_buffer.exit32.i147, %bb.ax, %bb.aw
  %i.oi = shl i64 %.03033.i145, 8                 ; 2 uses
  %i.oj = add nsw i32 %.034.i144, -8              ; 2 uses
  %i.ok = icmp sgt i32 %.034.i144, 15
  br i1 %i.ok, label %.lr.ph.i143, label %._crit_edge.i140, !llvm.loop !1

._crit_edge.i140:                                 ; preds = %bb.ba, %bb.at
  %.030.lcssa.i141 = phi i64 [ %i.ms, %bb.at ], [ %i.oi, %bb.ba ]
  %.0.lcssa.i142 = phi i32 [ %i.mn, %bb.at ], [ %i.oj, %bb.ba ]
  store i64 %.030.lcssa.i141, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i142, ptr %i.ay, align 8, !tbaa !62
  br label %emit_bits.exit150

emit_bits.exit150:                                ; preds = %.preheader.i, %._crit_edge.i140
  %i.ol = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.om = add i32 %.0.i, -1                       ; 2 uses
  %.old1.not.i = icmp eq i32 %i.om, 0
  br i1 %.old1.not.i, label %emit_buffered_bits.exit, label %.preheader.i, !llvm.loop !94

emit_buffered_bits.exit:                          ; preds = %emit_bits.exit150, %bb.aj, %bb.al, %emit_symbol.exit
  %i.on = add nsw i32 %.184178, -16               ; 2 uses
  %i.oo = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.op = icmp sgt i32 %.184178, 31
  br i1 %i.op, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %emit_buffered_bits.exit, %bb.e
  %.184.lcssa = phi i32 [ %i.bd, %bb.e ], [ %i.on, %emit_buffered_bits.exit ] ; 2 uses
  %.182.lcssa = phi ptr [ %.081186, %bb.e ], [ %i.oo, %emit_buffered_bits.exit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.080187, %bb.e ], [ 0, %emit_buffered_bits.exit ] ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  %i.or = load i16, ptr %i.be, align 2, !tbaa !77 ; 2 uses
  %i.os = icmp ugt i16 %i.or, 1
  br i1 %i.os, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge
  %i.ot = trunc i16 %i.or to i8
  %i.ou = and i8 %i.ot, 1
  %i.ov = add i32 %.1.lcssa, 1
  %i.ow = zext i32 %.1.lcssa to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %.182.lcssa, i64 %i.ow
  store i8 %i.ou, ptr %i.ox, align 1, !tbaa !55
  br label %.backedge

.backedge:                                        ; preds = %bb.bb, %emit_buffered_bits.exit98
  %.083.be = phi i32 [ %.184.lcssa, %bb.bb ], [ 0, %emit_buffered_bits.exit98 ] ; 2 uses
  %.081.be = phi ptr [ %.182.lcssa, %bb.bb ], [ %i.sb, %emit_buffered_bits.exit98 ]
  %.080.be = phi i32 [ %i.ov, %bb.bb ], [ 0, %emit_buffered_bits.exit98 ] ; 2 uses
  %.0.be = lshr i64 %i.bf, 1
  %.0166.be = lshr i64 %i.bc, 1                   ; 2 uses
  %.not87 = icmp eq i64 %.0166.be, 0
  br i1 %.not87, label %._crit_edge192, label %bb.e, !llvm.loop !96

bb.bc:                                            ; preds = %._crit_edge
  call fastcc void @emit_eobrun(ptr noundef %i.d)
  %i.oy = load i32, ptr %i.au, align 8, !tbaa !49
  %i.oz = shl i32 %.184.lcssa, 4
  %i.pa = or disjoint i32 %i.oz, 1
  %i.pb = load i32, ptr %i.av, align 8, !tbaa !39
  %.not.i91 = icmp eq i32 %i.pb, 0
  %i.pc = sext i32 %i.oy to i64                   ; 2 uses
  %i.pd = sext i32 %i.pa to i64                   ; 3 uses
  br i1 %.not.i91, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.pc
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !58
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.pd ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !78
  %i.pi = add nsw i64 %i.ph, 1
  store i64 %i.pi, ptr %i.pg, align 8, !tbaa !78
  br label %emit_symbol.exit92

bb.be:                                            ; preds = %bb.bc
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.pc
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !45 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.pd
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 1024
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %i.pd
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !55
  %i.pq = sext i8 %i.pp to i32
  call fastcc void @emit_bits(ptr noundef nonnull %i.d, i32 noundef %i.pm, i32 noundef %i.pq)
  br label %emit_symbol.exit92

emit_symbol.exit92:                               ; preds = %bb.bd, %bb.be
  %i.pr = trunc i64 %i.bf to i32
  %i.ps = and i32 %i.pr, 1
  call fastcc void @emit_bits(ptr noundef nonnull %i.d, i32 noundef %i.ps, i32 noundef 1)
  %i.pt = load i32, ptr %i.av, align 8, !tbaa !39
  %i.pu = icmp eq i32 %i.pt, 0
  %i.pv = icmp ne i32 %.1.lcssa, 0
  %or.cond.i93 = and i1 %i.pv, %i.pu
  br i1 %or.cond.i93, label %.preheader.i94, label %emit_buffered_bits.exit98

.preheader.i94thread-pre-split:                   ; preds = %emit_bits.exit162
  %i.pw = getelementptr inbounds nuw i8, ptr %.07.i95, i64 1
  %.pr = load i32, ptr %i.av, align 8, !tbaa !39
  br label %.preheader.i94

.preheader.i94:                                   ; preds = %emit_symbol.exit92, %.preheader.i94thread-pre-split
  %i.px = phi i32 [ %.pr, %.preheader.i94thread-pre-split ], [ 0, %emit_symbol.exit92 ]
  %.07.i95 = phi ptr [ %i.pw, %.preheader.i94thread-pre-split ], [ %.182.lcssa, %emit_symbol.exit92 ] ; 2 uses
  %.0.i96 = phi i32 [ %i.sa, %.preheader.i94thread-pre-split ], [ %.1.lcssa, %emit_symbol.exit92 ]
  %.not.i151 = icmp eq i32 %i.px, 0
  br i1 %.not.i151, label %bb.bf, label %emit_bits.exit162

bb.bf:                                            ; preds = %.preheader.i94
  %i.py = load i32, ptr %i.ay, align 8, !tbaa !62 ; 3 uses
  %i.pz = load i8, ptr %.07.i95, align 1, !tbaa !55
  %i.qa = and i8 %i.pz, 1
  %i.qb = zext nneg i8 %i.qa to i64
  %i.qc = add nsw i32 %i.py, 1                    ; 2 uses
  %i.qd = sub nsw i32 23, %i.py
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = shl nuw i64 %i.qb, %i.qe
  %i.qg = load i64, ptr %i.az, align 8, !tbaa !61
  %i.qh = or i64 %i.qf, %i.qg                     ; 2 uses
  %i.qi = icmp sgt i32 %i.py, 6
  br i1 %i.qi, label %.lr.ph.i155, label %._crit_edge.i152

.lr.ph.i155:                                      ; preds = %bb.bf, %bb.bm
  %.034.i156 = phi i32 [ %i.ry, %bb.bm ], [ %i.qc, %bb.bf ] ; 2 uses
  %.03033.i157 = phi i64 [ %i.rx, %bb.bm ], [ %i.qh, %bb.bf ] ; 3 uses
  %i.qj = lshr i64 %.03033.i157, 16
  %i.qk = trunc i64 %i.qj to i8
  %i.ql = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  store ptr %i.qm, ptr %i.p, align 8, !tbaa !71
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !55
  %i.qn = load i64, ptr %i.s, align 8, !tbaa !73
  %i.qo = add i64 %i.qn, -1                       ; 2 uses
  store i64 %i.qo, ptr %i.s, align 8, !tbaa !73
  %i.qp = icmp eq i64 %i.qo, 0
  br i1 %i.qp, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.lr.ph.i155
  %i.qq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !68 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !81
  %i.qv = call i32 %i.qu(ptr noundef %i.qq) #7, !inline_history !0
  %.not.i.i160 = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i160, label %bb.bh, label %dump_buffer.exit.i161

bb.bh:                                            ; preds = %bb.bg
  %i.qw = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !50 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 40
  store i32 25, ptr %i.qy, align 8, !tbaa !54
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !56
  call void %i.qz(ptr noundef nonnull %i.qw) #7, !inline_history !0
  br label %dump_buffer.exit.i161

dump_buffer.exit.i161:                            ; preds = %bb.bh, %bb.bg
  %i.ra = load ptr, ptr %i.qs, align 8, !tbaa !70
  store ptr %i.ra, ptr %i.p, align 8, !tbaa !71
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !72
  store i64 %i.rc, ptr %i.s, align 8, !tbaa !73
  br label %bb.bi

bb.bi:                                            ; preds = %dump_buffer.exit.i161, %.lr.ph.i155
  %i.rd = and i64 %.03033.i157, 16711680
  %i.re = icmp eq i64 %i.rd, 16711680
  br i1 %i.re, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.rf = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 1
  store ptr %i.rg, ptr %i.p, align 8, !tbaa !71
  store i8 0, ptr %i.rf, align 1, !tbaa !55
  %i.rh = load i64, ptr %i.s, align 8, !tbaa !73
  %i.ri = add i64 %i.rh, -1                       ; 2 uses
  store i64 %i.ri, ptr %i.s, align 8, !tbaa !73
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.rk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !68 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !81
  %i.rp = call i32 %i.ro(ptr noundef %i.rk) #7, !inline_history !0
  %.not.i31.i158 = icmp eq i32 %i.rp, 0
  br i1 %.not.i31.i158, label %bb.bl, label %dump_buffer.exit32.i159

bb.bl:                                            ; preds = %bb.bk
  %i.rq = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !50 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 40
  store i32 25, ptr %i.rs, align 8, !tbaa !54
  %i.rt = load ptr, ptr %i.rr, align 8, !tbaa !56
  call void %i.rt(ptr noundef nonnull %i.rq) #7, !inline_history !0
  br label %dump_buffer.exit32.i159

dump_buffer.exit32.i159:                          ; preds = %bb.bl, %bb.bk
  %i.ru = load ptr, ptr %i.rm, align 8, !tbaa !70
  store ptr %i.ru, ptr %i.p, align 8, !tbaa !71
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !72
  store i64 %i.rw, ptr %i.s, align 8, !tbaa !73
  br label %bb.bm

bb.bm:                                            ; preds = %dump_buffer.exit32.i159, %bb.bj, %bb.bi
  %i.rx = shl i64 %.03033.i157, 8                 ; 2 uses
  %i.ry = add nsw i32 %.034.i156, -8              ; 2 uses
  %i.rz = icmp sgt i32 %.034.i156, 15
  br i1 %i.rz, label %.lr.ph.i155, label %._crit_edge.i152, !llvm.loop !1

._crit_edge.i152:                                 ; preds = %bb.bm, %bb.bf
  %.030.lcssa.i153 = phi i64 [ %i.qh, %bb.bf ], [ %i.rx, %bb.bm ]
  %.0.lcssa.i154 = phi i32 [ %i.qc, %bb.bf ], [ %i.ry, %bb.bm ]
  store i64 %.030.lcssa.i153, ptr %i.az, align 8, !tbaa !61
  store i32 %.0.lcssa.i154, ptr %i.ay, align 8, !tbaa !62
  br label %emit_bits.exit162

emit_bits.exit162:                                ; preds = %.preheader.i94, %._crit_edge.i152
  %i.sa = add i32 %.0.i96, -1                     ; 2 uses
  %.old1.not.i97 = icmp eq i32 %i.sa, 0
  br i1 %.old1.not.i97, label %emit_buffered_bits.exit98, label %.preheader.i94thread-pre-split, !llvm.loop !97

emit_buffered_bits.exit98:                        ; preds = %emit_bits.exit162, %emit_symbol.exit92
  %i.sb = load ptr, ptr %i.aj, align 8, !tbaa !37
  br label %.backedge

._crit_edge192:                                   ; preds = %.backedge, %bb.d
  %.083.lcssa = phi i32 [ 0, %bb.d ], [ %.083.be, %.backedge ]
  %.080.lcssa = phi i32 [ 0, %bb.d ], [ %.080.be, %.backedge ] ; 2 uses
  %.079.lcssa = phi ptr [ %i.a, %bb.d ], [ %i.oq, %.backedge ]
  %i.sc = sext i32 %i.j to i64
  %i.sd = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.sc
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = ptrtoint ptr %.079.lcssa to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = lshr exact i64 %i.sg, 1
  %i.si = trunc i64 %i.sh to i32
  %i.sj = or i32 %.083.lcssa, %i.si
  %i.sk = icmp sgt i32 %i.sj, 0
  %i.sl = icmp ne i32 %.080.lcssa, 0
  %or.cond = select i1 %i.sk, i1 true, i1 %i.sl
  br i1 %or.cond, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %._crit_edge192
  %i.sm = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !59
  %i.so = add i32 %i.sn, 1                        ; 2 uses
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !59
  %i.sp = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.sq = add i32 %i.sp, %.080.lcssa              ; 2 uses
  store i32 %i.sq, ptr %i.ak, align 8, !tbaa !60
  %i.sr = icmp eq i32 %i.so, 32767
  %i.ss = icmp ugt i32 %i.sq, 937
  %or.cond89 = select i1 %i.sr, i1 true, i1 %i.ss
  br i1 %or.cond89, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @emit_eobrun(ptr noundef nonnull %i.d)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %._crit_edge192
  %i.st = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.su = load ptr, ptr %i.m, align 8, !tbaa !68  ; 2 uses
  store ptr %i.st, ptr %i.su, align 8, !tbaa !70
  %i.sv = load i64, ptr %i.s, align 8, !tbaa !73
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i64 %i.sv, ptr %i.sw, align 8, !tbaa !72
  %i.sx = load i32, ptr %i.t, align 4, !tbaa !63  ; 2 uses
  %.not88 = icmp eq i32 %i.sx, 0
  br i1 %.not88, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !64 ; 2 uses
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !65
  %i.td = add nsw i32 %i.tc, 1
  %i.te = and i32 %i.td, 7
  store i32 %i.te, ptr %i.tb, align 4, !tbaa !65
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.tf = phi i32 [ %i.sx, %bb.br ], [ %i.sz, %bb.bq ]
  %i.tg = add i32 %i.tf, -1
  store i32 %i.tg, ptr %i.sy, align 8, !tbaa !64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @encode_mcu_AC_refine_prepare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.037 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %.02936 = phi i64 [ 0, %.lr.ph.preheader ], [ %.130, %bb.c ] ; 2 uses
  %.03135 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %bb.c ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %0, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !77
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = ashr i32 %i.g, 31                        ; 3 uses
  %i.i = xor i32 %i.h, %i.g
  %i.j = sub nsw i32 %i.i, %i.h
  %i.k = ashr i32 %i.j, %3                        ; 3 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = shl nuw i64 1, %indvars.iv
  %i.m = or i64 %.02936, %i.l
  %i.n = add nsw i32 %i.h, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 %i.o, %indvars.iv
  %i.q = or i64 %i.p, %.037
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.130 = phi i64 [ %i.m, %bb.b ], [ %.02936, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.q, %bb.b ], [ %.037, %.lr.ph ] ; 2 uses
  %i.r = trunc i32 %i.k to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %i.r, ptr %i.s, align 2, !tbaa !77
  %i.t = icmp eq i32 %i.k, 1
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.t, i32 %i.u, i32 %.03135 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ]
  %.029.lcssa = phi i64 [ 0, %bb.a ], [ %.130, %bb.c ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.c ]
  store i64 %.029.lcssa, ptr %5, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0.lcssa, ptr %i.v, align 8, !tbaa !78
  ret i32 %.031.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  tail call fastcc void @emit_eobrun(ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %. = select i1 %i.i, i64 160, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = load i32, ptr %i.k, align 4, !tbaa !41
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.splitthread-pre-split:            ; preds = %bb.f
  %.pr = load i32, ptr %i.k, align 4, !tbaa !41
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.splitthread-pre-split
  %i.p = phi i32 [ %.pr, %.lr.ph.split.us.splitthread-pre-split ], [ 0, %.lr.ph.split.us ]
  %i.q = phi i32 [ %i.ad, %.lr.ph.split.us.splitthread-pre-split ], [ %i.g, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph.split.us.splitthread-pre-split ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.not.us = icmp eq i32 %i.p, 0
  br i1 %.not.us, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.025.us = load i32, ptr %i.t, align 4, !tbaa !9
  %i.u = sext i32 %.025.us to i64                 ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.not27.us = icmp eq i32 %i.w, 0
  br i1 %.not27.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.0.us = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.u ; 2 uses
  %i.x = load ptr, ptr %.0.us, align 8, !tbaa !45 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.z, ptr %.0.us, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.d ], [ %i.x, %bb.c ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.u
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.ac) #7
  store i32 1, ptr %i.v, align 4, !tbaa !9
  %.pre35 = load i32, ptr %i.f, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %.lr.ph.split.us.split
  %i.ad = phi i32 [ %.pre35, %bb.e ], [ %i.q, %bb.b ], [ %i.q, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next33, %i.ae
  br i1 %i.af, label %.lr.ph.split.us.splitthread-pre-split, label %._crit_edge, !llvm.loop !100

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.ag = phi i32 [ %i.at, %bb.j ], [ %i.g, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.025 = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.ak = sext i32 %.025 to i64                   ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split
  %.0 = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ak ; 2 uses
  %i.an = load ptr, ptr %.0, align 8, !tbaa !45   ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.ap, ptr %.0, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ %i.an, %bb.g ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ak
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef %i.as) #7
  store i32 1, ptr %i.al, align 4, !tbaa !9
  %.pre = load i32, ptr %i.f, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.at = phi i32 [ %i.ag, %.lr.ph.split ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph.split, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.j, %bb.f, %.lr.ph.split.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_phuff(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !73
  tail call fastcc void @emit_eobrun(ptr noundef %i.b)
  tail call fastcc void @emit_bits(ptr noundef %i.b, i32 noundef 127, i32 noundef 7)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 0, ptr %i.k, align 8, !tbaa !62
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !70
  %i.n = load i64, ptr %i.i, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !72
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @jpeg_make_c_derived_tbl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_restart(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @emit_eobrun(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef 127, i32 noundef 7)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.e, align 8, !tbaa !71
  store i8 -1, ptr %i.f, align 1, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !73
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = tail call i32 %i.q(ptr noundef %i.m) #7, !inline_history !2
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %dump_buffer.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 25, ptr %i.u, align 8, !tbaa !54
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !56
  tail call void %i.v(ptr noundef nonnull %i.s) #7, !inline_history !2
  br label %dump_buffer.exit

dump_buffer.exit:                                 ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72
  store i64 %i.y, ptr %i.h, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %dump_buffer.exit
  %i.z = phi ptr [ %.pre, %._crit_edge ], [ %i.w, %dump_buffer.exit ] ; 2 uses
  %i.aa = trunc i32 %1 to i8
  %i.ab = add i8 %i.aa, -48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !71
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !55
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !73
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !73
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.am = tail call i32 %i.al(ptr noundef %i.ah) #7, !inline_history !2
  %.not.i17 = icmp eq i32 %i.am, 0
  br i1 %.not.i17, label %bb.g, label %dump_buffer.exit18

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 25, ptr %i.ap, align 8, !tbaa !54
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !56
  tail call void %i.aq(ptr noundef nonnull %i.an) #7, !inline_history !2
  br label %dump_buffer.exit18

dump_buffer.exit18:                               ; preds = %bb.f, %bb.g
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !70
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !72
  store i64 %i.at, ptr %i.h, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %dump_buffer.exit18, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 460
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 368 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !44
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 0, ptr %i.bd, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.az, align 8, !tbaa !44
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.i, label %.loopexit, !llvm.loop !102

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.bh, align 4, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.bi, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_bits(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 -128, 256) %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !62
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 41, ptr %i.h, align 8, !tbaa !54
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !56
  tail call void %i.i(ptr noundef nonnull %i.f) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %2 to i64
  %notmask = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask, -1
  %i.n = and i64 %i.m, %i.a
  %i.o = add nsw i32 %i.c, %2                     ; 4 uses
  %i.p = sub nsw i32 24, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = or i64 %i.t, %i.r                        ; 2 uses
  %i.v = icmp sgt i32 %i.o, 7
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.034 = phi i32 [ %i.o, %.lr.ph ], [ %i.bo, %bb.l ] ; 2 uses
  %.03033 = phi i64 [ %i.u, %.lr.ph ], [ %i.bn, %bb.l ] ; 3 uses
  %i.z = lshr i64 %.03033, 16
  %i.aa = trunc i64 %i.z to i8
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !71
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !55
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !73
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !73
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %i.al = tail call i32 %i.ak(ptr noundef %i.ag) #7, !inline_history !2
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.g, label %dump_buffer.exit

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 25, ptr %i.ao, align 8, !tbaa !54
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !56
  tail call void %i.ap(ptr noundef nonnull %i.am) #7, !inline_history !2
  br label %dump_buffer.exit

dump_buffer.exit:                                 ; preds = %bb.f, %bb.g
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !70
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72
  store i64 %i.as, ptr %i.x, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %dump_buffer.exit, %bb.e
  %i.at = and i64 %.03033, 16711680
  %i.au = icmp eq i64 %i.at, 16711680
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.w, align 8, !tbaa !71
  store i8 0, ptr %i.av, align 1, !tbaa !55
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !73
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  store i64 %i.ay, ptr %i.x, align 8, !tbaa !73
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.bf = tail call i32 %i.be(ptr noundef %i.ba) #7, !inline_history !2
  %.not.i31 = icmp eq i32 %i.bf, 0
  br i1 %.not.i31, label %bb.k, label %dump_buffer.exit32

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i32 25, ptr %i.bi, align 8, !tbaa !54
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !56
  tail call void %i.bj(ptr noundef nonnull %i.bg) #7, !inline_history !2
  br label %dump_buffer.exit32

dump_buffer.exit32:                               ; preds = %bb.j, %bb.k
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !70
  store ptr %i.bk, ptr %i.w, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !72
  store i64 %i.bm, ptr %i.x, align 8, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %dump_buffer.exit32, %bb.h
  %i.bn = shl i64 %.03033, 8                      ; 2 uses
  %i.bo = add nsw i32 %.034, -8                   ; 2 uses
  %i.bp = icmp sgt i32 %.034, 15
  br i1 %i.bp, label %bb.e, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.l, %bb.d
  %.030.lcssa = phi i64 [ %i.u, %bb.d ], [ %i.bn, %bb.l ]
  %.0.lcssa = phi i32 [ %i.o, %bb.d ], [ %i.bo, %bb.l ]
  store i64 %.030.lcssa, ptr %i.s, align 8, !tbaa !61
  store i32 %.0.lcssa, ptr %i.b, align 8, !tbaa !62
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_eobrun(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !55    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp ugt i8 %i.e, 15
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 41, ptr %i.l, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !56
  tail call void %i.m(ptr noundef nonnull %i.j) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49
  %i.p = shl nsw i32 %i.g, 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.r, 0
  %i.s = sext i32 %i.o to i64                     ; 2 uses
  %i.t = sext i32 %i.p to i64                     ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !78
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !78
  br label %emit_symbol.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.s
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.t
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1024
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.t
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !55
  %i.ai = sext i8 %i.ah to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ai)
  br label %emit_symbol.exit

emit_symbol.exit:                                 ; preds = %bb.e, %bb.f
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %emit_symbol.exit
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !59
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %emit_symbol.exit
  store i32 0, ptr %i.a, align 4, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.am = load i32, ptr %i.q, align 8, !tbaa !39
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = icmp ne i32 %i.al, 0
  %or.cond.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i, label %.preheader.i.preheader, label %emit_buffered_bits.exit

.preheader.i.preheader:                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.07.i = phi ptr [ %i.at, %.preheader.i ], [ %i.aq, %.preheader.i.preheader ] ; 2 uses
  %.0.i = phi i32 [ %i.au, %.preheader.i ], [ %i.al, %.preheader.i.preheader ]
  %i.ar = load i8, ptr %.07.i, align 1, !tbaa !55
  %i.as = sext i8 %i.ar to i32
  tail call fastcc void @emit_bits(ptr noundef nonnull %0, i32 noundef %i.as, i32 noundef 1)
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.au = add i32 %.0.i, -1                       ; 2 uses
  %.old1.not.i = icmp eq i32 %i.au, 0
  br i1 %.old1.not.i, label %emit_buffered_bits.exit, label %.preheader.i

emit_buffered_bits.exit:                          ; preds = %.preheader.i, %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %emit_buffered_bits.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #4

declare void @jpeg_gen_optimal_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @emit_bits, null}
!1 = distinct !{!1, !48}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!14 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!21 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!22 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!23 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!25 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!27 = !{!"jpeg_compress_struct", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !8, i64 32, !8, i64 36, !14, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !15, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !10, i64 104, !7, i64 112, !7, i64 144, !7, i64 160, !7, i64 192, !7, i64 224, !7, i64 240, !7, i64 256, !8, i64 272, !10, i64 280, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !7, i64 328, !7, i64 329, !7, i64 330, !16, i64 332, !16, i64 334, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !7, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !7, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !17, i64 480, !8, i64 488, !18, i64 496, !19, i64 504, !20, i64 512, !21, i64 520, !22, i64 528, !23, i64 536, !24, i64 544, !25, i64 552, !26, i64 560, !10, i64 568, !8, i64 576}
!28 = !{!27, !12, i64 8}
!29 = !{!"long", !7, i64 0}
!30 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !29, i64 88, !29, i64 96}
!31 = !{!30, !10, i64 0}
!32 = !{!27, !26, i64 560}
!33 = !{!"jpeg_entropy_encoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!34 = !{!"p1 omnipotent char", !10, i64 0}
!35 = !{!"p1 _ZTS20jpeg_compress_struct", !10, i64 0}
!36 = !{!"", !33, i64 0, !10, i64 32, !10, i64 40, !8, i64 48, !34, i64 56, !29, i64 64, !29, i64 72, !8, i64 80, !35, i64 88, !7, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !34, i64 128, !8, i64 136, !8, i64 140, !7, i64 144, !7, i64 176}
!37 = !{!36, !34, i64 128}
!38 = !{!36, !35, i64 88}
!39 = !{!36, !8, i64 48}
!40 = !{!27, !8, i64 460}
!41 = !{!27, !8, i64 468}
!42 = !{!36, !10, i64 32}
!43 = !{!36, !10, i64 40}
!44 = !{!27, !8, i64 368}
!45 = !{!10, !10, i64 0}
!46 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !10, i64 80, !10, i64 88}
!47 = !{!46, !8, i64 20}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!36, !8, i64 112}
!50 = !{!27, !11, i64 0}
!51 = !{!"any p2 pointer", !10, i64 0}
!52 = !{!"p2 omnipotent char", !51, i64 0}
!53 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !8, i64 40, !7, i64 44, !8, i64 124, !29, i64 128, !52, i64 136, !8, i64 144, !52, i64 152, !8, i64 160, !8, i64 164}
!54 = !{!53, !8, i64 40}
!55 = !{!7, !7, i64 0}
!56 = !{!53, !10, i64 0}
!57 = !{!"p1 long", !10, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!36, !8, i64 116}
!60 = !{!36, !8, i64 120}
!61 = !{!36, !29, i64 72}
!62 = !{!36, !8, i64 80}
!63 = !{!27, !8, i64 316}
!64 = !{!36, !8, i64 136}
!65 = !{!36, !8, i64 140}
!66 = !{!27, !8, i64 472}
!67 = !{!27, !8, i64 88}
!68 = !{!27, !14, i64 40}
!69 = !{!"jpeg_destination_mgr", !34, i64 0, !29, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!70 = !{!69, !34, i64 0}
!71 = !{!36, !34, i64 56}
!72 = !{!69, !29, i64 8}
!73 = !{!36, !29, i64 64}
!74 = !{!27, !8, i64 416}
!75 = !{!"p1 short", !10, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!16, !16, i64 0}
!78 = !{!29, !29, i64 0}
!79 = !{!27, !8, i64 464}
!80 = !{ptr @emit_bits}
!81 = !{!69, !10, i64 24}
!82 = !{!"llvm.loop.unswitch.partial.disable"}
!83 = !{!36, !10, i64 0}
!84 = distinct !{!84, !48}
!85 = !{!36, !10, i64 8}
!86 = !{!36, !10, i64 24}
!87 = !{!46, !8, i64 24}
!88 = distinct !{!88, !48}
!89 = distinct !{!89, !48, !82}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !82}
!94 = distinct !{!94, !82}
!95 = distinct !{!95, !48}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !82}
!98 = !{ptr @emit_eobrun}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48, !82}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
end_hunk_0
