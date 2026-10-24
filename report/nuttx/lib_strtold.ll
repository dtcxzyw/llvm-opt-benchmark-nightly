Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_strtold?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@__const.decfloat.p10s = private unnamed_addr constant [8 x i64] [i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000], align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"
@switch.table.strtox = private unnamed_addr constant [3 x i8] c"\185@", align 4
@switch.table.strtox.1 = private unnamed_addr constant [3 x i32] [i32 -149, i32 -1074, i32 -16445], align 4

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local float @strtof(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc x86_fp80 @strtox(ptr noundef %0, ptr noundef %1, i32 noundef 1) #9
  %i.b = fptrunc x86_fp80 %i.a to float
  ret float %i.b
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc x86_fp80 @strtox(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #2 {
switch.lookup:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %switch.tableidx = add nsw i32 %2, -1           ; 2 uses
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.strtox, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep213 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.strtox.1, i64 %i.d
  %switch.load214 = load i32, ptr %switch.gep213, align 4 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %switch.lookup
  %.060 = phi ptr [ %0, %switch.lookup ], [ %i.h, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.060, align 1              ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isspace(i32 noundef %i.f) #10
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.a, !llvm.loop !9

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.e [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.161 = phi ptr [ %.060, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.159 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.161, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.2108 = phi ptr [ %.161, %bb.e ], [ %i.n, %bb.g ] ; 6 uses
  %i.i = load i8, ptr %.2108, align 1
  %i.j = or i8 %i.i, 32
  %i.k = getelementptr inbounds nuw i8, ptr @.str, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.2108, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.critedge.thread, label %bb.f, !llvm.loop !10

.critedge:                                        ; preds = %bb.f
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.o, label %bb.j [
    i32 8, label %.critedge.thread
    i32 3, label %.critedge.thread
  ]

.critedge.thread:                                 ; preds = %bb.g, %.critedge, %.critedge
  %.2.lcssa163 = phi ptr [ %.2108, %.critedge ], [ %.2108, %.critedge ], [ %scevgep, %bb.g ]
  %.not69 = icmp eq ptr %1, null
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  store ptr %.2.lcssa163, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.thread
  %i.p = select i1 %.159, x86_fp80 -inf, x86_fp80 +inf
  br label %bb.cc

bb.j:                                             ; preds = %.critedge
  %i.q = sub nsw i64 0, %indvars.iv
  %i.r = getelementptr inbounds i8, ptr %.2108, i64 %i.q
  %i.s = sub nsw i64 3, %indvars.iv
  %scevgep147 = getelementptr i8, ptr %.2108, i64 %i.s
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %indvars.iv145 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next146, %bb.l ] ; 3 uses
  %.3110 = phi ptr [ %i.r, %bb.j ], [ %i.y, %bb.l ] ; 3 uses
  %i.t = load i8, ptr %.3110, align 1
  %i.u = or i8 %i.t, 32
  %i.v = getelementptr inbounds nuw i8, ptr @.str.1, i64 %indvars.iv145
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.l, label %.critedge3.thread

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.3110, i64 1
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, 3
  br i1 %exitcond149.not, label %.critedge3, label %bb.k, !llvm.loop !11

.critedge3:                                       ; preds = %bb.l
  %.not68 = icmp eq ptr %1, null
  br i1 %.not68, label %bb.cc, label %bb.m

bb.m:                                             ; preds = %.critedge3
  store ptr %scevgep147, ptr %1, align 8
  br label %bb.cc

.critedge3.thread:                                ; preds = %bb.k
  %i.z = sub nsw i64 0, %indvars.iv145
  %i.aa = getelementptr inbounds i8, ptr %.3110, i64 %i.z ; 6 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 3 uses
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.n, label %bb.au

bb.n:                                             ; preds = %.critedge3.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 88
  br i1 %i.ag, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0107.i = phi i32 [ 0, %bb.o ], [ 1, %bb.p ]   ; 2 uses
  %.097.in.in.i = phi ptr [ %i.ah, %bb.o ], [ %storemerge130.i, %bb.p ] ; 3 uses
  %storemerge130.i = getelementptr inbounds nuw i8, ptr %.097.in.in.i, i64 1 ; 3 uses
  %.097.in.i = load i8, ptr %.097.in.in.i, align 1 ; 2 uses
  switch i8 %.097.in.i, label %.loopexit.i [
    i8 48, label %bb.p
    i8 46, label %bb.q
  ], !llvm.loop !12

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.097.in.in.i, i64 2 ; 2 uses
  %.198.in155.i = load i8, ptr %storemerge130.i, align 1 ; 2 uses
  %i.aj = icmp eq i8 %.198.in155.i, 48
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.083156.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %bb.q ]
  %i.ak = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ai, %bb.q ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.am = add nsw i64 %.083156.i, -1              ; 2 uses
  %.198.in.i = load i8, ptr %i.ak, align 1        ; 2 uses
  %i.an = icmp eq i8 %.198.in.i, 48
  br i1 %i.an, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.p, %.lr.ph.i, %bb.q
  %.promoted159.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ai, %bb.q ], [ %storemerge130.i, %bb.p ] ; 4 uses
  %.0112.i = phi i32 [ 1, %.lr.ph.i ], [ 1, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.2109.i = phi i32 [ 1, %.lr.ph.i ], [ %.0107.i, %bb.q ], [ %.0107.i, %bb.p ] ; 2 uses
  %.299.in.i = phi i8 [ %.198.in.i, %.lr.ph.i ], [ %.198.in155.i, %bb.q ], [ %.097.in.i, %bb.p ] ; 4 uses
  %.184.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.3100161.i = sext i8 %.299.in.i to i32         ; 2 uses
  %i.ao = tail call i32 @isxdigit(i32 noundef %.3100161.i) #10, !inline_history !14
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp eq i8 %.299.in.i, 46               ; 2 uses
  %i.ar = or i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph172.i, label %._crit_edge.thread.i

.lr.ph172.i:                                      ; preds = %.loopexit.i, %bb.y
  %i.as = phi i1 [ %i.bn, %bb.y ], [ %i.aq, %.loopexit.i ]
  %.3100171.i = phi i32 [ %.3100.i, %bb.y ], [ %.3100161.i, %.loopexit.i ] ; 2 uses
  %.081170.i = phi i64 [ %.182.i, %bb.y ], [ 0, %.loopexit.i ] ; 6 uses
  %.285169.i = phi i64 [ %.3.i, %bb.y ], [ %.184.i, %.loopexit.i ] ; 2 uses
  %.088168.i = phi x86_fp80 [ %.290.i, %bb.y ], [ 1.000000e+00, %.loopexit.i ] ; 5 uses
  %.092167.i = phi x86_fp80 [ %.294.i, %bb.y ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.3100.in166.i = phi i8 [ %i.bk, %bb.y ], [ %.299.in.i, %.loopexit.i ] ; 2 uses
  %.0101165.i = phi i32 [ %.2103.i, %bb.y ], [ 0, %.loopexit.i ] ; 5 uses
  %.3110164.i = phi i32 [ %.4111.i, %bb.y ], [ %.2109.i, %.loopexit.i ] ; 2 uses
  %.1113163.i = phi i32 [ %.2114.i, %bb.y ], [ %.0112.i, %.loopexit.i ] ; 2 uses
  %.0115162.i = phi i32 [ %.2117.i, %bb.y ], [ 0, %.loopexit.i ] ; 5 uses
  %i.at = phi ptr [ %i.bj, %bb.y ], [ %.promoted159.i, %.loopexit.i ] ; 3 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph172.i
  %.not.i = icmp eq i32 %.1113163.i, 0
  br i1 %.not.i, label %bb.y, label %._crit_edge.i

bb.s:                                             ; preds = %.lr.ph172.i
  %i.au = icmp sgt i8 %.3100.in166.i, 57
  %i.av = or i32 %.3100171.i, 32
  %i.aw = add nsw i32 %i.av, -87
  %i.ax = add nsw i32 %.3100171.i, -48
  %.091.i = select i1 %i.au, i32 %i.aw, i32 %i.ax ; 3 uses
  %i.ay = icmp slt i64 %.081170.i, 8
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = shl i32 %.0101165.i, 4
  %i.ba = add i32 %.091.i, %i.az
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bb = icmp samesign ult i64 %.081170.i, 17
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@strtox:switch.lookup
  %i.bt = shl i32 %.3104190.i, 4                  ; 2 uses
  %i.bu = add i64 %.2191.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, 8
  br i1 %exitcond.not.i, label %._crit_edge194.i, label %.lr.ph193.i, !llvm.loop !16

._crit_edge194.i:                                 ; preds = %.lr.ph193.i, %bb.ab
  %spec.select134247.i = phi i64 [ %spec.select134.i, %bb.ab ], [ %spec.select134248.i, %.lr.ph193.i ]
  %i.bv = phi ptr [ %i.bp, %bb.ab ], [ %i.bs, %.lr.ph193.i ]
  %.3100.in.lcssa229244.i = phi i8 [ %.3100.in.lcssa.i, %bb.ab ], [ %.3100.in.lcssa229245.i, %.lr.ph193.i ]
  %.092.lcssa230242.i = phi x86_fp80 [ %.092.lcssa.i, %bb.ab ], [ %.092.lcssa230243.i, %.lr.ph193.i ] ; 2 uses
  %.3104.lcssa.i = phi i32 [ %.0101.lcssa.i, %bb.ab ], [ %i.bt, %.lr.ph193.i ] ; 4 uses
  %i.bw = and i8 %.3100.in.lcssa229244.i, -33
  %i.bx = icmp eq i8 %i.bw, 80
  br i1 %i.bx, label %bb.ac, label %.sink.split.i

bb.ac:                                            ; preds = %._crit_edge194.i
  %i.by = call fastcc i64 @scanexp(ptr noundef %i.b) #9 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -9223372036854775808
  br i1 %i.bz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load ptr, ptr %i.b, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %._crit_edge194.i
  %.sink256.i = phi ptr [ %i.ca, %bb.ad ], [ %i.bv, %._crit_edge194.i ]
  %i.cb = getelementptr inbounds i8, ptr %.sink256.i, i64 -1
  store ptr %i.cb, ptr %i.b, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %bb.ac
  %.080.i = phi i64 [ %i.by, %bb.ac ], [ 0, %.sink.split.i ]
  %.not127.i = icmp eq ptr %1, null
  br i1 %.not127.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load ptr, ptr %i.b, align 8
  store ptr %i.cc, ptr %1, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cd = shl nsw i64 %spec.select134247.i, 2
  %i.ce = add nsw i64 %i.cd, -32
  %i.cf = add nsw i64 %i.ce, %.080.i              ; 4 uses
  %.not128.i = icmp eq i32 %.3104.lcssa.i, 0
  br i1 %.not128.i, label %hexfloat.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = sub nsw i32 0, %switch.load214
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = icmp sgt i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cj = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %hexfloat.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.cl, align 4
  br label %hexfloat.exit

bb.ak:                                            ; preds = %bb.ah
  %i.cm = add nsw i32 %switch.load214, -128
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %i.cf, %i.cn
  br i1 %i.co, label %bb.al, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak
  %i.cp = icmp sgt i32 %.3104.lcssa.i, -1
  br i1 %i.cp, label %.lr.ph199.i, label %._crit_edge200.i

bb.al:                                            ; preds = %bb.ak
  %i.cq = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %hexfloat.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.cs, align 4
  br label %hexfloat.exit

.lr.ph199.i:                                      ; preds = %.preheader.i, %.lr.ph199.i
  %.1198.i = phi i64 [ %i.cw, %.lr.ph199.i ], [ %i.cf, %.preheader.i ]
  %.395197.i = phi x86_fp80 [ %.496.i, %.lr.ph199.i ], [ %.092.lcssa230242.i, %.preheader.i ] ; 4 uses
  %.4105196.i = phi i32 [ %.5106.i, %.lr.ph199.i ], [ %.3104.lcssa.i, %.preheader.i ]
  %i.ct = fcmp oge x86_fp80 %.395197.i, 5.000000e-01 ; 2 uses
  %reass.add.i = shl nuw i32 %.4105196.i, 1       ; 2 uses
  %i.cu = fadd x86_fp80 %.395197.i, -1.000000e+00
  %i.cv = zext i1 %i.ct to i32
  %.5106.i = or disjoint i32 %reass.add.i, %i.cv  ; 2 uses
  %.pn.i = select i1 %i.ct, x86_fp80 %i.cu, x86_fp80 %.395197.i
  %.496.i = fadd x86_fp80 %.395197.i, %.pn.i      ; 2 uses
  %i.cw = add nsw i64 %.1198.i, -1                ; 2 uses
  %i.cx = icmp sgt i32 %reass.add.i, -1
  br i1 %i.cx, label %.lr.ph199.i, label %._crit_edge200.i, !llvm.loop !17

._crit_edge200.i:                                 ; preds = %.lr.ph199.i, %.preheader.i
  %.4105.lcssa.i = phi i32 [ %.3104.lcssa.i, %.preheader.i ], [ %.5106.i, %.lr.ph199.i ] ; 2 uses
  %.395.lcssa.i = phi x86_fp80 [ %.092.lcssa230242.i, %.preheader.i ], [ %.496.i, %.lr.ph199.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %i.cf, %.preheader.i ], [ %i.cw, %.lr.ph199.i ] ; 4 uses
  %i.cy = zext i8 %switch.load to i64
  %narrow204.i = sub nsw i32 32, %switch.load214
  %i.cz = zext nneg i32 %narrow204.i to i64
  %i.da = add i64 %.1.lcssa.i, %i.cz              ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.cy
  %i.dc = trunc i64 %i.da to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %.087.i = select i1 %i.db, i32 %spec.store.select.i, i32 %switch.ext ; 3 uses
  %i.dd = icmp samesign ult i32 %.087.i, 64
  br i1 %i.dd, label %.lr.ph.preheader.i.i, label %scalbnx.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge200.i
  %i.de = sub nuw nsw i32 95, %.087.i
  %i.df = zext nneg i32 %i.de to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.122.i.i = phi i64 [ %i.di, %.lr.ph.i.i ], [ %i.df, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01321.i.i = phi x86_fp80 [ %i.dj, %.lr.ph.i.i ], [ 2.000000e+00, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01420.i.i = phi x86_fp80 [ %spec.select148.i, %.lr.ph.i.i ], [ 1.000000e+00, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dg = and i64 %.122.i.i, 1
  %.not18.i.i = icmp eq i64 %i.dg, 0
  %i.dh = fmul x86_fp80 %.01321.i.i, %.01420.i.i
  %spec.select148.i = select i1 %.not18.i.i, x86_fp80 %.01420.i.i, x86_fp80 %i.dh ; 2 uses
  %i.di = lshr i64 %.122.i.i, 1                   ; 2 uses
  %i.dj = fmul x86_fp80 %.01321.i.i, %.01321.i.i
  %.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i, label %scalbnx.exit.i, label %.lr.ph.i.i, !llvm.loop !18

scalbnx.exit.i:                                   ; preds = %.lr.ph.i.i, %._crit_edge200.i
  %.086.i = phi x86_fp80 [ 0.000000e+00, %._crit_edge200.i ], [ %spec.select148.i, %.lr.ph.i.i ] ; 2 uses
  %i.dk = icmp samesign ult i32 %.087.i, 32
  %i.dl = fcmp une x86_fp80 %.395.lcssa.i, 0.000000e+00
  %or.cond3.i = select i1 %i.dk, i1 %i.dl, i1 false
  %i.dm = and i32 %.4105.lcssa.i, 1
  %.not129.i = icmp eq i32 %i.dm, 0
  %or.cond135.i = and i1 %.not129.i, %or.cond3.i  ; 2 uses
  %i.dn = zext i1 %or.cond135.i to i32
  %.6.i = or disjoint i32 %.4105.lcssa.i, %i.dn
  %.5.i = select i1 %or.cond135.i, x86_fp80 0.000000e+00, x86_fp80 %.395.lcssa.i
  %i.do = uitofp i32 %.6.i to x86_fp80
  %i.dp = fadd x86_fp80 %.086.i, %i.do
  %i.dq = fadd x86_fp80 %.5.i, %i.dp
  %i.dr = fsub x86_fp80 %i.dq, %.086.i            ; 3 uses
  %i.ds = fcmp une x86_fp80 %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %scalbnx.exit.i
  %i.dt = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !14, !srcloc !24
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = tail call ptr @__errno() #12, !inline_history !14
  store i32 34, ptr %i.dv, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %scalbnx.exit.i
  %i.dw = icmp slt i64 %.1.lcssa.i, 0
  %.not19.i136.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not19.i136.i, label %hexfloat.exit, label %.lr.ph.preheader.i137.i

.lr.ph.preheader.i137.i:                          ; preds = %bb.ap
  %spec.select.i138.i = tail call i64 @llvm.abs.i64(i64 %.1.lcssa.i, i1 true)
  br label %.lr.ph.i139.i

.lr.ph.i139.i:                                    ; preds = %bb.at, %.lr.ph.preheader.i137.i
  %.122.i140.i = phi i64 [ %i.ea, %bb.at ], [ %spec.select.i138.i, %.lr.ph.preheader.i137.i ] ; 2 uses
  %.01321.i141.i = phi x86_fp80 [ %i.eb, %bb.at ], [ 2.000000e+00, %.lr.ph.preheader.i137.i ] ; 4 uses
  %.01420.i142.i = phi x86_fp80 [ %.115.i144.i, %bb.at ], [ %i.dr, %.lr.ph.preheader.i137.i ] ; 3 uses
  %i.dx = and i64 %.122.i140.i, 1
  %.not18.i143.i = icmp eq i64 %i.dx, 0
  br i1 %.not18.i143.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i139.i
  br i1 %i.dw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dy = fdiv x86_fp80 %.01420.i142.i, %.01321.i141.i
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.dz = fmul x86_fp80 %.01321.i141.i, %.01420.i142.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.lr.ph.i139.i
  %.115.i144.i = phi x86_fp80 [ %i.dy, %bb.ar ], [ %i.dz, %bb.as ], [ %.01420.i142.i, %.lr.ph.i139.i ] ; 2 uses
  %i.ea = lshr i64 %.122.i140.i, 1                ; 2 uses
  %i.eb = fmul x86_fp80 %.01321.i141.i, %.01321.i141.i
  %.not.i145.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i145.i, label %hexfloat.exit, label %.lr.ph.i139.i, !llvm.loop !18

hexfloat.exit:                                    ; preds = %bb.at, %bb.z, %bb.aa, %bb.ag, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.ap
  %.0.i = phi x86_fp80 [ 0.000000e+00, %bb.ag ], [ +inf, %bb.ai ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.aa ], [ +inf, %bb.aj ], [ 0.000000e+00, %bb.am ], [ %i.dr, %bb.ap ], [ %.115.i144.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.cb

bb.au:                                            ; preds = %.critedge3.thread
  %3 = sext i8 %i.ab to i32
  %isdigittmp = add nsw i32 %3, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = icmp eq i8 %i.ab, 46
  br i1 %i.ec, label %bb.aw, label %bb.bz

bb.aw:                                            ; preds = %bb.av
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ee = load i8, ptr %i.ed, align 1
  %4 = sext i8 %i.ee to i32
  %isdigittmp65 = add nsw i32 %4, -48
  %isdigit66 = icmp ult i32 %isdigittmp65, 10
  br i1 %isdigit66, label %.thread, label %bb.bz

.thread:                                          ; preds = %bb.n, %bb.aw, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.thread
  %.0.in.in.i.i = phi ptr [ %i.aa, %.thread ], [ %.08.i.i, %bb.ax ] ; 3 uses
  %.0.in.i.i = load i8, ptr %.0.in.in.i.i, align 1 ; 3 uses
  %i.ef = icmp eq i8 %.0.in.i.i, 48
  %.08.i.i = getelementptr inbounds nuw i8, ptr %.0.in.in.i.i, i64 1 ; 3 uses
  br i1 %i.ef, label %bb.ax, label %ifallzero.exit.i.preheader, !llvm.loop !19

ifallzero.exit.i.preheader:                       ; preds = %bb.ax
  %.041.i113 = sext i8 %.0.in.i.i to i32          ; 2 uses
  %isdigittmp.i114 = add nsw i32 %.041.i113, -48
  %isdigit.i115 = icmp ult i32 %isdigittmp.i114, 10
  br i1 %isdigit.i115, label %thread-pre-split.i.lr.ph, label %bb.ay, !llvm.loop !20

thread-pre-split.i.lr.ph:                         ; preds = %ifallzero.exit.i.preheader
  br label %thread-pre-split.i, !llvm.loop !20

thread-pre-split.i:                               ; preds = %thread-pre-split.i.lr.ph, %thread-pre-split.i
  %i.eg = phi i64 [ 1, %thread-pre-split.i.lr.ph ], [ %i.eh, %thread-pre-split.i ] ; 2 uses
  %storemerge63.i116 = phi ptr [ %.08.i.i, %thread-pre-split.i.lr.ph ], [ %storemerge63.i, %thread-pre-split.i ] ; 3 uses
  %.041.in.pr.i = load i8, ptr %storemerge63.i116, align 1 ; 2 uses
  %storemerge63.i = getelementptr inbounds nuw i8, ptr %storemerge63.i116, i64 1 ; 2 uses
  %.041.i = sext i8 %.041.in.pr.i to i32          ; 2 uses
  %isdigittmp.i = add nsw i32 %.041.i, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  br i1 %isdigit.i, label %thread-pre-split.i, label %ifallzero.exit.i._crit_edge, !llvm.loop !20

ifallzero.exit.i._crit_edge:                      ; preds = %thread-pre-split.i
  br label %bb.ay, !llvm.loop !20

bb.ay:                                            ; preds = %ifallzero.exit.i._crit_edge, %ifallzero.exit.i.preheader
  %.041.in.i.lcssa = phi i8 [ %.041.in.pr.i, %ifallzero.exit.i._crit_edge ], [ %.0.in.i.i, %ifallzero.exit.i.preheader ]
  %.041.in.in100.i.lcssa = phi ptr [ %storemerge63.i116, %ifallzero.exit.i._crit_edge ], [ %.0.in.in.i.i, %ifallzero.exit.i.preheader ]
  %.035.i.lcssa = phi i64 [ %i.eg, %ifallzero.exit.i._crit_edge ], [ 0, %ifallzero.exit.i.preheader ] ; 3 uses
  %storemerge63.i.lcssa = phi ptr [ %storemerge63.i, %ifallzero.exit.i._crit_edge ], [ %.08.i.i, %ifallzero.exit.i.preheader ] ; 4 uses
  %.041.i.lcssa = phi i32 [ %.041.i, %ifallzero.exit.i._crit_edge ], [ %.041.i113, %ifallzero.exit.i.preheader ]
  %.lcssa102 = phi i64 [ %i.eh, %ifallzero.exit.i._crit_edge ], [ 1, %ifallzero.exit.i.preheader ]
  store ptr %storemerge63.i.lcssa, ptr %i.a, align 8
  %i.ei = icmp eq i8 %.041.in.i.lcssa, 46
  br i1 %i.ei, label %.preheader90.i, label %bb.az

.preheader90.i:                                   ; preds = %bb.ay, %.preheader90.i
  %.0.in.in.i64.i = phi ptr [ %.08.i66.i, %.preheader90.i ], [ %storemerge63.i.lcssa, %bb.ay ] ; 2 uses
  %.0.in.i65.i = load i8, ptr %.0.in.in.i64.i, align 1 ; 2 uses
  %i.ej = icmp eq i8 %.0.in.i65.i, 48
  %.08.i66.i = getelementptr inbounds nuw i8, ptr %.0.in.in.i64.i, i64 1 ; 2 uses
  br i1 %i.ej, label %.preheader90.i, label %ifallzero.exit69.i, !llvm.loop !19

ifallzero.exit69.i:                               ; preds = %.preheader90.i
  %.0.i67.i = sext i8 %.0.in.i65.i to i32         ; 2 uses
  %5 = add nsw i32 %.0.i67.i, -58
  %isdigit.i68.i = icmp ult i32 %5, -10
  br i1 %isdigit.i68.i, label %.sink.split.i84, label %.preheader.i83

.preheader.i83:                                   ; preds = %ifallzero.exit69.i
  %storemerge101.i = getelementptr inbounds nuw i8, ptr %.041.in.in100.i.lcssa, i64 2 ; 2 uses
  %.142.in102.i = load i8, ptr %storemerge63.i.lcssa, align 1
  %.142103.i = sext i8 %.142.in102.i to i32       ; 2 uses
  %isdigittmp54104.i = add nsw i32 %.142103.i, -48
  %isdigit55105.i = icmp ult i32 %isdigittmp54104.i, 10
  br i1 %isdigit55105.i, label %.lr.ph.i85, label %.sink.split.i84

.lr.ph.i85:                                       ; preds = %.preheader.i83, %.lr.ph.i85
  %storemerge108.i = phi ptr [ %storemerge.i, %.lr.ph.i85 ], [ %storemerge101.i, %.preheader.i83 ] ; 2 uses
  %.034107.i = phi i64 [ %i.el, %.lr.ph.i85 ], [ 0, %.preheader.i83 ]
  %.136106.i = phi i64 [ %i.ek, %.lr.ph.i85 ], [ %.035.i.lcssa, %.preheader.i83 ]
  %i.ek = add nuw nsw i64 %.136106.i, 1           ; 2 uses
  %i.el = add nsw i64 %.034107.i, -1              ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge108.i, i64 1 ; 2 uses
  %.142.in.i = load i8, ptr %storemerge108.i, align 1
  %.142.i = sext i8 %.142.in.i to i32             ; 2 uses
  %isdigittmp54.i = add nsw i32 %.142.i, -48
  %isdigit55.i = icmp ult i32 %isdigittmp54.i, 10
  br i1 %isdigit55.i, label %.lr.ph.i85, label %.sink.split.i84, !llvm.loop !21

.sink.split.i84:                                  ; preds = %.lr.ph.i85, %.preheader.i83, %ifallzero.exit69.i
  %storemerge.lcssa.sink.i = phi ptr [ %.08.i66.i, %ifallzero.exit69.i ], [ %storemerge101.i, %.preheader.i83 ], [ %storemerge.i, %.lr.ph.i85 ] ; 2 uses
  %.243.ph.i = phi i32 [ %.0.i67.i, %ifallzero.exit69.i ], [ %.142103.i, %.preheader.i83 ], [ %.142.i, %.lr.ph.i85 ]
  %.237.ph.i = phi i64 [ %.lcssa102, %ifallzero.exit69.i ], [ %.035.i.lcssa, %.preheader.i83 ], [ %i.ek, %.lr.ph.i85 ]
  %.1.ph.i = phi i64 [ 0, %ifallzero.exit69.i ], [ 0, %.preheader.i83 ], [ %i.el, %.lr.ph.i85 ]
  store ptr %storemerge.lcssa.sink.i, ptr %i.a, align 8
  br label %bb.az

bb.az:                                            ; preds = %.sink.split.i84, %bb.ay
  %6 = phi ptr [ %storemerge63.i.lcssa, %bb.ay ], [ %storemerge.lcssa.sink.i, %.sink.split.i84 ] ; 3 uses
  %.243.i = phi i32 [ %.041.i.lcssa, %bb.ay ], [ %.243.ph.i, %.sink.split.i84 ]
  %.237.i = phi i64 [ %.035.i.lcssa, %bb.ay ], [ %.237.ph.i, %.sink.split.i84 ] ; 3 uses
  %.1.i = phi i64 [ 0, %bb.ay ], [ %.1.ph.i, %.sink.split.i84 ] ; 2 uses
  %i.em = and i32 %.243.i, -33
  %i.en = icmp eq i32 %i.em, 69
  br i1 %i.en, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.eo = load i8, ptr %6, align 1                ; 2 uses
  %7 = sext i8 %i.eo to i32
  %isdigittmp56.i = add nsw i32 %7, -48
  %isdigit57.i = icmp ult i32 %isdigittmp56.i, 10
  br i1 %isdigit57.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.eo, label %bb.bg [
    i8 43, label %bb.bc
    i8 45, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.eq = load i8, ptr %i.ep, align 1
  %8 = sext i8 %i.eq to i32
  %isdigittmp58.i = add nsw i32 %8, -48
  %isdigit59.i = icmp ult i32 %isdigittmp58.i, 10
  br i1 %isdigit59.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.er = call fastcc i64 @scanexp(ptr noundef %i.a) #9
  %i.es = add nsw i64 %i.er, %.1.i                ; 2 uses
  %i.et = icmp slt i64 %i.es, -92233720368547757
  br i1 %i.et, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %.not62.i = icmp eq ptr %1, null
  br i1 %.not62.i, label %decfloat.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eu = load ptr, ptr %i.a, align 8
  store ptr %i.eu, ptr %1, align 8
  br label %decfloat.exit

bb.bg:                                            ; preds = %bb.bc, %bb.bb, %bb.az
  %i.ev = getelementptr inbounds i8, ptr %6, i64 -1
  store ptr %i.ev, ptr %i.a, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %.2.i = phi i64 [ %i.es, %bb.bd ], [ %.1.i, %bb.bg ] ; 4 uses
  %.not.i70 = icmp eq ptr %1, null
  br i1 %.not.i70, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ew = load ptr, ptr %i.a, align 8
  store ptr %i.ew, ptr %1, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ex = icmp eq i64 %.237.i, 0
  br i1 %i.ex, label %decfloat.exit, label %.outer.i

.outer.i:                                         ; preds = %bb.bj, %.critedge.i
  %.lcssa114117.i = phi ptr [ %i.fe, %.critedge.i ], [ %i.aa, %bb.bj ]
  %.081.ph.i = phi i32 [ %.182.i82, %.critedge.i ], [ 0, %bb.bj ] ; 3 uses
  %.045.ph.i = phi i32 [ %.146.i, %.critedge.i ], [ 0, %bb.bj ] ; 2 uses
  %.044.ph.i = phi i32 [ %.044.i, %.critedge.i ], [ 0, %bb.bj ]
  %.038.ph.i = phi x86_fp80 [ %.139.i, %.critedge.i ], [ 0.000000e+00, %bb.bj ] ; 4 uses
  br label %bb.bk

bb.bk:                                            ; preds = %ifallzero.exit76.i, %.outer.i
  %i.ey = phi ptr [ %i.fj, %ifallzero.exit76.i ], [ %.lcssa114117.i, %.outer.i ] ; 3 uses
  %.044.i = phi i32 [ 1, %ifallzero.exit76.i ], [ %.044.ph.i, %.outer.i ] ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1             ; 2 uses
  %i.fa = sext i8 %i.ez to i32
  %isdigittmp.i.i = add nsw i32 %i.fa, -48        ; 2 uses
  %isdigit.i70.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i70.i, label %.critedge.i, label %chtou.exit.i

chtou.exit.i:                                     ; preds = %bb.bk
  %i.fb = icmp eq i8 %i.ez, 46
  %.not60.i = icmp eq i32 %.044.i, 0
  %or.cond119.i = select i1 %i.fb, i1 %.not60.i, i1 false
  br i1 %or.cond119.i, label %bb.bl, label %.loopexit.i71

.critedge.i:                                      ; preds = %bb.bk
  %i.fc = mul i32 %.081.ph.i, 10
  %i.fd = add i32 %isdigittmp.i.i, %i.fc          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.ff = add nsw i32 %.045.ph.i, 1               ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 9                    ; 3 uses
  %i.fh = uitofp i32 %i.fd to x86_fp80
  %i.fi = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.038.ph.i, x86_fp80 1.000000e+09, x86_fp80 %i.fh)
  %.182.i82 = select i1 %i.fg, i32 0, i32 %i.fd
  %.146.i = select i1 %i.fg, i32 0, i32 %i.ff
  %.139.i = select i1 %i.fg, x86_fp80 %i.fi, x86_fp80 %.038.ph.i
  br label %.outer.i, !llvm.loop !22

bb.bl:                                            ; preds = %chtou.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.0.in.in.i71.i = phi ptr [ %i.fj, %bb.bl ], [ %.08.i73.i, %bb.bm ] ; 2 uses
  %.0.in.i72.i = load i8, ptr %.0.in.in.i71.i, align 1 ; 2 uses
  %i.fk = icmp eq i8 %.0.in.i72.i, 48
  %.08.i73.i = getelementptr inbounds nuw i8, ptr %.0.in.in.i71.i, i64 1
  br i1 %i.fk, label %bb.bm, label %ifallzero.exit76.i, !llvm.loop !19

ifallzero.exit76.i:                               ; preds = %bb.bm
  %.0.i74.i = sext i8 %.0.in.i72.i to i32
  %9 = add nsw i32 %.0.i74.i, -58
  %isdigit.i75.i = icmp ult i32 %9, -10
  br i1 %isdigit.i75.i, label %.loopexit.i71, label %bb.bk, !llvm.loop !22

.loopexit.i71:                                    ; preds = %ifallzero.exit76.i, %chtou.exit.i
  %i.fl = icmp slt i64 %.237.i, 9
  %i.fm = icmp eq i64 %.2.i, 0                    ; 2 uses
  %or.cond.i72 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i72, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.loopexit.i71
  %i.fn = uitofp i32 %.081.ph.i to x86_fp80
  br label %decfloat.exit

bb.bo:                                            ; preds = %.loopexit.i71
  %i.fo = add nsw i64 %.2.i, %.237.i              ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, 4932
  br i1 %i.fp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fq = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !23, !srcloc !24
  %i.fr = trunc i8 %i.fq to i1
  br i1 %i.fr, label %bb.bs, label %.sink.split161.i

bb.bq:                                            ; preds = %bb.bo
  %i.fs = icmp slt i64 %i.fo, -4931
  br i1 %i.fs, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ft = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #11, !inline_history !23, !srcloc !24
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.bs, label %.sink.split161.i

.sink.split161.i:                                 ; preds = %bb.br, %bb.bp
  %i.fv = tail call ptr @__errno() #12, !inline_history !23
  store i32 34, ptr %i.fv, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split161.i, %bb.br, %bb.bq, %bb.bp
  %i.fw = srem i32 %.045.ph.i, 9                  ; 2 uses
  %.not61.i = icmp eq i32 %i.fw, 0
  br i1 %.not61.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr @__const.decfloat.p10s, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = sitofp i64 %i.ga to x86_fp80
  %i.gc = uitofp i32 %.081.ph.i to x86_fp80
  %i.gd = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.038.ph.i, x86_fp80 %i.gb, x86_fp80 %i.gc)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.240.i = phi x86_fp80 [ %i.gd, %bb.bt ], [ %.038.ph.i, %bb.bs ] ; 2 uses
  %i.ge = icmp slt i64 %.2.i, 0
  br i1 %i.fm, label %decfloat.exit, label %.lr.ph.preheader.i.i73

.lr.ph.preheader.i.i73:                           ; preds = %bb.bu
  %spec.select.i.i = tail call i64 @llvm.abs.i64(i64 %.2.i, i1 true)
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %bb.by, %.lr.ph.preheader.i.i73
  %.122.i.i75 = phi i64 [ %i.gi, %bb.by ], [ %spec.select.i.i, %.lr.ph.preheader.i.i73 ] ; 2 uses
  %.01321.i.i76 = phi x86_fp80 [ %i.gj, %bb.by ], [ 1.000000e+01, %.lr.ph.preheader.i.i73 ] ; 4 uses
  %.01420.i.i77 = phi x86_fp80 [ %.115.i.i, %bb.by ], [ %.240.i, %.lr.ph.preheader.i.i73 ] ; 3 uses
  %i.gf = and i64 %.122.i.i75, 1
  %.not18.i.i78 = icmp eq i64 %i.gf, 0
  br i1 %.not18.i.i78, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i74
  br i1 %i.ge, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gg = fdiv x86_fp80 %.01420.i.i77, %.01321.i.i76
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.gh = fmul x86_fp80 %.01321.i.i76, %.01420.i.i77
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %.lr.ph.i.i74
  %.115.i.i = phi x86_fp80 [ %i.gg, %bb.bw ], [ %i.gh, %bb.bx ], [ %.01420.i.i77, %.lr.ph.i.i74 ] ; 2 uses
  %i.gi = lshr i64 %.122.i.i75, 1                 ; 2 uses
  %i.gj = fmul x86_fp80 %.01321.i.i76, %.01321.i.i76
  %.not.i.i79 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i79, label %decfloat.exit, label %.lr.ph.i.i74, !llvm.loop !18

decfloat.exit:                                    ; preds = %bb.by, %bb.be, %bb.bf, %bb.bj, %bb.bn, %bb.bu
  %.0.i81 = phi x86_fp80 [ 0.000000e+00, %bb.bj ], [ 0.000000e+00, %bb.be ], [ %i.fn, %bb.bn ], [ 0.000000e+00, %bb.bf ], [ %.240.i, %bb.bu ], [ %.115.i.i, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.cb

bb.bz:                                            ; preds = %bb.av, %bb.aw
  %.not67 = icmp eq ptr %1, null
  br i1 %.not67, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr %0, ptr %1, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %decfloat.exit, %hexfloat.exit
  %.056 = phi x86_fp80 [ %.0.i, %hexfloat.exit ], [ %.0.i81, %decfloat.exit ] ; 2 uses
  %i.gk = fneg x86_fp80 %.056
  %i.gl = select i1 %.159, x86_fp80 %i.gk, x86_fp80 %.056
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %.critedge3, %bb.m, %bb.cb, %bb.i
  %.057 = phi x86_fp80 [ +qnan, %.critedge3 ], [ %i.p, %bb.i ], [ %i.gl, %bb.cb ], [ +qnan, %bb.m ], [ 0.000000e+00, %bb.ca ], [ 0.000000e+00, %bb.bz ]
  ret x86_fp80 %.057
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local double @strtod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc x86_fp80 @strtox(ptr noundef %0, ptr noundef %1, i32 noundef 2) #9
  %i.b = fptrunc x86_fp80 %i.a to double
  ret double %i.b
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local x86_fp80 @strtold(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc x86_fp80 @strtox(ptr noundef %0, ptr noundef %1, i32 noundef 3) #9
  ret x86_fp80 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn memory(read)
declare dso_local i32 @isspace(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn memory(read)
declare dso_local i32 @isxdigit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #5

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @scanexp(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.c = load i8, ptr %i.a, align 1               ; 3 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp eq i8 %i.c, 45
  switch i8 %i.c, label %bb.d [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = load i8, ptr %i.b, align 1
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %isdigittmp = add nsw i32 %i.g, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.023 = phi ptr [ %i.h, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.022 = phi i32 [ %i.g, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  %isdigittmp2628 = add nsw i32 %.022, -48
  %isdigit2729 = icmp ult i32 %isdigittmp2628, 10
  br i1 %isdigit2729, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.02132 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.d ]
  %.131 = phi i32 [ %i.o, %.lr.ph ], [ %.022, %bb.d ]
  %.12430 = phi ptr [ %i.m, %.lr.ph ], [ %.023, %bb.d ] ; 2 uses
  %i.i = mul nsw i64 %.02132, 10
  %i.j = zext nneg i32 %.131 to i64
  %i.k = add nsw i64 %i.j, -48
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.12430, i64 1 ; 2 uses
  %i.n = load i8, ptr %.12430, align 1
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %isdigittmp26 = add nsw i32 %i.o, -48
  %isdigit27 = icmp ult i32 %isdigittmp26, 10
  br i1 %isdigit27, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.124.lcssa = phi ptr [ %.023, %bb.d ], [ %i.m, %.lr.ph ]
  %.021.lcssa = phi i64 [ 0, %bb.d ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.124.lcssa, i64 -1
  store ptr %i.p, ptr %0, align 8
  %i.q = sub nsw i64 0, %.021.lcssa
  %i.r = select i1 %.0, i64 %i.q, i64 %.021.lcssa
  ret i64 %i.r
}

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #7

end_hunk_1
