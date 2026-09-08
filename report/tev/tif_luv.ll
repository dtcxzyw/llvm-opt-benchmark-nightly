Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Luv24toRGB:bb.a

bb.m:                                             ; preds = %bb.l
  %i.cq = tail call double @sqrt(double noundef %i.by) #16
  %i.cr = fmul double %i.cq, 2.560000e+02
  %i.cs = fptosi double %i.cr to i32
  %i.ct = trunc i32 %i.cs to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.k, %bb.l, %bb.m
  %i.cu = phi i8 [ 0, %bb.k ], [ %i.ct, %bb.m ], [ -1, %bb.l ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.012, i64 3
  %i.cx = icmp sgt i64 %.0610, 1
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvDecode32(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.fr120 = freeze i32 %i.d
  %i.e = sext i32 %.fr120 to i64
  %i.f = sdiv i64 %2, %i.e                        ; 41 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode32.module, ptr noundef nonnull @.str.9) #16
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.059 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 25 uses
  %i.o = shl i64 %i.f, 2
  tail call void @_TIFFmemset(ptr noundef %.059, i32 noundef 0, i64 noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62   ; 5 uses
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %.preheader79.preheader, label %.split.us

.preheader79.preheader:                           ; preds = %bb.e
  %i.u = icmp sgt i64 %i.s, 0
  br i1 %i.u, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.preheader79.preheader
  %scevgep260 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100

.split.us:                                        ; preds = %bb.e
  %.not77.us = icmp eq i64 %i.f, 0
  br i1 %.not77.us, label %.split116.us, label %.split112.us

.preheader79.1:                                   ; preds = %._crit_edge
  %i.v = icmp sgt i64 %.158.lcssa, 0
  br i1 %i.v, label %.lr.ph100.1.preheader, label %._crit_edge.1

.lr.ph100.1.preheader:                            ; preds = %.preheader79.1
  %scevgep298 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100.1.preheader, %.critedge.1
  %.15899.1 = phi i64 [ %.3.1, %.critedge.1 ], [ %.158.lcssa, %.lr.ph100.1.preheader ]
  %.16198.1 = phi ptr [ %.363.1, %.critedge.1 ], [ %.161.lcssa, %.lr.ph100.1.preheader ] ; 6 uses
  %.06497.1 = phi i64 [ %.367.1, %.critedge.1 ], [ 0, %.lr.ph100.1.preheader ] ; 18 uses
  %.15899.1.fr = freeze i64 %.15899.1             ; 5 uses
  %i.w = load i8, ptr %.16198.1, align 1, !tbaa !12 ; 4 uses
  %i.x = zext i8 %i.w to i32                      ; 5 uses
  %i.y = icmp slt i8 %i.w, 0
  br i1 %i.y, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph100.1
  %.26282.1 = getelementptr i8, ptr %.16198.1, i64 1 ; 6 uses
  %i.z = add nsw i64 %.15899.1.fr, -1             ; 4 uses
  %.not83.1 = icmp eq i64 %i.z, 0
  br i1 %.not83.1, label %._crit_edge.1.thread, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %.preheader.1
  %i.aa = add i64 %.15899.1.fr, -2
  %i.ab = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.ac = sub i64 %i.ab, %.06497.1
  %i.ad = zext nneg i8 %i.w to i64
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae) ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check309 = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check309, label %.lr.ph.1.preheader435, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.1.preheader
  %i.ah = shl i64 %.06497.1, 2
  %scevgep297 = getelementptr i8, ptr %.059, i64 %i.ah
  %i.ai = add i64 %.15899.1.fr, -2
  %smax299 = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.aj = sub i64 %smax299, %.06497.1
  %i.ak = zext nneg i8 %i.w to i64
  %umin300 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak)
  %umin301 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %umin300) ; 2 uses
  %i.al = add i64 %.06497.1, %umin301
  %i.am = shl i64 %i.al, 2
  %scevgep302 = getelementptr i8, ptr %scevgep298, i64 %i.am
  %scevgep303 = getelementptr i8, ptr %.16198.1, i64 2
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %umin301
  %bound0305 = icmp ult ptr %scevgep297, %scevgep304
  %bound1306 = icmp ult ptr %.26282.1, %scevgep302
  %found.conflict307 = and i1 %bound0305, %bound1306
  br i1 %found.conflict307, label %.lr.ph.1.preheader435, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck296
  %i.an = and i64 %i.ag, 7                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 8, i64 %i.an
  %n.vec311 = sub nsw i64 %i.ag, %i.ap            ; 5 uses
  %i.aq = sub i64 %i.z, %n.vec311
  %i.ar = getelementptr i8, ptr %.26282.1, i64 %n.vec311
  %i.as = trunc nsw i64 %n.vec311 to i32
  %i.at = sub nsw i32 %i.x, %i.as
  %i.au = add i64 %.06497.1, %n.vec311
  %i.av = getelementptr [4 x i8], ptr %.059, i64 %.06497.1
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next319, %vector.body312 ] ; 3 uses
  %next.gep314 = getelementptr i8, ptr %.26282.1, i64 %index313 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep314, i64 4
  %wide.load315 = load <4 x i8>, ptr %next.gep314, align 1, !tbaa !12, !alias.scope !124
  %wide.load316 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !12, !alias.scope !124
  %i.ax = zext <4 x i8> %wide.load315 to <4 x i32>
  %i.ay = zext <4 x i8> %wide.load316 to <4 x i32>
  %i.az = shl nuw nsw <4 x i32> %i.ax, splat (i32 16)
  %i.ba = shl nuw nsw <4 x i32> %i.ay, splat (i32 16)
  %i.bb = getelementptr [4 x i8], ptr %i.av, i64 %index313 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load317 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !9, !alias.scope !125, !noalias !124
  %wide.load318 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !9, !alias.scope !125, !noalias !124
  %i.bd = or <4 x i32> %i.az, %wide.load317
  %i.be = or <4 x i32> %i.ba, %wide.load318
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !9, !alias.scope !125, !noalias !124
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !9, !alias.scope !125, !noalias !124
  %index.next319 = add nuw i64 %index313, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next319, %n.vec311
  br i1 %i.bf, label %.lr.ph.1.preheader435, label %vector.body312, !llvm.loop !99

.lr.ph.1.preheader435:                            ; preds = %vector.body312, %vector.memcheck296, %.lr.ph.1.preheader
  %.ph436 = phi i64 [ %i.z, %vector.memcheck296 ], [ %i.z, %.lr.ph.1.preheader ], [ %i.aq, %vector.body312 ]
  %.26286.1.ph = phi ptr [ %.26282.1, %vector.memcheck296 ], [ %.26282.1, %.lr.ph.1.preheader ], [ %i.ar, %vector.body312 ]
  %.185.1.ph = phi i32 [ %i.x, %vector.memcheck296 ], [ %i.x, %.lr.ph.1.preheader ], [ %i.at, %vector.body312 ]
  %.26684.1.ph = phi i64 [ %.06497.1, %vector.memcheck296 ], [ %.06497.1, %.lr.ph.1.preheader ], [ %i.au, %vector.body312 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader435, %bb.f
  %i.bg = phi i64 [ %i.bq, %bb.f ], [ %.ph436, %.lr.ph.1.preheader435 ] ; 2 uses
  %.26286.1 = phi ptr [ %.262.1, %bb.f ], [ %.26286.1.ph, %.lr.ph.1.preheader435 ] ; 3 uses
  %.185.1 = phi i32 [ %i.bi, %bb.f ], [ %.185.1.ph, %.lr.ph.1.preheader435 ] ; 2 uses
  %.26684.1 = phi i64 [ %i.bm, %bb.f ], [ %.26684.1.ph, %.lr.ph.1.preheader435 ] ; 4 uses
  %.not76.1 = icmp ne i32 %.185.1, 0
  %i.bh = icmp slt i64 %.26684.1, %i.f
  %or.cond.1 = select i1 %.not76.1, i1 %i.bh, i1 false
  br i1 %or.cond.1, label %bb.f, label %.critedge.1

bb.f:                                             ; preds = %.lr.ph.1
  %i.bi = add nsw i32 %.185.1, -1
  %i.bj = load i8, ptr %.26286.1, align 1, !tbaa !12
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = add nsw i64 %.26684.1, 1                ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %.059, i64 %.26684.1 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = or i32 %i.bl, %i.bo
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !9
  %.262.1 = getelementptr inbounds nuw i8, ptr %.26286.1, i64 1 ; 2 uses
  %i.bq = add nsw i64 %i.bg, -1                   ; 2 uses
  %.not.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.1, label %._crit_edge.1.thread, label %.lr.ph.1, !llvm.loop !100

bb.g:                                             ; preds = %.lr.ph100.1
  %i.br = icmp samesign ult i64 %.15899.1.fr, 2
  br i1 %i.br, label %._crit_edge.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.16198.1, i64 1
  %4 = add nsw i32 %i.x, -126                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.16198.1, i64 2 ; 3 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16               ; 2 uses
  %i.bx = add nsw i64 %.15899.1.fr, -2            ; 3 uses
  %i.by = icmp slt i64 %.06497.1, %i.f
  br i1 %i.by, label %.lr.ph95.preheader.1, label %.critedge.1

.lr.ph95.preheader.1:                             ; preds = %bb.h
  %i.bz = xor i64 %.06497.1, -1
  %i.ca = add i64 %i.f, %i.bz
  %i.cb = add nsw i32 %i.x, -127
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cc) ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check282 = icmp samesign ult i64 %i.cd, 7
  br i1 %min.iters.check282, label %.lr.ph95.1.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph95.preheader.1
  %n.vec284 = and i64 %i.ce, 4294967288           ; 4 uses
  %i.cf = trunc nuw i64 %n.vec284 to i32
  %i.cg = sub i32 %4, %i.cf
  %i.ch = add i64 %.06497.1, %n.vec284            ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %.059, i64 %.06497.1
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body287 ] ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %index288 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load289 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !9
  %wide.load290 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !9
  %i.cl = or <4 x i32> %wide.load289, %broadcast.splat286
  %i.cm = or <4 x i32> %wide.load290, %broadcast.splat286
  store <4 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !9
  store <4 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !9
  %index.next291 = add nuw i64 %index288, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.cn, label %middle.block292, label %vector.body287, !llvm.loop !101

middle.block292:                                  ; preds = %vector.body287
  %cmp.n293 = icmp eq i64 %i.ce, %n.vec284
  br i1 %cmp.n293, label %.critedge.1, label %.lr.ph95.1.preheader

.lr.ph95.1.preheader:                             ; preds = %.lr.ph95.preheader.1, %middle.block292
  %.094.1.ph = phi i32 [ %4, %.lr.ph95.preheader.1 ], [ %i.cg, %middle.block292 ]
  %.16593.1.ph = phi i64 [ %.06497.1, %.lr.ph95.preheader.1 ], [ %i.ch, %middle.block292 ]
  br label %.lr.ph95.1

.lr.ph95.1:                                       ; preds = %.lr.ph95.1.preheader, %.lr.ph95.1
  %.094.1 = phi i32 [ %i.co, %.lr.ph95.1 ], [ %.094.1.ph, %.lr.ph95.1.preheader ]
  %.16593.1 = phi i64 [ %i.cp, %.lr.ph95.1 ], [ %.16593.1.ph, %.lr.ph95.1.preheader ] ; 2 uses
  %i.co = add nsw i32 %.094.1, -1                 ; 2 uses
  %i.cp = add nsw i64 %.16593.1, 1                ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.059, i64 %.16593.1 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = or i32 %i.cr, %i.bw
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !9
  %i.ct = icmp ne i32 %i.co, 0
  %i.cu = icmp slt i64 %i.cp, %i.f
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph95.1, label %.critedge.1, !llvm.loop !102

.critedge.1:                                      ; preds = %.lr.ph.1, %.lr.ph95.1, %middle.block292, %bb.h
  %.367.1 = phi i64 [ %i.cp, %.lr.ph95.1 ], [ %.06497.1, %bb.h ], [ %i.ch, %middle.block292 ], [ %.26684.1, %.lr.ph.1 ] ; 3 uses
  %.363.1 = phi ptr [ %i.bt, %.lr.ph95.1 ], [ %i.bt, %bb.h ], [ %i.bt, %middle.block292 ], [ %.26286.1, %.lr.ph.1 ] ; 2 uses
  %.3.1 = phi i64 [ %i.bx, %.lr.ph95.1 ], [ %i.bx, %bb.h ], [ %i.bx, %middle.block292 ], [ %i.bg, %.lr.ph.1 ] ; 3 uses
  %i.cw = icmp slt i64 %.367.1, %i.f
  %i.cx = icmp sgt i64 %.3.1, 0
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph100.1, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.g, %.critedge.1, %._crit_edge.thread, %.preheader79.1
  %.064.lcssa.1 = phi i64 [ 0, %.preheader79.1 ], [ 0, %._crit_edge.thread ], [ %.06497.1, %bb.g ], [ %.367.1, %.critedge.1 ] ; 2 uses
  %.161.lcssa.1 = phi ptr [ %.161.lcssa, %.preheader79.1 ], [ %.363.ph, %._crit_edge.thread ], [ %.16198.1, %bb.g ], [ %.363.1, %.critedge.1 ] ; 3 uses
  %.158.lcssa.1 = phi i64 [ %.158.lcssa, %.preheader79.1 ], [ 0, %._crit_edge.thread ], [ 1, %bb.g ], [ %.3.1, %.critedge.1 ] ; 4 uses
  %.not77.1 = icmp eq i64 %.064.lcssa.1, %i.f
  br i1 %.not77.1, label %.preheader79.2, label %.split112.us

._crit_edge.1.thread:                             ; preds = %.preheader.1, %bb.f
  %.367.1.ph = phi i64 [ %i.bm, %bb.f ], [ %.06497.1, %.preheader.1 ] ; 2 uses
  %.363.1.ph = phi ptr [ %.262.1, %bb.f ], [ %.26282.1, %.preheader.1 ] ; 2 uses
  %.not77.1144 = icmp eq i64 %.367.1.ph, %i.f
  br i1 %.not77.1144, label %._crit_edge.2, label %.split112.us

.preheader79.2:                                   ; preds = %._crit_edge.1
  %i.cz = icmp sgt i64 %.158.lcssa.1, 0
  br i1 %i.cz, label %.lr.ph100.2.preheader, label %._crit_edge.2

.lr.ph100.2.preheader:                            ; preds = %.preheader79.2
  %scevgep342 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100.2

.lr.ph100.2:                                      ; preds = %.lr.ph100.2.preheader, %.critedge.2
  %.15899.2 = phi i64 [ %.3.2, %.critedge.2 ], [ %.158.lcssa.1, %.lr.ph100.2.preheader ]
  %.16198.2 = phi ptr [ %.363.2, %.critedge.2 ], [ %.161.lcssa.1, %.lr.ph100.2.preheader ] ; 7 uses
  %.06497.2 = phi i64 [ %.367.2, %.critedge.2 ], [ 0, %.lr.ph100.2.preheader ] ; 19 uses
  %.15899.2.fr = freeze i64 %.15899.2             ; 5 uses
  %i.da = load i8, ptr %.16198.2, align 1, !tbaa !12 ; 4 uses
  %i.db = zext i8 %i.da to i32                    ; 5 uses
  %i.dc = icmp slt i8 %i.da, 0
  br i1 %i.dc, label %bb.j, label %.preheader.2

.preheader.2:                                     ; preds = %.lr.ph100.2
  %.26282.2 = getelementptr i8, ptr %.16198.2, i64 1 ; 6 uses
  %i.dd = add nsw i64 %.15899.2.fr, -1            ; 4 uses
  %.not83.2 = icmp eq i64 %i.dd, 0
  br i1 %.not83.2, label %._crit_edge.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %.preheader.2
  %i.de = add i64 %.15899.2.fr, -2
  %i.df = tail call i64 @llvm.smax.i64(i64 %.06497.2, i64 %i.f)
  %i.dg = sub i64 %i.df, %.06497.2
  %i.dh = zext nneg i8 %i.da to i64
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dh)
  %i.dj = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.di) ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check353 = icmp samesign ult i64 %i.dj, 8
  br i1 %min.iters.check353, label %.lr.ph.2.preheader421, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.lr.ph.2.preheader
  %i.dl = shl i64 %.06497.2, 2
  %scevgep341 = getelementptr i8, ptr %.059, i64 %i.dl
  %i.dm = add i64 %.15899.2.fr, -2
  %smax343 = tail call i64 @llvm.smax.i64(i64 %.06497.2, i64 %i.f)
  %i.dn = sub i64 %smax343, %.06497.2
  %i.do = zext nneg i8 %i.da to i64
  %umin344 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.do)
  %umin345 = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 %umin344) ; 2 uses
  %i.dp = add i64 %.06497.2, %umin345
  %i.dq = shl i64 %i.dp, 2
  %scevgep346 = getelementptr i8, ptr %scevgep342, i64 %i.dq
  %scevgep347 = getelementptr i8, ptr %.16198.2, i64 2
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %umin345
  %bound0349 = icmp ult ptr %scevgep341, %scevgep348
  %bound1350 = icmp ult ptr %.26282.2, %scevgep346
  %found.conflict351 = and i1 %bound0349, %bound1350
  br i1 %found.conflict351, label %.lr.ph.2.preheader421, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck340
  %i.dr = and i64 %i.dk, 7                        ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = select i1 %i.ds, i64 8, i64 %i.dr
  %n.vec355 = sub nsw i64 %i.dk, %i.dt            ; 5 uses
  %i.du = sub i64 %i.dd, %n.vec355
  %i.dv = getelementptr i8, ptr %.26282.2, i64 %n.vec355
  %i.dw = trunc nsw i64 %n.vec355 to i32
  %i.dx = sub nsw i32 %i.db, %i.dw
  %i.dy = add i64 %.06497.2, %n.vec355
  %i.dz = getelementptr [4 x i8], ptr %.059, i64 %.06497.2
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next363, %vector.body356 ] ; 3 uses
  %next.gep358 = getelementptr i8, ptr %.26282.2, i64 %index357 ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep358, i64 4
  %wide.load359 = load <4 x i8>, ptr %next.gep358, align 1, !tbaa !12, !alias.scope !126
  %wide.load360 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !12, !alias.scope !126
  %i.eb = zext <4 x i8> %wide.load359 to <4 x i32>
  %i.ec = zext <4 x i8> %wide.load360 to <4 x i32>
  %i.ed = shl nuw nsw <4 x i32> %i.eb, splat (i32 8)
  %i.ee = shl nuw nsw <4 x i32> %i.ec, splat (i32 8)
  %i.ef = getelementptr [4 x i8], ptr %i.dz, i64 %index357 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load361 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !9, !alias.scope !127, !noalias !126
  %wide.load362 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !9, !alias.scope !127, !noalias !126
  %i.eh = or <4 x i32> %i.ed, %wide.load361
  %i.ei = or <4 x i32> %i.ee, %wide.load362
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !9, !alias.scope !127, !noalias !126
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !9, !alias.scope !127, !noalias !126
  %index.next363 = add nuw i64 %index357, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next363, %n.vec355
  br i1 %i.ej, label %.lr.ph.2.preheader421, label %vector.body356, !llvm.loop !106

.lr.ph.2.preheader421:                            ; preds = %vector.body356, %vector.memcheck340, %.lr.ph.2.preheader
  %.ph422 = phi i64 [ %i.dd, %vector.memcheck340 ], [ %i.dd, %.lr.ph.2.preheader ], [ %i.du, %vector.body356 ]
  %.26286.2.ph = phi ptr [ %.26282.2, %vector.memcheck340 ], [ %.26282.2, %.lr.ph.2.preheader ], [ %i.dv, %vector.body356 ]
  %.185.2.ph = phi i32 [ %i.db, %vector.memcheck340 ], [ %i.db, %.lr.ph.2.preheader ], [ %i.dx, %vector.body356 ]
  %.26684.2.ph = phi i64 [ %.06497.2, %vector.memcheck340 ], [ %.06497.2, %.lr.ph.2.preheader ], [ %i.dy, %vector.body356 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader421, %bb.i
  %i.ek = phi i64 [ %i.eu, %bb.i ], [ %.ph422, %.lr.ph.2.preheader421 ] ; 2 uses
  %.26286.2 = phi ptr [ %.262.2, %bb.i ], [ %.26286.2.ph, %.lr.ph.2.preheader421 ] ; 3 uses
  %.185.2 = phi i32 [ %i.em, %bb.i ], [ %.185.2.ph, %.lr.ph.2.preheader421 ] ; 2 uses
  %.26684.2 = phi i64 [ %i.eq, %bb.i ], [ %.26684.2.ph, %.lr.ph.2.preheader421 ] ; 4 uses
  %.not76.2 = icmp ne i32 %.185.2, 0
  %i.el = icmp slt i64 %.26684.2, %i.f
  %or.cond.2 = select i1 %.not76.2, i1 %i.el, i1 false
  br i1 %or.cond.2, label %bb.i, label %.critedge.2

bb.i:                                             ; preds = %.lr.ph.2
  %i.em = add nsw i32 %.185.2, -1
  %i.en = load i8, ptr %.26286.2, align 1, !tbaa !12
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = add nsw i64 %.26684.2, 1                ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.059, i64 %.26684.2 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = or i32 %i.ep, %i.es
  store i32 %i.et, ptr %i.er, align 4, !tbaa !9
  %.262.2 = getelementptr inbounds nuw i8, ptr %.26286.2, i64 1 ; 2 uses
  %i.eu = add nsw i64 %i.ek, -1                   ; 2 uses
  %.not.2 = icmp eq i64 %i.eu, 0
  br i1 %.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !107

bb.j:                                             ; preds = %.lr.ph100.2
  %i.ev = icmp samesign ult i64 %.15899.2.fr, 2
  br i1 %i.ev, label %._crit_edge.2.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ew = getelementptr inbounds nuw i8, ptr %.16198.2, i64 1
  %5 = add nsw i32 %i.db, -126                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16198.2, i64 2 ; 3 uses
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !12
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8                ; 2 uses
  %i.fb = add nsw i64 %.15899.2.fr, -2            ; 3 uses
  %i.fc = icmp slt i64 %.06497.2, %i.f
  br i1 %i.fc, label %.lr.ph95.preheader.2, label %.critedge.2

.lr.ph95.preheader.2:                             ; preds = %bb.k
  %i.fd = xor i64 %.06497.2, -1
  %i.fe = add i64 %i.f, %i.fd
  %i.ff = add nsw i32 %i.db, -127
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fg) ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check326 = icmp samesign ult i64 %i.fh, 7
  br i1 %min.iters.check326, label %.lr.ph95.2.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph95.preheader.2
  %n.vec328 = and i64 %i.fi, 4294967288           ; 4 uses
  %i.fj = trunc nuw i64 %n.vec328 to i32
  %i.fk = sub i32 %5, %i.fj
  %i.fl = add i64 %.06497.2, %n.vec328            ; 2 uses
  %broadcast.splatinsert329 = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat330 = shufflevector <4 x i32> %broadcast.splatinsert329, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %.059, i64 %.06497.2
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph327
  %index332 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body331 ] ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %index332 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !9
  %wide.load334 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !9
  %i.fp = or <4 x i32> %wide.load333, %broadcast.splat330
  %i.fq = or <4 x i32> %wide.load334, %broadcast.splat330
  store <4 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !9
  store <4 x i32> %i.fq, ptr %i.fo, align 4, !tbaa !9
  %index.next335 = add nuw i64 %index332, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.fr, label %middle.block336, label %vector.body331, !llvm.loop !108

middle.block336:                                  ; preds = %vector.body331
  %cmp.n337 = icmp eq i64 %i.fi, %n.vec328
  br i1 %cmp.n337, label %.critedge.2, label %.lr.ph95.2.preheader

.lr.ph95.2.preheader:                             ; preds = %.lr.ph95.preheader.2, %middle.block336
  %.094.2.ph = phi i32 [ %5, %.lr.ph95.preheader.2 ], [ %i.fk, %middle.block336 ]
  %.16593.2.ph = phi i64 [ %.06497.2, %.lr.ph95.preheader.2 ], [ %i.fl, %middle.block336 ]
  br label %.lr.ph95.2

.lr.ph95.2:                                       ; preds = %.lr.ph95.2.preheader, %.lr.ph95.2
  %.094.2 = phi i32 [ %i.fs, %.lr.ph95.2 ], [ %.094.2.ph, %.lr.ph95.2.preheader ]
  %.16593.2 = phi i64 [ %i.ft, %.lr.ph95.2 ], [ %.16593.2.ph, %.lr.ph95.2.preheader ] ; 2 uses
  %i.fs = add nsw i32 %.094.2, -1                 ; 2 uses
  %i.ft = add nsw i64 %.16593.2, 1                ; 3 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %.059, i64 %.16593.2 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !9
  %i.fw = or i32 %i.fv, %i.fa
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !9
  %i.fx = icmp ne i32 %i.fs, 0
  %i.fy = icmp slt i64 %i.ft, %i.f
  %i.fz = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %i.fz, label %.lr.ph95.2, label %.critedge.2, !llvm.loop !109

.critedge.2:                                      ; preds = %.lr.ph.2, %.lr.ph95.2, %middle.block336, %bb.k
  %.367.2 = phi i64 [ %i.ft, %.lr.ph95.2 ], [ %.06497.2, %bb.k ], [ %i.fl, %middle.block336 ], [ %.26684.2, %.lr.ph.2 ] ; 3 uses
  %.363.2 = phi ptr [ %i.ex, %.lr.ph95.2 ], [ %i.ex, %bb.k ], [ %i.ex, %middle.block336 ], [ %.26286.2, %.lr.ph.2 ] ; 2 uses
  %.3.2 = phi i64 [ %i.fb, %.lr.ph95.2 ], [ %i.fb, %bb.k ], [ %i.fb, %middle.block336 ], [ %i.ek, %.lr.ph.2 ] ; 3 uses
  %i.ga = icmp slt i64 %.367.2, %i.f
  %i.gb = icmp sgt i64 %.3.2, 0
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %.lr.ph100.2, label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.preheader.2, %.critedge.2, %bb.i, %._crit_edge.1.thread, %.preheader79.2
  %.064.lcssa.2 = phi i64 [ 0, %.preheader79.2 ], [ 0, %._crit_edge.1.thread ], [ %i.eq, %bb.i ], [ %.06497.2, %.preheader.2 ], [ %.367.2, %.critedge.2 ] ; 2 uses
  %.161.lcssa.2 = phi ptr [ %.161.lcssa.1, %.preheader79.2 ], [ %.363.1.ph, %._crit_edge.1.thread ], [ %.262.2, %bb.i ], [ %.26282.2, %.preheader.2 ], [ %.363.2, %.critedge.2 ] ; 3 uses
  %.158.lcssa.2 = phi i64 [ %.158.lcssa.1, %.preheader79.2 ], [ 0, %._crit_edge.1.thread ], [ 0, %bb.i ], [ 0, %.preheader.2 ], [ %.3.2, %.critedge.2 ] ; 4 uses
  %.not77.2 = icmp eq i64 %.064.lcssa.2, %i.f
  br i1 %.not77.2, label %.preheader79.3, label %.split112.us

._crit_edge.2.thread:                             ; preds = %bb.j
  %.not77.2155 = icmp eq i64 %.06497.2, %i.f
  br i1 %.not77.2155, label %.lr.ph100.preheader.3, label %.split112.us

.preheader79.3:                                   ; preds = %._crit_edge.2
  %i.gd = icmp sgt i64 %.158.lcssa.2, 0
  br i1 %i.gd, label %.lr.ph100.preheader.3, label %._crit_edge.3

.lr.ph100.preheader.3:                            ; preds = %._crit_edge.2.thread, %.preheader79.3
  %.161.lcssa.2156161 = phi ptr [ %.161.lcssa.2, %.preheader79.3 ], [ %.16198.2, %._crit_edge.2.thread ]
  %.158.lcssa.2157160 = phi i64 [ %.158.lcssa.2, %.preheader79.3 ], [ 1, %._crit_edge.2.thread ]
  %scevgep386 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100.3

.lr.ph100.3:                                      ; preds = %.critedge.3, %.lr.ph100.preheader.3
  %.15899.3 = phi i64 [ %.3.3, %.critedge.3 ], [ %.158.lcssa.2157160, %.lr.ph100.preheader.3 ]
  %.16198.3 = phi ptr [ %.363.3, %.critedge.3 ], [ %.161.lcssa.2156161, %.lr.ph100.preheader.3 ] ; 6 uses
  %.06497.3 = phi i64 [ %.367.3, %.critedge.3 ], [ 0, %.lr.ph100.preheader.3 ] ; 18 uses
  %.15899.3.fr = freeze i64 %.15899.3             ; 5 uses
  %i.ge = load i8, ptr %.16198.3, align 1, !tbaa !12 ; 4 uses
  %i.gf = zext i8 %i.ge to i32                    ; 5 uses
  %i.gg = icmp slt i8 %i.ge, 0
  br i1 %i.gg, label %bb.m, label %.preheader.3

.preheader.3:                                     ; preds = %.lr.ph100.3
  %.26282.3 = getelementptr i8, ptr %.16198.3, i64 1 ; 6 uses
  %i.gh = add nsw i64 %.15899.3.fr, -1            ; 4 uses
  %.not83.3 = icmp eq i64 %i.gh, 0
  br i1 %.not83.3, label %._crit_edge.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %.preheader.3
  %i.gi = add i64 %.15899.3.fr, -2
  %i.gj = tail call i64 @llvm.smax.i64(i64 %.06497.3, i64 %i.f)
  %i.gk = sub i64 %i.gj, %.06497.3
  %i.gl = zext nneg i8 %i.ge to i64
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gl)
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gm) ; 2 uses
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check397 = icmp samesign ult i64 %i.gn, 8
  br i1 %min.iters.check397, label %.lr.ph.3.preheader413, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.3.preheader
  %i.gp = shl i64 %.06497.3, 2
  %scevgep385 = getelementptr i8, ptr %.059, i64 %i.gp
  %i.gq = add i64 %.15899.3.fr, -2
  %smax387 = tail call i64 @llvm.smax.i64(i64 %.06497.3, i64 %i.f)
  %i.gr = sub i64 %smax387, %.06497.3
  %i.gs = zext nneg i8 %i.ge to i64
  %umin388 = tail call i64 @llvm.umin.i64(i64 %i.gr, i64 %i.gs)
  %umin389 = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 %umin388) ; 2 uses
  %i.gt = add i64 %.06497.3, %umin389
  %i.gu = shl i64 %i.gt, 2
  %scevgep390 = getelementptr i8, ptr %scevgep386, i64 %i.gu
  %scevgep391 = getelementptr i8, ptr %.16198.3, i64 2
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %umin389
  %bound0393 = icmp ult ptr %scevgep385, %scevgep392
  %bound1394 = icmp ult ptr %.26282.3, %scevgep390
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %.lr.ph.3.preheader413, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck384
  %i.gv = and i64 %i.go, 7                        ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  %i.gx = select i1 %i.gw, i64 8, i64 %i.gv
  %n.vec399 = sub nsw i64 %i.go, %i.gx            ; 5 uses
  %i.gy = sub i64 %i.gh, %n.vec399
  %i.gz = getelementptr i8, ptr %.26282.3, i64 %n.vec399
  %i.ha = trunc nsw i64 %n.vec399 to i32
  %i.hb = sub nsw i32 %i.gf, %i.ha
  %i.hc = add i64 %.06497.3, %n.vec399
  %i.hd = getelementptr [4 x i8], ptr %.059, i64 %.06497.3
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next407, %vector.body400 ] ; 3 uses
  %next.gep402 = getelementptr i8, ptr %.26282.3, i64 %index401 ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep402, i64 4
  %wide.load403 = load <4 x i8>, ptr %next.gep402, align 1, !tbaa !12, !alias.scope !128
  %wide.load404 = load <4 x i8>, ptr %i.he, align 1, !tbaa !12, !alias.scope !128
  %i.hf = zext <4 x i8> %wide.load403 to <4 x i32>
  %i.hg = zext <4 x i8> %wide.load404 to <4 x i32>
  %i.hh = getelementptr [4 x i8], ptr %i.hd, i64 %index401 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load405 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !9, !alias.scope !129, !noalias !128
  %wide.load406 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !9, !alias.scope !129, !noalias !128
  %i.hj = or <4 x i32> %wide.load405, %i.hf
  %i.hk = or <4 x i32> %wide.load406, %i.hg
  store <4 x i32> %i.hj, ptr %i.hh, align 4, !tbaa !9, !alias.scope !129, !noalias !128
  store <4 x i32> %i.hk, ptr %i.hi, align 4, !tbaa !9, !alias.scope !129, !noalias !128
  %index.next407 = add nuw i64 %index401, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next407, %n.vec399
  br i1 %i.hl, label %.lr.ph.3.preheader413, label %vector.body400, !llvm.loop !113

.lr.ph.3.preheader413:                            ; preds = %vector.body400, %vector.memcheck384, %.lr.ph.3.preheader
  %.ph = phi i64 [ %i.gh, %vector.memcheck384 ], [ %i.gh, %.lr.ph.3.preheader ], [ %i.gy, %vector.body400 ]
  %.26286.3.ph = phi ptr [ %.26282.3, %vector.memcheck384 ], [ %.26282.3, %.lr.ph.3.preheader ], [ %i.gz, %vector.body400 ]
  %.185.3.ph = phi i32 [ %i.gf, %vector.memcheck384 ], [ %i.gf, %.lr.ph.3.preheader ], [ %i.hb, %vector.body400 ]
  %.26684.3.ph = phi i64 [ %.06497.3, %vector.memcheck384 ], [ %.06497.3, %.lr.ph.3.preheader ], [ %i.hc, %vector.body400 ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader413, %bb.l
  %i.hm = phi i64 [ %i.hv, %bb.l ], [ %.ph, %.lr.ph.3.preheader413 ] ; 2 uses
  %.26286.3 = phi ptr [ %.262.3, %bb.l ], [ %.26286.3.ph, %.lr.ph.3.preheader413 ] ; 3 uses
  %.185.3 = phi i32 [ %i.ho, %bb.l ], [ %.185.3.ph, %.lr.ph.3.preheader413 ] ; 2 uses
  %.26684.3 = phi i64 [ %i.hr, %bb.l ], [ %.26684.3.ph, %.lr.ph.3.preheader413 ] ; 4 uses
  %.not76.3 = icmp ne i32 %.185.3, 0
  %i.hn = icmp slt i64 %.26684.3, %i.f
  %or.cond.3 = select i1 %.not76.3, i1 %i.hn, i1 false
  br i1 %or.cond.3, label %bb.l, label %.critedge.3

bb.l:                                             ; preds = %.lr.ph.3
  %i.ho = add nsw i32 %.185.3, -1
  %i.hp = load i8, ptr %.26286.3, align 1, !tbaa !12
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i64 %.26684.3, 1                ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.059, i64 %.26684.3 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !9
  %i.hu = or i32 %i.ht, %i.hq
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !9
  %.262.3 = getelementptr inbounds nuw i8, ptr %.26286.3, i64 1 ; 2 uses
  %i.hv = add nsw i64 %i.hm, -1                   ; 2 uses
  %.not.3 = icmp eq i64 %i.hv, 0
  br i1 %.not.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !114

bb.m:                                             ; preds = %.lr.ph100.3
  %i.hw = icmp samesign ult i64 %.15899.3.fr, 2
  br i1 %i.hw, label %._crit_edge.3, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hx = getelementptr inbounds nuw i8, ptr %.16198.3, i64 1
  %6 = add nsw i32 %i.gf, -126                    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.16198.3, i64 2 ; 3 uses
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !12
  %i.ia = zext i8 %i.hz to i32                    ; 2 uses
  %i.ib = add nsw i64 %.15899.3.fr, -2            ; 3 uses
  %i.ic = icmp slt i64 %.06497.3, %i.f
  br i1 %i.ic, label %.lr.ph95.preheader.3, label %.critedge.3

.lr.ph95.preheader.3:                             ; preds = %bb.n
  %i.id = xor i64 %.06497.3, -1
  %i.ie = add i64 %i.f, %i.id
  %i.if = add nsw i32 %i.gf, -127
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %i.ig) ; 2 uses
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check370 = icmp samesign ult i64 %i.ih, 7
  br i1 %min.iters.check370, label %.lr.ph95.3.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph95.preheader.3
  %n.vec372 = and i64 %i.ii, 4294967288           ; 4 uses
  %i.ij = trunc nuw i64 %n.vec372 to i32
  %i.ik = sub i32 %6, %i.ij
  %i.il = add i64 %.06497.3, %n.vec372            ; 2 uses
  %broadcast.splatinsert373 = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat374 = shufflevector <4 x i32> %broadcast.splatinsert373, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.im = getelementptr [4 x i8], ptr %.059, i64 %.06497.3
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph371
  %index376 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body375 ] ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %index376 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load377 = load <4 x i32>, ptr %i.in, align 4, !tbaa !9
  %wide.load378 = load <4 x i32>, ptr %i.io, align 4, !tbaa !9
  %i.ip = or <4 x i32> %wide.load377, %broadcast.splat374
  %i.iq = or <4 x i32> %wide.load378, %broadcast.splat374
  store <4 x i32> %i.ip, ptr %i.in, align 4, !tbaa !9
  store <4 x i32> %i.iq, ptr %i.io, align 4, !tbaa !9
  %index.next379 = add nuw i64 %index376, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.ir, label %middle.block380, label %vector.body375, !llvm.loop !115

middle.block380:                                  ; preds = %vector.body375
  %cmp.n381 = icmp eq i64 %i.ii, %n.vec372
  br i1 %cmp.n381, label %.critedge.3, label %.lr.ph95.3.preheader

.lr.ph95.3.preheader:                             ; preds = %.lr.ph95.preheader.3, %middle.block380
  %.094.3.ph = phi i32 [ %6, %.lr.ph95.preheader.3 ], [ %i.ik, %middle.block380 ]
  %.16593.3.ph = phi i64 [ %.06497.3, %.lr.ph95.preheader.3 ], [ %i.il, %middle.block380 ]
  br label %.lr.ph95.3

.lr.ph95.3:                                       ; preds = %.lr.ph95.3.preheader, %.lr.ph95.3
  %.094.3 = phi i32 [ %i.is, %.lr.ph95.3 ], [ %.094.3.ph, %.lr.ph95.3.preheader ]
  %.16593.3 = phi i64 [ %i.it, %.lr.ph95.3 ], [ %.16593.3.ph, %.lr.ph95.3.preheader ] ; 2 uses
  %i.is = add nsw i32 %.094.3, -1                 ; 2 uses
  %i.it = add nsw i64 %.16593.3, 1                ; 3 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %.059, i64 %.16593.3 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !9
  %i.iw = or i32 %i.iv, %i.ia
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !9
  %i.ix = icmp ne i32 %i.is, 0
  %i.iy = icmp slt i64 %i.it, %i.f
  %i.iz = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %i.iz, label %.lr.ph95.3, label %.critedge.3, !llvm.loop !116

.critedge.3:                                      ; preds = %.lr.ph.3, %.lr.ph95.3, %middle.block380, %bb.n
  %.367.3 = phi i64 [ %i.it, %.lr.ph95.3 ], [ %.06497.3, %bb.n ], [ %i.il, %middle.block380 ], [ %.26684.3, %.lr.ph.3 ] ; 3 uses
  %.363.3 = phi ptr [ %i.hy, %.lr.ph95.3 ], [ %i.hy, %bb.n ], [ %i.hy, %middle.block380 ], [ %.26286.3, %.lr.ph.3 ] ; 2 uses
  %.3.3 = phi i64 [ %i.ib, %.lr.ph95.3 ], [ %i.ib, %bb.n ], [ %i.ib, %middle.block380 ], [ %i.hm, %.lr.ph.3 ] ; 3 uses
  %i.ja = icmp slt i64 %.367.3, %i.f
  %i.jb = icmp sgt i64 %.3.3, 0
  %i.jc = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %i.jc, label %.lr.ph100.3, label %._crit_edge.3

._crit_edge.3:                                    ; preds = %.preheader.3, %bb.m, %.critedge.3, %bb.l, %.preheader79.3
  %.064.lcssa.3 = phi i64 [ 0, %.preheader79.3 ], [ %i.hr, %bb.l ], [ %.06497.3, %.preheader.3 ], [ %.06497.3, %bb.m ], [ %.367.3, %.critedge.3 ] ; 2 uses
  %.161.lcssa.3 = phi ptr [ %.161.lcssa.2, %.preheader79.3 ], [ %.262.3, %bb.l ], [ %.26282.3, %.preheader.3 ], [ %.16198.3, %bb.m ], [ %.363.3, %.critedge.3 ] ; 2 uses
  %.158.lcssa.3 = phi i64 [ %.158.lcssa.2, %.preheader79.3 ], [ 0, %bb.l ], [ 0, %.preheader.3 ], [ 1, %bb.m ], [ %.3.3, %.critedge.3 ] ; 2 uses
  %.not77.3 = icmp eq i64 %.064.lcssa.3, %i.f
  br i1 %.not77.3, label %.split116.us, label %.split112.us

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.critedge
  %.15899 = phi i64 [ %.3, %.critedge ], [ %i.s, %.lr.ph100.preheader ]
  %.16198 = phi ptr [ %.363, %.critedge ], [ %i.q, %.lr.ph100.preheader ] ; 6 uses
  %.06497 = phi i64 [ %.367, %.critedge ], [ 0, %.lr.ph100.preheader ] ; 18 uses
  %.15899.fr = freeze i64 %.15899                 ; 5 uses
  %i.jd = load i8, ptr %.16198, align 1, !tbaa !12 ; 4 uses
  %i.je = zext i8 %i.jd to i32                    ; 5 uses
  %i.jf = icmp slt i8 %i.jd, 0
  br i1 %i.jf, label %bb.o, label %.preheader

.preheader:                                       ; preds = %.lr.ph100
  %.26282 = getelementptr i8, ptr %.16198, i64 1  ; 6 uses
  %i.jg = add nsw i64 %.15899.fr, -1              ; 4 uses
  %.not83 = icmp eq i64 %i.jg, 0
  br i1 %.not83, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.jh = add i64 %.15899.fr, -2
  %i.ji = tail call i64 @llvm.smax.i64(i64 %.06497, i64 %i.f)
  %i.jj = sub i64 %i.ji, %.06497
  %i.jk = zext nneg i8 %i.jd to i64
  %i.jl = tail call i64 @llvm.umin.i64(i64 %i.jj, i64 %i.jk)
  %i.jm = tail call i64 @llvm.umin.i64(i64 %i.jh, i64 %i.jl) ; 2 uses
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check266 = icmp samesign ult i64 %i.jm, 8
  br i1 %min.iters.check266, label %.lr.ph.preheader449, label %vector.memcheck

.lr.ph.preheader449:                              ; preds = %vector.body269, %vector.memcheck, %.lr.ph.preheader
  %.ph450 = phi i64 [ %i.jg, %vector.memcheck ], [ %i.jg, %.lr.ph.preheader ], [ %i.jx, %vector.body269 ]
  %.26286.ph = phi ptr [ %.26282, %vector.memcheck ], [ %.26282, %.lr.ph.preheader ], [ %i.jy, %vector.body269 ]
  %.185.ph = phi i32 [ %i.je, %vector.memcheck ], [ %i.je, %.lr.ph.preheader ], [ %i.ka, %vector.body269 ]
  %.26684.ph = phi i64 [ %.06497, %vector.memcheck ], [ %.06497, %.lr.ph.preheader ], [ %i.kb, %vector.body269 ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.jo = shl i64 %.06497, 2
  %scevgep = getelementptr i8, ptr %.059, i64 %i.jo
  %i.jp = add i64 %.15899.fr, -2
  %smax = tail call i64 @llvm.smax.i64(i64 %.06497, i64 %i.f)
  %i.jq = sub i64 %smax, %.06497
  %i.jr = zext nneg i8 %i.jd to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.jq, i64 %i.jr)
  %umin261 = tail call i64 @llvm.umin.i64(i64 %i.jp, i64 %umin) ; 2 uses
  %i.js = add i64 %.06497, %umin261
  %i.jt = shl i64 %i.js, 2
  %scevgep262 = getelementptr i8, ptr %scevgep260, i64 %i.jt
  %scevgep263 = getelementptr i8, ptr %.16198, i64 2
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %umin261
  %bound0 = icmp ult ptr %scevgep, %scevgep264
  %bound1 = icmp ult ptr %.26282, %scevgep262
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader449, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck
  %i.ju = and i64 %i.jn, 7                        ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = select i1 %i.jv, i64 8, i64 %i.ju
  %n.vec268 = sub nsw i64 %i.jn, %i.jw            ; 5 uses
  %i.jx = sub i64 %i.jg, %n.vec268
  %i.jy = getelementptr i8, ptr %.26282, i64 %n.vec268
  %i.jz = trunc nsw i64 %n.vec268 to i32
  %i.ka = sub nsw i32 %i.je, %i.jz
  %i.kb = add i64 %.06497, %n.vec268
  %i.kc = getelementptr [4 x i8], ptr %.059, i64 %.06497
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.26282, i64 %index270 ; 2 uses
  %i.kd = getelementptr i8, ptr %next.gep, i64 4
  %wide.load271 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !12, !alias.scope !130
  %wide.load272 = load <4 x i8>, ptr %i.kd, align 1, !tbaa !12, !alias.scope !130
  %i.ke = zext <4 x i8> %wide.load271 to <4 x i32>
  %i.kf = zext <4 x i8> %wide.load272 to <4 x i32>
  %i.kg = shl nuw <4 x i32> %i.ke, splat (i32 24)
  %i.kh = shl nuw <4 x i32> %i.kf, splat (i32 24)
  %i.ki = getelementptr [4 x i8], ptr %i.kc, i64 %index270 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %wide.load273 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !9, !alias.scope !131, !noalias !130
  %wide.load274 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !9, !alias.scope !131, !noalias !130
  %i.kk = or <4 x i32> %i.kg, %wide.load273
  %i.kl = or <4 x i32> %i.kh, %wide.load274
  store <4 x i32> %i.kk, ptr %i.ki, align 4, !tbaa !9, !alias.scope !131, !noalias !130
  store <4 x i32> %i.kl, ptr %i.kj, align 4, !tbaa !9, !alias.scope !131, !noalias !130
  %index.next275 = add nuw i64 %index270, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.km, label %.lr.ph.preheader449, label %vector.body269, !llvm.loop !120

bb.o:                                             ; preds = %.lr.ph100
  %i.kn = icmp samesign ult i64 %.15899.fr, 2
  br i1 %i.kn, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ko = getelementptr inbounds nuw i8, ptr %.16198, i64 1
  %7 = add nsw i32 %i.je, -126                    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.16198, i64 2 ; 3 uses
  %i.kq = load i8, ptr %i.ko, align 1, !tbaa !12
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw i32 %i.kr, 24                   ; 2 uses
  %i.kt = add nsw i64 %.15899.fr, -2              ; 3 uses
  %i.ku = icmp slt i64 %.06497, %i.f
  br i1 %i.ku, label %.lr.ph95.preheader, label %.critedge

.lr.ph95.preheader:                               ; preds = %bb.p
  %i.kv = xor i64 %.06497, -1
  %i.kw = add i64 %i.f, %i.kv
  %i.kx = add nsw i32 %i.je, -127
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = tail call i64 @llvm.umin.i64(i64 %i.kw, i64 %i.ky) ; 2 uses
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.kz, 7
  br i1 %min.iters.check, label %.lr.ph95.preheader448, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.la, 4294967288              ; 4 uses
  %i.lb = trunc nuw i64 %n.vec to i32
  %i.lc = sub i32 %7, %i.lb
  %i.ld = add i64 %.06497, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ks, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %.059, i64 %.06497
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %index ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.lf, align 4, !tbaa !9
  %wide.load258 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !9
  %i.lh = or <4 x i32> %wide.load, %broadcast.splat
  %i.li = or <4 x i32> %wide.load258, %broadcast.splat
  store <4 x i32> %i.lh, ptr %i.lf, align 4, !tbaa !9
  store <4 x i32> %i.li, ptr %i.lg, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.la, %n.vec
  br i1 %cmp.n, label %.critedge, label %.lr.ph95.preheader448

.lr.ph95.preheader448:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.094.ph = phi i32 [ %7, %.lr.ph95.preheader ], [ %i.lc, %middle.block ]
  %.16593.ph = phi i64 [ %.06497, %.lr.ph95.preheader ], [ %i.ld, %middle.block ]
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader448, %.lr.ph95
  %.094 = phi i32 [ %i.lk, %.lr.ph95 ], [ %.094.ph, %.lr.ph95.preheader448 ]
  %.16593 = phi i64 [ %i.ll, %.lr.ph95 ], [ %.16593.ph, %.lr.ph95.preheader448 ] ; 2 uses
  %i.lk = add nsw i32 %.094, -1                   ; 2 uses
  %i.ll = add nsw i64 %.16593, 1                  ; 3 uses
  %i.lm = getelementptr inbounds [4 x i8], ptr %.059, i64 %.16593 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9
  %i.lo = or i32 %i.ln, %i.ks
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !9
  %i.lp = icmp ne i32 %i.lk, 0
  %i.lq = icmp slt i64 %i.ll, %i.f
  %i.lr = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %i.lr, label %.lr.ph95, label %.critedge, !llvm.loop !122

.lr.ph:                                           ; preds = %.lr.ph.preheader449, %bb.q
  %i.ls = phi i64 [ %i.mc, %bb.q ], [ %.ph450, %.lr.ph.preheader449 ] ; 2 uses
  %.26286 = phi ptr [ %.262, %bb.q ], [ %.26286.ph, %.lr.ph.preheader449 ] ; 3 uses
  %.185 = phi i32 [ %i.lu, %bb.q ], [ %.185.ph, %.lr.ph.preheader449 ] ; 2 uses
  %.26684 = phi i64 [ %i.ly, %bb.q ], [ %.26684.ph, %.lr.ph.preheader449 ] ; 4 uses
  %.not76 = icmp ne i32 %.185, 0
  %i.lt = icmp slt i64 %.26684, %i.f
  %or.cond = select i1 %.not76, i1 %i.lt, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph
  %i.lu = add nsw i32 %.185, -1
  %i.lv = load i8, ptr %.26286, align 1, !tbaa !12
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw i32 %i.lw, 24
  %i.ly = add nsw i64 %.26684, 1                  ; 2 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %.059, i64 %.26684 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !9
  %i.mb = or i32 %i.lx, %i.ma
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !9
  %.262 = getelementptr inbounds nuw i8, ptr %.26286, i64 1 ; 2 uses
  %i.mc = add nsw i64 %i.ls, -1                   ; 2 uses
  %.not = icmp eq i64 %i.mc, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !123

.critedge:                                        ; preds = %.lr.ph, %.lr.ph95, %middle.block, %bb.p
  %.367 = phi i64 [ %i.ll, %.lr.ph95 ], [ %.06497, %bb.p ], [ %i.ld, %middle.block ], [ %.26684, %.lr.ph ] ; 3 uses
  %.363 = phi ptr [ %i.kp, %.lr.ph95 ], [ %i.kp, %bb.p ], [ %i.kp, %middle.block ], [ %.26286, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %i.kt, %.lr.ph95 ], [ %i.kt, %bb.p ], [ %i.kt, %middle.block ], [ %i.ls, %.lr.ph ] ; 3 uses
  %i.md = icmp slt i64 %.367, %i.f
  %i.me = icmp sgt i64 %.3, 0
  %i.mf = select i1 %i.md, i1 %i.me, i1 false
  br i1 %i.mf, label %.lr.ph100, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.o, %.preheader79.preheader
  %.064.lcssa = phi i64 [ 0, %.preheader79.preheader ], [ %.06497, %bb.o ], [ %.367, %.critedge ] ; 2 uses
  %.161.lcssa = phi ptr [ %i.q, %.preheader79.preheader ], [ %.16198, %bb.o ], [ %.363, %.critedge ] ; 3 uses
  %.158.lcssa = phi i64 [ %i.s, %.preheader79.preheader ], [ 1, %bb.o ], [ %.3, %.critedge ] ; 4 uses
  %.not77 = icmp eq i64 %.064.lcssa, %i.f
  br i1 %.not77, label %.preheader79.1, label %.split112.us

._crit_edge.thread:                               ; preds = %.preheader, %bb.q
  %.367.ph = phi i64 [ %i.ly, %bb.q ], [ %.06497, %.preheader ] ; 2 uses
  %.363.ph = phi ptr [ %.262, %bb.q ], [ %.26282, %.preheader ] ; 2 uses
  %.not77171 = icmp eq i64 %.367.ph, %i.f
  br i1 %.not77171, label %._crit_edge.1, label %.split112.us

.split112.us:                                     ; preds = %._crit_edge.thread, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.1.thread, %._crit_edge.2.thread, %.split.us
  %.us-phi = phi i64 [ 0, %.split.us ], [ %.064.lcssa, %._crit_edge ], [ %.064.lcssa.1, %._crit_edge.1 ], [ %.064.lcssa.2, %._crit_edge.2 ], [ %.064.lcssa.3, %._crit_edge.3 ], [ %.367.1.ph, %._crit_edge.1.thread ], [ %.06497.2, %._crit_edge.2.thread ], [ %.367.ph, %._crit_edge.thread ]
  %.us-phi113 = phi ptr [ %i.q, %.split.us ], [ %.161.lcssa, %._crit_edge ], [ %.161.lcssa.1, %._crit_edge.1 ], [ %.161.lcssa.2, %._crit_edge.2 ], [ %.161.lcssa.3, %._crit_edge.3 ], [ %.363.1.ph, %._crit_edge.1.thread ], [ %.16198.2, %._crit_edge.2.thread ], [ %.363.ph, %._crit_edge.thread ]
  %.us-phi114 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa, %._crit_edge ], [ %.158.lcssa.1, %._crit_edge.1 ], [ %.158.lcssa.2, %._crit_edge.2 ], [ %.158.lcssa.3, %._crit_edge.3 ], [ 0, %._crit_edge.1.thread ], [ 1, %._crit_edge.2.thread ], [ 0, %._crit_edge.thread ]
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !65
  %i.mi = sub nsw i64 %i.f, %.us-phi
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LogLuvDecode32.module, ptr noundef nonnull @.str.10, i32 noundef %i.mh, i64 noundef %i.mi) #16
  store ptr %.us-phi113, ptr %i.p, align 8, !tbaa !61
  store i64 %.us-phi114, ptr %i.r, align 8, !tbaa !62
  br label %bb.r

.split116.us:                                     ; preds = %._crit_edge.3, %.split.us
  %.us-phi117 = phi ptr [ %i.q, %.split.us ], [ %.161.lcssa.3, %._crit_edge.3 ]
  %.us-phi118 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa.3, %._crit_edge.3 ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !41
  tail call void %i.mk(ptr noundef %i.b, ptr noundef %1, i64 noundef %i.f) #16
  store ptr %.us-phi117, ptr %i.p, align 8, !tbaa !61
  store i64 %.us-phi118, ptr %i.r, align 8, !tbaa !62
  br label %bb.r

bb.r:                                             ; preds = %.split116.us, %.split112.us, %bb.c
  %.069 = phi i32 [ 0, %.split112.us ], [ 1, %.split116.us ], [ 0, %bb.c ]
  ret i32 %.069
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv32toXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %LogLuv32toXYZ.exit
  %.09 = phi ptr [ %i.ax, %LogLuv32toXYZ.exit ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.058 = phi ptr [ %i.e, %LogLuv32toXYZ.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.067 = phi i64 [ %i.d, %LogLuv32toXYZ.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.067, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.f = load i32, ptr %.058, align 4, !tbaa !9   ; 3 uses
  %i.g = ashr i32 %i.f, 16                        ; 2 uses
  %i.h = and i32 %i.g, 32767                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %LogL16toY.exit.thread.i, label %LogL16toY.exit.i

LogL16toY.exit.i:                                 ; preds = %.lr.ph
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fadd double %i.i, 5.000000e-01
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.l = tail call double @exp(double noundef %i.k) #16 ; 2 uses
  %i.m = and i32 %i.g, 32768
  %.not7.i.i = icmp eq i32 %i.m, 0
  %i.n = fneg double %i.l
  %i.o = select i1 %.not7.i.i, double %i.l, double %i.n ; 3 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %LogL16toY.exit.thread.i

LogL16toY.exit.thread.i:                          ; preds = %LogL16toY.exit.i, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.09, i64 8
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !11
  store <2 x float> zeroinitializer, ptr %.09, align 4, !tbaa !11
  br label %LogLuv32toXYZ.exit

bb.b:                                             ; preds = %LogL16toY.exit.i
  %i.r = lshr i32 %i.f, 8
  %i.s = and i32 %i.r, 255
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = fadd nnan double %i.t, 5.000000e-01
  %i.v = fmul nnan double %i.u, f0x3F63FB013FB013FB ; 2 uses
  %i.w = and i32 %i.f, 255
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fadd nnan double %i.x, 5.000000e-01
  %i.z = fmul nnan double %i.y, f0x3F63FB013FB013FB ; 2 uses
  %i.aa = fmul nnan double %i.z, -1.600000e+01
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.v, double 6.000000e+00, double %i.aa)
  %i.ac = fadd double %i.ab, 1.200000e+01
  %i.ad = fdiv double 1.000000e+00, %i.ac         ; 2 uses
  %i.ae = fmul nnan double %i.v, 9.000000e+00
  %i.af = fmul nnan double %i.z, 4.000000e+00
  %i.ag = fmul double %i.af, %i.ad                ; 2 uses
  %i.ah = fmul double %i.ae, %i.ad                ; 2 uses
  %i.ai = fsub double 1.000000e+00, %i.ah
  %i.aj = fsub double %i.ai, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> %i.al, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.o, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %i.o, i64 1
end_hunk_0
