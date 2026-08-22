Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tpeldsp?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_tpeldsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24), (32, 56), (64, 112), (120, 144), (152, 176)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @put_tpel_pixels_mc00_c, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @put_tpel_pixels_mc10_c, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @put_tpel_pixels_mc20_c, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @put_tpel_pixels_mc01_c, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @put_tpel_pixels_mc11_c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @put_tpel_pixels_mc21_c, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x ptr> <ptr @put_tpel_pixels_mc02_c, ptr @put_tpel_pixels_mc12_c, ptr @put_tpel_pixels_mc22_c, ptr @avg_tpel_pixels_mc00_c>, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @avg_tpel_pixels_mc10_c, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @avg_tpel_pixels_mc20_c, ptr %i.h, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @avg_tpel_pixels_mc01_c, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @avg_tpel_pixels_mc11_c, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @avg_tpel_pixels_mc21_c, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @avg_tpel_pixels_mc02_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @avg_tpel_pixels_mc12_c, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @avg_tpel_pixels_mc22_c, ptr %i.n, align 8, !tbaa !9
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_tpel_pixels_mc00_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %put_pixels2_8_c.exit

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.c, label %put_pixels2_8_c.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = sext i32 %2 to i64                       ; 18 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.i.preheader, label %put_pixels2_8_c.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter57 = and i32 %4, 7                     ; 3 uses
  %i.f = icmp ult i32 %4, 8
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter61 = and i32 %4, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0811.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %.0910.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter62 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter62.next.7, %.lr.ph.i ]
  %i.g = load i16, ptr %.0910.i, align 1, !tbaa !11
  store i16 %i.g, ptr %.0811.i, align 2, !tbaa !12
  %i.h = getelementptr inbounds i8, ptr %.0910.i, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.0811.i, i64 %i.d ; 2 uses
  %i.j = load i16, ptr %i.h, align 1, !tbaa !11
  store i16 %i.j, ptr %i.i, align 2, !tbaa !12
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.d ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.d ; 2 uses
  %i.m = load i16, ptr %i.k, align 1, !tbaa !11
  store i16 %i.m, ptr %i.l, align 2, !tbaa !12
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.d ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.d ; 2 uses
  %i.p = load i16, ptr %i.n, align 1, !tbaa !11
  store i16 %i.p, ptr %i.o, align 2, !tbaa !12
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.d ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.d ; 2 uses
  %i.s = load i16, ptr %i.q, align 1, !tbaa !11
  store i16 %i.s, ptr %i.r, align 2, !tbaa !12
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.d ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.d ; 2 uses
  %i.v = load i16, ptr %i.t, align 1, !tbaa !11
  store i16 %i.v, ptr %i.u, align 2, !tbaa !12
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.d ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.d ; 2 uses
  %i.y = load i16, ptr %i.w, align 1, !tbaa !11
  store i16 %i.y, ptr %i.x, align 2, !tbaa !12
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.d ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.d ; 2 uses
  %i.ab = load i16, ptr %i.z, align 1, !tbaa !11
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !12
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.d ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.d ; 2 uses
  %niter62.next.7 = add nuw nsw i32 %niter62, 8   ; 2 uses
  %niter62.ncmp.7 = icmp eq i32 %niter62.next.7, %unroll_iter61
  br i1 %niter62.ncmp.7, label %put_pixels2_8_c.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

bb.c:                                             ; preds = %.split
  %i.ae = sext i32 %2 to i64                      ; 18 uses
  %i.af = icmp sgt i32 %4, 0
  br i1 %i.af, label %.lr.ph.i16.preheader, label %put_pixels2_8_c.exit

.lr.ph.i16.preheader:                             ; preds = %bb.c
  %xtraiter51 = and i32 %4, 7                     ; 3 uses
  %i.ag = icmp ult i32 %4, 8
  br i1 %i.ag, label %.lr.ph.i16.epil.preheader, label %.lr.ph.i16.preheader.new

.lr.ph.i16.preheader.new:                         ; preds = %.lr.ph.i16.preheader
  %unroll_iter55 = and i32 %4, 2147483640
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16, %.lr.ph.i16.preheader.new
  %.0811.i18 = phi ptr [ %0, %.lr.ph.i16.preheader.new ], [ %i.be, %.lr.ph.i16 ] ; 2 uses
  %.0910.i19 = phi ptr [ %1, %.lr.ph.i16.preheader.new ], [ %i.bd, %.lr.ph.i16 ] ; 2 uses
  %niter56 = phi i32 [ 0, %.lr.ph.i16.preheader.new ], [ %niter56.next.7, %.lr.ph.i16 ]
  %i.ah = load i32, ptr %.0910.i19, align 1, !tbaa !11
  store i32 %i.ah, ptr %.0811.i18, align 4, !tbaa !16
  %i.ai = getelementptr inbounds i8, ptr %.0910.i19, i64 %i.ae ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.0811.i18, i64 %i.ae ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !11
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !16
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.ae ; 2 uses
  %i.an = load i32, ptr %i.al, align 1, !tbaa !11
  store i32 %i.an, ptr %i.am, align 4, !tbaa !16
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.ae ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 1, !tbaa !11
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !16
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.ae ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ae ; 2 uses
  %i.at = load i32, ptr %i.ar, align 1, !tbaa !11
  store i32 %i.at, ptr %i.as, align 4, !tbaa !16
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.ae ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.ae ; 2 uses
  %i.aw = load i32, ptr %i.au, align 1, !tbaa !11
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !16
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.ae ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ae ; 2 uses
  %i.az = load i32, ptr %i.ax, align 1, !tbaa !11
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !16
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.ae ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ae ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 1, !tbaa !11
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !16
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.ae ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.ae ; 2 uses
  %niter56.next.7 = add nuw nsw i32 %niter56, 8   ; 2 uses
  %niter56.ncmp.7 = icmp eq i32 %niter56.next.7, %unroll_iter55
  br i1 %niter56.ncmp.7, label %put_pixels2_8_c.exit.loopexit35.unr-lcssa, label %.lr.ph.i16, !llvm.loop !17

bb.d:                                             ; preds = %.split
  %i.bf = sext i32 %2 to i64                      ; 10 uses
  %i.bg = icmp sgt i32 %4, 0
  br i1 %i.bg, label %.lr.ph.i21.preheader, label %put_pixels2_8_c.exit

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %xtraiter45 = and i32 %4, 3                     ; 3 uses
  %i.bh = icmp ult i32 %4, 4
  br i1 %i.bh, label %.lr.ph.i21.epil.preheader, label %.lr.ph.i21.preheader.new

.lr.ph.i21.preheader.new:                         ; preds = %.lr.ph.i21.preheader
  %unroll_iter49 = and i32 %4, 2147483644
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21, %.lr.ph.i21.preheader.new
  %.01013.i = phi ptr [ %0, %.lr.ph.i21.preheader.new ], [ %i.cf, %.lr.ph.i21 ] ; 3 uses
  %.01112.i = phi ptr [ %1, %.lr.ph.i21.preheader.new ], [ %i.ce, %.lr.ph.i21 ] ; 3 uses
  %niter50 = phi i32 [ 0, %.lr.ph.i21.preheader.new ], [ %niter50.next.3, %.lr.ph.i21 ]
  %i.bi = load i32, ptr %.01112.i, align 1, !tbaa !11
  store i32 %i.bi, ptr %.01013.i, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.01013.i, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !16
  %i.bm = getelementptr inbounds i8, ptr %.01112.i, i64 %i.bf ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.01013.i, i64 %i.bf ; 3 uses
  %i.bo = load i32, ptr %i.bm, align 1, !tbaa !11
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %i.bf ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 3 uses
  %i.bu = load i32, ptr %i.bs, align 1, !tbaa !11
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !16
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 %i.bf ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %i.bf ; 3 uses
  %i.ca = load i32, ptr %i.by, align 1, !tbaa !11
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !16
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 %i.bf ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.bz, i64 %i.bf ; 2 uses
  %niter50.next.3 = add nuw nsw i32 %niter50, 4   ; 2 uses
  %niter50.ncmp.3 = icmp eq i32 %niter50.next.3, %unroll_iter49
  br i1 %niter50.ncmp.3, label %put_pixels2_8_c.exit.loopexit36.unr-lcssa, label %.lr.ph.i21, !llvm.loop !18

bb.e:                                             ; preds = %.split
  %i.cg = sext i32 %2 to i64                      ; 20 uses
  %i.ch = icmp sgt i32 %4, 0
end_hunk_0
