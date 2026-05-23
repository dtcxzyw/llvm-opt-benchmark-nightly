inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"FindShift: units\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FindShift: type\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*pg)!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*sg)!\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AdjustSize: Up(x) == x!\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"cannot recover from earlier errors\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"AdjustSize: COL_THR!\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"AdjustSize: type(y) != SPLIT!\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"AdjustSize: actual(index)==nilobj!\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AdjustSize: index non-C!\00", align 1
@GalleySym = external local_unnamed_addr global ptr, align 8
@ForceGalleySym = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"size constraint %s,%s,%s broken by %s,%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"size adjustment of %s not implemented\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"AdjustSize: span\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AdjustSize:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @FindShift(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 7168
  switch i16 %i.c, label %bb.d [
    i16 1024, label %bb.b
    i16 5120, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8
  %i.f = sext i16 %i.e to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.p = load i16, ptr %i.o, align 2, !tbaa !8
  %i.q = sext i16 %i.p to i32
  %i.r = mul nsw i32 %i.n, %i.q
  %i.s = sdiv i32 %i.r, 4096
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.t, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.013 = phi i32 [ undef, %bb.d ], [ %i.f, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.w = load i16, ptr %i.v, align 2, !tbaa !8
  switch i16 %i.w, label %bb.h [
    i16 158, label %bb.f
    i16 159, label %bb.i
    i16 160, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = sext i32 %2 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = sub nsw i32 %.013, %i.aa
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = sub nsw i32 0, %.013
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ae = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ undef, %bb.h ], [ %i.ab, %bb.f ], [ %i.ac, %bb.g ], [ %.013, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetNeighbours(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef captures(none) initializes((0, 8)) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5, ptr noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !11
  %.06399 = load ptr, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06399, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.preheader89, label %.loopexit90

.preheader89:                                     ; preds = %bb.a, %.critedge
  %.063100 = phi ptr [ %.063, %.critedge ], [ %.06399, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader89, %bb.b
  %.063.pn = phi ptr [ %storemerge, %bb.b ], [ %.063100, %.preheader89 ]
  %storemerge.in = getelementptr inbounds nuw i8, ptr %.063.pn, i64 16
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !8 ; 4 uses
  store ptr %storemerge, ptr %3, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %storemerge, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !8     ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.b
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SplitIsDefinite(ptr noundef nonnull %storemerge) #4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = add i8 %i.e, -9
  %or.cond = icmp ult i8 %i.g, 91
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn81 = phi ptr [ %i.h, %bb.e ], [ %storemerge71, %bb.f ]
  %storemerge71.in = getelementptr inbounds nuw i8, ptr %.pn81, i64 16
  %storemerge71 = load ptr, ptr %storemerge71.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge71, ptr %2, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge71, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !8     ; 3 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %.preheader88, !llvm.loop !13

.preheader88:                                     ; preds = %bb.f
  %i.l = add i8 %i.j, -119
  %or.cond82102 = icmp ult i8 %i.l, 20
  br i1 %or.cond82102, label %.lr.ph, label %.critedge2

.loopexit87:                                      ; preds = %bb.g
  %i.m = add i8 %i.q, -119
  %or.cond82 = icmp ult i8 %i.m, 20
  br i1 %or.cond82, label %.lr.ph, label %.critedge2, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader88, %.loopexit87
  %.064103 = phi ptr [ %i.n, %.loopexit87 ], [ %0, %.preheader88 ]
  %i.n = load ptr, ptr %.064103, align 8, !tbaa !8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph
  %.pn80 = phi ptr [ %i.o, %.lr.ph ], [ %storemerge79, %bb.g ]
  %storemerge79.in = getelementptr inbounds nuw i8, ptr %.pn80, i64 16
  %storemerge79 = load ptr, ptr %storemerge79.in, align 8, !tbaa !8 ; 3 uses
  store ptr %storemerge79, ptr %2, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge79, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !8     ; 3 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %.loopexit87, !llvm.loop !16

.critedge2:                                       ; preds = %.loopexit87, %.preheader88
  %.064.lcssa = phi ptr [ %0, %.preheader88 ], [ %i.n, %.loopexit87 ] ; 2 uses
  %.lcssa95 = phi i8 [ %i.j, %.preheader88 ], [ %i.q, %.loopexit87 ]
  %i.s = icmp eq i8 %.lcssa95, 1
  br i1 %i.s, label %.loopexit90, label %bb.h

bb.h:                                             ; preds = %.critedge2
  %i.t = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.t, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.loopexit90

.critedge:                                        ; preds = %bb.c, %bb.d
  %.063 = load ptr, ptr %.063100, align 8, !tbaa !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.063, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.preheader89, label %.loopexit90, !llvm.loop !17

.loopexit90:                                      ; preds = %.critedge, %bb.a, %.critedge2, %bb.h
  %.165 = phi ptr [ %.064.lcssa, %.critedge2 ], [ %.064.lcssa, %bb.h ], [ %0, %bb.a ], [ %0, %.critedge ]
  store ptr null, ptr %4, align 8, !tbaa !11
  %.0.in105 = getelementptr inbounds nuw i8, ptr %.165, i64 8
  %.0106 = load ptr, ptr %.0.in105, align 8, !tbaa !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0106, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.preheader85, label %.loopexit86

.preheader85:                                     ; preds = %.loopexit90, %.critedge4
  %.0107 = phi ptr [ %.0, %.critedge4 ], [ %.0106, %.loopexit90 ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader85, %bb.i
  %.0.pn = phi ptr [ %storemerge72, %bb.i ], [ %.0107, %.preheader85 ]
  %storemerge72.in = getelementptr inbounds nuw i8, ptr %.0.pn, i64 16
  %storemerge72 = load ptr, ptr %storemerge72.in, align 8, !tbaa !8 ; 4 uses
  store ptr %storemerge72, ptr %5, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge72, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.ac, label %bb.k [
    i8 0, label %bb.i
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 @SplitIsDefinite(ptr noundef nonnull %storemerge72) #4
  %.not73 = icmp eq i32 %i.ad, 0
  br i1 %.not73, label %.critedge4, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = add i8 %i.ac, -9
  %or.cond83 = icmp ult i8 %i.ae, 91
  br i1 %or.cond83, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
begin_hunk_1_@AdjustSize:bb.a
  %i.er = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.er, ptr %i.r, align 4, !tbaa !8
  %i.es = load i32, ptr %i.g, align 4, !tbaa !4
  %i.et = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.l
  store i32 %i.es, ptr %i.eu, align 4, !tbaa !8
  br label %bb.de

bb.am:                                            ; preds = %bb.o, %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %.0349, i64 32
  %i.ew = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.ew, ptr %i.r, align 4, !tbaa !8
  %i.ex = load i32, ptr %i.g, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.l
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !8
  %i.fa = load i8, ptr %i.ev, align 8, !tbaa !8
  %i.fb = icmp ne i8 %i.fa, 30
  %i.fc = xor i1 %i.m, %i.fb
  br i1 %i.fc, label %.critedge2, label %bb.de

bb.an:                                            ; preds = %bb.o, %bb.o
  %i.fd = getelementptr inbounds nuw i8, ptr %.0349, i64 32
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.fe, ptr %i.r, align 4, !tbaa !8
  %i.ff = load i32, ptr %i.g, align 4, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.l
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !8
  %i.fi = load i8, ptr %i.fd, align 8, !tbaa !8
  %i.fj = icmp ne i8 %i.fi, 32
  %i.fk = xor i1 %i.m, %i.fj
  br i1 %i.fk, label %.critedge2, label %bb.de

bb.ao:                                            ; preds = %bb.o
  %i.fl = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.fl, ptr %i.r, align 4, !tbaa !8
  %i.fm = load i32, ptr %i.g, align 4, !tbaa !4   ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.l
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !8
  %i.fp = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  br i1 %i.m, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fq = getelementptr inbounds nuw i8, ptr %.0349, i64 64
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !8
  %i.fs = sdiv i32 %i.fr, 128                     ; 2 uses
  %i.ft = mul nsw i32 %i.fp, %i.fs
  store i32 %i.ft, ptr %i.f, align 4, !tbaa !4
  %i.fu = mul nsw i32 %i.fm, %i.fs
  store i32 %i.fu, ptr %i.g, align 4, !tbaa !4
  br label %bb.de

bb.aq:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %.0349, i64 72
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !8
  %i.fx = sdiv i32 %i.fw, 128                     ; 2 uses
  %i.fy = mul nsw i32 %i.fp, %i.fx
  store i32 %i.fy, ptr %i.f, align 4, !tbaa !4
  %i.fz = mul nsw i32 %i.fm, %i.fx
  store i32 %i.fz, ptr %i.g, align 4, !tbaa !4
  br label %bb.de

bb.ar:                                            ; preds = %bb.o
  %i.ga = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.ga, ptr %i.r, align 4, !tbaa !8
  %i.gb = load i32, ptr %i.g, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.l
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %.0349, i64 76
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !8
  call void @RotateSize(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %.0356, i32 noundef %i.gf) #4
  %i.gg = load i32, ptr %i.h, align 4, !tbaa !4   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0349, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !8
  %.not405 = icmp eq i32 %i.gg, %i.gi
  %.pre741 = load i32, ptr %i.i, align 4, !tbaa !4 ; 2 uses
  br i1 %.not405, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gj = getelementptr inbounds nuw i8, ptr %.0349, i64 56
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !8
  %.not406 = icmp eq i32 %.pre741, %i.gk
  br i1 %.not406, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @AdjustSize(ptr noundef nonnull %.0349, i32 noundef %i.gg, i32 noundef %.pre741, i32 noundef 0)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gl = load i32, ptr %i.j, align 4, !tbaa !4   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0349, i64 52
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %.not407 = icmp eq i32 %i.gl, %i.gn
  %.pre742 = load i32, ptr %i.k, align 4, !tbaa !4 ; 2 uses
  br i1 %.not407, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.go = getelementptr inbounds nuw i8, ptr %.0349, i64 60
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !8
  %.not408 = icmp eq i32 %.pre742, %i.gp
  br i1 %.not408, label %.critedge2, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @AdjustSize(ptr noundef nonnull %.0349, i32 noundef %i.gl, i32 noundef %.pre742, i32 noundef 1)
  br label %.critedge2

bb.ax:                                            ; preds = %bb.o, %bb.o
  %i.gq = getelementptr inbounds nuw i8, ptr %.0349, i64 32
  %i.gr = icmp ne i8 %i.bg, 26
  %i.gs = xor i1 %i.m, %i.gr
  %i.gt = load i32, ptr %i.f, align 4, !tbaa !4   ; 4 uses
  br i1 %i.gs, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.gu = getelementptr inbounds nuw i8, ptr %.0349, i64 64 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !8  ; 2 uses
  %.not402 = icmp sgt i32 %i.gt, %i.gv
  br i1 %.not402, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gw = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %i.gx = add nsw i32 %i.gw, %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %.0349, i64 68
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !8
  %.not403 = icmp sgt i32 %i.gx, %i.gz
  br i1 %.not403, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %.0349, i64 72
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !8
  %.not404 = icmp sgt i32 %i.gw, %i.hb
  br i1 %.not404, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hc = call ptr @EchoLength(i32 noundef %i.gv) #4
  %i.hd = getelementptr inbounds nuw i8, ptr %.0349, i64 68 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !8
  %i.hf = call ptr @EchoLength(i32 noundef %i.he) #4
  %i.hg = getelementptr inbounds nuw i8, ptr %.0349, i64 72 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !8
  %i.hi = call ptr @EchoLength(i32 noundef %i.hh) #4
  %i.hj = load i32, ptr %i.f, align 4, !tbaa !4
  %i.hk = call ptr @EchoLength(i32 noundef %i.hj) #4
  %i.hl = load i32, ptr %i.g, align 4, !tbaa !4
  %i.hm = call ptr @EchoLength(i32 noundef %i.hl) #4
  %i.hn = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 16, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %i.gq, ptr noundef %i.hc, ptr noundef %i.hf, ptr noundef %i.hi, ptr noundef %i.hk, ptr noundef %i.hm) #4 ; 0 uses
  store i32 8388607, ptr %i.gu, align 8, !tbaa !8
  %i.ho = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  %i.hp = load i32, ptr %i.g, align 4, !tbaa !4
  %i.hq = add nsw i32 %i.hp, %i.ho
  store i32 %i.hq, ptr %i.hd, align 4, !tbaa !8
  store i32 8388607, ptr %i.hg, align 8, !tbaa !8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hr = phi i32 [ %i.ho, %bb.bb ], [ %i.gt, %bb.ba ]
  store i32 %i.hr, ptr %i.r, align 4, !tbaa !8
  %i.hs = load i32, ptr %i.g, align 4, !tbaa !4
  %i.ht = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.l
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !8
  call void @EnlargeToConstraint(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.gu) #4
  br label %bb.de

bb.bd:                                            ; preds = %bb.ax
  store i32 %i.gt, ptr %i.r, align 4, !tbaa !8
  %i.hv = load i32, ptr %i.g, align 4, !tbaa !4
  %i.hw = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.l
  store i32 %i.hv, ptr %i.hx, align 4, !tbaa !8
  br label %bb.de

bb.be:                                            ; preds = %bb.o, %bb.o
  %i.hy = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.hy, ptr %i.r, align 4, !tbaa !8
  %i.hz = load i32, ptr %i.g, align 4, !tbaa !4
  %i.ia = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.l
  store i32 %i.hz, ptr %i.ib, align 4, !tbaa !8
  br label %bb.de

bb.bf:                                            ; preds = %bb.o, %bb.o
  %i.ic = getelementptr inbounds nuw i8, ptr %.0349, i64 32
  %i.id = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  store i32 %i.id, ptr %i.r, align 4, !tbaa !8
  %i.ie = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.l
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !8
  %i.ih = load i8, ptr %i.ic, align 8, !tbaa !8
  %i.ii = icmp ne i8 %i.ih, 28
  %i.ij = xor i1 %i.m, %i.ii
  br i1 %i.ij, label %bb.bg, label %bb.de

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %.0349, i64 64
  %i.il = load i16, ptr %i.ik, align 8
  %i.im = and i16 %i.il, 7168
  switch i16 %i.im, label %bb.bj [
    i16 1024, label %bb.bh
    i16 5120, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.in = getelementptr inbounds nuw i8, ptr %.0349, i64 66
  %i.io = load i16, ptr %i.in, align 2, !tbaa !8
  %i.ip = sext i16 %i.io to i32
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.iq = add nsw i32 %i.ie, %i.id
  %i.ir = getelementptr inbounds nuw i8, ptr %.0349, i64 66
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !8
  %i.it = sext i16 %i.is to i32
  %i.iu = mul nsw i32 %i.iq, %i.it
  %i.iv = sdiv i32 %i.iu, 4096
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.iw = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ix = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.iw, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.013.i = phi i32 [ undef, %bb.bj ], [ %i.ip, %bb.bh ], [ %i.iv, %bb.bi ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0349, i64 70
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !8
  switch i16 %i.iz, label %bb.bn [
    i16 158, label %bb.bl
    i16 159, label %FindShift.exit
    i16 160, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ja = load i32, ptr %i.r, align 4, !tbaa !8
  %i.jb = sub nsw i32 %.013.i, %i.ja
  br label %FindShift.exit

bb.bm:                                            ; preds = %bb.bk
  %i.jc = sub nsw i32 0, %.013.i
  br label %FindShift.exit

bb.bn:                                            ; preds = %bb.bk
  %i.jd = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.je = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.jd, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %FindShift.exit

FindShift.exit:                                   ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i = phi i32 [ undef, %bb.bn ], [ %i.jb, %bb.bl ], [ %i.jc, %bb.bm ], [ %.013.i, %bb.bk ] ; 2 uses
  %i.jf = load i32, ptr %i.f, align 4, !tbaa !4
  %i.jg = add nsw i32 %i.jf, %.0.i
  %i.jh = call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %i.ji = call i32 @llvm.umin.i32(i32 %i.jh, i32 8388607)
  store i32 %i.ji, ptr %i.f, align 4, !tbaa !4
  %i.jj = load i32, ptr %i.g, align 4, !tbaa !4
  %i.jk = sub nsw i32 %i.jj, %.0.i
  %i.jl = call i32 @llvm.smax.i32(i32 %i.jk, i32 0)
  %i.jm = call i32 @llvm.umin.i32(i32 %i.jl, i32 8388607)
  store i32 %i.jm, ptr %i.g, align 4, !tbaa !4
  br label %bb.de

bb.bo:                                            ; preds = %bb.o, %bb.o
  %i.jn = icmp ne i8 %i.bg, 16
  %i.jo = xor i1 %i.m, %i.jn
  br i1 %i.jo, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jp = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.jq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.jp, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jr = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.jr, ptr %i.r, align 4, !tbaa !8
  %i.js = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.l
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !8
  %i.jv = load i32, ptr %i.f, align 4, !tbaa !4
  %i.jw = getelementptr inbounds nuw i8, ptr %.0349, i64 48
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.l
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !8
  %.428 = call i32 @llvm.smax.i32(i32 %i.jv, i32 %i.jy)
  store i32 %.428, ptr %i.f, align 4, !tbaa !4
  %i.jz = getelementptr inbounds nuw i8, ptr %.0349, i64 56
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.l
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !8
  %i.kc = call i32 @llvm.smax.i32(i32 %i.js, i32 %i.kb)
  store i32 %i.kc, ptr %i.g, align 4, !tbaa !4
  br label %bb.de

bb.br:                                            ; preds = %bb.o, %bb.o, %bb.o
  %i.kd = icmp eq i8 %i.bg, 19
  %i.ke = xor i1 %i.o, %i.kd
  br i1 %i.ke, label %bb.bs, label %.preheader453

.preheader453:                                    ; preds = %bb.br
  %.1348597 = load ptr, ptr %i.bd, align 8, !tbaa !8 ; 3 uses
  %.not396598 = icmp eq ptr %.1348597, %.0349
  br i1 %.not396598, label %._crit_edge, label %.preheader445

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  br i1 %i.m, label %bb.bt, label %.critedge.i

bb.bt:                                            ; preds = %bb.bs
  %i.kf = icmp eq i8 %i.bg, 17
  br i1 %i.kf, label %bb.bu, label %.critedge.i

bb.bu:                                            ; preds = %bb.bt
  %i.kg = getelementptr inbounds nuw i8, ptr %.0349, i64 68
  %i.kh = load i8, ptr %i.kg, align 4
  %i.ki = and i8 %i.kh, 112
  %i.kj = icmp eq i8 %i.ki, 112
  br i1 %i.kj, label %bb.bv, label %.critedge.i

bb.bv:                                            ; preds = %bb.bu
  %i.kk = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.kk, ptr %i.q, align 4, !tbaa !8
  %i.kl = load i32, ptr %i.g, align 4, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %.0356, i64 56
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %.0349, i64 48
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !8
  store i32 %i.ko, ptr %i.f, align 4, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %.0349, i64 56
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !8
  br label %CatAdjustSize.exit

.critedge.i:                                      ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sink.i = phi i64 [ 24, %bb.bu ], [ 24, %bb.bt ], [ 16, %bb.bs ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0356, i64 %.sink.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !8
  call void @SetNeighbours(ptr noundef %i.ks, i32 noundef range(i32 0, 2) %.0338, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.kt = load i8, ptr %i.al, align 8, !tbaa !8
  %i.ku = add i8 %i.kt, -2
  %or.cond.i = icmp ult i8 %i.ku, 7
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.kw = icmp eq ptr %i.kv, null                 ; 3 uses
  br i1 %or.cond.i, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %.critedge.i
  br i1 %i.kw, label %bb.bx, label %.thread99.i

bb.bx:                                            ; preds = %bb.bw
  %i.kx = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  %i.ky = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.by, label %.thread.i

.thread99.i:                                      ; preds = %bb.bw
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.l ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !8
  %i.le = load i32, ptr %i.f, align 4, !tbaa !4
  %i.lf = load i32, ptr %i.g, align 4, !tbaa !4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 44
  %i.lh = call i32 @MinGap(i32 noundef %i.ld, i32 noundef %i.le, i32 noundef %i.lf, ptr noundef nonnull %i.lg) #4 ; 2 uses
  %i.li = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.bz, label %.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.lk = load i32, ptr %i.g, align 4, !tbaa !4
  br label %bb.cg

.thread.i:                                        ; preds = %bb.bx, %.thread99.i
  %i.ll = phi ptr [ %i.li, %.thread99.i ], [ %i.ky, %bb.bx ]
  %i.lm = phi i32 [ %i.lh, %.thread99.i ], [ %i.kx, %bb.bx ] ; 2 uses
  %i.ln = load i32, ptr %i.g, align 4, !tbaa !4
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.l ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.l ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ll, i64 44 ; 2 uses
  %i.lw = call i32 @MinGap(i32 noundef %i.ln, i32 noundef %i.lr, i32 noundef %i.lu, ptr noundef nonnull %i.lv) #4 ; 2 uses
  br i1 %i.kw, label %.thread97.i, label %.thread98.i

.thread97.i:                                      ; preds = %.thread.i
  %i.lx = load i32, ptr %i.lq, align 4, !tbaa !8
  br label %bb.cg

bb.bz:                                            ; preds = %.thread99.i
  %i.ly = load i32, ptr %i.g, align 4, !tbaa !4
  %i.lz = load i32, ptr %i.lc, align 4, !tbaa !8
  br label %bb.cg

.thread98.i:                                      ; preds = %.thread.i
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.l
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !8
  %i.me = load i32, ptr %i.lq, align 4, !tbaa !8
end_hunk_1
