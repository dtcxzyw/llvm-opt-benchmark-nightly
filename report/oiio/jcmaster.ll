inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"libjpeg-turbo version 3.1.2 (build 20260314)\00", align 1
@using_std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@using_std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg_calc_jpeg_dimensions(ptr nofree noundef captures(none) initializes((80, 88), (356, 364)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, i32 8, i32 1            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load <2 x i32>, ptr %i.f, align 8, !tbaa !3
  store <2 x i32> %i.h, ptr %i.g, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.e, ptr %i.i, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.e, ptr %i.j, align 8, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %i.b = alloca [10 x [64 x i32]], align 16       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 13 uses
  store ptr @prepare_for_pass, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @pass_startup, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @finish_pass_master, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  br i1 %.not, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 20, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !44
  %i.p = load ptr, ptr %0, align 8, !tbaa !38
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  tail call void %i.q(ptr noundef nonnull %0) #8, !inline_history !46
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %.not.i = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %.pre90 = load ptr, ptr %i.c, align 8, !tbaa !7 ; 3 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 1, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 0, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit247.sink.split.i, label %.loopexit247.i

bb.g:                                             ; preds = %bb.d
  %.not223.i = icmp eq i32 %i.v, 63
  br i1 %.not223.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 1, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 0, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51 ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader248.i.preheader, label %.loopexit247.i

.preheader248.i.preheader:                        ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.ai, i1 false), !tbaa !3
  br label %.loopexit247.i

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 0, ptr %i.aj, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 0, ptr %i.ak, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.loopexit247.sink.split.i, label %.loopexit247.i

.loopexit247.sink.split.i:                        ; preds = %bb.i, %bb.f
  %.sink.i = phi i32 [ %i.aa, %bb.f ], [ %i.am, %bb.i ] ; 2 uses
  %i.ao = zext nneg i32 %.sink.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.ap, i1 false), !tbaa !3
  br label %.loopexit247.i

.loopexit247.i:                                   ; preds = %.preheader248.i.preheader, %.loopexit247.sink.split.i, %bb.i, %bb.h, %bb.f
  %i.aq = phi i32 [ %i.af, %.preheader248.i.preheader ], [ %.sink.i, %.loopexit247.sink.split.i ], [ %i.am, %bb.i ], [ %i.af, %bb.h ], [ %i.aa, %bb.f ]
  %i.ar = phi i32 [ 1, %.preheader248.i.preheader ], [ 0, %.loopexit247.sink.split.i ], [ 0, %bb.i ], [ 1, %bb.h ], [ 0, %bb.f ]
  %i.as = load i32, ptr %i.j, align 8, !tbaa !37
  %.not224271.i = icmp slt i32 %i.as, 1
  br i1 %.not224271.i, label %._crit_edge278.i, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %.loopexit247.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit245.i, %.lr.ph277.i
  %.0274.i = phi ptr [ %i.r, %.lr.ph277.i ], [ %i.fy, %.loopexit245.i ] ; 9 uses
  %.0209272.i = phi i32 [ 1, %.lr.ph277.i ], [ %i.fz, %.loopexit245.i ] ; 13 uses
  %i.aw = load i32, ptr %.0274.i, align 4, !tbaa !52 ; 8 uses
  %i.ax = add i32 %i.aw, -5
  %or.cond.i = icmp ult i32 %i.ax, -4
  br i1 %or.cond.i, label %bb.k, label %.lr.ph259.i

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i32 27, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !44
  %i.bb = load ptr, ptr %0, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i32 4, ptr %i.bc, align 4, !tbaa !44
  %i.bd = load ptr, ptr %0, align 8, !tbaa !38
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  tail call void %i.be(ptr noundef nonnull %0) #8, !inline_history !46
  %i.bf = icmp sgt i32 %i.aw, 0
  br i1 %i.bf, label %.lr.ph259.i, label %._crit_edge.i

.lr.ph259.i:                                      ; preds = %bb.k, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.0274.i, i64 4 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph259.i
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !51
  %.not238.peel.i = icmp slt i32 %i.bh, %i.bj
  br i1 %.not238.peel.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph259.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 20, ptr %i.bl, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  store i32 %.0209272.i, ptr %i.bm, align 4, !tbaa !44
  %i.bn = load ptr, ptr %0, align 8, !tbaa !38
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45
  tail call void %i.bo(ptr noundef nonnull %0) #8, !inline_history !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %exitcond.peel.not.i = icmp eq i32 %i.aw, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.n, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 1, %bb.n ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3  ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.peel.next.i
  %i.bs = load i32, ptr %i.at, align 4, !tbaa !51
  %.not238.i = icmp slt i32 %i.bq, %i.bs
  br i1 %.not238.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.peel.next.i
  %i.bt = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 20, ptr %i.bu, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  store i32 %.0209272.i, ptr %i.bv, align 4, !tbaa !44
  %i.bw = load ptr, ptr %0, align 8, !tbaa !38
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45
  tail call void %i.bx(ptr noundef %0) #8, !inline_history !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.by = getelementptr i8, ptr %i.bp, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %.not240.i = icmp sgt i32 %i.bq, %i.bz
  br i1 %.not240.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i32 20, ptr %i.cb, align 8, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  store i32 %.0209272.i, ptr %i.cc, align 4, !tbaa !44
  %i.cd = load ptr, ptr %0, align 8, !tbaa !38
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45
  tail call void %i.ce(ptr noundef nonnull %0) #8, !inline_history !46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !53

._crit_edge.i:                                    ; preds = %bb.s, %bb.n, %bb.k
  %i.cf = phi i1 [ false, %bb.k ], [ true, %bb.n ], [ true, %bb.s ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0274.i, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0274.i, i64 24
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !49 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0274.i, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !56
  %.fr.i = freeze i32 %i.cl                       ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0274.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !57 ; 9 uses
  %i.co = load i32, ptr %i.au, align 8, !tbaa !50
  %.not227.i = icmp eq i32 %i.co, 0
  br i1 %.not227.i, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.cp = load i32, ptr %i.av, align 8, !tbaa !58
  %i.cq = icmp eq i32 %i.cp, 12
  %i.cr = select i1 %i.cq, i32 13, i32 10         ; 2 uses
  %or.cond3.i = icmp ugt i32 %i.ch, 63
  br i1 %or.cond3.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = icmp slt i32 %i.cj, %i.ch
  %i.ct = icmp sgt i32 %i.cj, 63
  %or.cond5.i = or i1 %i.cs, %i.ct
  %i.cu = icmp slt i32 %.fr.i, 0
  %or.cond7.i = or i1 %or.cond5.i, %i.cu
  br i1 %or.cond7.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp samesign ugt i32 %.fr.i, %i.cr
  %i.cw = icmp slt i32 %i.cn, 0
  %or.cond9.i = select i1 %i.cv, i1 true, i1 %i.cw
  %i.cx = icmp sgt i32 %i.cn, %i.cr
  %or.cond241.i = select i1 %or.cond9.i, i1 true, i1 %i.cx
  br i1 %or.cond241.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cy = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i32 18, ptr %i.cz, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i32 %.0209272.i, ptr %i.da, align 4, !tbaa !44
  %i.db = load ptr, ptr %0, align 8, !tbaa !38
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !45
  tail call void %i.dc(ptr noundef nonnull %0) #8, !inline_history !46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.not232.i = icmp eq i32 %i.cj, 0
  br i1 %.not232.i, label %bb.aa, label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %.not231.i = icmp eq i32 %i.aw, 1
  br i1 %.not231.i, label %bb.aa, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %i.de = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 18, ptr %i.df, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 44
  store i32 %.0209272.i, ptr %i.dg, align 4, !tbaa !44
  %i.dh = load ptr, ptr %0, align 8, !tbaa !38
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !45
  tail call void %i.di(ptr noundef nonnull %0) #8, !inline_history !46
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i, %bb.z, %bb.y
  br i1 %i.cf, label %.lr.ph267.i, label %.loopexit245.i

.lr.ph267.i:                                      ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %.0274.i, i64 4
  %.not234260.i = icmp sgt i32 %i.ch, %i.cj
  %i.dk = add nsw i32 %.fr.i, -1
  %.not236.i = icmp eq i32 %i.cn, %i.dk
  %.not236.fr.i = freeze i1 %.not236.i            ; 2 uses
  %.not237.i = icmp eq i32 %.fr.i, 0
  %i.dl = sext i32 %i.ch to i64                   ; 3 uses
  %i.dm = add i32 %i.cj, 1                        ; 3 uses
  %wide.trip.count311.i = zext nneg i32 %i.aw to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge264.i, %.lr.ph267.i
  %indvars.iv308.i = phi i64 [ 0, %.lr.ph267.i ], [ %indvars.iv.next309.i, %._crit_edge264.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv308.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.dp ; 4 uses
  br i1 %i.dd, label %bb.ae, label %bb.ac

end_hunk_0
