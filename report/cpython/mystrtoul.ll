begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@_PyLong_DigitValue = external local_unnamed_addr global [256 x i8], align 16
@digitlimit = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 64, i32 40, i32 32, i32 27, i32 24, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 17, i32 16, i32 16, i32 16, i32 15, i32 15, i32 15, i32 14, i32 14, i32 14, i32 14, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12], align 16
@smallmax = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 9223372036854775807, i64 6148914691236517205, i64 4611686018427387903, i64 3689348814741910323, i64 3074457345618258602, i64 2635249153387078802, i64 2305843009213693951, i64 2049638230412172401, i64 1844674407370955161, i64 1676976733973595601, i64 1537228672809129301, i64 1418980313362273201, i64 1317624576693539401, i64 1229782938247303441, i64 1152921504606846975, i64 1085102592571150095, i64 1024819115206086200, i64 970881267037344821, i64 922337203685477580, i64 878416384462359600, i64 838488366986797800, i64 802032351030850070, i64 768614336404564650, i64 737869762948382064, i64 709490156681136600, i64 683212743470724133, i64 658812288346769700, i64 636094623231363848, i64 614891469123651720, i64 595056260442243600, i64 576460752303423487, i64 558992244657865200, i64 542551296285575047, i64 527049830677415760, i64 512409557603043100], align 16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @PyOS_strtoul(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not142 = icmp eq i8 %i.a, 0
  br i1 %.not142, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.h, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %.0101143 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = and i32 %i.e, 8
  %.not121 = icmp eq i32 %i.f, 0
  br i1 %.not121, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.0101143, i64 1   ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !12

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.0101.lcssa.ph = phi ptr [ %.0101143, %.lr.ph ], [ %i.g, %bb.b ]
  %.lcssa.ph = phi i8 [ %i.b, %.lr.ph ], [ 0, %bb.b ]
  %i.i = icmp eq i8 %.lcssa.ph, 48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0101.lcssa = phi ptr [ %0, %bb.a ], [ %.0101.lcssa.ph, %.critedge.loopexit ] ; 16 uses
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.i, %.critedge.loopexit ] ; 4 uses
  switch i32 %2, label %bb.ae [
    i32 0, label %bb.c
    i32 16, label %bb.p
    i32 8, label %bb.u
    i32 2, label %bb.z
  ]

bb.c:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.d, label %.preheader137.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.0101.lcssa, i64 1 ; 6 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  switch i8 %i.k, label %.preheader138.preheader [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.h
    i8 79, label %bb.h
    i8 98, label %bb.k
    i8 66, label %bb.k
    i8 48, label %.lr.ph149
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = icmp ugt i8 %i.p, 15
  br i1 %i.q, label %bb.f, label %.preheader137.preheader

bb.f:                                             ; preds = %bb.e
  %.not129.a = icmp eq ptr %1, null
  br i1 %.not129.a, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.r = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp ugt i8 %i.v, 7
  br i1 %i.w, label %bb.i, label %.preheader137.preheader

bb.i:                                             ; preds = %bb.h
  %.not128.a = icmp eq ptr %1, null
  br i1 %.not128.a, label %bb.ar, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.x = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = icmp ugt i8 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %.preheader137.preheader

bb.l:                                             ; preds = %bb.k
  %.not127.a = icmp eq ptr %1, null
  br i1 %.not127.a, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %1, align 8, !tbaa !14
  br label %bb.ar

.lr.ph149:                                        ; preds = %bb.d, %.lr.ph149
  %.1148 = phi ptr [ %i.ad, %.lr.ph149 ], [ %i.j, %bb.d ]
  %i.ad = getelementptr i8, ptr %.1148, i64 1     ; 3 uses
  %.pr = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ae = icmp eq i8 %.pr, 48
  br i1 %i.ae, label %.lr.ph149, label %.preheader138.preheader, !llvm.loop !17

.preheader138.preheader:                          ; preds = %.lr.ph149, %bb.d
  %.2.ph = phi ptr [ %i.j, %bb.d ], [ %i.ad, %.lr.ph149 ]
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.preheader, %.preheader138
  %.2 = phi ptr [ %i.ak, %.preheader138 ], [ %.2.ph, %.preheader138.preheader ] ; 3 uses
  %i.af = load i8, ptr %.2, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = and i32 %i.ai, 8
  %.not125.a = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr i8, ptr %.2, i64 1
  br i1 %.not125.a, label %bb.n, label %.preheader138, !llvm.loop !18

bb.n:                                             ; preds = %.preheader138
  %.not126.a = icmp eq ptr %1, null
  br i1 %.not126.a, label %bb.ar, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.2, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.p:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.q, label %.preheader137.preheader

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr i8, ptr %.0101.lcssa, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  switch i8 %i.am, label %.preheader137.preheader [
    i8 120, label %bb.r
    i8 88, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.an = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = icmp ugt i8 %i.ar, 15
  br i1 %i.as, label %bb.s, label %.preheader137.preheader

bb.s:                                             ; preds = %bb.r
  %.not124 = icmp eq ptr %1, null
  br i1 %.not124, label %bb.ar, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.al, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.u:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.v, label %.preheader137.preheader

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr i8, ptr %.0101.lcssa, i64 1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  switch i8 %i.au, label %.preheader137.preheader [
    i8 111, label %bb.w
    i8 79, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.av = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = icmp ugt i8 %i.az, 7
  br i1 %i.ba, label %bb.x, label %.preheader137.preheader

bb.x:                                             ; preds = %bb.w
  %.not123 = icmp eq ptr %1, null
  br i1 %.not123, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.at, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.z:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.aa, label %.preheader137.preheader

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr i8, ptr %.0101.lcssa, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  switch i8 %i.bc, label %.preheader137.preheader [
    i8 98, label %bb.ab
    i8 66, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bd = getelementptr i8, ptr %.0101.lcssa, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %.preheader137.preheader

bb.ac:                                            ; preds = %bb.ab
  %.not122 = icmp eq ptr %1, null
  br i1 %.not122, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bb, ptr %1, align 8, !tbaa !14
  br label %bb.ar

bb.ae:                                            ; preds = %.critedge
  %i.bj = add i32 %2, -37
  %or.cond = icmp ult i32 %i.bj, -35
  br i1 %or.cond, label %bb.af, label %.preheader137.preheader

.preheader137.preheader:                          ; preds = %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.v, %bb.r, %bb.p, %bb.q, %bb.c, %bb.k, %bb.h, %bb.e, %bb.z, %bb.ae
  %.3176 = phi ptr [ %.0101.lcssa, %bb.ae ], [ %i.bd, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.av, %bb.w ], [ %.0101.lcssa, %bb.u ], [ %i.at, %bb.v ], [ %i.an, %bb.r ], [ %.0101.lcssa, %bb.p ], [ %i.al, %bb.q ], [ %.0101.lcssa, %bb.c ], [ %i.x, %bb.k ], [ %i.r, %bb.h ], [ %i.l, %bb.e ], [ %.0101.lcssa, %bb.z ]
  %.0105175 = phi i32 [ %2, %bb.ae ], [ 2, %bb.ab ], [ 2, %bb.aa ], [ 8, %bb.w ], [ 8, %bb.u ], [ 8, %bb.v ], [ 16, %bb.r ], [ 16, %bb.p ], [ 16, %bb.q ], [ 10, %bb.c ], [ 2, %bb.k ], [ 8, %bb.h ], [ 16, %bb.e ], [ 2, %bb.z ] ; 4 uses
  br label %.preheader137

bb.af:                                            ; preds = %bb.ae
  %.not132 = icmp eq ptr %1, null
  br i1 %.not132, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %.0101.lcssa, ptr %1, align 8, !tbaa !14
  br label %bb.ar

.preheader137:                                    ; preds = %.preheader137.preheader, %.preheader137
  %.4 = phi ptr [ %i.bm, %.preheader137 ], [ %.3176, %.preheader137.preheader ] ; 4 uses
  %i.bk = load i8, ptr %.4, align 1, !tbaa !11    ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.4, i64 1
  br i1 %i.bl, label %.preheader137, label %bb.ah, !llvm.loop !19

bb.ah:                                            ; preds = %.preheader137
  %i.bn = zext nneg i32 %.0105175 to i64          ; 4 uses
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = icmp samesign ugt i32 %.0105175, %i.br
  br i1 %i.bs, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %bb.ah
  %i.bt = getelementptr [4 x i8], ptr @digitlimit, i64 %i.bn
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = getelementptr [8 x i8], ptr @smallmax, i64 %i.bn
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph154, %bb.an
  %i.bw = phi i8 [ %i.bq, %.lr.ph154 ], [ %i.cn, %bb.an ] ; 2 uses
  %.0100153 = phi i32 [ %i.bu, %.lr.ph154 ], [ %i.cj, %bb.an ] ; 3 uses
  %.5152 = phi ptr [ %.4, %.lr.ph154 ], [ %i.ci, %bb.an ] ; 2 uses
  %.0102151 = phi i64 [ 0, %.lr.ph154 ], [ %.2104, %bb.an ] ; 3 uses
  %i.bx = icmp sgt i32 %.0100153, 0
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = mul i64 %.0102151, %i.bn
  %i.bz = zext i8 %i.bw to i64
  %i.ca = add i64 %i.by, %i.bz
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.cb = icmp slt i32 %.0100153, 0
  br i1 %i.cb, label %select.unfold, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.cd = icmp ugt i64 %.0102151, %i.cc
  br i1 %i.cd, label %select.unfold, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = mul i64 %.0102151, %i.bn                ; 2 uses
  %i.cf = zext i8 %i.bw to i64
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %select.unfold, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.2104 = phi i64 [ %i.ca, %bb.aj ], [ %i.cg, %bb.am ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.5152, i64 1     ; 3 uses
  %i.cj = add nsw i32 %.0100153, -1
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11  ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = icmp samesign ugt i32 %.0105175, %i.co
  br i1 %i.cp, label %bb.ai, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.an, %bb.ah
  %.0102.lcssa = phi i64 [ 0, %bb.ah ], [ %.2104, %bb.an ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4, %bb.ah ], [ %i.ci, %bb.an ]
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  store ptr %.5.lcssa, ptr %1, align 8, !tbaa !14
  br label %bb.ar

select.unfold:                                    ; preds = %bb.am, %bb.al, %bb.ak
  %.not131 = icmp eq ptr %1, null
  br i1 %.not131, label %bb.aq, label %.preheader

.preheader:                                       ; preds = %select.unfold, %.preheader
  %.6 = phi ptr [ %i.cw, %.preheader ], [ %.5152, %select.unfold ] ; 3 uses
  %i.cq = load i8, ptr %.6, align 1, !tbaa !11
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = zext i8 %i.ct to i32
  %i.cv = icmp samesign ugt i32 %.0105175, %i.cu
  %i.cw = getelementptr i8, ptr %.6, i64 1
  br i1 %i.cv, label %.preheader, label %bb.ap, !llvm.loop !23

bb.ap:                                            ; preds = %.preheader
  store ptr %.6, ptr %1, align 8, !tbaa !14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %select.unfold
  %i.cx = tail call ptr @__errno_location() #2
  store i32 34, ptr %i.cx, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.ao, %bb.af, %bb.ag, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.s, %bb.t, %bb.n, %bb.o, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.aq
  %.0 = phi i64 [ 0, %bb.ac ], [ 0, %bb.af ], [ -1, %bb.aq ], [ 0, %bb.ag ], [ 0, %bb.x ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.y ], [ 0, %bb.ad ], [ %.0102.lcssa, %bb.ao ], [ %.0102.lcssa, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @PyOS_strtol(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not27 = icmp eq i8 %i.a, 0
  br i1 %.not27, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.h, %bb.b ], [ %i.a, %bb.a ]  ; 3 uses
  %.028 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = and i32 %i.e, 8
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.028, i64 1       ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !24

.critedge:                                        ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.b, 45                      ; 2 uses
  switch i8 %i.b, label %.critedge.thread [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge, %.critedge
  %i.j = getelementptr i8, ptr %.028, i64 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge, %bb.c
  %i.k = phi i1 [ %i.i, %bb.c ], [ %i.i, %.critedge ], [ false, %bb.a ], [ false, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.028, %.critedge ], [ %0, %bb.a ], [ %i.g, %bb.b ]
  %i.l = tail call i64 @PyOS_strtoul(ptr noundef %.1, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.thread
  %i.n = sub nsw i64 0, %i.l
  %spec.select = select i1 %i.k, i64 %i.n, i64 %i.l
  br label %bb.g

bb.e:                                             ; preds = %.critedge.thread
  %i.o = icmp eq i64 %i.l, -9223372036854775808
  %or.cond4 = and i1 %i.k, %i.o
  br i1 %or.cond4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #2
  store i32 34, ptr %i.p, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.020 = phi i64 [ 9223372036854775807, %bb.f ], [ -9223372036854775808, %bb.e ], [ %spec.select, %bb.d ]
  ret i64 %.020
}

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
end_hunk_0
