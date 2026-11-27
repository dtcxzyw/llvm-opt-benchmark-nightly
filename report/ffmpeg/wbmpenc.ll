Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wbmpenc?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"wbmp\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"WBMP (Wireless Application Protocol Bitmap) image\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 10, i32 -1], align 4
@ff_wbmp_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 259, i32 1052674, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @wbmp_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @wbmp_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = add nsw i32 %i.d, 7
  %i.f = sdiv i32 %i.e, 8
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = add nsw i32 %i.g, 32
  %i.i = sext i32 %i.h to i64
  %i.j = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.i, i32 noundef 0) #5 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 3 uses
  store i8 0, ptr %i.m, align 1, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 5 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !36   ; 6 uses
  %.not14.i = icmp eq i32 %i.p, 0
  br i1 %.not14.i, label %putv.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not23.i = icmp eq i32 %.016.i, 0
  br i1 %.not23.i, label %putv.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.preheader.i
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.ac, i32 2) ; 2 uses
  %narrow = add nuw i32 %i.q, 1
  %i.r = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 15
  br i1 %min.iters.check, label %.lr.ph18.i.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.i.preheader
  %n.vec = and i64 %i.r, 4294967280               ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 %n.vec   ; 2 uses
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = sub i32 %i.ac, %i.t
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <16 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat74 = shufflevector <16 x i32> %broadcast.splatinsert73, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.v = add nsw <16 x i32> %broadcast.splat74, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %i.v, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index
  %i.w = mul <16 x i32> %vec.ind, splat (i32 7)
  %i.x = add <16 x i32> %i.w, splat (i32 -7)
  %i.y = lshr <16 x i32> %broadcast.splat, %i.x
  %i.z = trunc <16 x i32> %i.y to <16 x i8>
  %i.aa = or <16 x i8> %i.z, splat (i8 -128)
  store <16 x i8> %i.aa, ptr %next.gep, align 1, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %putv.exit, label %.lr.ph18.i.preheader98

.lr.ph18.i.preheader98:                           ; preds = %.lr.ph18.i.preheader, %middle.block
  %.1.ph = phi ptr [ %i.o, %.lr.ph18.i.preheader ], [ %i.s, %middle.block ]
  %.117.i.ph = phi i32 [ %i.ac, %.lr.ph18.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %.01115.i = phi i32 [ %i.ag, %.lr.ph.i ], [ 0, %bb.b ]
  %i.ac = add nuw i32 %.016.i, 1                  ; 5 uses
  %i.ad = mul nuw nsw i32 %.016.i, 7
  %i.ae = shl i32 127, %i.ad
  %i.af = and i32 %i.ae, %i.p
  %i.ag = add i32 %i.af, %.01115.i                ; 2 uses
  %.not.i = icmp eq i32 %i.ag, %i.p
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !10

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader98, %.lr.ph18.i
  %.1 = phi ptr [ %i.am, %.lr.ph18.i ], [ %.1.ph, %.lr.ph18.i.preheader98 ] ; 2 uses
  %.117.i = phi i32 [ %i.ah, %.lr.ph18.i ], [ %.117.i.ph, %.lr.ph18.i.preheader98 ] ; 2 uses
  %i.ah = add nsw i32 %.117.i, -1                 ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 7
  %i.aj = lshr i32 %i.p, %i.ai
  %i.ak = trunc i32 %i.aj to i8
  %i.al = or i8 %i.ak, -128
  store i8 %i.al, ptr %.1, align 1, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.an = icmp samesign ugt i32 %.117.i, 2
  br i1 %i.an, label %.lr.ph18.i, label %putv.exit, !llvm.loop !11

putv.exit:                                        ; preds = %.lr.ph18.i, %middle.block, %bb.b, %.preheader.i
  %.2 = phi ptr [ %i.o, %bb.b ], [ %i.o, %.preheader.i ], [ %i.s, %middle.block ], [ %i.am, %.lr.ph18.i ] ; 2 uses
  %i.ao = trunc i32 %i.p to i8
  %i.ap = and i8 %i.ao, 127
  store i8 %i.ap, ptr %.2, align 1, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 5 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !35  ; 6 uses
  %.not14.i25 = icmp eq i32 %i.ar, 0
  br i1 %.not14.i25, label %putv.exit37, label %.lr.ph.i26

.preheader.i30:                                   ; preds = %.lr.ph.i26
  %.not23.i31 = icmp eq i32 %.016.i27, 0
  br i1 %.not23.i31, label %putv.exit37, label %.lr.ph18.i33.preheader

.lr.ph18.i33.preheader:                           ; preds = %.preheader.i30
  %i.as = tail call i32 @llvm.usub.sat.i32(i32 %i.be, i32 2) ; 2 uses
  %narrow94 = add nuw i32 %i.as, 1
  %i.at = zext i32 %narrow94 to i64               ; 2 uses
  %min.iters.check77 = icmp ult i32 %i.as, 15
  br i1 %min.iters.check77, label %.lr.ph18.i33.preheader95, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph18.i33.preheader
  %n.vec79 = and i64 %i.at, 4294967280            ; 4 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 %n.vec79 ; 2 uses
  %i.av = trunc nuw i64 %n.vec79 to i32
  %i.aw = sub i32 %i.be, %i.av
  %broadcast.splatinsert80 = insertelement <16 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat81 = shufflevector <16 x i32> %broadcast.splatinsert80, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert82 = insertelement <16 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat83 = shufflevector <16 x i32> %broadcast.splatinsert82, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ax = add nsw <16 x i32> %broadcast.splat83, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph78
  %index85 = phi i64 [ 0, %vector.ph78 ], [ %index.next88, %vector.body84 ] ; 2 uses
  %vec.ind86 = phi <16 x i32> [ %i.ax, %vector.ph78 ], [ %vec.ind.next89, %vector.body84 ] ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.aq, i64 %index85
  %i.ay = mul <16 x i32> %vec.ind86, splat (i32 7)
  %i.az = add <16 x i32> %i.ay, splat (i32 -7)
  %i.ba = lshr <16 x i32> %broadcast.splat81, %i.az
  %i.bb = trunc <16 x i32> %i.ba to <16 x i8>
  %i.bc = or <16 x i8> %i.bb, splat (i8 -128)
  store <16 x i8> %i.bc, ptr %next.gep87, align 1, !tbaa !39
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %vec.ind.next89 = add nsw <16 x i32> %vec.ind86, splat (i32 -16)
  %i.bd = icmp eq i64 %index.next88, %n.vec79
  br i1 %i.bd, label %middle.block90, label %vector.body84, !llvm.loop !12

middle.block90:                                   ; preds = %vector.body84
  %cmp.n91 = icmp eq i64 %n.vec79, %i.at
  br i1 %cmp.n91, label %putv.exit37, label %.lr.ph18.i33.preheader95

.lr.ph18.i33.preheader95:                         ; preds = %.lr.ph18.i33.preheader, %middle.block90
  %.3.ph = phi ptr [ %i.aq, %.lr.ph18.i33.preheader ], [ %i.au, %middle.block90 ]
  %.117.i34.ph = phi i32 [ %i.be, %.lr.ph18.i33.preheader ], [ %i.aw, %middle.block90 ]
  br label %.lr.ph18.i33

.lr.ph.i26:                                       ; preds = %putv.exit, %.lr.ph.i26
  %.016.i27 = phi i32 [ %i.be, %.lr.ph.i26 ], [ 0, %putv.exit ] ; 3 uses
  %.01115.i28 = phi i32 [ %i.bi, %.lr.ph.i26 ], [ 0, %putv.exit ]
  %i.be = add nuw i32 %.016.i27, 1                ; 5 uses
  %i.bf = mul nuw nsw i32 %.016.i27, 7
  %i.bg = shl i32 127, %i.bf
  %i.bh = and i32 %i.bg, %i.ar
  %i.bi = add i32 %i.bh, %.01115.i28              ; 2 uses
  %.not.i29 = icmp eq i32 %i.bi, %i.ar
  br i1 %.not.i29, label %.preheader.i30, label %.lr.ph.i26, !llvm.loop !10

.lr.ph18.i33:                                     ; preds = %.lr.ph18.i33.preheader95, %.lr.ph18.i33
  %.3 = phi ptr [ %i.bo, %.lr.ph18.i33 ], [ %.3.ph, %.lr.ph18.i33.preheader95 ] ; 2 uses
  %.117.i34 = phi i32 [ %i.bj, %.lr.ph18.i33 ], [ %.117.i34.ph, %.lr.ph18.i33.preheader95 ] ; 2 uses
  %i.bj = add nsw i32 %.117.i34, -1               ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bj, 7
  %i.bl = lshr i32 %i.ar, %i.bk
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = or i8 %i.bm, -128
  store i8 %i.bn, ptr %.3, align 1, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bp = icmp samesign ugt i32 %.117.i34, 2
  br i1 %i.bp, label %.lr.ph18.i33, label %putv.exit37, !llvm.loop !13

putv.exit37:                                      ; preds = %.lr.ph18.i33, %middle.block90, %putv.exit, %.preheader.i30
  %.4 = phi ptr [ %i.aq, %putv.exit ], [ %i.aq, %.preheader.i30 ], [ %i.au, %middle.block90 ], [ %i.bo, %.lr.ph18.i33 ] ; 2 uses
  %i.bq = trunc i32 %i.ar to i8
  %i.br = and i8 %i.bq, 127
  store i8 %i.br, ptr %.4, align 1, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !43 ; 3 uses
  %i.bv = load i32, ptr %i.c, align 8, !tbaa !36
  %i.bw = add nsw i32 %i.bv, 7
  %i.bx = sdiv i32 %i.bw, 8                       ; 2 uses
  %i.by = icmp eq i32 %i.bu, %i.bx
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %putv.exit37
  %i.bz = load ptr, ptr %2, align 8, !tbaa !44
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !35
  %i.cb = mul nsw i32 %i.ca, %i.bu
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bz, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cc
  br label %writebits.exit

bb.d:                                             ; preds = %putv.exit37
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !35  ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i38, label %writebits.exit

.lr.ph.i38:                                       ; preds = %bb.d
  %i.cg = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ch = sext i32 %i.bx to i64                   ; 10 uses
  %i.ci = sext i32 %i.bu to i64                   ; 5 uses
  %xtraiter = and i32 %i.ce, 3                    ; 3 uses
  %i.cj = icmp ult i32 %i.ce, 4
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.i38.new

.lr.ph.i38.new:                                   ; preds = %.lr.ph.i38
  %unroll_iter = and i32 %i.ce, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i38.new
  %.5 = phi ptr [ %i.bs, %.lr.ph.i38.new ], [ %i.cq, %bb.e ] ; 2 uses
  %.01011.i = phi ptr [ %i.cg, %.lr.ph.i38.new ], [ %i.cr, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i38.new ], [ %niter.next.3, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.5, ptr align 1 %.01011.i, i64 %i.ch, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %.5, i64 %i.ch ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.01011.i, i64 %i.ci ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cl, i64 %i.ch, i1 false)
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.ch ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.ci ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.cn, i64 %i.ch, i1 false)
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.ch ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.ci ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cp, i64 %i.ch, i1 false)
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.ch ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.ci ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %writebits.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !14

writebits.exit.loopexit.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %writebits.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %writebits.exit.loopexit.unr-lcssa, %.lr.ph.i38
  %.5.epil.init = phi ptr [ %i.bs, %.lr.ph.i38 ], [ %i.cq, %writebits.exit.loopexit.unr-lcssa ]
  %.01011.i.epil.init = phi ptr [ %i.cg, %.lr.ph.i38 ], [ %i.cr, %writebits.exit.loopexit.unr-lcssa ]
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.5.epil = phi ptr [ %.5.epil.init, %.epil.preheader ], [ %i.cs, %bb.f ] ; 2 uses
  %.01011.i.epil = phi ptr [ %.01011.i.epil.init, %.epil.preheader ], [ %i.ct, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.5.epil, ptr align 1 %.01011.i.epil, i64 %i.ch, i1 false)
  %i.cs = getelementptr inbounds i8, ptr %.5.epil, i64 %i.ch ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.01011.i.epil, i64 %i.ci
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %writebits.exit, label %bb.f, !llvm.loop !15

writebits.exit:                                   ; preds = %writebits.exit.loopexit.unr-lcssa, %bb.f, %bb.d, %bb.c
  %.049 = phi ptr [ %i.cd, %bb.c ], [ %i.bs, %bb.d ], [ %i.cq, %writebits.exit.loopexit.unr-lcssa ], [ %i.cs, %bb.f ]
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.cv = ptrtoint ptr %.049 to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i32
  tail call void @av_shrink_packet(ptr noundef nonnull %1, i32 noundef %i.cy) #5
  store i32 1, ptr %3, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %writebits.exit
  %.0 = phi i32 [ 0, %writebits.exit ], [ %i.j, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !40, !41, !42}
!10 = distinct !{!10, !40}
!11 = distinct !{!11, !40, !42, !41}
!12 = distinct !{!12, !40, !41, !42}
!13 = distinct !{!13, !40, !42, !41}
!14 = distinct !{!14, !40}
!15 = distinct !{!15, !45}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS7AVClass", !16, i64 0}
!18 = !{!"p1 _ZTS7AVCodec", !16, i64 0}
!19 = !{!"p1 _ZTS15AVCodecInternal", !16, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p1 omnipotent char", !16, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"float", !5, i64 0}
!24 = !{!"p1 short", !16, i64 0}
!25 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !16, i64 16}
!26 = !{!"p1 _ZTS10RcOverride", !16, i64 0}
!27 = !{!"p1 _ZTS9AVHWAccel", !16, i64 0}
!28 = !{!"p1 _ZTS11AVBufferRef", !16, i64 0}
!29 = !{!"p1 _ZTS17AVCodecDescriptor", !16, i64 0}
!30 = !{!"p1 _ZTS16AVPacketSideData", !16, i64 0}
!31 = !{!"p1 int", !16, i64 0}
!32 = !{!"any p2 pointer", !16, i64 0}
!33 = !{!"p2 _ZTS15AVFrameSideData", !32, i64 0}
!34 = !{!"AVCodecContext", !17, i64 0, !6, i64 8, !6, i64 12, !18, i64 16, !6, i64 24, !6, i64 28, !16, i64 32, !19, i64 40, !16, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !21, i64 72, !6, i64 80, !22, i64 84, !22, i64 92, !22, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !22, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !16, i64 184, !16, i64 192, !6, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !24, i64 288, !24, i64 296, !24, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !25, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !16, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !23, i64 428, !23, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !26, i64 456, !20, i64 464, !20, i64 472, !23, i64 480, !23, i64 484, !6, i64 488, !6, i64 492, !21, i64 496, !21, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !27, i64 536, !16, i64 544, !28, i64 552, !28, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !16, i64 672, !16, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !29, i64 728, !21, i64 736, !6, i64 744, !6, i64 748, !21, i64 752, !21, i64 760, !21, i64 768, !30, i64 776, !6, i64 784, !6, i64 788, !20, i64 792, !6, i64 800, !6, i64 804, !20, i64 808, !16, i64 816, !20, i64 824, !31, i64 832, !6, i64 840, !33, i64 848, !6, i64 856, !6, i64 860}
!35 = !{!34, !6, i64 116}
!36 = !{!34, !6, i64 112}
!37 = !{!"AVPacket", !28, i64 0, !20, i64 8, !20, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !30, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !16, i64 80, !28, i64 88, !22, i64 96}
!38 = !{!37, !21, i64 24}
!39 = !{!5, !5, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!6, !6, i64 0}
!44 = !{!21, !21, i64 0}
!45 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
