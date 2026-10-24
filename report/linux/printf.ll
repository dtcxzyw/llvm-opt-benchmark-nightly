Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/printf?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

@number.digits = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 1

; Function Attrs: nounwind optsize
define dso_local i32 @vsprintf(ptr inreg noundef %0, ptr inreg nofree noundef readonly captures(none) %1, ptr inreg nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i32                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %storemerge = phi ptr [ %1, %bb.a ], [ %i.cw, %.loopexit ] ; 3 uses
  %.088 = phi ptr [ %0, %bb.a ], [ %.8, %.loopexit ] ; 20 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %.5, %.loopexit ] ; 5 uses
  %i.b = load i8, ptr %storemerge, align 1        ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.ah
    i8 37, label %.preheader142
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.088, i32 1
  store i8 %i.b, ptr %.088, align 1
  br label %.loopexit

.preheader142:                                    ; preds = %bb.b, %.backedge
  %.0129 = phi ptr [ %i.d, %.backedge ], [ %storemerge, %bb.b ] ; 2 uses
  %.082 = phi i32 [ %i.f, %.backedge ], [ 0, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0129, i32 1 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  switch i8 %i.e, label %bb.h [
    i8 45, label %bb.d
    i8 43, label %.backedge
    i8 32, label %bb.e
    i8 35, label %bb.f
    i8 48, label %bb.g
  ]

bb.d:                                             ; preds = %.preheader142
  br label %.backedge

.backedge:                                        ; preds = %.preheader142, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i32 [ 16, %bb.d ], [ 1, %bb.g ], [ 8, %bb.e ], [ 64, %bb.f ], [ 4, %.preheader142 ]
  %i.f = or i32 %.082, %.sink
  br label %.preheader142

bb.e:                                             ; preds = %.preheader142
  br label %.backedge

bb.f:                                             ; preds = %.preheader142
  br label %.backedge

bb.g:                                             ; preds = %.preheader142
  br label %.backedge

bb.h:                                             ; preds = %.preheader142
  %3 = add i8 %i.e, -58
  %i.g = icmp ult i8 %3, -10
  br i1 %i.g, label %bb.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.h = phi i8 [ %i.n, %.lr.ph.i ], [ %i.e, %bb.h ]
  %.03.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %bb.h ]
  %i.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.d, %bb.h ]
  %i.j = mul nsw i32 %.03.i, 10
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i32 1 ; 3 uses
  %4 = zext nneg i8 %i.h to i32
  %i.l = add i32 %i.j, -48
  %i.m = add i32 %i.l, %4                         ; 2 uses
  %i.n = load i8, ptr %i.k, align 1               ; 3 uses
  %5 = add i8 %i.n, -58
  %i.o = icmp ult i8 %5, -10
  br i1 %i.o, label %skip_atoi.exit, label %.lr.ph.i, !llvm.loop !7

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i8 %i.e, 42
  br i1 %i.p, label %bb.j, label %skip_atoi.exitthread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0129, i32 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i32 4 ; 2 uses
  %i.s = load i32, ptr %.0, align 4               ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %skip_atoi.exitthread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.u = sub nsw i32 0, %i.s
  %i.v = or i32 %.082, 16
  br label %skip_atoi.exitthread-pre-split

skip_atoi.exitthread-pre-split:                   ; preds = %bb.j, %bb.k, %bb.i
  %.1130.ph = phi ptr [ %i.q, %bb.k ], [ %i.d, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  %.183.ph = phi i32 [ %i.v, %bb.k ], [ %.082, %bb.i ], [ %.082, %bb.j ]
  %.076.ph = phi i32 [ %i.u, %bb.k ], [ -1, %bb.i ], [ %i.s, %bb.j ]
  %.1.ph = phi ptr [ %i.r, %bb.k ], [ %.0, %bb.i ], [ %i.r, %bb.j ]
  %.pr = load i8, ptr %.1130.ph, align 1
  br label %skip_atoi.exit

skip_atoi.exit:                                   ; preds = %.lr.ph.i, %skip_atoi.exitthread-pre-split
  %i.w = phi i8 [ %.pr, %skip_atoi.exitthread-pre-split ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.1130 = phi ptr [ %.1130.ph, %skip_atoi.exitthread-pre-split ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.183 = phi i32 [ %.183.ph, %skip_atoi.exitthread-pre-split ], [ %.082, %.lr.ph.i ] ; 8 uses
  %.076 = phi i32 [ %.076.ph, %skip_atoi.exitthread-pre-split ], [ %i.m, %.lr.ph.i ] ; 10 uses
  %.1 = phi ptr [ %.1.ph, %skip_atoi.exitthread-pre-split ], [ %.0, %.lr.ph.i ] ; 5 uses
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.l, label %bb.o

bb.l:                                             ; preds = %skip_atoi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.1130, i32 1 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %6 = add i8 %i.z, -58
  %i.aa = icmp ult i8 %6, -10
  br i1 %i.aa, label %bb.m, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.l, %.lr.ph.i117
  %i.ab = phi i8 [ %i.ah, %.lr.ph.i117 ], [ %i.z, %bb.l ]
  %.03.i118 = phi i32 [ %i.ag, %.lr.ph.i117 ], [ 0, %bb.l ]
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i117 ], [ %i.y, %bb.l ]
  %i.ad = mul nsw i32 %.03.i118, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i32 1 ; 3 uses
  %7 = zext nneg i8 %i.ab to i32
  %i.af = add i32 %i.ad, -48
  %i.ag = add i32 %i.af, %7                       ; 2 uses
  %i.ah = load i8, ptr %i.ae, align 1             ; 2 uses
  %8 = add i8 %i.ah, -58
  %i.ai = icmp ult i8 %8, -10
  br i1 %i.ai, label %skip_atoi.exit120, label %.lr.ph.i117, !llvm.loop !7

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i8 %i.z, 42
  br i1 %i.aj, label %bb.n, label %skip_atoi.exit120

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.1130, i32 2
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i32 4
  %i.am = load i32, ptr %.1, align 4
  br label %skip_atoi.exit120

skip_atoi.exit120:                                ; preds = %.lr.ph.i117, %bb.m, %bb.n
  %.2131 = phi ptr [ %i.ak, %bb.n ], [ %i.y, %bb.m ], [ %i.ae, %.lr.ph.i117 ] ; 2 uses
  %.074 = phi i32 [ %i.am, %bb.n ], [ -1, %bb.m ], [ %i.ag, %.lr.ph.i117 ]
  %.2 = phi ptr [ %i.al, %bb.n ], [ %.1, %bb.m ], [ %.1, %.lr.ph.i117 ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.074, i32 0)
  %.pre = load i8, ptr %.2131, align 1
  br label %bb.o

bb.o:                                             ; preds = %skip_atoi.exit120, %skip_atoi.exit
  %i.an = phi i8 [ %.pre, %skip_atoi.exit120 ], [ %i.w, %skip_atoi.exit ] ; 3 uses
  %.3132 = phi ptr [ %.2131, %skip_atoi.exit120 ], [ %.1130, %skip_atoi.exit ] ; 2 uses
  %.175 = phi i32 [ %spec.store.select, %skip_atoi.exit120 ], [ -1, %skip_atoi.exit ] ; 3 uses
  %.3 = phi ptr [ %.2, %skip_atoi.exit120 ], [ %.1, %skip_atoi.exit ] ; 15 uses
  switch i8 %i.an, label %bb.q [
    i8 104, label %bb.p
    i8 108, label %bb.p
    i8 76, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.3132, i32 1 ; 2 uses
  %.pr136 = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %i.an, 104
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.aq = phi i8 [ %i.an, %bb.o ], [ %.pr136, %bb.p ]
  %.4133 = phi ptr [ %.3132, %bb.o ], [ %i.ao, %bb.p ] ; 12 uses
  %.073 = phi i1 [ false, %bb.o ], [ %i.ap, %bb.p ]
  switch i8 %i.aq, label %bb.aa [
    i8 99, label %bb.r
    i8 115, label %bb.s
    i8 112, label %bb.t
    i8 110, label %bb.u
    i8 37, label %bb.v
    i8 111, label %bb.w
    i8 120, label %bb.x
    i8 88, label %bb.y
    i8 100, label %bb.z
    i8 105, label %bb.z
    i8 117, label %bb.ad
  ]

bb.r:                                             ; preds = %bb.q
  %i.ar = and i32 %.183, 16
  %.not113 = icmp eq i32 %i.ar, 0
  br i1 %.not113, label %.preheader, label %.loopexit137

.preheader:                                       ; preds = %bb.r
  %i.as = icmp sgt i32 %.076, 1
  br i1 %i.as, label %.lr.ph163, label %.loopexit137.thread

.lr.ph163:                                        ; preds = %.preheader, %.lr.ph163
  %.in = phi i32 [ %i.at, %.lr.ph163 ], [ %.076, %.preheader ] ; 2 uses
  %.189162 = phi ptr [ %i.au, %.lr.ph163 ], [ %.088, %.preheader ] ; 2 uses
  %i.at = add nsw i32 %.in, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.189162, i32 1 ; 2 uses
  store i8 32, ptr %.189162, align 1
  %i.av = icmp sgt i32 %.in, 2
  br i1 %i.av, label %.lr.ph163, label %.loopexit137.thread, !llvm.loop !8

.loopexit137.thread:                              ; preds = %.lr.ph163, %.preheader
  %.290.ph = phi ptr [ %.088, %.preheader ], [ %i.au, %.lr.ph163 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.ax = load i32, ptr %.3, align 4
  %i.ay = trunc i32 %i.ax to i8
  store i8 %i.ay, ptr %.290.ph, align 1
  %.391166193 = getelementptr inbounds nuw i8, ptr %.290.ph, i32 1
  br label %.loopexit

.loopexit137:                                     ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i32 4 ; 2 uses
  %i.ba = load i32, ptr %.3, align 4
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %.088, align 1
  %.391166 = getelementptr inbounds nuw i8, ptr %.088, i32 1 ; 2 uses
  %i.bc = icmp sgt i32 %.076, 1
  br i1 %i.bc, label %.lr.ph169, label %.loopexit

.lr.ph169:                                        ; preds = %.loopexit137, %.lr.ph169
  %.391168 = phi ptr [ %.391, %.lr.ph169 ], [ %.391166, %.loopexit137 ] ; 2 uses
  %.379167 = phi i32 [ %i.bd, %.lr.ph169 ], [ %.076, %.loopexit137 ] ; 2 uses
  %i.bd = add nsw i32 %.379167, -1
  store i8 32, ptr %.391168, align 1
  %.391 = getelementptr inbounds nuw i8, ptr %.391168, i32 1 ; 2 uses
  %i.be = icmp samesign ugt i32 %.379167, 2
  br i1 %i.be, label %.lr.ph169, label %.loopexit, !llvm.loop !9

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i32 4 ; 2 uses
  %i.bg = load ptr, ptr %.3, align 4              ; 2 uses
  %i.bh = tail call i32 @strnlen(ptr inreg noundef %i.bg, i32 inreg noundef %.175) #6 ; 7 uses
  %i.bi = and i32 %.183, 16
  %.not112 = icmp eq i32 %i.bi, 0
  br i1 %.not112, label %.preheader140, label %.loopexit141

.preheader140:                                    ; preds = %bb.s
  %i.bj = add nsw i32 %.076, -1                   ; 2 uses
  %i.bk = icmp slt i32 %i.bh, %.076
  br i1 %i.bk, label %.lr.ph, label %.loopexit141

.lr.ph:                                           ; preds = %.preheader140, %.lr.ph
  %i.bl = phi i32 [ %i.bn, %.lr.ph ], [ %i.bj, %.preheader140 ] ; 2 uses
  %.492151 = phi ptr [ %i.bm, %.lr.ph ], [ %.088, %.preheader140 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.492151, i32 1 ; 2 uses
  store i8 32, ptr %.492151, align 1
  %i.bn = add nsw i32 %i.bl, -1
  %i.bo = icmp slt i32 %i.bh, %i.bl
  br i1 %i.bo, label %.lr.ph, label %.loopexit141.loopexit, !llvm.loop !10

.loopexit141.loopexit:                            ; preds = %.lr.ph
  %i.bp = add i32 %i.bh, -1
  br label %.loopexit141

.loopexit141:                                     ; preds = %.loopexit141.loopexit, %.preheader140, %bb.s
  %.593 = phi ptr [ %.088, %bb.s ], [ %.088, %.preheader140 ], [ %i.bm, %.loopexit141.loopexit ] ; 2 uses
  %.581 = phi i32 [ %.076, %bb.s ], [ %i.bj, %.preheader140 ], [ %i.bp, %.loopexit141.loopexit ] ; 2 uses
  %i.bq = icmp sgt i32 %i.bh, 0
  br i1 %i.bq, label %.lr.ph156, label %.preheader138

.preheader138:                                    ; preds = %.lr.ph156, %.loopexit141
  %.694.lcssa = phi ptr [ %.593, %.loopexit141 ], [ %i.bu, %.lr.ph156 ] ; 2 uses
  %i.br = icmp slt i32 %i.bh, %.581
  br i1 %i.br, label %.lr.ph160, label %.loopexit

.lr.ph156:                                        ; preds = %.loopexit141, %.lr.ph156
  %.087155 = phi ptr [ %i.bs, %.lr.ph156 ], [ %i.bg, %.loopexit141 ] ; 2 uses
  %.694154 = phi ptr [ %i.bu, %.lr.ph156 ], [ %.593, %.loopexit141 ] ; 2 uses
  %.097153 = phi i32 [ %i.bv, %.lr.ph156 ], [ 0, %.loopexit141 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.087155, i32 1
  %i.bt = load i8, ptr %.087155, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.694154, i32 1 ; 2 uses
  store i8 %i.bt, ptr %.694154, align 1
  %i.bv = add nuw nsw i32 %.097153, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %i.bh
  br i1 %exitcond.not, label %.preheader138, label %.lr.ph156, !llvm.loop !11

.lr.ph160:                                        ; preds = %.preheader138, %.lr.ph160
  %.6159 = phi i32 [ %i.bw, %.lr.ph160 ], [ %.581, %.preheader138 ]
  %.795158 = phi ptr [ %i.bx, %.lr.ph160 ], [ %.694.lcssa, %.preheader138 ] ; 2 uses
  %i.bw = add nsw i32 %.6159, -1                  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.795158, i32 1 ; 2 uses
  store i8 32, ptr %.795158, align 1
  %i.by = icmp slt i32 %i.bh, %i.bw
  br i1 %i.by, label %.lr.ph160, label %.loopexit, !llvm.loop !12

bb.t:                                             ; preds = %bb.q
  %i.bz = icmp eq i32 %.076, -1                   ; 2 uses
  %i.ca = zext i1 %i.bz to i32
  %spec.select = or i32 %.183, %i.ca
  %spec.select115 = select i1 %i.bz, i32 8, i32 %.076
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.cc = load ptr, ptr %.3, align 4
  %i.cd = ptrtoint ptr %i.cc to i32
  %i.ce = tail call fastcc ptr @number(ptr inreg noundef %.088, i32 inreg noundef %i.cd, i32 inreg noundef 16, i32 noundef %spec.select115, i32 noundef %.175, i32 noundef %spec.select) #7
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i32 4
  %i.cg = load ptr, ptr %.3, align 4
  %i.ch = ptrtoint ptr %.088 to i32
  %i.ci = sub i32 %i.ch, %i.a
  store i32 %i.ci, ptr %i.cg, align 4
  br label %.loopexit

bb.v:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.088, i32 1
  store i8 37, ptr %.088, align 1
  br label %.loopexit

bb.w:                                             ; preds = %bb.q
  br label %bb.ad

bb.x:                                             ; preds = %bb.q
  %i.ck = or i32 %.183, 32
  br label %bb.ad

bb.y:                                             ; preds = %bb.q
  br label %bb.ad

bb.z:                                             ; preds = %bb.q, %bb.q
  %i.cl = or i32 %.183, 2
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.088, i32 1 ; 2 uses
  store i8 37, ptr %.088, align 1
  %i.cn = load i8, ptr %.4133, align 1            ; 2 uses
end_hunk_0
