Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcmaster?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"libjpeg-turbo version 3.2.0 (build 20260905)\00", align 1
@using_std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@using_std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: nounwind uwtable
define void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 6 uses
  %i.b = alloca [10 x [64 x i32]], align 16       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 13 uses
  store ptr @prepare_for_pass, ptr %i.d, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @pass_startup, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @finish_pass_master, ptr %i.f, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  br i1 %.not, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = load i32, ptr %i.j, align 8, !tbaa !89
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 19, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = load ptr, ptr %0, align 8, !tbaa !31
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  tail call void %i.q(ptr noundef nonnull %0) #7, !inline_history !73
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !90
  %.not.i = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !91   ; 2 uses
  %.pre90 = load ptr, ptr %i.c, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 1, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.y, align 4, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41  ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.loopexit247.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %2 = zext nneg i32 %i.aa to i64
  %3 = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %3, i1 false), !tbaa !42
  br label %.loopexit247.i

bb.g:                                             ; preds = %bb.d
  %.not223.i = icmp eq i32 %i.v, 63
  br i1 %.not223.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 1, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 0, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader248.i.preheader, label %.loopexit247.i

.preheader248.i.preheader:                        ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.ai, i1 false), !tbaa !42
  br label %.loopexit247.i

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre90, i64 32
  store i32 0, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.ak, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.loopexit247.sink.split.i, label %.loopexit247.i

.loopexit247.sink.split.i:                        ; preds = %bb.i
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ap, i1 false), !tbaa !42
  br label %.loopexit247.i

.loopexit247.i:                                   ; preds = %.loopexit247.sink.split.i, %bb.i, %.preheader248.i.preheader, %bb.h, %.lr.ph.preheader.i, %bb.f
  %4 = phi i32 [ %i.aa, %.lr.ph.preheader.i ], [ %i.af, %.preheader248.i.preheader ], [ %i.am, %.loopexit247.sink.split.i ], [ %i.aa, %bb.f ], [ %i.af, %bb.h ], [ %i.am, %bb.i ]
  %5 = phi i32 [ 0, %.lr.ph.preheader.i ], [ 1, %.preheader248.i.preheader ], [ 0, %.loopexit247.sink.split.i ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.i ]
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !89
  %.not224271.i = icmp slt i32 %i.aq, 1
  br i1 %.not224271.i, label %._crit_edge278.i, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %.loopexit247.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit245.i, %.lr.ph277.i
  %.0212274.i = phi i32 [ 1, %.lr.ph277.i ], [ %i.fx, %.loopexit245.i ] ; 13 uses
  %.0213272.i = phi ptr [ %i.r, %.lr.ph277.i ], [ %i.fw, %.loopexit245.i ] ; 9 uses
  %i.au = load i32, ptr %.0213272.i, align 4, !tbaa !43 ; 8 uses
  %i.av = add i32 %i.au, -5
  %or.cond.i = icmp ult i32 %i.av, -4
  br i1 %or.cond.i, label %bb.k, label %.lr.ph259.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 26, ptr %i.ax, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !37
  %i.az = load ptr, ptr %0, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i32 4, ptr %i.ba, align 4, !tbaa !37
  %i.bb = load ptr, ptr %0, align 8, !tbaa !31
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  tail call void %i.bc(ptr noundef nonnull %0) #7, !inline_history !73
  %i.bd = icmp sgt i32 %i.au, 0
  br i1 %i.bd, label %.lr.ph259.i, label %._crit_edge.i

.lr.ph259.i:                                      ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 4 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph259.i
  %i.bh = load i32, ptr %i.ar, align 4, !tbaa !41
  %.not238.peel.i = icmp slt i32 %i.bf, %i.bh
  br i1 %.not238.peel.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph259.i
  %i.bi = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 19, ptr %i.bj, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  store i32 %.0212274.i, ptr %i.bk, align 4, !tbaa !37
  %i.bl = load ptr, ptr %0, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38
  tail call void %i.bm(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %exitcond.peel.not.i = icmp eq i32 %i.au, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.n, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 1, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.peel.next.i
  %i.bq = load i32, ptr %i.ar, align 4, !tbaa !41
  %.not238.i = icmp slt i32 %i.bo, %i.bq
  br i1 %.not238.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.peel.next.i
  %i.br = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 19, ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  store i32 %.0212274.i, ptr %i.bt, align 4, !tbaa !37
  %i.bu = load ptr, ptr %0, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  tail call void %i.bv(ptr noundef %0) #7, !inline_history !73
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = getelementptr i8, ptr %i.bn, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !42
  %.not240.i = icmp sgt i32 %i.bo, %i.bx
  br i1 %.not240.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i32 19, ptr %i.bz, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 44
  store i32 %.0212274.i, ptr %i.ca, align 4, !tbaa !37
  %i.cb = load ptr, ptr %0, align 8, !tbaa !31
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38
  tail call void %i.cc(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %bb.s, %bb.n, %bb.k
  %i.cd = phi i1 [ false, %bb.k ], [ true, %bb.n ], [ true, %bb.s ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !90 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !91 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !45
  %.fr.i = freeze i32 %i.cj                       ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46 ; 9 uses
  %i.cm = load i32, ptr %i.as, align 4, !tbaa !92
  %.not227.i = icmp eq i32 %i.cm, 0
  br i1 %.not227.i, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.cn = load i32, ptr %i.at, align 8, !tbaa !94
  %i.co = icmp eq i32 %i.cn, 12
  %i.cp = select i1 %i.co, i32 13, i32 10         ; 2 uses
  %or.cond3.i = icmp ugt i32 %i.cf, 63
  br i1 %or.cond3.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = icmp slt i32 %i.ch, %i.cf
  %i.cr = icmp sgt i32 %i.ch, 63
  %or.cond5.i = or i1 %i.cq, %i.cr
  %i.cs = icmp slt i32 %.fr.i, 0
  %or.cond7.i = or i1 %or.cond5.i, %i.cs
  br i1 %or.cond7.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = icmp samesign ugt i32 %.fr.i, %i.cp
  %i.cu = icmp slt i32 %i.cl, 0
  %or.cond9.i = select i1 %i.ct, i1 true, i1 %i.cu
  %i.cv = icmp sgt i32 %i.cl, %i.cp
  %or.cond241.i = select i1 %or.cond9.i, i1 true, i1 %i.cv
  br i1 %or.cond241.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cw = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i32 17, ptr %i.cx, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store i32 %.0212274.i, ptr %i.cy, align 4, !tbaa !37
  %i.cz = load ptr, ptr %0, align 8, !tbaa !31
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  tail call void %i.da(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.db = icmp eq i32 %i.cf, 0                    ; 2 uses
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.not232.i = icmp eq i32 %i.ch, 0
  br i1 %.not232.i, label %bb.aa, label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %.not231.i = icmp eq i32 %i.au, 1
  br i1 %.not231.i, label %bb.aa, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %i.dc = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 17, ptr %i.dd, align 8, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  store i32 %.0212274.i, ptr %i.de, align 4, !tbaa !37
  %i.df = load ptr, ptr %0, align 8, !tbaa !31
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38
  tail call void %i.dg(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i, %bb.z, %bb.y
  br i1 %i.cd, label %.lr.ph267.i, label %.loopexit245.i

.lr.ph267.i:                                      ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 4
  %.not234260.i = icmp sgt i32 %i.cf, %i.ch
  %i.di = add nsw i32 %.fr.i, -1
  %.not236.i = icmp eq i32 %i.cl, %i.di
  %.not236.fr.i = freeze i1 %.not236.i            ; 2 uses
  %.not237.i = icmp eq i32 %.fr.i, 0
  %i.dj = sext i32 %i.cf to i64                   ; 3 uses
  %i.dk = add i32 %i.ch, 1                        ; 3 uses
  %wide.trip.count311.i = zext nneg i32 %i.au to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge264.i, %.lr.ph267.i
  %indvars.iv308.i = phi i64 [ 0, %.lr.ph267.i ], [ %indvars.iv.next309.i, %._crit_edge264.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv308.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !42
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.dn ; 4 uses
  br i1 %i.db, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load i32, ptr %i.do, align 16, !tbaa !42
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i32 17, ptr %i.ds, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  store i32 %.0212274.i, ptr %i.dt, align 4, !tbaa !37
  %i.du = load ptr, ptr %0, align 8, !tbaa !31
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !38
  tail call void %i.dv(ptr noundef %0) #7, !inline_history !73
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not234260.i, label %._crit_edge264.i, label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %bb.ae
  br i1 %.not237.i, label %.lr.ph263.split.us.i, label %.lr.ph263.split.i

.lr.ph263.split.us.i:                             ; preds = %.lr.ph263.i
  br i1 %.not236.fr.i, label %.lr.ph263.split.us.split.i, label %.lr.ph263.split.us.split.us.i

.lr.ph263.split.us.split.us.i:                    ; preds = %.lr.ph263.split.us.i, %bb.ag
  %indvars.iv298.i = phi i64 [ %indvars.iv.next299.i, %bb.ag ], [ %i.dj, %.lr.ph263.split.us.i ] ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv298.i ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !42
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph263.split.us.split.us.i
  %i.dz = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store i32 17, ptr %i.ea, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 44
  store i32 %.0212274.i, ptr %i.eb, align 4, !tbaa !37
  %i.ec = load ptr, ptr %0, align 8, !tbaa !31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !38
  tail call void %i.ed(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph263.split.us.split.us.i
  store i32 %i.cl, ptr %i.dw, align 4, !tbaa !42
  %indvars.iv.next299.i = add nsw i64 %indvars.iv298.i, 1 ; 2 uses
  %lftr.wideiv301.i = trunc i64 %indvars.iv.next299.i to i32
  %exitcond302.not.i = icmp eq i32 %i.dk, %lftr.wideiv301.i
  br i1 %exitcond302.not.i, label %._crit_edge264.i, label %.lr.ph263.split.us.split.us.i, !llvm.loop !75

.lr.ph263.split.us.split.i:                       ; preds = %.lr.ph263.split.us.i, %bb.ai
  %indvars.iv303.i = phi i64 [ %indvars.iv.next304.i, %bb.ai ], [ %i.dj, %.lr.ph263.split.us.i ] ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv303.i ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !42
  %or.cond283.i = icmp slt i32 %i.ef, 1
  br i1 %or.cond283.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph263.split.us.split.i
  %i.eg = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  store i32 17, ptr %i.eh, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  store i32 %.0212274.i, ptr %i.ei, align 4, !tbaa !37
  %i.ej = load ptr, ptr %0, align 8, !tbaa !31
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !38
  tail call void %i.ek(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph263.split.us.split.i
  store i32 %i.cl, ptr %i.ee, align 4, !tbaa !42
  %indvars.iv.next304.i = add nsw i64 %indvars.iv303.i, 1 ; 2 uses
  %lftr.wideiv306.i = trunc i64 %indvars.iv.next304.i to i32
  %exitcond307.not.i = icmp eq i32 %i.dk, %lftr.wideiv306.i
  br i1 %exitcond307.not.i, label %._crit_edge264.i, label %.lr.ph263.split.us.split.i, !llvm.loop !75

.lr.ph263.split.i:                                ; preds = %.lr.ph263.i, %bb.aj
  %indvars.iv294.i = phi i64 [ %indvars.iv.next295.i, %bb.aj ], [ %i.dj, %.lr.ph263.i ] ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.do, i64 %indvars.iv294.i ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !42 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  %.not235.i = icmp eq i32 %.fr.i, %i.em
  %i.eo = and i1 %.not235.i, %i.en
  %or.cond363.i = and i1 %.not236.fr.i, %i.eo
  br i1 %or.cond363.i, label %bb.aj, label %.sink.split349.i.a

.sink.split349.i.a:                               ; preds = %.lr.ph263.split.i
  %i.ep = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store i32 17, ptr %i.eq, align 8, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  store i32 %.0212274.i, ptr %i.er, align 4, !tbaa !37
  %i.es = load ptr, ptr %0, align 8, !tbaa !31
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !38
  tail call void %i.et(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split349.i.a, %.lr.ph263.split.i
  store i32 %i.cl, ptr %i.el, align 4, !tbaa !42
  %indvars.iv.next295.i = add nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next295.i to i32
  %exitcond297.not.i = icmp eq i32 %i.dk, %lftr.wideiv.i
  br i1 %exitcond297.not.i, label %._crit_edge264.i, label %.lr.ph263.split.i, !llvm.loop !75

._crit_edge264.i:                                 ; preds = %bb.aj, %bb.ag, %bb.ai, %bb.ae
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 1 ; 2 uses
  %exitcond312.not.i = icmp eq i64 %indvars.iv.next309.i, %wide.trip.count311.i
  br i1 %exitcond312.not.i, label %.loopexit245.i, label %bb.ab, !llvm.loop !76

bb.ak:                                            ; preds = %._crit_edge.i
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !40
  %.not228.i = icmp eq i32 %i.ew, 0
  br i1 %.not228.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = add i32 %i.cf, -8
  %or.cond11.i = icmp ult i32 %i.ex, -7
  %i.ey = or i32 %.fr.i, %i.ch
  %i.ez = icmp ne i32 %i.ey, 0
  %or.cond15.i = select i1 %or.cond11.i, i1 true, i1 %i.ez
  %i.fa = icmp slt i32 %i.cl, 0
  %or.cond17.i = select i1 %or.cond15.i, i1 true, i1 %i.fa
  br i1 %or.cond17.i, label %.sink.split356.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load i32, ptr %i.at, align 8, !tbaa !94
  %.not229.i = icmp slt i32 %i.cl, %i.fb
  br i1 %.not229.i, label %bb.ao, label %.sink.split356.i

bb.an:                                            ; preds = %bb.ak
  %i.fc = icmp ne i32 %i.ch, 63
  %i.fd = or i32 %.fr.i, %i.cf
  %i.fe = icmp ne i32 %i.fd, 0
  %or.cond21.i = select i1 %i.fe, i1 true, i1 %i.fc
  %i.ff = icmp ne i32 %i.cl, 0
  %or.cond23.i = select i1 %or.cond21.i, i1 true, i1 %i.ff
  br i1 %or.cond23.i, label %.sink.split356.i, label %bb.ao

.sink.split356.i:                                 ; preds = %bb.an, %bb.am, %bb.al
  %i.fg = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store i32 17, ptr %i.fh, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  store i32 %.0212274.i, ptr %i.fi, align 4, !tbaa !37
  %i.fj = load ptr, ptr %0, align 8, !tbaa !31
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !38
  tail call void %i.fk(ptr noundef nonnull %0) #7, !inline_history !73
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split356.i, %bb.an, %bb.am
  br i1 %i.cd, label %.lr.ph270.i, label %.loopexit245.i

.lr.ph270.i:                                      ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 4
  %wide.trip.count316.i = zext nneg i32 %i.au to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph270.i
  %indvars.iv313.i = phi i64 [ 0, %.lr.ph270.i ], [ %indvars.iv.next314.i, %bb.ar ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv313.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !42
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !42
  %.not230.i = icmp eq i32 %i.fq, 0
  br i1 %.not230.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i32 19, ptr %i.fs, align 8, !tbaa !36
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 44
  store i32 %.0212274.i, ptr %i.ft, align 4, !tbaa !37
  %i.fu = load ptr, ptr %0, align 8, !tbaa !31
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !38
  tail call void %i.fv(ptr noundef %0) #7, !inline_history !73
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i32 1, ptr %i.fp, align 4, !tbaa !42
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next314.i, %wide.trip.count316.i
  br i1 %exitcond317.not.i, label %.loopexit245.i, label %bb.ap, !llvm.loop !77

.loopexit245.i:                                   ; preds = %._crit_edge264.i, %bb.ar, %bb.ao, %bb.aa
  %i.fw = getelementptr inbounds nuw i8, ptr %.0213272.i, i64 36
  %i.fx = add nuw nsw i32 %.0212274.i, 1
  %i.fy = load i32, ptr %i.j, align 8, !tbaa !89
  %.not224.not.i = icmp slt i32 %.0212274.i, %i.fy
  br i1 %.not224.not.i, label %bb.j, label %._crit_edge278.loopexit.i, !llvm.loop !78

._crit_edge278.loopexit.i:                        ; preds = %.loopexit245.i
  %.pre.i = load i32, ptr %i.as, align 4, !tbaa !92
  %.pre92 = load i32, ptr %i.ar, align 4, !tbaa !41
  br label %._crit_edge278.i

._crit_edge278.i:                                 ; preds = %._crit_edge278.loopexit.i, %.loopexit247.i
  %i.fz = phi i32 [ %.pre92, %._crit_edge278.loopexit.i ], [ %4, %.loopexit247.i ] ; 3 uses
  %i.ga = phi i32 [ %.pre.i, %._crit_edge278.loopexit.i ], [ %5, %.loopexit247.i ]
  %.not225.i = icmp eq i32 %i.ga, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gc = icmp sgt i32 %i.fz, 0                   ; 2 uses
  br i1 %.not225.i, label %.preheader.i, label %.preheader243.i

.preheader243.i:                                  ; preds = %._crit_edge278.i
  br i1 %i.gc, label %.lr.ph280.i, label %validate_script.exit

.preheader.i:                                     ; preds = %._crit_edge278.i
  br i1 %i.gc, label %.lr.ph282.i, label %validate_script.exit

.lr.ph280.i:                                      ; preds = %.preheader243.i, %bb.at
  %i.gd = phi i32 [ %i.gk, %bb.at ], [ %i.fz, %.preheader243.i ]
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %bb.at ], [ 0, %.preheader243.i ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %indvars.iv318.i
  %i.gf = load i32, ptr %i.ge, align 16, !tbaa !42
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph280.i
  %i.gh = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i32 45, ptr %i.gi, align 8, !tbaa !36
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !38
  tail call void %i.gj(ptr noundef nonnull %0) #7, !inline_history !73
  %.pre326.i = load i32, ptr %i.gb, align 4, !tbaa !41
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph280.i
  %i.gk = phi i32 [ %i.gd, %.lr.ph280.i ], [ %.pre326.i, %bb.as ] ; 2 uses
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next319.i, %i.gl
  br i1 %i.gm, label %.lr.ph280.i, label %validate_script.exit, !llvm.loop !79

.lr.ph282.i:                                      ; preds = %.preheader.i, %bb.av
  %i.gn = phi i32 [ %i.gt, %bb.av ], [ %i.fz, %.preheader.i ]
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %bb.av ], [ 0, %.preheader.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv321.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !42
  %.not226.i = icmp eq i32 %i.gp, 0
  br i1 %.not226.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph282.i
  %i.gq = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store i32 45, ptr %i.gr, align 8, !tbaa !36
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !38
  tail call void %i.gs(ptr noundef nonnull %0) #7, !inline_history !73
  %.pre327.i = load i32, ptr %i.gb, align 4, !tbaa !41
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph282.i
  %i.gt = phi i32 [ %i.gn, %.lr.ph282.i ], [ %.pre327.i, %bb.au ] ; 2 uses
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next322.i, %i.gu
  br i1 %i.gv, label %.lr.ph282.i, label %validate_script.exit, !llvm.loop !80

validate_script.exit:                             ; preds = %bb.at, %bb.av, %.preheader243.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre93 = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %bb.ax

bb.aw:                                            ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.gw, align 4, !tbaa !92
  store i32 1, ptr %i.j, align 8, !tbaa !89
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %validate_script.exit
  %i.gx = phi ptr [ %i.d, %bb.aw ], [ %.pre93, %validate_script.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !40
  %.not53 = icmp eq i32 %i.gz, 0
  br i1 %.not53, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.ha, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.hb, align 8, !tbaa !95
  tail call void @jpeg_default_colorspace(ptr noundef nonnull %0) #7
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !41 ; 4 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ay
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !48 ; 2 uses
  %xtraiter = and i32 %i.hd, 7                    ; 3 uses
  %i.hh = icmp ult i32 %i.hd, 8
  br i1 %i.hh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.hd, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.080 = phi ptr [ %i.hg, %.lr.ph.preheader.new ], [ %i.hy, %.lr.ph ] ; 17 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.080, i64 12
  store i32 1, ptr %i.hi, align 4, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %.080, i64 8
  store i32 1, ptr %i.hj, align 8, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %.080, i64 108
  store i32 1, ptr %i.hk, align 4, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %.080, i64 104
  store i32 1, ptr %i.hl, align 8, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.080, i64 204
  store i32 1, ptr %i.hm, align 4, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %.080, i64 200
  store i32 1, ptr %i.hn, align 8, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.080, i64 300
  store i32 1, ptr %i.ho, align 4, !tbaa !50
  %i.hp = getelementptr inbounds nuw i8, ptr %.080, i64 296
  store i32 1, ptr %i.hp, align 8, !tbaa !51
  %i.hq = getelementptr inbounds nuw i8, ptr %.080, i64 396
  store i32 1, ptr %i.hq, align 4, !tbaa !50
  %i.hr = getelementptr inbounds nuw i8, ptr %.080, i64 392
  store i32 1, ptr %i.hr, align 8, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %.080, i64 492
  store i32 1, ptr %i.hs, align 4, !tbaa !50
  %i.ht = getelementptr inbounds nuw i8, ptr %.080, i64 488
  store i32 1, ptr %i.ht, align 8, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.080, i64 588
  store i32 1, ptr %i.hu, align 4, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %.080, i64 584
  store i32 1, ptr %i.hv, align 8, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %.080, i64 684
  store i32 1, ptr %i.hw, align 4, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %.080, i64 680
  store i32 1, ptr %i.hx, align 8, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.080, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.080.epil.init = phi ptr [ %i.hg, %.lr.ph.preheader ], [ %i.hy, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.080.epil = phi ptr [ %i.ib, %.lr.ph.epil ], [ %.080.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.080.epil, i64 12
  store i32 1, ptr %i.hz, align 4, !tbaa !50
  %i.ia = getelementptr inbounds nuw i8, ptr %.080.epil, i64 8
  store i32 1, ptr %i.ia, align 8, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.080.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !82

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ay, %bb.ax
  %i.ic = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !40
  %.not.i65 = icmp eq i32 %i.ie, 0                ; 3 uses
  %i.if = select i1 %.not.i65, i32 8, i32 1
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !53 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !54
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.in = load i32, ptr %i.im, align 4, !tbaa !41
  %i.io = icmp slt i32 %i.in, 1
  br i1 %i.io, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !96
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %.loopexit
  %i.is = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store i32 32, ptr %i.it, align 8, !tbaa !36
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !38
  tail call void %i.iu(ptr noundef nonnull %0) #7, !inline_history !83
  %.pre.i69 = load i32, ptr %i.ig, align 4, !tbaa !53
  br label %bb.bd

end_hunk_0
