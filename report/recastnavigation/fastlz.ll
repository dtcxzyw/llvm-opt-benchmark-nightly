Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/fastlz?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fastlz_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 65536
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @fastlz1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @fastlz2_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @fastlz1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %3 = ptrtoaddr ptr %2 to i64
  %i.b = alloca [8192 x ptr], align 16            ; 9 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.g = icmp slt i32 %1, 4
  br i1 %i.g, label %bb.b, label %vector.ph, !prof !12

vector.ph:                                        ; preds = %bb.a
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.h = shl nuw nsw i64 %index, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.i, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.j, align 16, !tbaa !15
  %index.next = shl i64 %index, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <2 x ptr> %broadcast.splat, ptr %i.l, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.m, align 16, !tbaa !15
  %index.next.1 = shl i64 %index, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next.1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store <2 x ptr> %broadcast.splat, ptr %i.o, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.p, align 16, !tbaa !15
  %index.next.2 = shl i64 %index, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next.2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store <2 x ptr> %broadcast.splat, ptr %i.r, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.s, align 16, !tbaa !15
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.t = icmp eq i64 %index.next.3, 8192
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  %.not188 = icmp eq i32 %1, 0
  br i1 %.not188, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = trunc i32 %1 to i8
  %i.v = add i8 %i.u, -1
  store i8 %i.v, ptr %2, align 1, !tbaa !19
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not189218 = icmp slt i32 %1, 1
  br i1 %.not189218, label %._crit_edge223, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.x = add i64 %i.a, %i.c
  %i.y = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.z = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %3, %i.a
  %diff.check = icmp ult i64 %i.aa, 31
  %or.cond270 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond270, label %.lr.ph222.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check252 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check252, label %vec.epilog.ph, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 5 uses
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec
  %i.ad = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body254

vector.body254:                                   ; preds = %vector.ph253, %vector.body254
  %index255 = phi i64 [ 0, %vector.ph253 ], [ %index.next258, %vector.body254 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index255 ; 2 uses
  %next.gep256 = getelementptr i8, ptr %0, i64 %index255 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.af = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep256, align 1, !tbaa !19
  %wide.load257 = load <16 x i8>, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep, i64 17
  store <16 x i8> %wide.load, ptr %i.ae, align 1, !tbaa !19
  store <16 x i8> %wide.load257, ptr %i.ag, align 1, !tbaa !19
  %index.next258 = add nuw i64 %index255, 32      ; 2 uses
  %i.ah = icmp eq i64 %index.next258, %n.vec
  br i1 %i.ah, label %middle.block259, label %vector.body254, !llvm.loop !24

middle.block259:                                  ; preds = %vector.body254
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge223, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block259
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph222.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec261 = and i64 %i.z, -8                    ; 4 uses
  %i.ai = getelementptr i8, ptr %2, i64 %n.vec261
  %i.aj = getelementptr i8, ptr %0, i64 %n.vec261
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index262 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 3 uses
  %next.gep263 = getelementptr i8, ptr %2, i64 %index262
  %next.gep264 = getelementptr i8, ptr %0, i64 %index262
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep263, i64 1
  %wide.load265 = load <8 x i8>, ptr %next.gep264, align 1, !tbaa !19
  store <8 x i8> %wide.load265, ptr %i.ak, align 1, !tbaa !19
  %index.next266 = add nuw i64 %index262, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n267 = icmp eq i64 %i.z, %n.vec261
  br i1 %cmp.n267, label %._crit_edge223, label %.lr.ph222.preheader

.lr.ph222.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.pn220.ph = phi ptr [ %2, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.0158219.ph = phi ptr [ %0, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %.lr.ph222
  %.pn220 = phi ptr [ %.0153, %.lr.ph222 ], [ %.pn220.ph, %.lr.ph222.preheader ]
  %.0158219 = phi ptr [ %i.am, %.lr.ph222 ], [ %.0158219.ph, %.lr.ph222.preheader ] ; 2 uses
  %.0153 = getelementptr inbounds nuw i8, ptr %.pn220, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0158219, i64 1 ; 2 uses
  %i.an = load i8, ptr %.0158219, align 1, !tbaa !19
  store i8 %i.an, ptr %.0153, align 1, !tbaa !19
  %.not189 = icmp ugt ptr %i.am, %i.w
  br i1 %.not189, label %._crit_edge223, label %.lr.ph222, !llvm.loop !26

._crit_edge223:                                   ; preds = %.lr.ph222, %middle.block259, %vec.epilog.middle.block, %bb.c
  %i.ao = add nsw i32 %1, 1
  br label %bb.ag

middle.block:                                     ; preds = %vector.body
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 31, ptr %2, align 1, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %0, align 1, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  store i8 %i.au, ptr %i.as, align 1, !tbaa !19
  %i.aw = icmp samesign ugt i32 %1, 14
  br i1 %i.aw, label %.lr.ph205, label %._crit_edge, !prof !21

.lr.ph205:                                        ; preds = %middle.block, %bb.aa
  %.0150204 = phi i32 [ %.2, %bb.aa ], [ 2, %middle.block ] ; 4 uses
  %.1154203 = phi ptr [ %.7, %bb.aa ], [ %i.av, %middle.block ] ; 6 uses
  %.1159202 = phi ptr [ %.5163, %bb.aa ], [ %i.at, %middle.block ] ; 15 uses
  %i.ax = load i8, ptr %.1159202, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.1159202, i64 1 ; 4 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, %i.ay            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1159202, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or disjoint i32 %i.bh, %i.bb
  %i.bj = lshr i32 %i.bd, 3
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = xor i32 %i.bk, %i.bd
  %i.bm = and i32 %i.bl, 8191
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15 ; 13 uses
  %i.bq = ptrtoint ptr %.1159202 to i64           ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  store ptr %.1159202, ptr %i.bo, align 8, !tbaa !15
  %i.bu = add i32 %i.bt, -8192
  %or.cond = icmp ult i32 %i.bu, -8191
  %.pre = load i8, ptr %.1159202, align 1, !tbaa !19 ; 2 uses
  br i1 %or.cond, label %bb.y, label %bb.d

bb.d:                                             ; preds = %.lr.ph205
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !19
  %.not173 = icmp eq i8 %i.bv, %.pre
  br i1 %.not173, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19
  %i.by = load i8, ptr %i.az, align 1, !tbaa !19
  %.not174 = icmp eq i8 %i.bx, %i.by
  br i1 %.not174, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 3 ; 2 uses
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !19  ; 2 uses
  %i.cc = load i8, ptr %i.be, align 1, !tbaa !19
  %.not175 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not175, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.1159202, i64 3 ; 4 uses
  %i.ce = add nsw i32 %i.bt, -1                   ; 7 uses
  %.not176 = icmp eq i32 %i.ce, 0
  br i1 %.not176, label %.preheader190, label %bb.i

.preheader190:                                    ; preds = %bb.g
  %i.cf = icmp ult ptr %i.cd, %i.e
  br i1 %i.cf, label %.lr.ph, label %.loopexit191

.lr.ph:                                           ; preds = %.preheader190, %bb.h
  %.0148197 = phi ptr [ %i.ch, %bb.h ], [ %i.ca, %.preheader190 ] ; 2 uses
  %.2160196 = phi ptr [ %i.ci, %bb.h ], [ %i.cd, %.preheader190 ] ; 2 uses
  %i.cg = load i8, ptr %.0148197, align 1, !tbaa !19
  %.not177 = icmp eq i8 %i.cg, %i.cb
  br i1 %.not177, label %bb.h, label %.loopexit191

bb.h:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.0148197, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.2160196, i64 1 ; 3 uses
  %i.cj = icmp ult ptr %i.ci, %i.e
  br i1 %i.cj, label %.lr.ph, label %.loopexit191, !llvm.loop !27

bb.i:                                             ; preds = %bb.g
  %i.ck = load i8, ptr %i.ca, align 1, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %.1159202, i64 4 ; 2 uses
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !19
  %.not178 = icmp eq i8 %i.ck, %i.cm
  br i1 %.not178, label %bb.j, label %.loopexit191

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %.1159202, i64 5 ; 2 uses
  %i.cq = load i8, ptr %i.cl, align 1, !tbaa !19
  %.not179 = icmp eq i8 %i.co, %i.cq
  br i1 %.not179, label %bb.k, label %.loopexit191

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %.1159202, i64 6 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 1, !tbaa !19
  %.not180 = icmp eq i8 %i.cs, %i.cu
  br i1 %.not180, label %bb.l, label %.loopexit191

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %.1159202, i64 7 ; 2 uses
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !19
  %.not181 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not181, label %bb.m, label %.loopexit191

end_hunk_0
begin_hunk_1_@fastlz1_compress:bb.a
  %i.dy = zext i32 %.0150204 to i64
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.1154203, i64 %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -1
  store i8 %i.dx, ptr %i.eb, align 1, !tbaa !19
  br label %bb.t

bb.s:                                             ; preds = %.loopexit191
  %i.ec = getelementptr inbounds i8, ptr %.1154203, i64 -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2155 = phi ptr [ %.1154203, %bb.r ], [ %i.ec, %bb.s ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.4162, i64 -3 ; 3 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.bq
  %i.eg = trunc i64 %i.ef to i32                  ; 3 uses
  %i.eh = icmp ugt i32 %i.eg, 262
  br i1 %i.eh, label %.preheader, label %.loopexit, !prof !12

.preheader:                                       ; preds = %bb.t
  %i.ei = lshr i32 %i.ce, 8
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = add i8 %i.ej, -32
  %i.el = trunc i32 %i.ce to i8
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.u
  %.0201 = phi i32 [ %i.eg, %.preheader ], [ %i.ep, %bb.u ]
  %.3156200 = phi ptr [ %.2155, %.preheader ], [ %i.eo, %bb.u ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.3156200, i64 1
  store i8 %i.ek, ptr %.3156200, align 1, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %.3156200, i64 2
  store i8 -3, ptr %i.em, align 1, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %.3156200, i64 3 ; 2 uses
  store i8 %i.el, ptr %i.en, align 1, !tbaa !19
  %i.ep = add i32 %.0201, -262                    ; 3 uses
  %i.eq = icmp ugt i32 %i.ep, 262
  br i1 %i.eq, label %bb.u, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.u, %bb.t
  %.4157 = phi ptr [ %.2155, %bb.t ], [ %i.eo, %bb.u ] ; 4 uses
  %.1 = phi i32 [ %i.eg, %bb.t ], [ %i.ep, %bb.u ] ; 3 uses
  %i.er = icmp samesign ult i32 %.1, 7
  %i.es = getelementptr inbounds nuw i8, ptr %.4157, i64 2 ; 2 uses
  br i1 %i.er, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.et = shl nuw nsw i32 %.1, 5
  %i.eu = lshr i32 %i.ce, 8
  %i.ev = add nuw nsw i32 %i.et, %i.eu
  %i.ew = trunc nuw i32 %i.ev to i8
  %i.ex = trunc i32 %i.ce to i8
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ey = lshr i32 %i.ce, 8
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = add i8 %i.ez, -32
  %i.fb = trunc i32 %.1 to i8
  %i.fc = add i8 %i.fb, -7
  %i.fd = trunc i32 %i.ce to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.4157, i64 3
  store i8 %i.fd, ptr %i.es, align 1, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink227 = phi i8 [ %i.ew, %bb.v ], [ %i.fa, %bb.w ]
  %.sink = phi i8 [ %i.ex, %bb.v ], [ %i.fc, %bb.w ]
  %.5 = phi ptr [ %i.es, %bb.v ], [ %i.fe, %bb.w ] ; 2 uses
  store i8 %.sink227, ptr %.4157, align 1, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %.4157, i64 1
  store i8 %.sink, ptr %i.ff, align 1, !tbaa !19
  %i.fg = load i8, ptr %i.ed, align 1, !tbaa !19
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds i8, ptr %.4162, i64 -2 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !19
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fk, 8
  %i.fm = or disjoint i32 %i.fl, %i.fh            ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.4162, i64 -1 ; 3 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !19
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 8
  %i.fr = or disjoint i32 %i.fq, %i.fk
  %i.fs = lshr i32 %i.fm, 3
  %i.ft = xor i32 %i.fs, %i.fr
  %i.fu = xor i32 %i.ft, %i.fm
  %i.fv = and i32 %i.fu, 8191
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fw
  store ptr %i.ed, ptr %i.fx, align 8, !tbaa !15
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !19
  %i.fz = zext i8 %i.fy to i32
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !19
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %i.gc = shl nuw nsw i32 %i.gb, 8
  %i.gd = or disjoint i32 %i.gc, %i.fz            ; 2 uses
  %i.ge = load i8, ptr %.4162, align 1, !tbaa !19
  %i.gf = zext i8 %i.ge to i32
  %i.gg = shl nuw nsw i32 %i.gf, 8
  %i.gh = or disjoint i32 %i.gg, %i.gb
  %i.gi = lshr i32 %i.gd, 3
  %i.gj = xor i32 %i.gi, %i.gh
  %i.gk = xor i32 %i.gj, %i.gd
  %i.gl = and i32 %i.gk, 8191
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gm
  store ptr %i.fi, ptr %i.gn, align 8, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 31, ptr %.5, align 1, !tbaa !19
  br label %bb.aa, !llvm.loop !30

bb.y:                                             ; preds = %.lr.ph205, %bb.d, %bb.e, %bb.f
  %i.gp = getelementptr inbounds nuw i8, ptr %.1154203, i64 1 ; 2 uses
  store i8 %.pre, ptr %.1154203, align 1, !tbaa !19
  %i.gq = add i32 %.0150204, 1                    ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 32
  br i1 %i.gr, label %bb.z, label %bb.aa, !prof !12

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %.1154203, i64 2
  store i8 31, ptr %i.gp, align 1, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.5163 = phi ptr [ %i.fn, %bb.x ], [ %i.az, %bb.z ], [ %i.az, %bb.y ] ; 3 uses
  %.7 = phi ptr [ %i.go, %bb.x ], [ %i.gs, %bb.z ], [ %i.gp, %bb.y ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.x ], [ 0, %bb.z ], [ %i.gq, %bb.y ] ; 2 uses
  %i.gt = icmp ult ptr %.5163, %i.f
  br i1 %i.gt, label %.lr.ph205, label %._crit_edge, !prof !22

._crit_edge:                                      ; preds = %bb.aa, %middle.block
  %.1159.lcssa = phi ptr [ %i.at, %middle.block ], [ %.5163, %bb.aa ] ; 2 uses
  %.1154.lcssa = phi ptr [ %i.av, %middle.block ], [ %.7, %bb.aa ] ; 2 uses
  %.0150.lcssa = phi i32 [ 2, %middle.block ], [ %.2, %bb.aa ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  %.not209 = icmp ugt ptr %.1159.lcssa, %i.gu
  br i1 %.not209, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %._crit_edge, %bb.ac
  %.3212 = phi i32 [ %.4, %bb.ac ], [ %.0150.lcssa, %._crit_edge ]
  %.8211 = phi ptr [ %.9, %bb.ac ], [ %.1154.lcssa, %._crit_edge ] ; 3 uses
  %.6164210 = phi ptr [ %i.gv, %bb.ac ], [ %.1159.lcssa, %._crit_edge ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.6164210, i64 1 ; 2 uses
  %i.gw = load i8, ptr %.6164210, align 1, !tbaa !19
  %i.gx = getelementptr inbounds nuw i8, ptr %.8211, i64 1 ; 2 uses
  store i8 %i.gw, ptr %.8211, align 1, !tbaa !19
  %i.gy = add i32 %.3212, 1                       ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 32
  br i1 %i.gz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph214
  %i.ha = getelementptr inbounds nuw i8, ptr %.8211, i64 2
  store i8 31, ptr %i.gx, align 1, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph214
  %.9 = phi ptr [ %i.ha, %bb.ab ], [ %i.gx, %.lr.ph214 ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.ab ], [ %i.gy, %.lr.ph214 ] ; 2 uses
  %.not = icmp ugt ptr %i.gv, %i.gu
  br i1 %.not, label %._crit_edge215, label %.lr.ph214, !llvm.loop !31

._crit_edge215:                                   ; preds = %bb.ac, %._crit_edge
  %.8.lcssa = phi ptr [ %.1154.lcssa, %._crit_edge ], [ %.9, %bb.ac ] ; 3 uses
  %.3.lcssa = phi i32 [ %.0150.lcssa, %._crit_edge ], [ %.4, %bb.ac ] ; 3 uses
  %.not172 = icmp eq i32 %.3.lcssa, 0
  br i1 %.not172, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge215
  %i.hb = trunc i32 %.3.lcssa to i8
  %i.hc = add i8 %i.hb, -1
  %i.hd = zext i32 %.3.lcssa to i64
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %.8.lcssa, i64 %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -1
  store i8 %i.hc, ptr %i.hg, align 1, !tbaa !19
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge215
  %i.hh = getelementptr inbounds i8, ptr %.8.lcssa, i64 -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.10 = phi ptr [ %.8.lcssa, %bb.ad ], [ %i.hh, %bb.ae ]
  %i.hi = ptrtoint ptr %.10 to i64
  %i.hj = ptrtoint ptr %2 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %bb.af, %._crit_edge223
  %.0165 = phi i32 [ %i.ao, %._crit_edge223 ], [ %i.hl, %bb.af ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.0165
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @fastlz2_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %3 = ptrtoaddr ptr %2 to i64
  %i.b = alloca [8192 x ptr], align 16            ; 9 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.g = icmp slt i32 %1, 4
  br i1 %i.g, label %bb.b, label %vector.ph, !prof !12

vector.ph:                                        ; preds = %bb.a
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.h = shl nuw nsw i64 %index, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.i, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.j, align 16, !tbaa !15
  %index.next = shl i64 %index, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <2 x ptr> %broadcast.splat, ptr %i.l, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.m, align 16, !tbaa !15
  %index.next.1 = shl i64 %index, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next.1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store <2 x ptr> %broadcast.splat, ptr %i.o, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.p, align 16, !tbaa !15
  %index.next.2 = shl i64 %index, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %index.next.2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store <2 x ptr> %broadcast.splat, ptr %i.r, align 16, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.s, align 16, !tbaa !15
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.t = icmp eq i64 %index.next.3, 8192
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !32

bb.b:                                             ; preds = %bb.a
  %.not233 = icmp eq i32 %1, 0
  br i1 %.not233, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = trunc i32 %1 to i8
  %i.v = add i8 %i.u, -1
  store i8 %i.v, ptr %2, align 1, !tbaa !19
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not234286 = icmp slt i32 %1, 1
  br i1 %.not234286, label %._crit_edge291, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.x = add i64 %i.a, %i.c
  %i.y = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.z = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %3, %i.a
  %diff.check = icmp ult i64 %i.aa, 31
  %or.cond357 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond357, label %.lr.ph290.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check339 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check339, label %vec.epilog.ph, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 5 uses
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec
  %i.ad = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body341

vector.body341:                                   ; preds = %vector.ph340, %vector.body341
  %index342 = phi i64 [ 0, %vector.ph340 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index342 ; 2 uses
  %next.gep343 = getelementptr i8, ptr %0, i64 %index342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.af = getelementptr i8, ptr %next.gep343, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep343, align 1, !tbaa !19
  %wide.load344 = load <16 x i8>, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep, i64 17
  store <16 x i8> %wide.load, ptr %i.ae, align 1, !tbaa !19
  store <16 x i8> %wide.load344, ptr %i.ag, align 1, !tbaa !19
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ah = icmp eq i64 %index.next345, %n.vec
  br i1 %i.ah, label %middle.block346, label %vector.body341, !llvm.loop !33

middle.block346:                                  ; preds = %vector.body341
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge291, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block346
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph290.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec348 = and i64 %i.z, -8                    ; 4 uses
  %i.ai = getelementptr i8, ptr %2, i64 %n.vec348
  %i.aj = getelementptr i8, ptr %0, i64 %n.vec348
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index349 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next353, %vec.epilog.vector.body ] ; 3 uses
  %next.gep350 = getelementptr i8, ptr %2, i64 %index349
  %next.gep351 = getelementptr i8, ptr %0, i64 %index349
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep350, i64 1
  %wide.load352 = load <8 x i8>, ptr %next.gep351, align 1, !tbaa !19
  store <8 x i8> %wide.load352, ptr %i.ak, align 1, !tbaa !19
  %index.next353 = add nuw i64 %index349, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next353, %n.vec348
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n354 = icmp eq i64 %i.z, %n.vec348
  br i1 %cmp.n354, label %._crit_edge291, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.pn288.ph = phi ptr [ %2, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.0195287.ph = phi ptr [ %0, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.pn288 = phi ptr [ %.0190, %.lr.ph290 ], [ %.pn288.ph, %.lr.ph290.preheader ]
  %.0195287 = phi ptr [ %i.am, %.lr.ph290 ], [ %.0195287.ph, %.lr.ph290.preheader ] ; 2 uses
  %.0190 = getelementptr inbounds nuw i8, ptr %.pn288, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0195287, i64 1 ; 2 uses
  %i.an = load i8, ptr %.0195287, align 1, !tbaa !19
  store i8 %i.an, ptr %.0190, align 1, !tbaa !19
  %.not234 = icmp ugt ptr %i.am, %i.w
  br i1 %.not234, label %._crit_edge291, label %.lr.ph290, !llvm.loop !35

._crit_edge291:                                   ; preds = %.lr.ph290, %middle.block346, %vec.epilog.middle.block, %bb.c
  %i.ao = add nsw i32 %1, 1
  br label %bb.ap

middle.block:                                     ; preds = %vector.body
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 31, ptr %2, align 1, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %0, align 1, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  store i8 %i.au, ptr %i.as, align 1, !tbaa !19
  %i.aw = icmp samesign ugt i32 %1, 14
  br i1 %i.aw, label %.lr.ph272, label %._crit_edge273, !prof !21

.lr.ph272:                                        ; preds = %middle.block, %bb.aj
  %.0186270 = phi i32 [ %.2188, %bb.aj ], [ 2, %middle.block ] ; 4 uses
  %.1191267 = phi ptr [ %.7, %bb.aj ], [ %i.av, %middle.block ] ; 6 uses
  %.1196265 = phi ptr [ %.5200, %bb.aj ], [ %i.at, %middle.block ] ; 18 uses
  %i.ax = load i8, ptr %.1196265, align 1, !tbaa !19 ; 2 uses
  %i.ay = getelementptr i8, ptr %.1196265, i64 -1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = icmp eq i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.d, label %.lr.ph272._crit_edge

.lr.ph272._crit_edge:                             ; preds = %.lr.ph272
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1196265, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19
  %.phi.trans.insert306 = getelementptr inbounds nuw i8, ptr %.1196265, i64 2
  %.pre307 = load i8, ptr %.phi.trans.insert306, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph272
  %i.bb = load i16, ptr %i.ay, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.1196265, i64 1
  %i.bd = load i16, ptr %i.bc, align 1            ; 3 uses
  %i.be = icmp eq i16 %i.bb, %i.bd
  %i.bf = trunc i16 %i.bd to i8
  %i.bg = lshr i16 %i.bd, 8
  %i.bh = trunc nuw i16 %i.bg to i8
  br i1 %i.be, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %.1196265, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.1196265, i64 3
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph272._crit_edge, %bb.d
  %i.bk = phi i8 [ %.pre307, %.lr.ph272._crit_edge ], [ %i.bh, %bb.d ]
  %i.bl = phi i8 [ %.pre, %.lr.ph272._crit_edge ], [ %i.bf, %bb.d ]
  %i.bm = zext i8 %i.ax to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1196265, i64 1 ; 3 uses
  %i.bo = zext i8 %i.bl to i32                    ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = or disjoint i32 %i.bp, %i.bm            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1196265, i64 2
  %i.bs = zext i8 %i.bk to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = or disjoint i32 %i.bt, %i.bo
  %i.bv = lshr i32 %i.bq, 3
  %i.bw = xor i32 %i.bv, %i.bu
  %i.bx = xor i32 %i.bw, %i.bq
  %i.by = and i32 %i.bx, 8191
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15 ; 7 uses
  %i.cc = ptrtoint ptr %.1196265 to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 14 uses
  store ptr %.1196265, ptr %i.ca, align 8, !tbaa !15
  %i.cg = add i32 %i.cf, -73725
  %or.cond = icmp ult i32 %i.cg, -73724
  %.pre308 = load i8, ptr %.1196265, align 1, !tbaa !19 ; 2 uses
  br i1 %or.cond, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !19
  %.not215 = icmp eq i8 %i.ch, %.pre308
  br i1 %.not215, label %bb.g, label %bb.ah

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19
  %i.ck = load i8, ptr %i.bn, align 1, !tbaa !19
  %.not216 = icmp eq i8 %i.cj, %i.ck
  br i1 %.not216, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 3 ; 3 uses
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %.1196265, i64 3
  %i.cp = load i8, ptr %i.br, align 1, !tbaa !19
  %.not217 = icmp eq i8 %i.cn, %i.cp
  br i1 %.not217, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %bb.h
  %i.cq = icmp samesign ugt i32 %i.cf, 8190
  br i1 %i.cq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cr = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !19
  %.not218 = icmp eq i8 %i.cr, %i.cs
  br i1 %.not218, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.1196265, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = load i8, ptr %i.ct, align 1, !tbaa !19
  %.not219 = icmp eq i8 %i.cv, %i.cw
  br i1 %.not219, label %.thread326, label %bb.ah

.thread326:                                       ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  %i.cy = getelementptr inbounds nuw i8, ptr %.1196265, i64 5
  %i.cz = add nsw i32 %i.cf, -1
  br label %bb.o

bb.l:                                             ; preds = %bb.i
end_hunk_1
