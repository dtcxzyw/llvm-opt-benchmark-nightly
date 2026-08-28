Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_combine_row:bb.a
iter.check475:                                    ; preds = %bb.bb
  %.lcssa431456 = ptrtoaddr ptr %.lcssa431 to i64
  %.lcssa430455 = ptrtoaddr ptr %.lcssa430 to i64
  %min.iters.check458 = icmp ult i64 %i.ky, 4
  %i.lb = sub i64 %.lcssa431456, %.lcssa430455
  %diff.check457 = icmp ugt i64 %i.lb, -32
  %or.cond555 = select i1 %min.iters.check458, i1 true, i1 %diff.check457
  br i1 %or.cond555, label %.preheader326.preheader, label %vector.main.loop.iter.check459

vector.main.loop.iter.check459:                   ; preds = %iter.check475
  %min.iters.check460 = icmp ult i64 %i.ky, 32
  br i1 %min.iters.check460, label %vec.epilog.ph479, label %vector.ph461

vector.ph461:                                     ; preds = %vector.main.loop.iter.check459
  %i.lc = and i64 %i.ky, 28
  %n.vec462 = and i64 %i.ky, -32                  ; 5 uses
  %i.ld = getelementptr i8, ptr %i.kz, i64 %n.vec462
  %i.le = and i64 %i.ky, 31
  %i.lf = getelementptr i8, ptr %i.la, i64 %n.vec462
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph461
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body463 ] ; 3 uses
  %next.gep465 = getelementptr i8, ptr %i.kz, i64 %index464 ; 2 uses
  %next.gep466 = getelementptr i8, ptr %i.la, i64 %index464 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep465, i64 16
  %wide.load467 = load <16 x i8>, ptr %next.gep465, align 1, !tbaa !7
  %wide.load468 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !7
  %i.lh = getelementptr i8, ptr %next.gep466, i64 16
  store <16 x i8> %wide.load467, ptr %next.gep466, align 1, !tbaa !7
  store <16 x i8> %wide.load468, ptr %i.lh, align 1, !tbaa !7
  %index.next469 = add nuw i64 %index464, 32      ; 2 uses
  %i.li = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.li, label %middle.block470, label %vector.body463, !llvm.loop !81

middle.block470:                                  ; preds = %vector.body463
  %cmp.n471 = icmp eq i64 %i.ky, %n.vec462
  br i1 %cmp.n471, label %.loopexit, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block470
  %min.epilog.iters.check478 = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check478, label %.preheader326.preheader, label %vec.epilog.ph479, !prof !70

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check459, %vec.epilog.iter.check477
  %vec.epilog.resume.val472 = phi i64 [ %n.vec462, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check459 ]
  %n.vec480 = and i64 %i.ky, -4                   ; 4 uses
  %i.lj = getelementptr i8, ptr %i.kz, i64 %n.vec480
  %i.lk = and i64 %i.ky, 3
  %i.ll = getelementptr i8, ptr %i.la, i64 %n.vec480
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val472, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body481 ] ; 3 uses
  %next.gep483 = getelementptr i8, ptr %i.kz, i64 %index482
  %next.gep484 = getelementptr i8, ptr %i.la, i64 %index482
  %wide.load485 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !7
  store <4 x i8> %wide.load485, ptr %next.gep484, align 1, !tbaa !7
  %index.next486 = add nuw i64 %index482, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next486, %n.vec480
  br i1 %i.lm, label %vec.epilog.middle.block487, label %vec.epilog.vector.body481, !llvm.loop !82

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body481
  %cmp.n488 = icmp eq i64 %i.ky, %n.vec480
  br i1 %cmp.n488, label %.loopexit, label %.preheader326.preheader

.preheader326.preheader:                          ; preds = %iter.check475, %vec.epilog.iter.check477, %vec.epilog.middle.block487
  %.6264.ph = phi ptr [ %i.kz, %iter.check475 ], [ %i.ld, %vec.epilog.iter.check477 ], [ %i.lj, %vec.epilog.middle.block487 ] ; 2 uses
  %.10.ph = phi i64 [ %i.ky, %iter.check475 ], [ %i.le, %vec.epilog.iter.check477 ], [ %i.lk, %vec.epilog.middle.block487 ] ; 4 uses
  %.6.ph = phi ptr [ %i.la, %iter.check475 ], [ %i.lf, %vec.epilog.iter.check477 ], [ %i.ll, %vec.epilog.middle.block487 ] ; 2 uses
  %i.ln = add i64 %.10.ph, -1
  %xtraiter579 = and i64 %.10.ph, 7               ; 2 uses
  %lcmp.mod580.not = icmp eq i64 %xtraiter579, 0
  br i1 %lcmp.mod580.not, label %.preheader326.prol.loopexit, label %.preheader326.prol

.preheader326.prol:                               ; preds = %.preheader326.preheader, %.preheader326.prol
  %.6264.prol = phi ptr [ %i.lo, %.preheader326.prol ], [ %.6264.ph, %.preheader326.preheader ] ; 2 uses
  %.10.prol = phi i64 [ %i.lr, %.preheader326.prol ], [ %.10.ph, %.preheader326.preheader ]
  %.6.prol = phi ptr [ %i.lq, %.preheader326.prol ], [ %.6.ph, %.preheader326.preheader ] ; 2 uses
  %prol.iter581 = phi i64 [ %prol.iter581.next, %.preheader326.prol ], [ 0, %.preheader326.preheader ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.6264.prol, i64 1 ; 2 uses
  %i.lp = load i8, ptr %.6264.prol, align 1, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %.6.prol, i64 1 ; 2 uses
  store i8 %i.lp, ptr %.6.prol, align 1, !tbaa !7
  %i.lr = add i64 %.10.prol, -1                   ; 2 uses
  %prol.iter581.next = add i64 %prol.iter581, 1   ; 2 uses
  %prol.iter581.cmp.not = icmp eq i64 %prol.iter581.next, %xtraiter579
  br i1 %prol.iter581.cmp.not, label %.preheader326.prol.loopexit, label %.preheader326.prol, !llvm.loop !83

.preheader326.prol.loopexit:                      ; preds = %.preheader326.prol, %.preheader326.preheader
  %.6264.unr = phi ptr [ %.6264.ph, %.preheader326.preheader ], [ %i.lo, %.preheader326.prol ]
  %.10.unr = phi i64 [ %.10.ph, %.preheader326.preheader ], [ %i.lr, %.preheader326.prol ]
  %.6.unr = phi ptr [ %.6.ph, %.preheader326.preheader ], [ %i.lq, %.preheader326.prol ]
  %i.ls = icmp ult i64 %i.ln, 7
  br i1 %i.ls, label %.loopexit, label %.preheader326

.preheader326:                                    ; preds = %.preheader326.prol.loopexit, %.preheader326
  %.6264 = phi ptr [ %i.mo, %.preheader326 ], [ %.6264.unr, %.preheader326.prol.loopexit ] ; 9 uses
  %.10 = phi i64 [ %i.mr, %.preheader326 ], [ %.10.unr, %.preheader326.prol.loopexit ]
  %.6 = phi ptr [ %i.mq, %.preheader326 ], [ %.6.unr, %.preheader326.prol.loopexit ] ; 9 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.6264, i64 1
  %i.lu = load i8, ptr %.6264, align 1, !tbaa !7
  %i.lv = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.lu, ptr %.6, align 1, !tbaa !7
  %i.lw = getelementptr inbounds nuw i8, ptr %.6264, i64 2
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !7
  %i.ly = getelementptr inbounds nuw i8, ptr %.6, i64 2
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !7
  %i.lz = getelementptr inbounds nuw i8, ptr %.6264, i64 3
  %i.ma = load i8, ptr %i.lw, align 1, !tbaa !7
  %i.mb = getelementptr inbounds nuw i8, ptr %.6, i64 3
  store i8 %i.ma, ptr %i.ly, align 1, !tbaa !7
  %i.mc = getelementptr inbounds nuw i8, ptr %.6264, i64 4
  %i.md = load i8, ptr %i.lz, align 1, !tbaa !7
  %i.me = getelementptr inbounds nuw i8, ptr %.6, i64 4
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !7
  %i.mf = getelementptr inbounds nuw i8, ptr %.6264, i64 5
  %i.mg = load i8, ptr %i.mc, align 1, !tbaa !7
  %i.mh = getelementptr inbounds nuw i8, ptr %.6, i64 5
  store i8 %i.mg, ptr %i.me, align 1, !tbaa !7
  %i.mi = getelementptr inbounds nuw i8, ptr %.6264, i64 6
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !7
  %i.mk = getelementptr inbounds nuw i8, ptr %.6, i64 6
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !7
  %i.ml = getelementptr inbounds nuw i8, ptr %.6264, i64 7
  %i.mm = load i8, ptr %i.mi, align 1, !tbaa !7
  %i.mn = getelementptr inbounds nuw i8, ptr %.6, i64 7
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !7
  %i.mo = getelementptr inbounds nuw i8, ptr %.6264, i64 8
  %i.mp = load i8, ptr %i.ml, align 1, !tbaa !7
  %i.mq = getelementptr inbounds nuw i8, ptr %.6, i64 8
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !7
  %i.mr = add i64 %.10, -8                        ; 2 uses
  %.not299.7 = icmp eq i64 %i.mr, 0
  br i1 %.not299.7, label %.loopexit, label %.preheader326, !llvm.loop !84

bb.bc:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %i.ms = zext nneg i32 %.0239 to i64             ; 2 uses
  %i.mt = zext nneg i32 %i.dd to i64              ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr nonnull align 1 %i.cw, i64 %i.ms, i1 false)
  %.not295356 = icmp ugt i64 %i.cu, %i.mt
  br i1 %.not295356, label %.lr.ph361, label %.loopexit

.lr.ph361:                                        ; preds = %bb.bc, %.lr.ph361
  %.7360 = phi ptr [ %i.mv, %.lr.ph361 ], [ %i.cv, %bb.bc ]
  %.1240359 = phi i64 [ %spec.select318324, %.lr.ph361 ], [ %i.ms, %bb.bc ]
  %.11358 = phi i64 [ %i.mw, %.lr.ph361 ], [ %i.cu, %bb.bc ]
  %.7265357 = phi ptr [ %i.mu, %.lr.ph361 ], [ %i.cw, %bb.bc ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.7265357, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.7360, i64 %i.mt ; 2 uses
  %i.mw = sub nuw i64 %.11358, %i.mt              ; 3 uses
  %spec.select318324 = tail call i64 @llvm.umin.i64(i64 %i.mw, i64 %.1240359) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mv, ptr align 1 %i.mu, i64 %spec.select318324, i1 false)
  %.not295 = icmp ugt i64 %i.mw, %i.mt
  br i1 %.not295, label %.lr.ph361, label %.loopexit

bb.bd:                                            ; preds = %bb.t, %bb.u, %bb.s, %bb.r
  %i.mx = icmp ugt i8 %i.b, 7
  br i1 %i.mx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.my = lshr i64 %i.z, 3
  %i.mz = mul nuw nsw i64 %i.my, %i.i
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.na = add nuw nsw i64 %i.aa, 7
  %i.nb = lshr i64 %i.na, 3
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.nc = phi i64 [ %i.mz, %bb.be ], [ %i.nb, %bb.bf ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.f, i64 %i.nc, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.ai, %bb.bg
  %.not311 = icmp eq ptr %.0249, null
  br i1 %.not311, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %.thread
  %i.nd = zext i8 %.0248 to i32
  %i.ne = and i32 %.0247, %i.nd
  %i.nf = load i8, ptr %.0249, align 1, !tbaa !7
  %i.ng = zext i8 %i.nf to i32
  %i.nh = xor i32 %.0247, -1
  %i.ni = and i32 %i.ng, %i.nh
  %i.nj = or i32 %i.ni, %i.ne
  %i.nk = trunc nuw i32 %i.nj to i8
  store i8 %i.nk, ptr %.0249, align 1, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.ao, %.lr.ph355, %.lr.ph361, %.loopexit551, %.preheader326.prol.loopexit, %.preheader326, %.loopexit550, %.preheader.prol.loopexit, %.preheader, %middle.block470, %vec.epilog.middle.block487, %middle.block527, %vec.epilog.middle.block545, %.preheader334, %.preheader330, %bb.bc, %.thread, %bb.bh, %bb.aq, %bb.v
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_read_interlace(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca [8 x i8], align 1                   ; 8 uses
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !85     ; 14 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32                      ; 5 uses
  %i.h = mul i32 %i.c, %i.g                       ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.j, label %bb.o [
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.c, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = add i32 %i.h, -1
  %i.p = lshr i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = and i32 %3, 65536
  %.not202 = icmp eq i32 %i.s, 0
  br i1 %.not202, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %i.c, 7
  %i.u = add i32 %i.h, 7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = sub i32 0, %i.c
  %i.w = sub i32 0, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0190.in = phi i32 [ %i.t, %bb.d ], [ %i.v, %bb.e ]
  %.0186.in = phi i32 [ %i.u, %bb.d ], [ %i.w, %bb.e ]
  %.0185 = phi i32 [ 7, %bb.d ], [ 0, %bb.e ]     ; 4 uses
  %.0184 = phi i32 [ 0, %bb.d ], [ 7, %bb.e ]     ; 4 uses
  %.0183 = phi i32 [ -1, %bb.d ], [ 1, %bb.e ]    ; 4 uses
  %.not263 = icmp eq i32 %i.c, 0
  br i1 %.not263, label %.loopexitthread-pre-split, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.f
  %.0190 = and i32 %.0190.in, 7
  %.0186 = and i32 %.0186.in, 7
  %umax272 = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 3 uses
  %xtraiter304 = and i32 %umax272, 1
  %i.x = icmp eq i32 %2, 6
  %unroll_iter309 = and i32 %umax272, 254
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  %lcmp.mod308 = trunc i32 %umax272 to i1
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %._crit_edge237
  %.0182244 = phi i32 [ %i.bi, %._crit_edge237 ], [ 0, %.lr.ph236.preheader ]
  %.1187243 = phi i32 [ %.3189.lcssa, %._crit_edge237 ], [ %.0186, %.lr.ph236.preheader ] ; 2 uses
  %.1191242 = phi i32 [ %.2192, %._crit_edge237 ], [ %.0190, %.lr.ph236.preheader ] ; 3 uses
  %.0193241 = phi ptr [ %.2195.lcssa, %._crit_edge237 ], [ %i.r, %.lr.ph236.preheader ] ; 2 uses
  %.0196240 = phi ptr [ %.1197, %._crit_edge237 ], [ %i.n, %.lr.ph236.preheader ] ; 2 uses
  %i.y = load i8, ptr %.0196240, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i32
  %i.aa = lshr i32 %i.z, %.1191242
  %i.ab = and i32 %i.aa, 1                        ; 3 uses
  br i1 %i.x, label %.epil.preheader303, label %.lr.ph236.new

.lr.ph236.new:                                    ; preds = %.lr.ph236, %.lr.ph236.new
  %.2188233 = phi i32 [ %.3189.1, %.lr.ph236.new ], [ %.1187243, %.lr.ph236 ] ; 4 uses
  %.1194232 = phi ptr [ %.2195.1, %.lr.ph236.new ], [ %.0193241, %.lr.ph236 ] ; 3 uses
  %niter310 = phi i32 [ %niter310.next.1, %.lr.ph236.new ], [ 0, %.lr.ph236 ]
  %i.ac = load i8, ptr %.1194232, align 1, !tbaa !7
  %i.ad = zext i8 %i.ac to i32
  %i.ae = sub i32 7, %.2188233
  %i.af = lshr i32 32639, %i.ae
  %i.ag = and i32 %i.af, %i.ad
  %i.ah = shl nuw i32 %i.ab, %.2188233
  %i.ai = or i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %.1194232, align 1, !tbaa !7
  %i.ak = icmp eq i32 %.2188233, %.0184           ; 2 uses
  %i.al = add nsw i32 %.2188233, %.0183
  %.2195.idx = sext i1 %i.ak to i64
  %.2195 = getelementptr inbounds i8, ptr %.1194232, i64 %.2195.idx ; 3 uses
  %.3189 = select i1 %i.ak, i32 %.0185, i32 %i.al ; 4 uses
  %i.am = load i8, ptr %.2195, align 1, !tbaa !7
  %i.an = zext i8 %i.am to i32
  %i.ao = sub i32 7, %.3189
  %i.ap = lshr i32 32639, %i.ao
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = shl nuw i32 %i.ab, %.3189
  %i.as = or i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %.2195, align 1, !tbaa !7
  %i.au = icmp eq i32 %.3189, %.0184              ; 2 uses
  %i.av = add nsw i32 %.3189, %.0183
  %.2195.idx.1 = sext i1 %i.au to i64
  %.2195.1 = getelementptr inbounds i8, ptr %.2195, i64 %.2195.idx.1 ; 3 uses
  %.3189.1 = select i1 %i.au, i32 %.0185, i32 %i.av ; 3 uses
  %niter310.next.1 = add i32 %niter310, 2         ; 2 uses
  %niter310.ncmp.1 = icmp eq i32 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1, label %._crit_edge237.unr-lcssa, label %.lr.ph236.new, !llvm.loop !88

._crit_edge237.unr-lcssa:                         ; preds = %.lr.ph236.new
  br i1 %lcmp.mod305.not, label %._crit_edge237, label %.epil.preheader303

.epil.preheader303:                               ; preds = %._crit_edge237.unr-lcssa, %.lr.ph236
  %.2188233.epil.init = phi i32 [ %.1187243, %.lr.ph236 ], [ %.3189.1, %._crit_edge237.unr-lcssa ] ; 4 uses
  %.1194232.epil.init = phi ptr [ %.0193241, %.lr.ph236 ], [ %.2195.1, %._crit_edge237.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.aw = load i8, ptr %.1194232.epil.init, align 1, !tbaa !7
  %i.ax = zext i8 %i.aw to i32
  %i.ay = sub i32 7, %.2188233.epil.init
  %i.az = lshr i32 32639, %i.ay
  %i.ba = and i32 %i.az, %i.ax
  %i.bb = shl nuw i32 %i.ab, %.2188233.epil.init
  %i.bc = or i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %.1194232.epil.init, align 1, !tbaa !7
  %i.be = icmp eq i32 %.2188233.epil.init, %.0184 ; 2 uses
  %i.bf = add nsw i32 %.2188233.epil.init, %.0183
  %.2195.idx.epil = sext i1 %i.be to i64
  %.2195.epil = getelementptr inbounds i8, ptr %.1194232.epil.init, i64 %.2195.idx.epil
  %.3189.epil = select i1 %i.be, i32 %.0185, i32 %i.bf
  br label %._crit_edge237

._crit_edge237:                                   ; preds = %._crit_edge237.unr-lcssa, %.epil.preheader303
  %.2195.lcssa = phi ptr [ %.2195.1, %._crit_edge237.unr-lcssa ], [ %.2195.epil, %.epil.preheader303 ]
  %.3189.lcssa = phi i32 [ %.3189.1, %._crit_edge237.unr-lcssa ], [ %.3189.epil, %.epil.preheader303 ]
  %i.bg = icmp eq i32 %.1191242, %.0184           ; 2 uses
  %i.bh = add nsw i32 %.1191242, %.0183
  %.1197.idx = sext i1 %i.bg to i64
  %.1197 = getelementptr inbounds i8, ptr %.0196240, i64 %.1197.idx
  %.2192 = select i1 %i.bg, i32 %.0185, i32 %i.bh
  %i.bi = add nuw i32 %.0182244, 1                ; 2 uses
  %i.bj = load i32, ptr %0, align 8, !tbaa !85
  %i.bk = icmp ult i32 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph236, label %.loopexitthread-pre-split, !llvm.loop !89

bb.g:                                             ; preds = %bb.b
  %i.bl = add i32 %i.c, -1
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.bp = add i32 %i.h, -1
  %i.bq = lshr i32 %i.bp, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.bt = and i32 %3, 65536
  %.not200 = icmp eq i32 %i.bt, 0
  br i1 %.not200, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = shl i32 %i.c, 1
  %i.bv = add i32 %i.bu, 6
  %i.bw = shl i32 %i.h, 1
  %i.bx = add i32 %i.bw, 6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.neg = mul i32 %i.c, 6
  %.neg201 = mul i32 %i.h, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0173.in = phi i32 [ %i.bv, %bb.h ], [ %.neg, %bb.i ]
  %.0169.in = phi i32 [ %i.bx, %bb.h ], [ %.neg201, %bb.i ]
  %.0168 = phi i32 [ 6, %bb.h ], [ 0, %bb.i ]     ; 4 uses
  %.0167 = phi i32 [ 0, %bb.h ], [ 6, %bb.i ]     ; 4 uses
  %.0166 = phi i32 [ -2, %bb.h ], [ 2, %bb.i ]    ; 4 uses
  %.not262 = icmp eq i32 %i.c, 0
  br i1 %.not262, label %.loopexitthread-pre-split, label %.lr.ph221.preheader

.lr.ph221.preheader:                              ; preds = %bb.j
  %.0173 = and i32 %.0173.in, 6
  %.0169 = and i32 %.0169.in, 6
  %umax270 = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 3 uses
  %xtraiter296 = and i32 %umax270, 1
  %i.by = icmp eq i32 %2, 6
  %unroll_iter301 = and i32 %umax270, 254
  %lcmp.mod297.not = icmp eq i32 %xtraiter296, 0
  %lcmp.mod300 = trunc i32 %umax270 to i1
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %._crit_edge222
  %.0165229 = phi i32 [ %i.dj, %._crit_edge222 ], [ 0, %.lr.ph221.preheader ]
  %.1170228 = phi i32 [ %.3172.lcssa, %._crit_edge222 ], [ %.0169, %.lr.ph221.preheader ] ; 2 uses
  %.1174227 = phi i32 [ %.2175, %._crit_edge222 ], [ %.0173, %.lr.ph221.preheader ] ; 3 uses
  %.0176226 = phi ptr [ %.2178.lcssa, %._crit_edge222 ], [ %i.bs, %.lr.ph221.preheader ] ; 2 uses
  %.0179225 = phi ptr [ %.1180, %._crit_edge222 ], [ %i.bo, %.lr.ph221.preheader ] ; 2 uses
  %i.bz = load i8, ptr %.0179225, align 1, !tbaa !7
  %i.ca = zext i8 %i.bz to i32
end_hunk_0
begin_hunk_1_@png_do_read_interlace:bb.a
  %.2178.1 = getelementptr inbounds i8, ptr %.2178, i64 %.2178.idx.1 ; 3 uses
  %.3172.1 = select i1 %i.cv, i32 %.0168, i32 %i.cw ; 3 uses
  %niter302.next.1 = add i32 %niter302, 2         ; 2 uses
  %niter302.ncmp.1 = icmp eq i32 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %._crit_edge222.unr-lcssa, label %.lr.ph221.new, !llvm.loop !90

._crit_edge222.unr-lcssa:                         ; preds = %.lr.ph221.new
  br i1 %lcmp.mod297.not, label %._crit_edge222, label %.epil.preheader295

.epil.preheader295:                               ; preds = %._crit_edge222.unr-lcssa, %.lr.ph221
  %.2171218.epil.init = phi i32 [ %.1170228, %.lr.ph221 ], [ %.3172.1, %._crit_edge222.unr-lcssa ] ; 4 uses
  %.1177217.epil.init = phi ptr [ %.0176226, %.lr.ph221 ], [ %.2178.1, %._crit_edge222.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.cx = load i8, ptr %.1177217.epil.init, align 1, !tbaa !7
  %i.cy = zext i8 %i.cx to i32
  %i.cz = sub i32 6, %.2171218.epil.init
  %i.da = lshr i32 16191, %i.cz
  %i.db = and i32 %i.da, %i.cy
  %i.dc = shl i32 %i.cc, %.2171218.epil.init
  %i.dd = or i32 %i.db, %i.dc
  %i.de = trunc i32 %i.dd to i8
  store i8 %i.de, ptr %.1177217.epil.init, align 1, !tbaa !7
  %i.df = icmp eq i32 %.2171218.epil.init, %.0167 ; 2 uses
  %i.dg = add nsw i32 %.2171218.epil.init, %.0166
  %.2178.idx.epil = sext i1 %i.df to i64
  %.2178.epil = getelementptr inbounds i8, ptr %.1177217.epil.init, i64 %.2178.idx.epil
  %.3172.epil = select i1 %i.df, i32 %.0168, i32 %i.dg
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.unr-lcssa, %.epil.preheader295
  %.2178.lcssa = phi ptr [ %.2178.1, %._crit_edge222.unr-lcssa ], [ %.2178.epil, %.epil.preheader295 ]
  %.3172.lcssa = phi i32 [ %.3172.1, %._crit_edge222.unr-lcssa ], [ %.3172.epil, %.epil.preheader295 ]
  %i.dh = icmp eq i32 %.1174227, %.0167           ; 2 uses
  %i.di = add nsw i32 %.1174227, %.0166
  %.1180.idx = sext i1 %i.dh to i64
  %.1180 = getelementptr inbounds i8, ptr %.0179225, i64 %.1180.idx
  %.2175 = select i1 %i.dh, i32 %.0168, i32 %i.di
  %i.dj = add nuw i32 %.0165229, 1                ; 2 uses
  %i.dk = load i32, ptr %0, align 8, !tbaa !85
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph221, label %.loopexitthread-pre-split, !llvm.loop !91

bb.k:                                             ; preds = %bb.b
  %i.dm = add i32 %i.c, -1
  %i.dn = lshr i32 %i.dm, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %i.dq = add i32 %i.h, -1
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.du = and i32 %3, 65536
  %.not = icmp eq i32 %i.du, 0
  %i.dv = shl i32 %i.c, 2
  %i.dw = and i32 %i.dv, 4                        ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = xor i32 %i.dw, 4
  %i.dy = shl i32 %i.h, 2
  %i.dz = and i32 %i.dy, 4
  %i.ea = xor i32 %i.dz, 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.eb = shl i32 %i.h, 2
  %i.ec = and i32 %i.eb, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0156 = phi i32 [ %i.dx, %bb.l ], [ %i.dw, %bb.m ]
  %.0154 = phi i32 [ %i.ea, %bb.l ], [ %i.ec, %bb.m ]
  %.0153 = phi i32 [ 4, %bb.l ], [ 0, %bb.m ]     ; 4 uses
  %.0152 = phi i32 [ 0, %bb.l ], [ 4, %bb.m ]     ; 4 uses
  %.0151 = phi i32 [ -4, %bb.l ], [ 4, %bb.m ]    ; 4 uses
  %.not261 = icmp eq i32 %i.c, 0
  br i1 %.not261, label %.loopexitthread-pre-split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %umax = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 3 uses
  %xtraiter = and i32 %umax, 1
  %i.ed = icmp eq i32 %2, 6
  %unroll_iter = and i32 %umax, 254
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod294 = trunc i32 %umax to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0150214 = phi i32 [ %i.fo, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %.1155213 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.0154, %.lr.ph.preheader ] ; 2 uses
  %.1157212 = phi i32 [ %.2158, %._crit_edge ], [ %.0156, %.lr.ph.preheader ] ; 3 uses
  %.0159211 = phi ptr [ %.2161.lcssa, %._crit_edge ], [ %i.dt, %.lr.ph.preheader ] ; 2 uses
  %.0162210 = phi ptr [ %.1163, %._crit_edge ], [ %i.dp, %.lr.ph.preheader ] ; 2 uses
  %i.ee = load i8, ptr %.0162210, align 1, !tbaa !7
  %i.ef = zext i8 %i.ee to i32
  %i.eg = lshr i32 %i.ef, %.1157212
  %i.eh = and i32 %i.eg, 15                       ; 3 uses
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.2207 = phi i32 [ %.3.1, %.lr.ph.new ], [ %.1155213, %.lr.ph ] ; 4 uses
  %.1160206 = phi ptr [ %.2161.1, %.lr.ph.new ], [ %.0159211, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ei = load i8, ptr %.1160206, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i32
  %i.ek = sub i32 4, %.2207
  %i.el = lshr i32 3855, %i.ek
  %i.em = and i32 %i.el, %i.ej
  %i.en = shl i32 %i.eh, %.2207
  %i.eo = or i32 %i.em, %i.en
  %i.ep = trunc i32 %i.eo to i8
  store i8 %i.ep, ptr %.1160206, align 1, !tbaa !7
  %i.eq = icmp eq i32 %.2207, %.0152              ; 2 uses
  %i.er = add nsw i32 %.2207, %.0151
  %.2161.idx = sext i1 %i.eq to i64
  %.2161 = getelementptr inbounds i8, ptr %.1160206, i64 %.2161.idx ; 3 uses
  %.3 = select i1 %i.eq, i32 %.0153, i32 %i.er    ; 4 uses
  %i.es = load i8, ptr %.2161, align 1, !tbaa !7
  %i.et = zext i8 %i.es to i32
  %i.eu = sub i32 4, %.3
  %i.ev = lshr i32 3855, %i.eu
  %i.ew = and i32 %i.ev, %i.et
  %i.ex = shl i32 %i.eh, %.3
  %i.ey = or i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i8
  store i8 %i.ez, ptr %.2161, align 1, !tbaa !7
  %i.fa = icmp eq i32 %.3, %.0152                 ; 2 uses
  %i.fb = add nsw i32 %.3, %.0151
  %.2161.idx.1 = sext i1 %i.fa to i64
  %.2161.1 = getelementptr inbounds i8, ptr %.2161, i64 %.2161.idx.1 ; 3 uses
  %.3.1 = select i1 %i.fa, i32 %.0153, i32 %i.fb  ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !92

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.2207.epil.init = phi i32 [ %.1155213, %.lr.ph ], [ %.3.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.1160206.epil.init = phi ptr [ %.0159211, %.lr.ph ], [ %.2161.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.fc = load i8, ptr %.1160206.epil.init, align 1, !tbaa !7
  %i.fd = zext i8 %i.fc to i32
  %i.fe = sub i32 4, %.2207.epil.init
  %i.ff = lshr i32 3855, %i.fe
  %i.fg = and i32 %i.ff, %i.fd
  %i.fh = shl i32 %i.eh, %.2207.epil.init
  %i.fi = or i32 %i.fg, %i.fh
  %i.fj = trunc i32 %i.fi to i8
  store i8 %i.fj, ptr %.1160206.epil.init, align 1, !tbaa !7
  %i.fk = icmp eq i32 %.2207.epil.init, %.0152    ; 2 uses
  %i.fl = add nsw i32 %.2207.epil.init, %.0151
  %.2161.idx.epil = sext i1 %i.fk to i64
  %.2161.epil = getelementptr inbounds i8, ptr %.1160206.epil.init, i64 %.2161.idx.epil
  %.3.epil = select i1 %i.fk, i32 %.0153, i32 %i.fl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.2161.lcssa = phi ptr [ %.2161.1, %._crit_edge.unr-lcssa ], [ %.2161.epil, %.epil.preheader ]
  %.3.lcssa = phi i32 [ %.3.1, %._crit_edge.unr-lcssa ], [ %.3.epil, %.epil.preheader ]
  %i.fm = icmp eq i32 %.1157212, %.0152           ; 2 uses
  %i.fn = add nsw i32 %.1157212, %.0151
  %.1163.idx = sext i1 %i.fm to i64
  %.1163 = getelementptr inbounds i8, ptr %.0162210, i64 %.1163.idx
  %.2158 = select i1 %i.fm, i32 %.0153, i32 %i.fn
  %i.fo = add nuw i32 %.0150214, 1                ; 2 uses
  %i.fp = load i32, ptr %0, align 8, !tbaa !85
  %i.fq = icmp ult i32 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph, label %.loopexitthread-pre-split, !llvm.loop !93

bb.o:                                             ; preds = %bb.b
  %i.fr = lshr i8 %i.j, 3
  %i.fs = zext nneg i8 %i.fr to i64               ; 9 uses
  %.not264 = icmp eq i32 %i.c, 0
  br i1 %.not264, label %.loopexit, label %.lr.ph250.us.preheader

.lr.ph250.us.preheader:                           ; preds = %bb.o
  %i.ft = sub nsw i64 0, %i.fs                    ; 6 uses
  %i.fu = add i32 %i.h, -1
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %i.fv, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.fw
  %i.fy = add i32 %i.c, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = mul nuw nsw i64 %i.fs, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %umax274 = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 2 uses
  %xtraiter312 = and i32 %umax274, 3              ; 3 uses
  %i.gc = add nsw i64 %i.d, -4
  %i.gd = icmp ult i64 %i.gc, 3
  %unroll_iter316 = and i32 %umax274, 252
  %lcmp.mod313.not = icmp eq i32 %xtraiter312, 0
  %lcmp.mod315 = icmp ne i32 %xtraiter312, 0
  br label %.lr.ph250.us

.lr.ph250.us:                                     ; preds = %.lr.ph250.us.preheader, %._crit_edge251.us
  %.0146255.us = phi i32 [ %i.gk, %._crit_edge251.us ], [ 0, %.lr.ph250.us.preheader ]
  %.0147254.us = phi ptr [ %.lcssa, %._crit_edge251.us ], [ %i.fx, %.lr.ph250.us.preheader ] ; 2 uses
  %.0148253.us = phi ptr [ %i.gj, %._crit_edge251.us ], [ %i.gb, %.lr.ph250.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %.0148253.us, i64 %i.fs, i1 false)
  br i1 %i.gd, label %.epil.preheader311, label %.lr.ph250.us.new

.lr.ph250.us.new:                                 ; preds = %.lr.ph250.us, %.lr.ph250.us.new
  %.1247.us = phi ptr [ %i.gh, %.lr.ph250.us.new ], [ %.0147254.us, %.lr.ph250.us ] ; 2 uses
  %niter317 = phi i32 [ %niter317.next.3, %.lr.ph250.us.new ], [ 0, %.lr.ph250.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1247.us, ptr nonnull align 1 %4, i64 %i.fs, i1 false)
  %i.ge = getelementptr inbounds i8, ptr %.1247.us, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 1 %4, i64 %i.fs, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr nonnull align 1 %4, i64 %i.fs, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.ft ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 1 %4, i64 %i.fs, i1 false)
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.ft ; 3 uses
  %niter317.next.3 = add i32 %niter317, 4         ; 2 uses
  %niter317.ncmp.3 = icmp eq i32 %niter317.next.3, %unroll_iter316
  br i1 %niter317.ncmp.3, label %._crit_edge251.us.unr-lcssa, label %.lr.ph250.us.new, !llvm.loop !94

._crit_edge251.us.unr-lcssa:                      ; preds = %.lr.ph250.us.new
  br i1 %lcmp.mod313.not, label %._crit_edge251.us, label %.epil.preheader311

.epil.preheader311:                               ; preds = %._crit_edge251.us.unr-lcssa, %.lr.ph250.us
  %.1247.us.epil.init = phi ptr [ %.0147254.us, %.lr.ph250.us ], [ %i.gh, %._crit_edge251.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader311
  %.1247.us.epil = phi ptr [ %.1247.us.epil.init, %.epil.preheader311 ], [ %i.gi, %bb.p ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader311 ], [ %epil.iter.next, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1247.us.epil, ptr nonnull align 1 %4, i64 %i.fs, i1 false)
  %i.gi = getelementptr inbounds i8, ptr %.1247.us.epil, i64 %i.ft ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter312
  br i1 %epil.iter.cmp.not, label %._crit_edge251.us, label %bb.p, !llvm.loop !95

._crit_edge251.us:                                ; preds = %bb.p, %._crit_edge251.us.unr-lcssa
  %.lcssa = phi ptr [ %i.gh, %._crit_edge251.us.unr-lcssa ], [ %i.gi, %bb.p ]
  %i.gj = getelementptr inbounds i8, ptr %.0148253.us, i64 %i.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gk = add nuw i32 %.0146255.us, 1             ; 2 uses
  %i.gl = load i32, ptr %0, align 8, !tbaa !85
  %i.gm = icmp ult i32 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph250.us, label %.loopexitthread-pre-split, !llvm.loop !96

.loopexitthread-pre-split:                        ; preds = %._crit_edge, %._crit_edge222, %._crit_edge237, %._crit_edge251.us, %bb.f, %bb.j, %bb.n
  %.pr = load i8, ptr %i.i, align 1, !tbaa !87
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.o
  %i.gn = phi i8 [ %.pr, %.loopexitthread-pre-split ], [ %i.j, %bb.o ] ; 3 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !85
  %i.go = icmp ugt i8 %i.gn, 7
  %i.gp = zext i32 %i.h to i64                    ; 2 uses
  br i1 %i.go, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.gq = lshr i8 %i.gn, 3
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = mul nuw nsw i64 %i.gr, %i.gp
  br label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.gt = zext nneg i8 %i.gn to i64
  %i.gu = mul nuw nsw i64 %i.gt, %i.gp
  %i.gv = add nuw nsw i64 %i.gu, 7
  %i.gw = lshr i64 %i.gv, 3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gx = phi i64 [ %i.gs, %bb.q ], [ %i.gw, %bb.r ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_read_filter_row(ptr noalias noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %4, -1
  %or.cond = icmp ult i32 %i.a, 4
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.f = load i8, ptr %i.e, align 2, !tbaa !99, !alias.scope !100
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 7
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  store ptr @png_read_filter_row_sub, ptr %i.b, align 8, !tbaa !98, !alias.scope !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store ptr @png_read_filter_row_up, ptr %i.j, align 8, !tbaa !98, !alias.scope !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr @png_read_filter_row_avg, ptr %i.k, align 8, !tbaa !98, !alias.scope !100
  %i.l = icmp eq i32 %i.i, 1
  %spec.select.i = select i1 %i.l, ptr @png_read_filter_row_paeth_1byte_pixel, ptr @png_read_filter_row_paeth_multibyte_pixel
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store ptr %spec.select.i, ptr %i.m, align 8, !tbaa !98, !alias.scope !100
  tail call void @png_init_filter_functions_sse2(ptr noundef nonnull %0, i32 noundef %i.i) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = zext nneg i32 %4 to i64
  %i.o = getelementptr [8 x i8], ptr %i.b, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  tail call void %i.q(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_read_IDAT_data(ptr noalias noundef initializes((344, 356)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 1                 ; 12 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !104
  %i.g = icmp eq ptr %1, null                     ; 5 uses
  %spec.select = select i1 %i.g, i64 0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1196 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ai, %bb.a
  %.171 = phi i64 [ %spec.select, %bb.a ], [ %.3, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !41
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.preheader, label %bb.u

.preheader.preheader:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.i, align 8, !tbaa !105
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %png_read_chunk_header.exit
  %i.ac = phi i32 [ %.pre, %.preheader.preheader ], [ %i.cf, %png_read_chunk_header.exit ] ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.o

bb.c:                                             ; preds = %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !109
  %i.ae = load i32, ptr %i.j, align 8, !tbaa !30, !alias.scope !112
  %i.af = and i32 %i.ae, 536870912
  %.not10.i.i = icmp eq i32 %i.af, 0
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !33, !alias.scope !112 ; 2 uses
  store i32 129, ptr %i.l, align 4, !tbaa !25, !alias.scope !112
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #13
  br i1 %.not10.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.ah = and i32 %i.ag, 768
  %i.ai = icmp eq i32 %i.ah, 768
  br i1 %i.ai, label %png_crc_error.exit.thread.i, label %png_crc_error.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = and i32 %i.ag, 2048
  %.not11.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not11.not.i.i, label %png_crc_error.exit.i, label %png_crc_error.exit.thread.i

png_crc_error.exit.thread.i:                      ; preds = %bb.d, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !112
  br label %png_crc_finish_critical.exit

png_crc_error.exit.i:                             ; preds = %bb.d, %.split.i.i
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = load i32, ptr %i.m, align 4, !tbaa !39, !alias.scope !112
  %.not40.i = icmp eq i32 %i.al, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !112
  br i1 %.not40.i, label %png_crc_finish_critical.exit, label %bb.e

bb.e:                                             ; preds = %png_crc_error.exit.i
  %i.an = load i32, ptr %i.j, align 8, !tbaa !30, !alias.scope !106
  %i.ao = and i32 %i.an, 536870912
  %.not26.i = icmp eq i32 %i.ao, 0
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !33, !alias.scope !106 ; 2 uses
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = and i32 %i.ap, 512
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.as = and i32 %i.ap, 1024
  %.not27.i86 = icmp eq i32 %i.as, 0
  br i1 %.not27.i86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #13
  br label %png_crc_finish_critical.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  unreachable

png_crc_finish_critical.exit:                     ; preds = %png_crc_error.exit.thread.i, %png_crc_error.exit.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !114
  store i32 33, ptr %i.l, align 4, !tbaa !25, !alias.scope !114
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #13
  %i.at = load i8, ptr %i.b, align 1, !tbaa !7, !noalias !117
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw i32 %i.au, 24                   ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %png_get_uint_31.exit.i
end_hunk_1
