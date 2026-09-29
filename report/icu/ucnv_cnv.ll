Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_cnv?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @ucnv_getCompleteUnicodeSet_78(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 1114111)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ucnv_getNonSurrogateUnicodeSet_78(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 55295)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = load ptr, ptr %1, align 8, !tbaa !12
  tail call void %i.d(ptr noundef %i.e, i32 noundef 57344, i32 noundef 1114111)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ucnv_fromUWriteBytes_78(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = load ptr, ptr %3, align 8, !tbaa !42
  %.fr = freeze ptr %i.d                          ; 18 uses
  %i.e = ptrtoaddr ptr %.fr to i64                ; 2 uses
  %i.f = icmp eq ptr %5, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !15     ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = icmp sgt i32 %2, 0
  %i.j = icmp ult ptr %.fr, %4
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %8 = ptrtoaddr ptr %4 to i64
  %9 = ptrtoaddr ptr %.fr to i64
  %i.l = xor i64 %9, -1
  %i.m = add i64 %i.l, %8
  %i.n = add nsw i32 %2, -1
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.o) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.p, 27
  br i1 %min.iters.check, label %.lr.ph.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %.fr, i64 %i.q ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %scevgep82 = getelementptr i8, ptr %i.s, i64 4  ; 2 uses
  %scevgep83 = getelementptr i8, ptr %1, i64 %i.q ; 2 uses
  %bound0 = icmp ult ptr %.fr, %scevgep82
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %.fr, %scevgep83
  %bound185 = icmp ult ptr %1, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  %bound087 = icmp ult ptr %i.g, %scevgep83
  %bound188 = icmp ult ptr %1, %scevgep82
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx, %found.conflict89
  br i1 %conflict.rdx90, label %.lr.ph.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 8589934584               ; 6 uses
  %i.t = shl nuw nsw i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.g, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %.fr, i64 %n.vec   ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.x = trunc i64 %n.vec to i32
  %i.y = sub i32 %2, %i.x                         ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.z ; 2 uses
  %next.gep91 = getelementptr i8, ptr %.fr, i64 %index ; 2 uses
  %next.gep92 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep92, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep92, align 1, !tbaa !43, !alias.scope !44
  %wide.load93 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !43, !alias.scope !44
  %i.ab = getelementptr i8, ptr %next.gep91, i64 4
  store <4 x i8> %wide.load, ptr %next.gep91, align 1, !tbaa !43, !alias.scope !45, !noalias !46
  store <4 x i8> %wide.load93, ptr %i.ab, align 1, !tbaa !43, !alias.scope !45, !noalias !46
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !16, !alias.scope !47, !noalias !44
  store <4 x i32> %broadcast.splat, ptr %i.ac, align 4, !tbaa !16, !alias.scope !47, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.144.ph = phi ptr [ %.fr, %vector.memcheck ], [ %.fr, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  %.13143.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.13542.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = icmp sgt i32 %2, 0
  %i.af = icmp ult ptr %.fr, %4
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %iter.check, label %.loopexit41

iter.check:                                       ; preds = %bb.c
  %i.ah = xor i64 %i.e, -1
  %i.ai = add i64 %i.ah, %i.b
  %i.aj = add nsw i32 %2, -1
  %i.ak = zext i32 %i.aj to i64
  %umin98 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak) ; 3 uses
  %i.al = add nuw nsw i64 %umin98, 1              ; 5 uses
  %min.iters.check100 = icmp samesign ult i64 %umin98, 3
  %i.am = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.am, -32
  %or.cond = or i1 %min.iters.check100, %diff.check
  br i1 %or.cond, label %.lr.ph53.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check101 = icmp samesign ult i64 %umin98, 31
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.al, 28
  %n.vec103 = and i64 %i.al, 8589934560           ; 6 uses
  %i.ao = getelementptr i8, ptr %.fr, i64 %n.vec103 ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 %n.vec103 ; 2 uses
  %i.aq = trunc i64 %n.vec103 to i32
  %i.ar = sub i32 %2, %i.aq                       ; 2 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.ph102, %vector.body104
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body104 ] ; 3 uses
  %next.gep106 = getelementptr i8, ptr %.fr, i64 %index105 ; 2 uses
  %next.gep107 = getelementptr i8, ptr %1, i64 %index105 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load108 = load <16 x i8>, ptr %next.gep107, align 1, !tbaa !43
  %wide.load109 = load <16 x i8>, ptr %i.as, align 1, !tbaa !43
  %i.at = getelementptr i8, ptr %next.gep106, i64 16
  store <16 x i8> %wide.load108, ptr %next.gep106, align 1, !tbaa !43
  store <16 x i8> %wide.load109, ptr %i.at, align 1, !tbaa !43
  %index.next110 = add nuw i64 %index105, 32      ; 2 uses
  %i.au = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.au, label %middle.block111, label %vector.body104, !llvm.loop !35

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.al, %n.vec103
  br i1 %cmp.n112, label %.loopexit41, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block111
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph53.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec103, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.al, 8589934588           ; 5 uses
  %i.av = getelementptr i8, ptr %.fr, i64 %n.vec116 ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %n.vec116 ; 2 uses
  %i.ax = trunc i64 %n.vec116 to i32
  %i.ay = sub i32 %2, %i.ax                       ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.fr, i64 %index117
  %next.gep119 = getelementptr i8, ptr %1, i64 %index117
  %wide.load120 = load <4 x i8>, ptr %next.gep119, align 1, !tbaa !43
  store <4 x i8> %wide.load120, ptr %next.gep118, align 1, !tbaa !43
  %index.next121 = add nuw i64 %index117, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %i.al, %n.vec116
  br i1 %cmp.n122, label %.loopexit41, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02951.ph = phi ptr [ %.fr, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.03050.ph = phi ptr [ %1, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.03449.ph = phi i32 [ %2, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %.02951 = phi ptr [ %i.bc, %.lr.ph53 ], [ %.02951.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03050 = phi ptr [ %i.ba, %.lr.ph53 ], [ %.03050.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03449 = phi i32 [ %i.bd, %.lr.ph53 ], [ %.03449.ph, %.lr.ph53.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03050, i64 1 ; 2 uses
  %i.bb = load i8, ptr %.03050, align 1, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %.02951, i64 1 ; 3 uses
  store i8 %i.bb, ptr %.02951, align 1, !tbaa !43
  %i.bd = add nsw i32 %.03449, -1                 ; 2 uses
  %i.be = icmp samesign ugt i32 %.03449, 1
  %i.bf = icmp ult ptr %i.bc, %4
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph53, label %.loopexit41, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.preheader168, %.lr.ph
  %.045 = phi ptr [ %i.bk, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader168 ] ; 2 uses
  %.144 = phi ptr [ %i.bj, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader168 ] ; 2 uses
  %.13143 = phi ptr [ %i.bh, %.lr.ph ], [ %.13143.ph, %.lr.ph.preheader168 ] ; 2 uses
  %.13542 = phi i32 [ %i.bl, %.lr.ph ], [ %.13542.ph, %.lr.ph.preheader168 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.13143, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.13143, align 1, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.144, i64 1 ; 3 uses
  store i8 %i.bi, ptr %.144, align 1, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %.045, i64 4 ; 2 uses
  store i32 %6, ptr %.045, align 4, !tbaa !16
  %i.bl = add nsw i32 %.13542, -1                 ; 2 uses
  %i.bm = icmp samesign ugt i32 %.13542, 1
  %i.bn = icmp ult ptr %i.bj, %4
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.135.lcssa = phi i32 [ %2, %.preheader ], [ %i.y, %middle.block ], [ %i.bl, %.lr.ph ]
  %.131.lcssa = phi ptr [ %1, %.preheader ], [ %i.w, %middle.block ], [ %i.bh, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.fr, %.preheader ], [ %i.v, %middle.block ], [ %i.bj, %.lr.ph ]
  %.0.lcssa = phi ptr [ %i.g, %.preheader ], [ %i.u, %middle.block ], [ %i.bk, %.lr.ph ]
  store ptr %.0.lcssa, ptr %5, align 8, !tbaa !15
  br label %.loopexit41

.loopexit41:                                      ; preds = %.lr.ph53, %middle.block111, %vec.epilog.middle.block, %bb.c, %._crit_edge
  %.236 = phi i32 [ %.135.lcssa, %._crit_edge ], [ %2, %bb.c ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ar, %middle.block111 ], [ %i.bd, %.lr.ph53 ] ; 9 uses
  %.232 = phi ptr [ %.131.lcssa, %._crit_edge ], [ %1, %bb.c ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ap, %middle.block111 ], [ %i.ba, %.lr.ph53 ] ; 7 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.fr, %bb.c ], [ %i.av, %vec.epilog.middle.block ], [ %i.ao, %middle.block111 ], [ %i.bc, %.lr.ph53 ]
  %.232127 = ptrtoaddr ptr %.232 to i64
  store ptr %.2, ptr %3, align 8, !tbaa !42
  %i.bp = icmp sgt i32 %.236, 0
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit41
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %iter.check148

iter.check148:                                    ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.br = trunc i32 %.236 to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !49
  %i.bt = zext nneg i32 %.236 to i64              ; 5 uses
  %min.iters.check130 = icmp ult i32 %.236, 4
  br i1 %min.iters.check130, label %vec.epilog.scalar.ph149.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %iter.check148
  %i.bu = sub i64 %i.a, %.232127
  %i.bv = add i64 %i.bu, 103
  %diff.check128 = icmp ult i64 %i.bv, 31
  br i1 %diff.check128, label %vec.epilog.scalar.ph149.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %vector.memcheck126
  %min.iters.check132 = icmp ult i32 %.236, 32
  br i1 %min.iters.check132, label %vec.epilog.ph152, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.bw = and i64 %i.bt, 28
  %n.vec134 = and i64 %i.bt, 2147483616           ; 6 uses
  %i.bx = trunc nuw nsw i64 %n.vec134 to i32
  %i.by = sub nsw i32 %.236, %i.bx
  %i.bz = getelementptr i8, ptr %.232, i64 %n.vec134
  %i.ca = getelementptr i8, ptr %i.bq, i64 %n.vec134
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph133, %vector.body135
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.232, i64 %index136 ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.bq, i64 %index136 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep137, i64 16
  %wide.load139 = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !43
  %wide.load140 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !43
  %i.cc = getelementptr i8, ptr %next.gep138, i64 16
  store <16 x i8> %wide.load139, ptr %next.gep138, align 1, !tbaa !43
  store <16 x i8> %wide.load140, ptr %i.cc, align 1, !tbaa !43
  %index.next141 = add nuw i64 %index136, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.cd, label %middle.block142, label %vector.body135, !llvm.loop !39

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %n.vec134, %i.bt
  br i1 %cmp.n143, label %.loopexit, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block142
  %min.epilog.iters.check151 = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph149.preheader, label %vec.epilog.ph152, !prof !48

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check131, %vec.epilog.iter.check150
  %vec.epilog.resume.val144 = phi i64 [ %n.vec134, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check131 ]
  %n.vec153 = and i64 %i.bt, 2147483644           ; 5 uses
  %i.ce = trunc nuw nsw i64 %n.vec153 to i32
  %i.cf = sub nsw i32 %.236, %i.ce
  %i.cg = getelementptr i8, ptr %.232, i64 %n.vec153
  %i.ch = getelementptr i8, ptr %i.bq, i64 %n.vec153
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph152
  %index155 = phi i64 [ %vec.epilog.resume.val144, %vec.epilog.ph152 ], [ %index.next159, %vec.epilog.vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %.232, i64 %index155
  %next.gep157 = getelementptr i8, ptr %i.bq, i64 %index155
  %wide.load158 = load <4 x i8>, ptr %next.gep156, align 1, !tbaa !43
  store <4 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !43
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.ci, label %vec.epilog.middle.block160, label %vec.epilog.vector.body154, !llvm.loop !40

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body154
  %cmp.n161 = icmp eq i64 %n.vec153, %i.bt
  br i1 %cmp.n161, label %.loopexit, label %vec.epilog.scalar.ph149.preheader

vec.epilog.scalar.ph149.preheader:                ; preds = %iter.check148, %vector.memcheck126, %vec.epilog.iter.check150, %vec.epilog.middle.block160
  %.337.ph = phi i32 [ %.236, %iter.check148 ], [ %.236, %vector.memcheck126 ], [ %i.by, %vec.epilog.iter.check150 ], [ %i.cf, %vec.epilog.middle.block160 ]
  %.333.ph = phi ptr [ %.232, %iter.check148 ], [ %.232, %vector.memcheck126 ], [ %i.bz, %vec.epilog.iter.check150 ], [ %i.cg, %vec.epilog.middle.block160 ]
  %.3.ph = phi ptr [ %i.bq, %iter.check148 ], [ %i.bq, %vector.memcheck126 ], [ %i.ca, %vec.epilog.iter.check150 ], [ %i.ch, %vec.epilog.middle.block160 ]
  br label %vec.epilog.scalar.ph149

vec.epilog.scalar.ph149:                          ; preds = %vec.epilog.scalar.ph149.preheader, %vec.epilog.scalar.ph149
end_hunk_0
