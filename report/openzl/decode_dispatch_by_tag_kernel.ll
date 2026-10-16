Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_dispatch_by_tag_kernel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define i64 @ZS_DispatchByTag_decode(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 7 uses
  %i.b = alloca [16 x i64], align 16              ; 7 uses
  %cond = icmp eq i64 %5, 4
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  br i1 %.not.i.i, label %sumArrayST.exit.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %min.iters.check40 = icmp ult i64 %4, 4
  br i1 %min.iters.check40, label %.lr.ph.i.i.preheader55, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec42 = and i64 %4, -4                       ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %vec.phi45 = phi <2 x i64> [ zeroinitializer, %vector.ph41 ], [ %i.e, %vector.body43 ]
  %vec.phi46 = phi <2 x i64> [ zeroinitializer, %vector.ph41 ], [ %i.f, %vector.body43 ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load47 = load <2 x i64>, ptr %i.c, align 8, !tbaa !24, !noalias !25
  %wide.load48 = load <2 x i64>, ptr %i.d, align 8, !tbaa !24, !noalias !25
  %i.e = add <2 x i64> %wide.load47, %vec.phi45   ; 2 uses
  %i.f = add <2 x i64> %wide.load48, %vec.phi46   ; 2 uses
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.g = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.g, label %middle.block50, label %vector.body43, !llvm.loop !14

middle.block50:                                   ; preds = %vector.body43
  %bin.rdx51 = add <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx51) ; 2 uses
  %cmp.n52 = icmp eq i64 %4, %n.vec42
  br i1 %cmp.n52, label %sumArrayST.exit.i, label %.lr.ph.i.i.preheader55

.lr.ph.i.i.preheader55:                           ; preds = %.lr.ph.i.i.preheader, %middle.block50
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec42, %middle.block50 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.h, %middle.block50 ]
  br label %.lr.ph.i.i

sumArrayST.exit.thread.i:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !25
  br label %ZS_DispatchByTag_decode_internal.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader55, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader55 ] ; 2 uses
  %.067.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader55 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.08.i.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24, !noalias !25
  %i.k = add i64 %i.j, %.067.i.i                  ; 2 uses
  %i.l = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %4
  br i1 %exitcond.not.i.i, label %sumArrayST.exit.i, label %.lr.ph.i.i, !llvm.loop !15

sumArrayST.exit.i:                                ; preds = %.lr.ph.i.i, %middle.block50
  %.lcssa = phi i64 [ %i.h, %middle.block50 ], [ %i.k, %.lr.ph.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6, !noalias !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !noalias !25
  %.not.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i, label %ZS_DispatchByTag_decode_internal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %sumArrayST.exit.i
  %xtraiter64 = and i64 %.lcssa, 1
  %i.m = icmp eq i64 %.lcssa, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter67 = and i64 %.lcssa, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.01719.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %niter68 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter68.next.1, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29, !alias.scope !22, !noalias !30
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32, !noalias !25
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24, !noalias !25 ; 2 uses
  %i.u = shl i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !noalias !22
  store i32 %i.w, ptr %.020.i, align 1, !noalias !22
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 4
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.s, align 8, !tbaa !24, !noalias !25
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29, !alias.scope !22, !noalias !30
  %i.ac = zext i8 %i.ab to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32, !noalias !25
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24, !noalias !25 ; 2 uses
  %i.ah = shl i64 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1, !noalias !22
  store i32 %i.aj, ptr %i.x, align 1, !noalias !22
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %i.al = add i64 %i.ag, 1
  store i64 %i.al, ptr %i.af, align 8, !tbaa !24, !noalias !25
  %i.am = add nuw i64 %.01719.i, 2                ; 2 uses
  %niter68.next.1 = add nuw i64 %niter68, 2       ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %ZS_DispatchByTag_decode_internal.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ak, %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa ]
  %.01719.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i64 %.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i.epil.init
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29, !alias.scope !22, !noalias !30
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32, !noalias !25
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24, !noalias !25 ; 2 uses
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !noalias !22
  store i32 %i.aw, ptr %.020.i.epil.init, align 1, !noalias !22
  %i.ax = add i64 %i.at, 1
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !24, !noalias !25
  br label %ZS_DispatchByTag_decode_internal.exit

ZS_DispatchByTag_decode_internal.exit:            ; preds = %.lr.ph.i.epil.preheader, %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa, %sumArrayST.exit.thread.i, %sumArrayST.exit.i
  %.06.lcssa.i23.i = phi i64 [ 0, %sumArrayST.exit.thread.i ], [ 0, %sumArrayST.exit.i ], [ %.lcssa, %ZS_DispatchByTag_decode_internal.exit.loopexit.unr-lcssa ], [ %.lcssa, %.lr.ph.i.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6, !noalias !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  br i1 %.not.i.i, label %sumArrayST.exit.thread.i27, label %.lr.ph.i.i16.preheader

.lr.ph.i.i16.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.i16.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i16.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi37 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !24, !noalias !34
  %wide.load38 = load <2 x i64>, ptr %i.az, align 8, !tbaa !24, !noalias !34
  %i.ba = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <2 x i64> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %sumArrayST.exit.i20, label %.lr.ph.i.i16.preheader59

.lr.ph.i.i16.preheader59:                         ; preds = %.lr.ph.i.i16.preheader, %middle.block
  %.08.i.i17.ph = phi i64 [ 0, %.lr.ph.i.i16.preheader ], [ %n.vec, %middle.block ]
  %.067.i.i18.ph = phi i64 [ 0, %.lr.ph.i.i16.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i16

sumArrayST.exit.thread.i27:                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !34
  br label %ZS_DispatchByTag_decode_internal.exit28

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i.i16.preheader59, %.lr.ph.i.i16
  %.08.i.i17 = phi i64 [ %i.bh, %.lr.ph.i.i16 ], [ %.08.i.i17.ph, %.lr.ph.i.i16.preheader59 ] ; 2 uses
  %.067.i.i18 = phi i64 [ %i.bg, %.lr.ph.i.i16 ], [ %.067.i.i18.ph, %.lr.ph.i.i16.preheader59 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.08.i.i17
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24, !noalias !34
  %i.bg = add i64 %i.bf, %.067.i.i18              ; 2 uses
  %i.bh = add nuw i64 %.08.i.i17, 1               ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.bh, %4
  br i1 %exitcond.not.i.i19, label %sumArrayST.exit.i20, label %.lr.ph.i.i16, !llvm.loop !21

sumArrayST.exit.i20:                              ; preds = %.lr.ph.i.i16, %middle.block
  %.lcssa36 = phi i64 [ %i.bd, %middle.block ], [ %i.bg, %.lr.ph.i.i16 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6, !noalias !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !noalias !34
  %.not.i21 = icmp eq i64 %.lcssa36, 0
  br i1 %.not.i21, label %ZS_DispatchByTag_decode_internal.exit28, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %sumArrayST.exit.i20
  %xtraiter = and i64 %.lcssa36, 1
  %i.bi = icmp eq i64 %.lcssa36, 1
  br i1 %i.bi, label %.lr.ph.i22.epil.preheader, label %.lr.ph.i22.preheader.new

.lr.ph.i22.preheader.new:                         ; preds = %.lr.ph.i22.preheader
  %unroll_iter = and i64 %.lcssa36, -2
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.i22.preheader.new
  %.020.i23 = phi ptr [ %0, %.lr.ph.i22.preheader.new ], [ %i.ce, %.lr.ph.i22 ] ; 2 uses
  %.01719.i24 = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %i.cg, %.lr.ph.i22 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %niter.next.1, %.lr.ph.i22 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i24
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29, !alias.scope !33, !noalias !35
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32, !noalias !34
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !34 ; 2 uses
  %i.bq = mul i64 %i.bp, %5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.020.i23, ptr align 1 %i.br, i64 %5, i1 false), !noalias !33
  %i.bs = getelementptr inbounds nuw i8, ptr %.020.i23, i64 %5 ; 2 uses
  %i.bt = add i64 %i.bp, 1
  store i64 %i.bt, ptr %i.bo, align 8, !tbaa !24, !noalias !34
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29, !alias.scope !33, !noalias !35
  %i.bx = zext i8 %i.bw to i64                    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32, !noalias !34
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24, !noalias !34 ; 2 uses
  %i.cc = mul i64 %i.cb, %5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.cd, i64 %5, i1 false), !noalias !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %5 ; 2 uses
  %i.cf = add i64 %i.cb, 1
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !24, !noalias !34
  %i.cg = add nuw i64 %.01719.i24, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa, label %.lr.ph.i22, !llvm.loop !16

ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa: ; preds = %.lr.ph.i22
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZS_DispatchByTag_decode_internal.exit28, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa, %.lr.ph.i22.preheader
  %.020.i23.epil.init = phi ptr [ %0, %.lr.ph.i22.preheader ], [ %i.ce, %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa ]
  %.01719.i24.epil.init = phi i64 [ 0, %.lr.ph.i22.preheader ], [ %i.cg, %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %.lcssa36 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 %.01719.i24.epil.init
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29, !alias.scope !33, !noalias !35
  %i.cj = zext i8 %i.ci to i64                    ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32, !noalias !34
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !24, !noalias !34 ; 2 uses
  %i.co = mul i64 %i.cn, %5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.020.i23.epil.init, ptr align 1 %i.cp, i64 %5, i1 false), !noalias !33
  %i.cq = add i64 %i.cn, 1
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !24, !noalias !34
  br label %ZS_DispatchByTag_decode_internal.exit28

ZS_DispatchByTag_decode_internal.exit28:          ; preds = %.lr.ph.i22.epil.preheader, %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa, %sumArrayST.exit.thread.i27, %sumArrayST.exit.i20
  %.06.lcssa.i23.i26 = phi i64 [ 0, %sumArrayST.exit.thread.i27 ], [ 0, %sumArrayST.exit.i20 ], [ %.lcssa36, %ZS_DispatchByTag_decode_internal.exit28.loopexit.unr-lcssa ], [ %.lcssa36, %.lr.ph.i22.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6, !noalias !34
  br label %bb.d

bb.d:                                             ; preds = %ZS_DispatchByTag_decode_internal.exit28, %ZS_DispatchByTag_decode_internal.exit
  %.0 = phi i64 [ %.06.lcssa.i23.i, %ZS_DispatchByTag_decode_internal.exit ], [ %.06.lcssa.i23.i26, %ZS_DispatchByTag_decode_internal.exit28 ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, i1 false, !"ZS_DispatchByTag_decode_internal"}
!12 = distinct !{!12, !11, !"ZS_DispatchByTag_decode_internal: argument 1"}
!13 = distinct !{!13, !11, !"ZS_DispatchByTag_decode_internal: argument 0"}
!14 = distinct !{!14, !26, !27, !28}
!15 = distinct !{!15, !26, !28, !27}
!16 = distinct !{!16, !26}
!17 = distinct !{!17, i1 false, !"ZS_DispatchByTag_decode_internal"}
!18 = distinct !{!18, !17, !"ZS_DispatchByTag_decode_internal: argument 1"}
!19 = distinct !{!19, !17, !"ZS_DispatchByTag_decode_internal: argument 0"}
!20 = distinct !{!20, !26, !27, !28}
!21 = distinct !{!21, !26, !28, !27}
!22 = !{!12}
!23 = !{!"long", !7, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!13, !12}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!7, !7, i64 0}
!30 = !{!13}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!18}
!34 = !{!19, !18}
!35 = !{!19}
end_hunk_0
