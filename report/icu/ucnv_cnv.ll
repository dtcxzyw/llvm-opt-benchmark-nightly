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
  br i1 %min.iters.check, label %.lr.ph.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = getelementptr i8, ptr %.fr, i64 %i.q     ; 2 uses
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 4        ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %i.q       ; 2 uses
  %bound0 = icmp ult ptr %.fr, %i.u
  %bound1 = icmp ult ptr %i.g, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %.fr, %i.v
  %bound192 = icmp ult ptr %1, %i.r
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  %bound094 = icmp ult ptr %i.g, %i.v
  %bound195 = icmp ult ptr %1, %i.u
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  br i1 %conflict.rdx97, label %.lr.ph.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 8589934584               ; 6 uses
  %i.w = shl nuw nsw i64 %n.vec, 2
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %.fr, i64 %n.vec   ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.aa = trunc i64 %n.vec to i32
  %i.ab = sub i32 %2, %i.aa                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.ac ; 2 uses
  %next.gep98 = getelementptr i8, ptr %.fr, i64 %index ; 2 uses
  %next.gep99 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep99, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep99, align 1, !tbaa !43, !alias.scope !44
  %wide.load100 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !43, !alias.scope !44
  %i.ae = getelementptr i8, ptr %next.gep98, i64 4
  store <4 x i8> %wide.load, ptr %next.gep98, align 1, !tbaa !43, !alias.scope !45, !noalias !46
  store <4 x i8> %wide.load100, ptr %i.ae, align 1, !tbaa !43, !alias.scope !45, !noalias !46
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !16, !alias.scope !47, !noalias !44
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !16, !alias.scope !47, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.144.ph = phi ptr [ %.fr, %vector.memcheck ], [ %.fr, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.13143.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.13542.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = icmp sgt i32 %2, 0
  %i.ai = icmp ult ptr %.fr, %4
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %iter.check, label %.loopexit41

iter.check:                                       ; preds = %bb.c
  %i.ak = xor i64 %i.e, -1
  %i.al = add i64 %i.ak, %i.b
  %i.am = add nsw i32 %2, -1
  %i.an = zext i32 %i.am to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 3 uses
  %i.ao = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check106 = icmp samesign ult i64 %umin, 3
  %i.ap = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check106, %diff.check
  br i1 %or.cond, label %.lr.ph53.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ao, 28
  %n.vec109 = and i64 %i.ao, 8589934560           ; 6 uses
  %i.ar = getelementptr i8, ptr %.fr, i64 %n.vec109 ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %n.vec109 ; 2 uses
  %i.at = trunc i64 %n.vec109 to i32
  %i.au = sub i32 %2, %i.at                       ; 2 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %.fr, i64 %index111 ; 2 uses
  %next.gep113 = getelementptr i8, ptr %1, i64 %index111 ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <16 x i8>, ptr %next.gep113, align 1, !tbaa !43
  %wide.load115 = load <16 x i8>, ptr %i.av, align 1, !tbaa !43
  %i.aw = getelementptr i8, ptr %next.gep112, i64 16
  store <16 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !43
  store <16 x i8> %wide.load115, ptr %i.aw, align 1, !tbaa !43
  %index.next116 = add nuw i64 %index111, 32      ; 2 uses
  %i.ax = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ax, label %middle.block117, label %vector.body110, !llvm.loop !35

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.ao, %n.vec109
  br i1 %cmp.n118, label %.loopexit41, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block117
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph53.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec109, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ao, 8589934588           ; 5 uses
  %i.ay = getelementptr i8, ptr %.fr, i64 %n.vec122 ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %n.vec122 ; 2 uses
  %i.ba = trunc i64 %n.vec122 to i32
  %i.bb = sub i32 %2, %i.ba                       ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %.fr, i64 %index123
  %next.gep125 = getelementptr i8, ptr %1, i64 %index123
  %wide.load126 = load <4 x i8>, ptr %next.gep125, align 1, !tbaa !43
  store <4 x i8> %wide.load126, ptr %next.gep124, align 1, !tbaa !43
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ao, %n.vec122
  br i1 %cmp.n128, label %.loopexit41, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02951.ph = phi ptr [ %.fr, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.03050.ph = phi ptr [ %1, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.03449.ph = phi i32 [ %2, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %.02951 = phi ptr [ %i.bf, %.lr.ph53 ], [ %.02951.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03050 = phi ptr [ %i.bd, %.lr.ph53 ], [ %.03050.ph, %.lr.ph53.preheader ] ; 2 uses
  %.03449 = phi i32 [ %i.bg, %.lr.ph53 ], [ %.03449.ph, %.lr.ph53.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03050, i64 1 ; 2 uses
  %i.be = load i8, ptr %.03050, align 1, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %.02951, i64 1 ; 3 uses
  store i8 %i.be, ptr %.02951, align 1, !tbaa !43
  %i.bg = add nsw i32 %.03449, -1                 ; 2 uses
  %i.bh = icmp samesign ugt i32 %.03449, 1
  %i.bi = icmp ult ptr %i.bf, %4
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph53, label %.loopexit41, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.preheader174, %.lr.ph
  %.045 = phi ptr [ %i.bn, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader174 ] ; 2 uses
  %.144 = phi ptr [ %i.bm, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader174 ] ; 2 uses
  %.13143 = phi ptr [ %i.bk, %.lr.ph ], [ %.13143.ph, %.lr.ph.preheader174 ] ; 2 uses
  %.13542 = phi i32 [ %i.bo, %.lr.ph ], [ %.13542.ph, %.lr.ph.preheader174 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.13143, i64 1 ; 2 uses
  %i.bl = load i8, ptr %.13143, align 1, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %.144, i64 1 ; 3 uses
  store i8 %i.bl, ptr %.144, align 1, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %.045, i64 4 ; 2 uses
  store i32 %6, ptr %.045, align 4, !tbaa !16
  %i.bo = add nsw i32 %.13542, -1                 ; 2 uses
  %i.bp = icmp samesign ugt i32 %.13542, 1
  %i.bq = icmp ult ptr %i.bm, %4
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.135.lcssa = phi i32 [ %2, %.preheader ], [ %i.ab, %middle.block ], [ %i.bo, %.lr.ph ]
  %.131.lcssa = phi ptr [ %1, %.preheader ], [ %i.z, %middle.block ], [ %i.bk, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.fr, %.preheader ], [ %i.y, %middle.block ], [ %i.bm, %.lr.ph ]
  %.0.lcssa = phi ptr [ %i.g, %.preheader ], [ %i.x, %middle.block ], [ %i.bn, %.lr.ph ]
  store ptr %.0.lcssa, ptr %5, align 8, !tbaa !15
  br label %.loopexit41

.loopexit41:                                      ; preds = %.lr.ph53, %middle.block117, %vec.epilog.middle.block, %bb.c, %._crit_edge
  %.236 = phi i32 [ %.135.lcssa, %._crit_edge ], [ %2, %bb.c ], [ %i.bb, %vec.epilog.middle.block ], [ %i.au, %middle.block117 ], [ %i.bg, %.lr.ph53 ] ; 9 uses
  %.232 = phi ptr [ %.131.lcssa, %._crit_edge ], [ %1, %bb.c ], [ %i.az, %vec.epilog.middle.block ], [ %i.as, %middle.block117 ], [ %i.bd, %.lr.ph53 ] ; 7 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.fr, %bb.c ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ar, %middle.block117 ], [ %i.bf, %.lr.ph53 ]
  %.232133 = ptrtoaddr ptr %.232 to i64
  store ptr %.2, ptr %3, align 8, !tbaa !42
  %i.bs = icmp sgt i32 %.236, 0
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit41
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %iter.check154

iter.check154:                                    ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.bu = trunc i32 %.236 to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !49
  %i.bw = zext nneg i32 %.236 to i64              ; 5 uses
  %min.iters.check136 = icmp ult i32 %.236, 4
  br i1 %min.iters.check136, label %vec.epilog.scalar.ph155.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %iter.check154
  %i.bx = sub i64 %i.a, %.232133
  %i.by = add i64 %i.bx, 103
  %diff.check134 = icmp ult i64 %i.by, 31
  br i1 %diff.check134, label %vec.epilog.scalar.ph155.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck132
  %min.iters.check138 = icmp ult i32 %.236, 32
  br i1 %min.iters.check138, label %vec.epilog.ph158, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %i.bz = and i64 %i.bw, 28
  %n.vec140 = and i64 %i.bw, 2147483616           ; 6 uses
  %i.ca = trunc nuw nsw i64 %n.vec140 to i32
  %i.cb = sub nsw i32 %.236, %i.ca
  %i.cc = getelementptr i8, ptr %.232, i64 %n.vec140
  %i.cd = getelementptr i8, ptr %i.bt, i64 %n.vec140
  br label %vector.body141

vector.body141:                                   ; preds = %vector.ph139, %vector.body141
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body141 ] ; 3 uses
  %next.gep143 = getelementptr i8, ptr %.232, i64 %index142 ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.bt, i64 %index142 ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep143, i64 16
  %wide.load145 = load <16 x i8>, ptr %next.gep143, align 1, !tbaa !43
  %wide.load146 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !43
  %i.cf = getelementptr i8, ptr %next.gep144, i64 16
  store <16 x i8> %wide.load145, ptr %next.gep144, align 1, !tbaa !43
  store <16 x i8> %wide.load146, ptr %i.cf, align 1, !tbaa !43
  %index.next147 = add nuw i64 %index142, 32      ; 2 uses
  %i.cg = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.cg, label %middle.block148, label %vector.body141, !llvm.loop !39

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %n.vec140, %i.bw
  br i1 %cmp.n149, label %.loopexit, label %vec.epilog.iter.check156

vec.epilog.iter.check156:                         ; preds = %middle.block148
  %min.epilog.iters.check157 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check157, label %vec.epilog.scalar.ph155.preheader, label %vec.epilog.ph158, !prof !48

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check156
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check156 ], [ 0, %vector.main.loop.iter.check137 ]
  %n.vec159 = and i64 %i.bw, 2147483644           ; 5 uses
  %i.ch = trunc nuw nsw i64 %n.vec159 to i32
  %i.ci = sub nsw i32 %.236, %i.ch
  %i.cj = getelementptr i8, ptr %.232, i64 %n.vec159
  %i.ck = getelementptr i8, ptr %i.bt, i64 %n.vec159
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph158
  %index161 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph158 ], [ %index.next165, %vec.epilog.vector.body160 ] ; 3 uses
  %next.gep162 = getelementptr i8, ptr %.232, i64 %index161
  %next.gep163 = getelementptr i8, ptr %i.bt, i64 %index161
  %wide.load164 = load <4 x i8>, ptr %next.gep162, align 1, !tbaa !43
  store <4 x i8> %wide.load164, ptr %next.gep163, align 1, !tbaa !43
  %index.next165 = add nuw i64 %index161, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.cl, label %vec.epilog.middle.block166, label %vec.epilog.vector.body160, !llvm.loop !40

vec.epilog.middle.block166:                       ; preds = %vec.epilog.vector.body160
  %cmp.n167 = icmp eq i64 %n.vec159, %i.bw
  br i1 %cmp.n167, label %.loopexit, label %vec.epilog.scalar.ph155.preheader

vec.epilog.scalar.ph155.preheader:                ; preds = %iter.check154, %vector.memcheck132, %vec.epilog.iter.check156, %vec.epilog.middle.block166
  %.337.ph = phi i32 [ %.236, %iter.check154 ], [ %.236, %vector.memcheck132 ], [ %i.cb, %vec.epilog.iter.check156 ], [ %i.ci, %vec.epilog.middle.block166 ]
  %.333.ph = phi ptr [ %.232, %iter.check154 ], [ %.232, %vector.memcheck132 ], [ %i.cc, %vec.epilog.iter.check156 ], [ %i.cj, %vec.epilog.middle.block166 ]
  %.3.ph = phi ptr [ %i.bt, %iter.check154 ], [ %i.bt, %vector.memcheck132 ], [ %i.cd, %vec.epilog.iter.check156 ], [ %i.ck, %vec.epilog.middle.block166 ]
  br label %vec.epilog.scalar.ph155

vec.epilog.scalar.ph155:                          ; preds = %vec.epilog.scalar.ph155.preheader, %vec.epilog.scalar.ph155
end_hunk_0
