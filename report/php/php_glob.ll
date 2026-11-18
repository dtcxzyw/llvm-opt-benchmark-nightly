Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_glob?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@glob0:bb.a
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !27 ; 2 uses
  %.not98 = icmp eq i16 %i.fy, 93
  br i1 %.not98, label %thread-pre-split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i16 -32723, ptr %i.fu, align 2, !tbaa !27
  %i.ga = and i16 %i.fy, 255
  %i.gb = getelementptr inbounds nuw i8, ptr %.4, i64 6
  store i16 %i.ga, ptr %i.fz, align 2, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %.5137, i64 4 ; 2 uses
  %.pr165.pre = load i16, ptr %i.gc, align 2, !tbaa !27
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bd, %.critedge.thread163
  %i.gd = phi i16 [ %i.fv, %.critedge.thread163 ], [ %.pr165.pre, %bb.bd ], [ 45, %bb.bc ] ; 2 uses
  %.6138 = phi ptr [ %.5137, %.critedge.thread163 ], [ %i.gc, %bb.bd ], [ %.5137, %bb.bc ]
  %.5 = phi ptr [ %i.fu, %.critedge.thread163 ], [ %i.gb, %bb.bd ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.6138, i64 2 ; 2 uses
  %.not99 = icmp eq i16 %i.gd, 93
  br i1 %.not99, label %.loopexit172, label %bb.z, !llvm.loop !57

.loopexit172:                                     ; preds = %thread-pre-split, %.fold.split
  %.7139 = phi ptr [ %i.fn, %.fold.split ], [ %i.ge, %thread-pre-split ]
  %.6 = phi ptr [ %i.fk, %.fold.split ], [ %.5, %thread-pre-split ] ; 2 uses
  %i.gf = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gg = or i32 %i.gf, 256
  store i32 %i.gg, ptr %i.ay, align 8, !tbaa !22
  store i16 -32675, ptr %.6, align 2, !tbaa !27
  br label %.outer.backedge

bb.be:                                            ; preds = %bb.q
  %i.gh = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gi = or i32 %i.gh, 256
  store i32 %i.gi, ptr %i.ay, align 8, !tbaa !22
  store i16 -32705, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bf:                                            ; preds = %bb.q
  %i.gj = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gk = or i32 %i.gj, 256
  store i32 %i.gk, ptr %i.ay, align 8, !tbaa !22
  br i1 %i.az, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = load i16, ptr %i.ba, align 2, !tbaa !27
  %.not95 = icmp eq i16 %i.gl, -32726
  br i1 %.not95, label %bb.q, label %bb.bh, !llvm.loop !58

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i16 -32726, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bi:                                            ; preds = %bb.q
  %i.gm = and i16 %i.bc, 255
  store i16 %i.gm, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bi, %g_strchr.exit.thread, %.loopexit172, %bb.be, %bb.bh
  %.0132.ph.be = phi ptr [ %i.bb, %bb.bh ], [ %i.bb, %bb.be ], [ %.7139, %.loopexit172 ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %g_strchr.exit.thread ], [ %i.bb, %bb.bi ]
  %.0128.ph.pn = phi ptr [ %.0128.ph, %bb.bh ], [ %.0128.ph, %bb.be ], [ %.6, %.loopexit172 ], [ %.0128.ph, %g_strchr.exit.thread ], [ %.0128.ph, %bb.bi ]
  %.0128.ph.be = getelementptr inbounds nuw i8, ptr %.0128.ph.pn, i64 2
  br label %.outer, !llvm.loop !58

bb.bj:                                            ; preds = %bb.q
  store i16 0, ptr %.0128.ph, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.gn = load i16, ptr %i.d, align 16, !tbaa !27
  %i.go = icmp eq i16 %i.gn, 0
  br i1 %i.go, label %.thread, label %glob1.exit

.thread:                                          ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bl

glob1.exit:                                       ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8190
  %i.gq = call fastcc i32 @glob2(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %i.gp, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not88 = icmp eq i32 %i.gq, 0
  br i1 %.not88, label %bb.bk, label %.critedge101

bb.bk:                                            ; preds = %glob1.exit
  %.pre = load i64, ptr %1, align 8, !tbaa !20    ; 8 uses
  %i.gr = icmp eq i64 %.pre, %i.ax
  br i1 %i.gr, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread, %bb.bk
  %i.gs = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.gt = and i32 %i.gs, 16
  %.not92 = icmp ne i32 %i.gt, 0
  %i.gu = and i32 %i.gs, 768
  %or.cond = icmp eq i32 %i.gu, 512
  %or.cond168 = or i1 %.not92, %or.cond
  br i1 %or.cond168, label %bb.bm, label %.critedge101

bb.bm:                                            ; preds = %bb.bl
  %i.gv = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.critedge101

bb.bn:                                            ; preds = %bb.bk
  %i.gw = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.gx = and i32 %i.gw, 32
  %.not89 = icmp eq i32 %i.gx, 0
  br i1 %.not89, label %bb.bo, label %.critedge101

bb.bo:                                            ; preds = %bb.bn
  %i.gy = and i32 %i.gw, 16384
  %.not90 = icmp eq i32 %i.gy, 0
  br i1 %.not90, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gz = sub i64 %.pre, %i.ax                    ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !21 ; 2 uses
  %i.hc = add i64 %i.hb, %i.ax                    ; 8 uses
  %i.hd = call noalias ptr @calloc(i64 noundef %i.gz, i64 noundef 16) #21 ; 15 uses
  %.not91 = icmp eq ptr %i.hd, null
  br i1 %.not91, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !32 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !33 ; 3 uses
  %.neg = add i64 %i.ax, 1
  %xtraiter = and i64 %i.gz, 1
  %i.hi = icmp eq i64 %.pre, %.neg
  br i1 %i.hi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gz, -2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.new
  %.0189 = phi i64 [ 0, %.lr.ph.new ], [ %i.hy, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bq ]
  %i.hj = add i64 %.0189, %i.hc                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189 ; 2 uses
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !71
  %i.hq = or disjoint i64 %.0189, 1               ; 2 uses
  %i.hr = add i64 %i.hq, %i.hc                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !34
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hq ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !37
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hr
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !38
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !71
  %i.hy = add nuw i64 %.0189, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph192.unr-lcssa, label %bb.bq, !llvm.loop !59

.lr.ph192.unr-lcssa:                              ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph192.unr-lcssa, %.lr.ph
  %.0189.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.hy, %.lr.ph192.unr-lcssa ] ; 2 uses
  %lcmp.mod420 = trunc i64 %i.gz to i1
  call void @llvm.assume(i1 %lcmp.mod420)
  %i.hz = add i64 %.0189.epil.init, %i.hc         ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !34
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189.epil.init ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hz
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !38
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !71
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.unr-lcssa, %.epil.preheader
  call void @qsort(ptr noundef nonnull %i.hd, i64 noundef %i.gz, i64 noundef 16, ptr noundef nonnull @compare_gps) #19
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !32 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !33 ; 6 uses
  %min.iters.check = icmp ult i64 %i.gz, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph192
  %i.ik = shl i64 %i.hc, 3                        ; 2 uses
  %i.il = getelementptr nuw i8, ptr %i.ih, i64 %i.ik
  %i.im = add i64 %i.hb, %.pre
  %i.in = shl i64 %i.im, 3                        ; 2 uses
  %i.io = getelementptr i8, ptr %i.ih, i64 %i.in
  %i.ip = shl i64 %.pre, 4                        ; 2 uses
  %i.iq = shl i64 %i.ax, 4                        ; 2 uses
  %i.ir = add i64 %i.ip, -8
  %i.is = sub i64 %i.ir, %i.iq
  %i.it = getelementptr i8, ptr %i.hd, i64 %i.is
  %4 = getelementptr nuw i8, ptr %i.ij, i64 %i.ik
  %5 = getelementptr i8, ptr %i.ij, i64 %i.in
  %6 = getelementptr i8, ptr %i.hd, i64 8
  %7 = sub i64 %i.ip, %i.iq
  %i.iu = getelementptr i8, ptr %i.hd, i64 %7
  %bound0 = icmp ult ptr %i.il, %i.it
  %bound1 = icmp ult ptr %i.hd, %i.io
  %found.conflict = and i1 %bound0, %bound1
  %bound0350 = icmp ult ptr %4, %i.iu
  %bound1351 = icmp ult ptr %6, %5
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx = or i1 %found.conflict, %found.conflict352
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %index
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %index
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %wide.vec = load <4 x ptr>, ptr %i.iv, align 8, !tbaa !72 ; 2 uses
  %strided.vec = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec353 = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec354 = load <4 x ptr>, ptr %i.ix, align 8, !tbaa !72 ; 2 uses
  %strided.vec355 = shufflevector <4 x ptr> %wide.vec354, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec356 = shufflevector <4 x ptr> %wide.vec354, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %i.iy = add i64 %index, %i.hc                   ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <2 x ptr> %strided.vec, ptr %i.iz, align 8, !tbaa !34, !alias.scope !73, !noalias !74
  store <2 x ptr> %strided.vec355, ptr %i.ja, align 8, !tbaa !34, !alias.scope !73, !noalias !74
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.iy ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <2 x ptr> %strided.vec353, ptr %i.jb, align 8, !tbaa !38, !alias.scope !75, !noalias !76
  store <2 x ptr> %strided.vec356, ptr %i.jc, align 8, !tbaa !38, !alias.scope !75, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gz, %n.vec
  br i1 %cmp.n, label %._crit_edge193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph192, %middle.block
  %.1190.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph192 ], [ %n.vec, %middle.block ] ; 5 uses
  %i.je = sub i64 %.pre, %i.ax
  %i.jf = xor i64 %.1190.ph, -1
  %i.jg = add i64 %.pre, %i.jf
  %xtraiter421 = and i64 %i.je, 1
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.1190.ph ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !37
  %i.jj = add i64 %.1190.ph, %i.hc                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jj
  store ptr %i.ji, ptr %i.jk, align 8, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !71
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jj
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !38
  %i.jo = or disjoint i64 %.1190.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %scalar.ph.preheader ], [ %i.jo, %scalar.ph.prol ]
  %i.jp = icmp eq i64 %i.jg, %i.ax
  br i1 %i.jp, label %._crit_edge193, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1190 = phi i64 [ %i.kf, %scalar.ph ], [ %.1190.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.1190 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !37
  %i.js = add i64 %.1190, %i.hc                   ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.js
  store ptr %i.jr, ptr %i.jt, align 8, !tbaa !34
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !71
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.js
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !38
  %i.jx = add nuw i64 %.1190, 1                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.jx ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !37
  %i.ka = add i64 %i.jx, %i.hc                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ka
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !34
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !71
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ka
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !38
  %i.kf = add nuw i64 %.1190, 2                   ; 2 uses
  %exitcond212.not.1 = icmp eq i64 %i.kf, %i.gz
  br i1 %exitcond212.not.1, label %._crit_edge193, label %scalar.ph, !llvm.loop !66

._crit_edge193:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @free(ptr noundef nonnull %i.hd) #19
  br label %.critedge101

bb.br:                                            ; preds = %bb.bo
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !32
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !21
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.ax
  %i.km = sub i64 %.pre, %i.ax
  call void @qsort(ptr noundef %i.kl, i64 noundef %i.km, i64 noundef 8, ptr noundef nonnull @compare) #19
  br label %.critedge101

.critedge101:                                     ; preds = %.loopexit, %bb.bl, %bb.bn, %bb.br, %._crit_edge193, %bb.bp, %glob1.exit, %bb.bm
  %.176 = phi i32 [ -1, %bb.bp ], [ 0, %bb.bn ], [ %i.gv, %bb.bm ], [ %i.gq, %glob1.exit ], [ -3, %bb.bl ], [ 0, %._crit_edge193 ], [ 0, %bb.br ], [ -3, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i32 %.176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @php_globfree(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not1820 = icmp eq i64 %i.c, 0
  br i1 %.not1820, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi ptr [ %i.i, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.01621 = phi i64 [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.g = add i64 %.01621, -1                      ; 2 uses
  %i.h = load ptr, ptr %.022, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.h) #19
  %i.i = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %.not18 = icmp eq i64 %i.g, 0
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.j) #19
  store ptr null, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.m = load i64, ptr %0, align 8, !tbaa !20
  %.not26 = icmp eq i64 %i.m, 0
  br i1 %.not26, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %.123 = phi i64 [ %i.q, %.lr.ph24 ], [ 0, %.preheader ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.123
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.p) #19
  %i.q = add nuw i64 %.123, 1                     ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !20
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph24, label %._crit_edge25.loopexit, !llvm.loop !78

._crit_edge25.loopexit:                           ; preds = %.lr.ph24
  %.pre27 = load ptr, ptr %i.k, align 8, !tbaa !33
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit, %.preheader
  %i.t = phi ptr [ %.pre27, %._crit_edge25.loopexit ], [ %i.l, %.preheader ]
  tail call void @free(ptr noundef %i.t) #19
  store ptr null, ptr %i.k, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge25, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @globextend(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = add i64 %i.c, %i.a                       ; 3 uses
end_hunk_0
