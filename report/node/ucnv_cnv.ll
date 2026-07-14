begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_getCompleteUnicodeSet_78(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 1114111) #4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_getNonSurrogateUnicodeSet_78(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 55295) #4
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load ptr, ptr %1, align 8
  tail call void %i.d(ptr noundef %i.e, i32 noundef 57344, i32 noundef 1114111) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ucnv_fromUWriteBytes_78(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %8 = ptrtoint ptr %4 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %9 = ptrtoint ptr %4 to i64                     ; 2 uses
  %i.c = load ptr, ptr %3, align 8
  %.fr = freeze ptr %i.c                          ; 17 uses
  %10 = ptrtoint ptr %.fr to i64                  ; 4 uses
  %i.d = icmp eq ptr %5, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %5, align 8                ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %2, 0
  %i.h = icmp ult ptr %.fr, %4
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = xor i64 %10, -1
  %i.k = add i64 %i.j, %9
  %i.l = add nsw i32 %2, -1
  %i.m = zext i32 %i.l to i64
  %umin91 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.n = add nuw nsw i64 %umin91, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin91, 27
  br i1 %min.iters.check, label %.lr.ph.preheader173, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.o = xor i64 %10, -1
  %i.p = add i64 %i.o, %9
  %i.q = add nsw i32 %2, -1
  %i.r = zext i32 %i.q to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.s = add nuw nsw i64 %umin, 1                 ; 2 uses
  %scevgep = getelementptr i8, ptr %.fr, i64 %i.s ; 2 uses
  %i.t = shl nuw nsw i64 %umin, 2
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t
  %scevgep82 = getelementptr i8, ptr %i.u, i64 4  ; 2 uses
  %scevgep83 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %bound0 = icmp ult ptr %.fr, %scevgep82
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %.fr, %scevgep83
  %bound185 = icmp ult ptr %1, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  %bound087 = icmp ult ptr %i.e, %scevgep83
  %bound188 = icmp ult ptr %1, %scevgep82
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx, %found.conflict89
  br i1 %conflict.rdx90, label %.lr.ph.preheader173, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 8589934584               ; 6 uses
  %i.v = shl nuw nsw i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %.fr, i64 %n.vec   ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.z = trunc i64 %n.vec to i32
  %i.aa = sub i32 %2, %i.z                        ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.ab ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.fr, i64 %index ; 2 uses
  %next.gep93 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep93, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep93, align 1, !alias.scope !5
  %wide.load94 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !5
  %i.ad = getelementptr i8, ptr %next.gep92, i64 4
  store <4 x i8> %wide.load, ptr %next.gep92, align 1, !alias.scope !8, !noalias !10
  store <4 x i8> %wide.load94, ptr %i.ad, align 1, !alias.scope !8, !noalias !10
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !alias.scope !12, !noalias !5
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !alias.scope !12, !noalias !5
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader173

.lr.ph.preheader173:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.144.ph = phi ptr [ %.fr, %vector.memcheck ], [ %.fr, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.13143.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.13542.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = icmp sgt i32 %2, 0
  %i.ah = icmp ult ptr %.fr, %4
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %iter.check, label %.loopexit41

iter.check:                                       ; preds = %bb.c
  %i.aj = xor i64 %10, -1
  %i.ak = add i64 %i.aj, %8
  %i.al = add nsw i32 %2, -1
  %i.am = zext i32 %i.al to i64
  %umin99 = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.am) ; 3 uses
  %i.an = add nuw nsw i64 %umin99, 1              ; 5 uses
  %min.iters.check101 = icmp samesign ult i64 %umin99, 3
  %i.ao = sub i64 %i.b, %10
  %diff.check = icmp ugt i64 %i.ao, -32
  %or.cond = or i1 %min.iters.check101, %diff.check
  br i1 %or.cond, label %.lr.ph53.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check102 = icmp samesign ult i64 %umin99, 31
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf104 = and i64 %i.an, 28
  %n.vec105 = and i64 %i.an, 8589934560           ; 6 uses
  %i.ap = getelementptr i8, ptr %.fr, i64 %n.vec105 ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 %n.vec105 ; 2 uses
  %i.ar = trunc i64 %n.vec105 to i32
  %i.as = sub i32 %2, %i.ar                       ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %next.gep108 = getelementptr i8, ptr %.fr, i64 %index107 ; 2 uses
  %next.gep109 = getelementptr i8, ptr %1, i64 %index107 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110 = load <16 x i8>, ptr %next.gep109, align 1
  %wide.load111 = load <16 x i8>, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %next.gep108, i64 16
  store <16 x i8> %wide.load110, ptr %next.gep108, align 1
  store <16 x i8> %wide.load111, ptr %i.au, align 1
  %index.next112 = add nuw i64 %index107, 32      ; 2 uses
  %i.av = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.av, label %middle.block113, label %vector.body106, !llvm.loop !17

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.an, %n.vec105
  br i1 %cmp.n114, label %.loopexit41, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block113
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf104, 0
  br i1 %min.epilog.iters.check, label %.lr.ph53.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec105, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.an, 8589934588           ; 5 uses
  %i.aw = getelementptr i8, ptr %.fr, i64 %n.vec119 ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %n.vec119 ; 2 uses
  %i.ay = trunc i64 %n.vec119 to i32
  %i.az = sub i32 %2, %i.ay                       ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %next.gep121 = getelementptr i8, ptr %.fr, i64 %index120
  %next.gep122 = getelementptr i8, ptr %1, i64 %index120
  %wide.load123 = load <4 x i8>, ptr %next.gep122, align 1
  store <4 x i8> %wide.load123, ptr %next.gep121, align 1
  %index.next124 = add nuw i64 %index120, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %i.an, %n.vec119
  br i1 %cmp.n125, label %.loopexit41, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02951.ph = phi ptr [ %.fr, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.03050.ph = phi ptr [ %1, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.03449.ph = phi i32 [ %2, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %.02951 = phi ptr [ %i.bd, %.lr.ph53 ], [ %.02951.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03050 = phi ptr [ %i.bb, %.lr.ph53 ], [ %.03050.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03449 = phi i32 [ %i.be, %.lr.ph53 ], [ %.03449.ph, %.lr.ph53.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03050, i64 1 ; 2 uses
  %i.bc = load i8, ptr %.03050, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.02951, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.02951, align 1
  %i.be = add nsw i32 %.03449, -1                 ; 2 uses
  %i.bf = icmp samesign ugt i32 %.03449, 1
  %i.bg = icmp ult ptr %i.bd, %4
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph53, label %.loopexit41, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.preheader173, %.lr.ph
  %.045 = phi ptr [ %i.bl, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader173 ] ; 2 uses
  %.144 = phi ptr [ %i.bk, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader173 ] ; 2 uses
  %.13143 = phi ptr [ %i.bi, %.lr.ph ], [ %.13143.ph, %.lr.ph.preheader173 ] ; 2 uses
  %.13542 = phi i32 [ %i.bm, %.lr.ph ], [ %.13542.ph, %.lr.ph.preheader173 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.13143, i64 1 ; 2 uses
  %i.bj = load i8, ptr %.13143, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.144, i64 1 ; 3 uses
  store i8 %i.bj, ptr %.144, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.045, i64 4 ; 2 uses
  store i32 %6, ptr %.045, align 4
  %i.bm = add nsw i32 %.13542, -1                 ; 2 uses
  %i.bn = icmp samesign ugt i32 %.13542, 1
  %i.bo = icmp ult ptr %i.bk, %4
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.135.lcssa = phi i32 [ %2, %.preheader ], [ %i.aa, %middle.block ], [ %i.bm, %.lr.ph ]
  %.131.lcssa = phi ptr [ %1, %.preheader ], [ %i.y, %middle.block ], [ %i.bi, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.fr, %.preheader ], [ %i.x, %middle.block ], [ %i.bk, %.lr.ph ]
  %.0.lcssa = phi ptr [ %i.e, %.preheader ], [ %i.w, %middle.block ], [ %i.bl, %.lr.ph ]
  store ptr %.0.lcssa, ptr %5, align 8
  br label %.loopexit41

.loopexit41:                                      ; preds = %.lr.ph53, %middle.block113, %vec.epilog.middle.block, %bb.c, %._crit_edge
  %.236 = phi i32 [ %.135.lcssa, %._crit_edge ], [ %2, %bb.c ], [ %i.az, %vec.epilog.middle.block ], [ %i.as, %middle.block113 ], [ %i.be, %.lr.ph53 ] ; 9 uses
  %.232 = phi ptr [ %.131.lcssa, %._crit_edge ], [ %1, %bb.c ], [ %i.ax, %vec.epilog.middle.block ], [ %i.aq, %middle.block113 ], [ %i.bb, %.lr.ph53 ] ; 7 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.fr, %bb.c ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ap, %middle.block113 ], [ %i.bd, %.lr.ph53 ]
  %.232130 = ptrtoaddr ptr %.232 to i64
  store ptr %.2, ptr %3, align 8
  %i.bq = icmp sgt i32 %.236, 0
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit41
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %iter.check152

iter.check152:                                    ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.bs = trunc i32 %.236 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = zext nneg i32 %.236 to i64              ; 5 uses
  %min.iters.check133 = icmp ult i32 %.236, 4
  br i1 %min.iters.check133, label %vec.epilog.scalar.ph153.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %iter.check152
  %i.bv = sub i64 %i.a, %.232130
  %i.bw = add i64 %i.bv, 103
  %diff.check131 = icmp ult i64 %i.bw, 31
  br i1 %diff.check131, label %vec.epilog.scalar.ph153.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %vector.memcheck129
  %min.iters.check135 = icmp ult i32 %.236, 32
  br i1 %min.iters.check135, label %vec.epilog.ph156, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %n.mod.vf137 = and i64 %i.bu, 28
  %n.vec138 = and i64 %i.bu, 2147483616           ; 6 uses
  %i.bx = trunc nuw nsw i64 %n.vec138 to i32
  %i.by = sub nsw i32 %.236, %i.bx
  %i.bz = getelementptr i8, ptr %.232, i64 %n.vec138
  %i.ca = getelementptr i8, ptr %i.br, i64 %n.vec138
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 3 uses
  %next.gep141 = getelementptr i8, ptr %.232, i64 %index140 ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.br, i64 %index140 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load143 = load <16 x i8>, ptr %next.gep141, align 1
  %wide.load144 = load <16 x i8>, ptr %i.cb, align 1
  %i.cc = getelementptr i8, ptr %next.gep142, i64 16
  store <16 x i8> %wide.load143, ptr %next.gep142, align 1
  store <16 x i8> %wide.load144, ptr %i.cc, align 1
  %index.next145 = add nuw i64 %index140, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cd, label %middle.block146, label %vector.body139, !llvm.loop !22

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %n.vec138, %i.bu
  br i1 %cmp.n147, label %.loopexit, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block146
  %min.epilog.iters.check155 = icmp eq i64 %n.mod.vf137, 0
  br i1 %min.epilog.iters.check155, label %vec.epilog.scalar.ph153.preheader, label %vec.epilog.ph156, !prof !18

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check134, %vec.epilog.iter.check154
  %vec.epilog.resume.val148 = phi i64 [ %n.vec138, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check134 ]
  %n.vec158 = and i64 %i.bu, 2147483644           ; 5 uses
  %i.ce = trunc nuw nsw i64 %n.vec158 to i32
  %i.cf = sub nsw i32 %.236, %i.ce
  %i.cg = getelementptr i8, ptr %.232, i64 %n.vec158
  %i.ch = getelementptr i8, ptr %i.br, i64 %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph156
  %index160 = phi i64 [ %vec.epilog.resume.val148, %vec.epilog.ph156 ], [ %index.next164, %vec.epilog.vector.body159 ] ; 3 uses
  %next.gep161 = getelementptr i8, ptr %.232, i64 %index160
  %next.gep162 = getelementptr i8, ptr %i.br, i64 %index160
  %wide.load163 = load <4 x i8>, ptr %next.gep161, align 1
  store <4 x i8> %wide.load163, ptr %next.gep162, align 1
  %index.next164 = add nuw i64 %index160, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.ci, label %vec.epilog.middle.block165, label %vec.epilog.vector.body159, !llvm.loop !23

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body159
  %cmp.n166 = icmp eq i64 %n.vec158, %i.bu
  br i1 %cmp.n166, label %.loopexit, label %vec.epilog.scalar.ph153.preheader

vec.epilog.scalar.ph153.preheader:                ; preds = %vector.memcheck129, %iter.check152, %vec.epilog.iter.check154, %vec.epilog.middle.block165
  %.337.ph = phi i32 [ %.236, %iter.check152 ], [ %.236, %vector.memcheck129 ], [ %i.by, %vec.epilog.iter.check154 ], [ %i.cf, %vec.epilog.middle.block165 ]
  %.333.ph = phi ptr [ %.232, %iter.check152 ], [ %.232, %vector.memcheck129 ], [ %i.bz, %vec.epilog.iter.check154 ], [ %i.cg, %vec.epilog.middle.block165 ]
  %.3.ph = phi ptr [ %i.br, %iter.check152 ], [ %i.br, %vector.memcheck129 ], [ %i.ca, %vec.epilog.iter.check154 ], [ %i.ch, %vec.epilog.middle.block165 ]
  br label %vec.epilog.scalar.ph153

vec.epilog.scalar.ph153:                          ; preds = %vec.epilog.scalar.ph153.preheader, %vec.epilog.scalar.ph153
end_hunk_0
