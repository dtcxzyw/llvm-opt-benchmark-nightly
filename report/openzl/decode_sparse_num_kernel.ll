Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_sparse_num_kernel?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @ZL_sparseNumDecodeOutputCount(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = or i64 %3, %1
  %i.b = icmp ult i64 %i.a, 4294967296
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader
  switch i64 %2, label %.loopexit [
    i64 1, label %ZL_sparseNumReadDistance.exit.us.preheader
    i64 2, label %ZL_sparseNumReadDistance.exit.us76.preheader
    i64 4, label %ZL_sparseNumReadDistance.exit.us83.preheader
  ]

ZL_sparseNumReadDistance.exit.us.preheader:       ; preds = %.lr.ph70
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.c = icmp ult i64 %1, 8
  br i1 %i.c, label %ZL_sparseNumReadDistance.exit.us.epil.preheader, label %ZL_sparseNumReadDistance.exit.us.preheader.new

ZL_sparseNumReadDistance.exit.us.preheader.new:   ; preds = %ZL_sparseNumReadDistance.exit.us.preheader
  %unroll_iter = and i64 %1, 4294967288
  br label %ZL_sparseNumReadDistance.exit.us

ZL_sparseNumReadDistance.exit.us83.preheader:     ; preds = %.lr.ph70
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %ZL_sparseNumReadDistance.exit.us83.preheader151, label %vector.ph

vector.ph:                                        ; preds = %ZL_sparseNumReadDistance.exit.us83.preheader
  %n.vec = and i64 %1, 4294967292                 ; 3 uses
  %i.d = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.d, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.e = shl i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !11
  %wide.load129 = load <2 x i32>, ptr %i.g, align 4, !tbaa !11
  %i.h = zext <2 x i32> %wide.load to <2 x i64>
  %i.i = zext <2 x i32> %wide.load129 to <2 x i64>
  %i.j = add <2 x i64> %vec.phi, %i.h             ; 2 uses
  %i.k = add <2 x i64> %vec.phi128, %i.i          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us83.preheader151

ZL_sparseNumReadDistance.exit.us83.preheader151:  ; preds = %ZL_sparseNumReadDistance.exit.us83.preheader, %middle.block
  %.02769.us81.ph = phi i64 [ 0, %ZL_sparseNumReadDistance.exit.us83.preheader ], [ %n.vec, %middle.block ]
  %.02868.us82.ph = phi i64 [ %3, %ZL_sparseNumReadDistance.exit.us83.preheader ], [ %i.m, %middle.block ]
  br label %ZL_sparseNumReadDistance.exit.us83

ZL_sparseNumReadDistance.exit.us76.preheader:     ; preds = %.lr.ph70
  %min.iters.check131 = icmp ult i64 %1, 4
  br i1 %min.iters.check131, label %ZL_sparseNumReadDistance.exit.us76.preheader146, label %vector.ph132

vector.ph132:                                     ; preds = %ZL_sparseNumReadDistance.exit.us76.preheader
  %n.vec133 = and i64 %1, 4294967292              ; 3 uses
  %i.n = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %vec.phi136 = phi <2 x i64> [ %i.n, %vector.ph132 ], [ %i.t, %vector.body134 ]
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph132 ], [ %i.u, %vector.body134 ]
  %i.o = shl i64 %index135, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load138 = load <2 x i16>, ptr %i.p, align 2, !tbaa !16
  %wide.load139 = load <2 x i16>, ptr %i.q, align 2, !tbaa !16
  %i.r = zext <2 x i16> %wide.load138 to <2 x i64>
  %i.s = zext <2 x i16> %wide.load139 to <2 x i64>
  %i.t = add <2 x i64> %vec.phi136, %i.r          ; 2 uses
  %i.u = add <2 x i64> %vec.phi137, %i.s          ; 2 uses
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.v, label %middle.block141, label %vector.body134, !llvm.loop !20

middle.block141:                                  ; preds = %vector.body134
  %bin.rdx142 = add <2 x i64> %i.u, %i.t
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx142) ; 2 uses
  %cmp.n143 = icmp eq i64 %1, %n.vec133
  br i1 %cmp.n143, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us76.preheader146

ZL_sparseNumReadDistance.exit.us76.preheader146:  ; preds = %ZL_sparseNumReadDistance.exit.us76.preheader, %middle.block141
  %.02769.us74.ph = phi i64 [ 0, %ZL_sparseNumReadDistance.exit.us76.preheader ], [ %n.vec133, %middle.block141 ]
  %.02868.us75.ph = phi i64 [ %3, %ZL_sparseNumReadDistance.exit.us76.preheader ], [ %i.w, %middle.block141 ]
  br label %ZL_sparseNumReadDistance.exit.us76

ZL_sparseNumReadDistance.exit.us:                 ; preds = %ZL_sparseNumReadDistance.exit.us, %ZL_sparseNumReadDistance.exit.us.preheader.new
  %.02769.us = phi i64 [ 0, %ZL_sparseNumReadDistance.exit.us.preheader.new ], [ %i.bk, %ZL_sparseNumReadDistance.exit.us ] ; 9 uses
  %.02868.us = phi i64 [ %3, %ZL_sparseNumReadDistance.exit.us.preheader.new ], [ %i.bj, %ZL_sparseNumReadDistance.exit.us ]
  %niter = phi i64 [ 0, %ZL_sparseNumReadDistance.exit.us.preheader.new ], [ %niter.next.7, %ZL_sparseNumReadDistance.exit.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = zext i8 %i.y to i64
  %i.aa = add i64 %.02868.us, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = add i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = zext i8 %i.ax to i64
  %i.az = add i64 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i64
  %i.be = add i64 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = zext i8 %i.bh to i64
  %i.bj = add i64 %i.be, %i.bi                    ; 3 uses
  %i.bk = add nuw i64 %.02769.us, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %ZL_sparseNumReadDistance.exit.us, !llvm.loop !21

ZL_sparseNumReadDistance.exit.us76:               ; preds = %ZL_sparseNumReadDistance.exit.us76.preheader146, %ZL_sparseNumReadDistance.exit.us76
  %.02769.us74 = phi i64 [ %i.bq, %ZL_sparseNumReadDistance.exit.us76 ], [ %.02769.us74.ph, %ZL_sparseNumReadDistance.exit.us76.preheader146 ] ; 2 uses
  %.02868.us75 = phi i64 [ %i.bp, %ZL_sparseNumReadDistance.exit.us76 ], [ %.02868.us75.ph, %ZL_sparseNumReadDistance.exit.us76.preheader146 ]
  %i.bl = shl i64 %.02769.us74, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !16
  %i.bo = zext i16 %i.bn to i64
  %i.bp = add i64 %.02868.us75, %i.bo             ; 2 uses
  %i.bq = add nuw i64 %.02769.us74, 1             ; 2 uses
  %exitcond101.not = icmp eq i64 %i.bq, %1
  br i1 %exitcond101.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us76, !llvm.loop !22

ZL_sparseNumReadDistance.exit.us83:               ; preds = %ZL_sparseNumReadDistance.exit.us83.preheader151, %ZL_sparseNumReadDistance.exit.us83
  %.02769.us81 = phi i64 [ %i.bw, %ZL_sparseNumReadDistance.exit.us83 ], [ %.02769.us81.ph, %ZL_sparseNumReadDistance.exit.us83.preheader151 ] ; 2 uses
  %.02868.us82 = phi i64 [ %i.bv, %ZL_sparseNumReadDistance.exit.us83 ], [ %.02868.us82.ph, %ZL_sparseNumReadDistance.exit.us83.preheader151 ]
  %i.br = shl i64 %.02769.us81, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add i64 %.02868.us82, %i.bu             ; 2 uses
  %i.bw = add nuw i64 %.02769.us81, 1             ; 2 uses
  %exitcond100.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond100.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us83, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  %i.bx = icmp eq i64 %3, -1
  br i1 %i.bx, label %.loopexit, label %.preheader39

.preheader39:                                     ; preds = %bb.b
  %.not3641.not = icmp eq i64 %1, 0
  br i1 %.not3641.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader39
  switch i64 %2, label %.loopexit [
    i64 1, label %ZL_sparseNumReadDistance.exit38.us
    i64 2, label %ZL_sparseNumReadDistance.exit38.us49
    i64 4, label %ZL_sparseNumReadDistance.exit38.us60
  ]

ZL_sparseNumReadDistance.exit38.us:               ; preds = %.lr.ph, %bb.c
  %.043.us = phi i64 [ %i.cd, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.12942.us = phi i64 [ %i.cc, %bb.c ], [ %3, %.lr.ph ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.043.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = zext i8 %i.bz to i64                    ; 2 uses
  %i.cb = xor i64 %.12942.us, -1
  %.not.us = icmp ult i64 %i.ca, %i.cb
  br i1 %.not.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %ZL_sparseNumReadDistance.exit38.us
  %i.cc = add i64 %.12942.us, %i.ca               ; 2 uses
  %i.cd = add nuw i64 %.043.us, 1                 ; 2 uses
  %exitcond99.not = icmp eq i64 %i.cd, %1
  br i1 %exitcond99.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit38.us, !llvm.loop !24

ZL_sparseNumReadDistance.exit38.us49:             ; preds = %.lr.ph, %bb.d
  %.043.us47 = phi i64 [ %i.ck, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.12942.us48 = phi i64 [ %i.cj, %bb.d ], [ %3, %.lr.ph ] ; 2 uses
  %i.ce = shl i64 %.043.us47, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !16
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = xor i64 %.12942.us48, -1
  %.not.us51 = icmp ult i64 %i.ch, %i.ci
  br i1 %.not.us51, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %ZL_sparseNumReadDistance.exit38.us49
  %i.cj = add i64 %.12942.us48, %i.ch             ; 2 uses
  %i.ck = add nuw i64 %.043.us47, 1               ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ck, %1
  br i1 %exitcond98.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit38.us49, !llvm.loop !24

ZL_sparseNumReadDistance.exit38.us60:             ; preds = %.lr.ph, %bb.e
  %.043.us58 = phi i64 [ %i.cr, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.12942.us59 = phi i64 [ %i.cq, %bb.e ], [ %3, %.lr.ph ] ; 2 uses
  %i.cl = shl i64 %.043.us58, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !11
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = xor i64 %.12942.us59, -1
  %.not.us62 = icmp ult i64 %i.co, %i.cp
  br i1 %.not.us62, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %ZL_sparseNumReadDistance.exit38.us60
  %i.cq = add i64 %.12942.us59, %i.co             ; 2 uses
  %i.cr = add nuw i64 %.043.us58, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %1
  br i1 %exitcond.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit38.us60, !llvm.loop !24

.loopexit.loopexit.unr-lcssa:                     ; preds = %ZL_sparseNumReadDistance.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us.epil.preheader

ZL_sparseNumReadDistance.exit.us.epil.preheader:  ; preds = %.loopexit.loopexit.unr-lcssa, %ZL_sparseNumReadDistance.exit.us.preheader
  %.02769.us.epil.init = phi i64 [ 0, %ZL_sparseNumReadDistance.exit.us.preheader ], [ %i.bk, %.loopexit.loopexit.unr-lcssa ]
  %.02868.us.epil.init = phi i64 [ %3, %ZL_sparseNumReadDistance.exit.us.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %ZL_sparseNumReadDistance.exit.us.epil

ZL_sparseNumReadDistance.exit.us.epil:            ; preds = %ZL_sparseNumReadDistance.exit.us.epil, %ZL_sparseNumReadDistance.exit.us.epil.preheader
  %.02769.us.epil = phi i64 [ %i.cw, %ZL_sparseNumReadDistance.exit.us.epil ], [ %.02769.us.epil.init, %ZL_sparseNumReadDistance.exit.us.epil.preheader ] ; 2 uses
  %.02868.us.epil = phi i64 [ %i.cv, %ZL_sparseNumReadDistance.exit.us.epil ], [ %.02868.us.epil.init, %ZL_sparseNumReadDistance.exit.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %ZL_sparseNumReadDistance.exit.us.epil ], [ 0, %ZL_sparseNumReadDistance.exit.us.epil.preheader ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.02769.us.epil
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = zext i8 %i.ct to i64
  %i.cv = add i64 %.02868.us.epil, %i.cu          ; 2 uses
  %i.cw = add nuw i64 %.02769.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %ZL_sparseNumReadDistance.exit.us.epil, !llvm.loop !25

.loopexit:                                        ; preds = %bb.e, %ZL_sparseNumReadDistance.exit38.us60, %bb.d, %ZL_sparseNumReadDistance.exit38.us49, %bb.c, %ZL_sparseNumReadDistance.exit38.us, %ZL_sparseNumReadDistance.exit.us83, %ZL_sparseNumReadDistance.exit.us76, %.loopexit.loopexit.unr-lcssa, %ZL_sparseNumReadDistance.exit.us.epil, %middle.block, %middle.block141, %.lr.ph, %.lr.ph70, %.preheader39, %.preheader, %bb.b
  %.333 = phi i64 [ -1, %bb.b ], [ %i.bp, %ZL_sparseNumReadDistance.exit.us76 ], [ %3, %.preheader ], [ %i.bv, %ZL_sparseNumReadDistance.exit.us83 ], [ %3, %.lr.ph ], [ %i.cj, %bb.d ], [ %3, %.preheader39 ], [ %i.cv, %ZL_sparseNumReadDistance.exit.us.epil ], [ %3, %.lr.ph70 ], [ %i.cc, %bb.c ], [ %i.w, %middle.block141 ], [ %i.m, %middle.block ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ], [ -1, %ZL_sparseNumReadDistance.exit38.us ], [ -1, %ZL_sparseNumReadDistance.exit38.us49 ], [ %i.cq, %bb.e ], [ -1, %ZL_sparseNumReadDistance.exit38.us60 ]
  ret i64 %.333
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_sparseNumDecode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %5, 0                        ; 3 uses
  %i.b = icmp eq i64 %4, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %8)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.split, label %ZL_sparseNumDecodeD8V1.exit

.split:                                           ; preds = %bb.b
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %8, i1 true)
  switch i64 %i.e, label %ZL_sparseNumDecodeD8V1.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.i
  ]

bb.c:                                             ; preds = %.split
  %i.f = add i64 %7, 1
  %i.g = icmp eq i64 %3, %i.f
  %.not.i.i = icmp eq i64 %7, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.h = add i64 %7, -1
  %xtraiter205 = and i64 %7, 3                    ; 3 uses
  %i.i = icmp ult i64 %i.h, 3
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter209 = and i64 %7, -4
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.080.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.av, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.04279.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.aw, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter205, 0
  tail call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.080.i.i.epil = phi ptr [ %i.p, %.lr.ph.i.i.epil ], [ %.080.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.04279.i.i.epil = phi i64 [ %i.q, %.lr.ph.i.i.epil ], [ %.04279.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.04279.i.i.epil
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.080.i.i.epil, i8 0, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.080.i.i.epil, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 %.04279.i.i.epil
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  store i8 %i.o, ptr %i.m, align 1, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.q = add nuw i64 %.04279.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter205
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.c
  %.0.lcssa.i.i = phi ptr [ %0, %bb.c ], [ %i.av, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.i.i.epil ]
  br i1 %i.g, label %bb.d, label %ZL_sparseNumDecodeD8V1.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.080.i.i = phi ptr [ %0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ] ; 2 uses
  %.04279.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.aw, %.lr.ph.i.i ] ; 6 uses
  %niter210 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter210.next.3, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.04279.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.080.i.i, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 %.04279.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17
  store i8 %i.w, ptr %i.u, align 1, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.y = or disjoint i64 %.04279.i.i, 1           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 %i.y
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ag = or disjoint i64 %.04279.i.i, 2          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ag
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ao = or disjoint i64 %.04279.i.i, 3          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 0, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 %i.ao
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  store i8 %i.au, ptr %i.as, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %i.aw = add nuw i64 %.04279.i.i, 4              ; 2 uses
  %niter210.next.3 = add nuw i64 %niter210, 4     ; 2 uses
  %niter210.ncmp.3 = icmp eq i64 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !27

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i.i, i8 0, i64 %i.az, i1 false)
  br label %ZL_sparseNumDecodeD8V1.exit

bb.e:                                             ; preds = %.split
  %i.ba = add i64 %7, 1
  %i.bb = icmp eq i64 %3, %i.ba
  %.not.i.i36 = icmp eq i64 %7, 0
  br i1 %.not.i.i36, label %._crit_edge.i.i41, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.e
  %xtraiter199 = and i64 %7, 1
  %i.bc = icmp eq i64 %7, 1
  br i1 %i.bc, label %.lr.ph.i.i37.epil.preheader, label %.lr.ph.i.i37.preheader.new

.lr.ph.i.i37.preheader.new:                       ; preds = %.lr.ph.i.i37.preheader
  %unroll_iter203 = and i64 %7, -2
  br label %.lr.ph.i.i37

._crit_edge.i.i41.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i37
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %._crit_edge.i.i41, label %.lr.ph.i.i37.epil.preheader

.lr.ph.i.i37.epil.preheader:                      ; preds = %._crit_edge.i.i41.loopexit.unr-lcssa, %.lr.ph.i.i37.preheader
  %.080.i.i38.epil.init = phi ptr [ %0, %.lr.ph.i.i37.preheader ], [ %i.cb, %._crit_edge.i.i41.loopexit.unr-lcssa ] ; 2 uses
  %.04279.i.i39.epil.init = phi i64 [ 0, %.lr.ph.i.i37.preheader ], [ %i.cc, %._crit_edge.i.i41.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod202 = trunc i64 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.04279.i.i39.epil.init
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.080.i.i38.epil.init, i8 0, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.080.i.i38.epil.init, i64 %i.bg ; 2 uses
  %.pn.i.i.epil = shl i64 %.04279.i.i39.epil.init, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 %.pn.i.i.epil
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !16
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %.lr.ph.i.i37.epil.preheader, %._crit_edge.i.i41.loopexit.unr-lcssa, %bb.e
  %.0.lcssa.i.i42 = phi ptr [ %0, %bb.e ], [ %i.cb, %._crit_edge.i.i41.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph.i.i37.epil.preheader ]
  br i1 %i.bb, label %bb.f, label %ZL_sparseNumDecodeD8V1.exit

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.i.i37.preheader.new
  %.080.i.i38 = phi ptr [ %0, %.lr.ph.i.i37.preheader.new ], [ %i.cb, %.lr.ph.i.i37 ] ; 2 uses
  %.04279.i.i39 = phi i64 [ 0, %.lr.ph.i.i37.preheader.new ], [ %i.cc, %.lr.ph.i.i37 ] ; 4 uses
  %niter204 = phi i64 [ 0, %.lr.ph.i.i37.preheader.new ], [ %niter204.next.1, %.lr.ph.i.i37 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.04279.i.i39
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.080.i.i38, i8 0, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.080.i.i38, i64 %i.bo ; 2 uses
  %.pn.i.i = shl i64 %.04279.i.i39, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 %.pn.i.i
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !16
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.bt = or disjoint i64 %.04279.i.i39, 1        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bs, i8 0, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx ; 2 uses
  %.pn.i.i.1 = shl i64 %i.bt, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 %.pn.i.i.1
end_hunk_0
