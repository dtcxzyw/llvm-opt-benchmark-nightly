Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/pwdbased?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wc_PBKDF2_ex:bb.a
  %i.d = alloca i8, align 1                       ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.e = icmp eq ptr %0, null
  %i.f = or i32 %4, %2
  %i.g = or i32 %i.f, %6
  %i.h = icmp slt i32 %i.g, 0
  %or.cond5 = or i1 %i.e, %i.h
  %i.i = icmp slt i32 %5, 1
  %or.cond = or i1 %i.i, %or.cond5
  %i.j = load i32, ptr @current_wc_pbkdf_max_iterations, align 4
  %i.k = icmp sgt i32 %5, %i.j
  %or.cond86 = select i1 %or.cond, i1 true, i1 %i.k
  br i1 %or.cond86, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @wc_HashTypeConvert(i32 noundef %7) #8
  %i.m = tail call i32 @wc_HashGetDigestSize(i32 noundef %i.l) #8 ; 8 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %ForceZero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @wc_HmacInit(ptr noundef nonnull %10, ptr noundef %8, i32 noundef %9) #8 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %.preheader16.i

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @wc_HmacSetKey(ptr noundef nonnull %10, i32 noundef %7, ptr noundef %1, i32 noundef %2) #8 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = icmp ne i32 %6, 0
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.lr.ph117, label %.thread98

.lr.ph117:                                        ; preds = %bb.d
  %i.u = icmp samesign ugt i32 %5, 1
  br i1 %i.u, label %.lr.ph117.split.us.preheader, label %.lr.ph117.split.split

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.v = or disjoint i64 %i.c, 8
  %i.w = xor i64 %i.c, -1
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %._crit_edge.us
  %.054115.us = phi i32 [ %i.dr, %._crit_edge.us ], [ 1, %.lr.ph117.split.us.preheader ] ; 5 uses
  %.061114.us = phi ptr [ %i.dp, %._crit_edge.us ], [ %0, %.lr.ph117.split.us.preheader ] ; 7 uses
  %.063113.us = phi i32 [ %i.dq, %._crit_edge.us ], [ %6, %.lr.ph117.split.us.preheader ] ; 3 uses
  %i.x = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef %3, i32 noundef %4) #8 ; 2 uses
  %.not.us = icmp eq i32 %i.x, 0
  br i1 %.not.us, label %.preheader.us.preheader, label %.thread98

.preheader.us.preheader:                          ; preds = %.lr.ph117.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.y = lshr i32 %.054115.us, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.d, align 1, !tbaa !12
  %i.aa = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.us = icmp eq i32 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.us, label %.preheader.us.1, label %.thread98

.preheader.us.1:                                  ; preds = %.preheader.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ab = lshr i32 %.054115.us, 16
  %i.ac = trunc i32 %i.ab to i8
  store i8 %i.ac, ptr %i.d, align 1, !tbaa !12
  %i.ad = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.us.1 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.us.1, label %.preheader.us.2, label %.thread98

.preheader.us.2:                                  ; preds = %.preheader.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ae = lshr i32 %.054115.us, 8
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.d, align 1, !tbaa !12
  %i.ag = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.us.2 = icmp eq i32 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.us.2, label %.preheader.us.3, label %.thread98

.preheader.us.3:                                  ; preds = %.preheader.us.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ah = trunc i32 %.054115.us to i8
  store i8 %i.ah, ptr %i.d, align 1, !tbaa !12
  %i.ai = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.us.3 = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.us.3, label %bb.e, label %.thread98

bb.e:                                             ; preds = %.preheader.us.3
  %i.aj = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not81.us = icmp eq i32 %i.aj, 0
  br i1 %.not81.us, label %.lr.ph.us, label %.thread98

.lr.ph.us:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = icmp uge i32 %.063113.us, %i.m
  %i.al = sext i1 %i.ak to i32
  store volatile i32 %i.al, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..i.us = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.am = xor i32 %.0..0..0..0..0..0..i.us, -1
  %i.an = and i32 %.063113.us, %i.am
  %.0..0..0..0..0..0.2.i.us = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.ao = and i32 %.0..0..0..0..0..0.2.i.us, %i.m
  %i.ap = or i32 %i.ao, %i.an                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061114.us, ptr nonnull align 16 %i.b, i64 %i.aq, i1 false)
  %i.ar = ptrtoint ptr %.061114.us to i64
  %i.as = and i64 %i.ar, 7
  %or.cond.i.us = icmp ne i64 %i.as, 0            ; 2 uses
  %i.at = and i32 %i.ap, -8
  %.idx.i30.i.us = zext i32 %i.at to i64          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i30.i.us
  %.not.i31.i.us = icmp ult i32 %i.ap, 8
  %i.av = and i32 %i.ap, 7                        ; 3 uses
  %brmerge = select i1 %or.cond.i.us, i1 true, i1 %.not.i31.i.us
  %.mux = select i1 %or.cond.i.us, i32 %i.ap, i32 %i.av
  %i.aw = add i64 %i.c, %.idx.i30.i.us
  %i.ax = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.v)
  %i.ay = add i64 %i.ax, %i.w                     ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check212 = icmp ult i64 %i.ay, 24
  %n.vec214 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec214, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.061114.us, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.bb   ; 2 uses
  %cmp.n225 = icmp eq i64 %i.ba, %n.vec214
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %xorbuf.exit.us
  %.1112.us = phi i32 [ 1, %.lr.ph.us ], [ %i.do, %xorbuf.exit.us ]
  %i.be = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i32 noundef %i.m) #8 ; 2 uses
  %.not82.us = icmp eq i32 %i.be, 0
  br i1 %.not82.us, label %bb.g, label %.thread98

bb.g:                                             ; preds = %bb.f
  %i.bf = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not83.us = icmp eq i32 %i.bf, 0
  br i1 %.not83.us, label %bb.h, label %.thread98

bb.h:                                             ; preds = %bb.g
  br i1 %brmerge, label %XorWords.exit33.i.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %bb.h
  br i1 %min.iters.check212, label %.lr.ph.i.i.us.preheader228, label %vector.body215

vector.body215:                                   ; preds = %.lr.ph.i.i.us.preheader, %vector.body215
  %index216 = phi i64 [ %index.next223, %vector.body215 ], [ 0, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %i.bg = shl i64 %index216, 3                    ; 2 uses
  %next.gep217 = getelementptr i8, ptr %.061114.us, i64 %i.bg ; 3 uses
  %next.gep218 = getelementptr i8, ptr %i.b, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep218, i64 16
  %wide.load219 = load <2 x i64>, ptr %next.gep218, align 16, !tbaa !11
  %wide.load220 = load <2 x i64>, ptr %i.bh, align 16, !tbaa !11
  %i.bi = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load221 = load <2 x i64>, ptr %next.gep217, align 8, !tbaa !11
  %wide.load222 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !11
  %i.bj = xor <2 x i64> %wide.load221, %wide.load219
  %i.bk = xor <2 x i64> %wide.load222, %wide.load220
  store <2 x i64> %i.bj, ptr %next.gep217, align 8, !tbaa !11
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !11
  %index.next223 = add nuw i64 %index216, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next223, %n.vec214
  br i1 %i.bl, label %middle.block224, label %vector.body215, !llvm.loop !17

middle.block224:                                  ; preds = %vector.body215
  br i1 %cmp.n225, label %XorWords.exit33.i.us, label %.lr.ph.i.i.us.preheader228

.lr.ph.i.i.us.preheader228:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block224
  %.sroa.039.0.i.us.ph = phi ptr [ %.061114.us, %.lr.ph.i.i.us.preheader ], [ %i.bc, %middle.block224 ]
  %.ph = phi ptr [ %i.b, %.lr.ph.i.i.us.preheader ], [ %i.bd, %middle.block224 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader228, %.lr.ph.i.i.us
  %.sroa.039.0.i.us = phi ptr [ %i.bp, %.lr.ph.i.i.us ], [ %.sroa.039.0.i.us.ph, %.lr.ph.i.i.us.preheader228 ] ; 3 uses
  %i.bm = phi ptr [ %i.bn, %.lr.ph.i.i.us ], [ %.ph, %.lr.ph.i.i.us.preheader228 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i.us, i64 8 ; 2 uses
  %i.bq = load i64, ptr %.sroa.039.0.i.us, align 8, !tbaa !11
  %i.br = xor i64 %i.bq, %i.bo
  store i64 %i.br, ptr %.sroa.039.0.i.us, align 8, !tbaa !11
  %i.bs = icmp ult ptr %i.bn, %i.au
  br i1 %i.bs, label %.lr.ph.i.i.us, label %XorWords.exit33.i.us, !llvm.loop !18

XorWords.exit33.i.us:                             ; preds = %.lr.ph.i.i.us, %middle.block224, %bb.h
  %.126.i.us = phi i32 [ %.mux, %bb.h ], [ %i.av, %middle.block224 ], [ %i.av, %.lr.ph.i.i.us ] ; 9 uses
  %.123.i.us = phi ptr [ %.061114.us, %bb.h ], [ %i.bc, %middle.block224 ], [ %i.bp, %.lr.ph.i.i.us ] ; 8 uses
  %.1.i.us = phi ptr [ %i.b, %bb.h ], [ %i.bd, %middle.block224 ], [ %i.bn, %.lr.ph.i.i.us ] ; 8 uses
  %.not51.i.us = icmp eq i32 %.126.i.us, 0
  br i1 %.not51.i.us, label %xorbuf.exit.us, label %iter.check

iter.check:                                       ; preds = %XorWords.exit33.i.us
  %i.bt = zext i32 %.126.i.us to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %.126.i.us, 4
  br i1 %min.iters.check, label %.lr.ph56.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.123.i.us, i64 1
  %11 = add i32 %.126.i.us, -1
  %i.bu = zext i32 %11 to i64                     ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep, i64 %i.bu
  %scevgep195 = getelementptr i8, ptr %.1.i.us, i64 1
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.bu
  %bound0 = icmp ult ptr %.123.i.us, %scevgep196
  %bound1 = icmp ult ptr %.1.i.us, %scevgep194
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check197 = icmp ult i32 %.126.i.us, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bt, 28
  %n.vec = and i64 %i.bt, 4294967264              ; 6 uses
  %i.bw = getelementptr i8, ptr %.1.i.us, i64 %n.vec
  %i.bx = getelementptr i8, ptr %.123.i.us, i64 %n.vec
  %i.by = trunc nuw i64 %n.vec to i32
  %i.bz = sub i32 %.126.i.us, %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1.i.us, i64 %index ; 2 uses
  %next.gep198 = getelementptr i8, ptr %.123.i.us, i64 %index ; 3 uses
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12, !alias.scope !27
  %wide.load199 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !12, !alias.scope !27
  %i.cb = getelementptr i8, ptr %next.gep198, i64 16 ; 2 uses
  %wide.load200 = load <16 x i8>, ptr %next.gep198, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %wide.load201 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %i.cc = xor <16 x i8> %wide.load200, %wide.load
  %i.cd = xor <16 x i8> %wide.load201, %wide.load199
  store <16 x i8> %i.cc, ptr %next.gep198, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  store <16 x i8> %i.cd, ptr %i.cb, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br i1 %cmp.n, label %xorbuf.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.i.us.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec202 = and i64 %i.bt, 4294967292           ; 5 uses
  %i.cf = getelementptr i8, ptr %.1.i.us, i64 %n.vec202
  %i.cg = getelementptr i8, ptr %.123.i.us, i64 %n.vec202
  %i.ch = trunc nuw i64 %n.vec202 to i32
  %i.ci = sub i32 %.126.i.us, %i.ch
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index203 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ] ; 3 uses
  %next.gep204 = getelementptr i8, ptr %.1.i.us, i64 %index203
  %next.gep205 = getelementptr i8, ptr %.123.i.us, i64 %index203 ; 2 uses
  %wide.load206 = load <4 x i8>, ptr %next.gep204, align 1, !tbaa !12, !alias.scope !27
  %wide.load207 = load <4 x i8>, ptr %next.gep205, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %i.cj = xor <4 x i8> %wide.load207, %wide.load206
  store <4 x i8> %i.cj, ptr %next.gep205, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %index.next208 = add nuw i64 %index203, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n209 = icmp eq i64 %n.vec202, %i.bt
  br i1 %cmp.n209, label %xorbuf.exit.us, label %.lr.ph56.i.us.preheader

.lr.ph56.i.us.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.us.ph = phi ptr [ %.1.i.us, %iter.check ], [ %.1.i.us, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.us.ph = phi ptr [ %.123.i.us, %iter.check ], [ %.123.i.us, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.us.ph = phi i32 [ %.126.i.us, %iter.check ], [ %.126.i.us, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 4 uses
  %i.cl = add i32 %.22752.i.us.ph, -1
  %xtraiter = and i32 %.22752.i.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.us.prol.loopexit, label %.lr.ph56.i.us.prol

.lr.ph56.i.us.prol:                               ; preds = %.lr.ph56.i.us.preheader, %.lr.ph56.i.us.prol
  %.254.i.us.prol = phi ptr [ %i.cm, %.lr.ph56.i.us.prol ], [ %.254.i.us.ph, %.lr.ph56.i.us.preheader ] ; 2 uses
  %.22453.i.us.prol = phi ptr [ %i.co, %.lr.ph56.i.us.prol ], [ %.22453.i.us.ph, %.lr.ph56.i.us.preheader ] ; 3 uses
  %.22752.i.us.prol = phi i32 [ %i.cr, %.lr.ph56.i.us.prol ], [ %.22752.i.us.ph, %.lr.ph56.i.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.us.prol ], [ 0, %.lr.ph56.i.us.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.254.i.us.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.254.i.us.prol, align 1, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.22453.i.us.prol, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.22453.i.us.prol, align 1, !tbaa !12
  %i.cq = xor i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %.22453.i.us.prol, align 1, !tbaa !12
  %i.cr = add i32 %.22752.i.us.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.us.prol.loopexit, label %.lr.ph56.i.us.prol, !llvm.loop !24

.lr.ph56.i.us.prol.loopexit:                      ; preds = %.lr.ph56.i.us.prol, %.lr.ph56.i.us.preheader
  %.254.i.us.unr = phi ptr [ %.254.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.cm, %.lr.ph56.i.us.prol ]
  %.22453.i.us.unr = phi ptr [ %.22453.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.co, %.lr.ph56.i.us.prol ]
  %.22752.i.us.unr = phi i32 [ %.22752.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.cr, %.lr.ph56.i.us.prol ]
  %i.cs = icmp ult i32 %i.cl, 3
  br i1 %i.cs, label %xorbuf.exit.us, label %.lr.ph56.i.us

.lr.ph56.i.us:                                    ; preds = %.lr.ph56.i.us.prol.loopexit, %.lr.ph56.i.us
  %.254.i.us = phi ptr [ %i.di, %.lr.ph56.i.us ], [ %.254.i.us.unr, %.lr.ph56.i.us.prol.loopexit ] ; 5 uses
  %.22453.i.us = phi ptr [ %i.dk, %.lr.ph56.i.us ], [ %.22453.i.us.unr, %.lr.ph56.i.us.prol.loopexit ] ; 6 uses
  %.22752.i.us = phi i32 [ %i.dn, %.lr.ph56.i.us ], [ %.22752.i.us.unr, %.lr.ph56.i.us.prol.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 1
  %i.cu = load i8, ptr %.254.i.us, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.22453.i.us, align 1, !tbaa !12
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %.22453.i.us, align 1, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 2
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 2 ; 2 uses
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.dc = xor i8 %i.db, %i.cz
  store i8 %i.dc, ptr %i.cv, align 1, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 3
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 3 ; 2 uses
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dh = xor i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.da, align 1, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 4
  %i.dj = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 4
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !12
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %i.df, align 1, !tbaa !12
  %i.dn = add i32 %.22752.i.us, -4                ; 2 uses
  %.not.i.us.3 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.us.3, label %xorbuf.exit.us, label %.lr.ph56.i.us, !llvm.loop !25

xorbuf.exit.us:                                   ; preds = %.lr.ph56.i.us.prol.loopexit, %.lr.ph56.i.us, %middle.block, %vec.epilog.middle.block, %XorWords.exit33.i.us
  %i.do = add nuw nsw i32 %.1112.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %5
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !26

._crit_edge.us:                                   ; preds = %xorbuf.exit.us
  %i.dp = getelementptr inbounds i8, ptr %.061114.us, i64 %i.aq
  %i.dq = sub nsw i32 %.063113.us, %i.ap          ; 2 uses
  %i.dr = add i32 %.054115.us, 1
  %.not146 = icmp eq i32 %i.dq, 0
  br i1 %.not146, label %.thread98, label %.lr.ph117.split.us

.lr.ph117.split.split:                            ; preds = %.lr.ph117, %bb.j
  %.054115 = phi i32 [ %i.eo, %bb.j ], [ 1, %.lr.ph117 ] ; 5 uses
  %.061114 = phi ptr [ %i.em, %bb.j ], [ %0, %.lr.ph117 ] ; 2 uses
  %.063113 = phi i32 [ %i.en, %bb.j ], [ %6, %.lr.ph117 ] ; 3 uses
  %i.ds = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef %3, i32 noundef %4) #8 ; 2 uses
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %.preheader.preheader, label %.thread98

.preheader.preheader:                             ; preds = %.lr.ph117.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.dt = lshr i32 %.054115, 24
  %i.du = trunc nuw i32 %i.dt to i8
  store i8 %i.du, ptr %i.d, align 1, !tbaa !12
  %i.dv = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79 = icmp eq i32 %i.dv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79, label %.preheader.1, label %.thread98

.preheader.1:                                     ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.dw = lshr i32 %.054115, 16
  %i.dx = trunc i32 %i.dw to i8
  store i8 %i.dx, ptr %i.d, align 1, !tbaa !12
  %i.dy = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.1 = icmp eq i32 %i.dy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.1, label %.preheader.2, label %.thread98

.preheader.2:                                     ; preds = %.preheader.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.dz = lshr i32 %.054115, 8
  %i.ea = trunc i32 %i.dz to i8
  store i8 %i.ea, ptr %i.d, align 1, !tbaa !12
  %i.eb = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.2 = icmp eq i32 %i.eb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.2, label %.preheader.3, label %.thread98

.preheader.3:                                     ; preds = %.preheader.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ec = trunc i32 %.054115 to i8
  store i8 %i.ec, ptr %i.d, align 1, !tbaa !12
  %i.ed = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.d, i32 noundef 1) #8 ; 2 uses
  %.not79.3 = icmp eq i32 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not79.3, label %bb.i, label %.thread98

bb.i:                                             ; preds = %.preheader.3
  %i.ee = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not81 = icmp eq i32 %i.ee, 0
  br i1 %.not81, label %bb.j, label %.thread98

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ef = icmp uge i32 %.063113, %i.m
  %i.eg = sext i1 %i.ef to i32
  store volatile i32 %i.eg, ptr %i.a, align 4, !tbaa !8
end_hunk_0
