Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_rotate?download=true
inline.NumInlined: 34
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4ncnn15kanna_rotate_c1EPKhiiiPhiiii:bb.a
  %i.iq = trunc nuw nsw i64 %n.vec301 to i32
  %i.ir = sub nsw i32 %1, %i.iq
  %cmp.n309 = icmp eq i64 %n.vec301, %i.im
  br label %iter.check296

iter.check296:                                    ; preds = %.preheader.i75.preheader, %._crit_edge.i76
  %.184.i = phi i32 [ %i.ji, %._crit_edge.i76 ], [ %.047.lcssa.i73, %.preheader.i75.preheader ]
  %.283.i = phi ptr [ %i.jh, %._crit_edge.i76 ], [ %.050.lcssa.i, %.preheader.i75.preheader ] ; 6 uses
  %.25682.i = phi ptr [ %i.jg, %._crit_edge.i76 ], [ %.054.lcssa.i, %.preheader.i75.preheader ] ; 6 uses
  %.25682.i277 = ptrtoaddr ptr %.25682.i to i64
  %.283.i276 = ptrtoaddr ptr %.283.i to i64
  %i.is = sub i64 %.25682.i277, %.283.i276
  %diff.check278 = icmp ugt i64 %i.is, -32
  %or.cond493 = select i1 %min.iters.check279, i1 true, i1 %diff.check278
  br i1 %or.cond493, label %vec.epilog.scalar.ph297.preheader, label %vector.main.loop.iter.check280

vector.main.loop.iter.check280:                   ; preds = %iter.check296
  br i1 %min.iters.check281, label %vec.epilog.ph300, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %i.it = getelementptr i8, ptr %.283.i, i64 %n.vec283 ; 2 uses
  %i.iu = getelementptr i8, ptr %.25682.i, i64 %n.vec283 ; 2 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next290, %vector.body284 ] ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.283.i, i64 %index285 ; 2 uses
  %next.gep287 = getelementptr i8, ptr %.25682.i, i64 %index285 ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep287, i64 16
  %wide.load288 = load <16 x i8>, ptr %next.gep287, align 1, !tbaa !9
  %wide.load289 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !9
  %i.iw = getelementptr i8, ptr %next.gep286, i64 16
  store <16 x i8> %wide.load288, ptr %next.gep286, align 1, !tbaa !9
  store <16 x i8> %wide.load289, ptr %i.iw, align 1, !tbaa !9
  %index.next290 = add nuw i64 %index285, 32      ; 2 uses
  %i.ix = icmp eq i64 %index.next290, %n.vec283
  br i1 %i.ix, label %middle.block291, label %vector.body284, !llvm.loop !45

middle.block291:                                  ; preds = %vector.body284
  br i1 %cmp.n292, label %._crit_edge.i76, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block291
  br i1 %min.epilog.iters.check299, label %vec.epilog.scalar.ph297.preheader, label %vec.epilog.ph300, !prof !14

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check280, %vec.epilog.iter.check298
  %vec.epilog.resume.val293 = phi i64 [ %n.vec283, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check280 ]
  %i.iy = getelementptr i8, ptr %.283.i, i64 %n.vec301 ; 2 uses
  %i.iz = getelementptr i8, ptr %.25682.i, i64 %n.vec301 ; 2 uses
  br label %vec.epilog.vector.body302

vec.epilog.vector.body302:                        ; preds = %vec.epilog.vector.body302, %vec.epilog.ph300
  %index303 = phi i64 [ %vec.epilog.resume.val293, %vec.epilog.ph300 ], [ %index.next307, %vec.epilog.vector.body302 ] ; 3 uses
  %next.gep304 = getelementptr i8, ptr %.283.i, i64 %index303
  %next.gep305 = getelementptr i8, ptr %.25682.i, i64 %index303
  %wide.load306 = load <4 x i8>, ptr %next.gep305, align 1, !tbaa !9
  store <4 x i8> %wide.load306, ptr %next.gep304, align 1, !tbaa !9
  %index.next307 = add nuw i64 %index303, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next307, %n.vec301
  br i1 %i.ja, label %vec.epilog.middle.block308, label %vec.epilog.vector.body302, !llvm.loop !46

vec.epilog.middle.block308:                       ; preds = %vec.epilog.vector.body302
  br i1 %cmp.n309, label %._crit_edge.i76, label %vec.epilog.scalar.ph297.preheader

vec.epilog.scalar.ph297.preheader:                ; preds = %iter.check296, %vec.epilog.iter.check298, %vec.epilog.middle.block308
  %.080.i.ph = phi i32 [ %1, %iter.check296 ], [ %i.ip, %vec.epilog.iter.check298 ], [ %i.ir, %vec.epilog.middle.block308 ]
  %.379.i.ph = phi ptr [ %.283.i, %iter.check296 ], [ %i.it, %vec.epilog.iter.check298 ], [ %i.iy, %vec.epilog.middle.block308 ]
  %.35778.i.ph = phi ptr [ %.25682.i, %iter.check296 ], [ %i.iu, %vec.epilog.iter.check298 ], [ %i.iz, %vec.epilog.middle.block308 ]
  br label %vec.epilog.scalar.ph297

vec.epilog.scalar.ph297:                          ; preds = %vec.epilog.scalar.ph297.preheader, %vec.epilog.scalar.ph297
  %.080.i = phi i32 [ %i.je, %vec.epilog.scalar.ph297 ], [ %.080.i.ph, %vec.epilog.scalar.ph297.preheader ] ; 2 uses
  %.379.i = phi ptr [ %i.jd, %vec.epilog.scalar.ph297 ], [ %.379.i.ph, %vec.epilog.scalar.ph297.preheader ] ; 2 uses
  %.35778.i = phi ptr [ %i.jb, %vec.epilog.scalar.ph297 ], [ %.35778.i.ph, %vec.epilog.scalar.ph297.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.35778.i, i64 1 ; 2 uses
  %i.jc = load i8, ptr %.35778.i, align 1, !tbaa !9
  %i.jd = getelementptr inbounds nuw i8, ptr %.379.i, i64 1 ; 2 uses
  store i8 %i.jc, ptr %.379.i, align 1, !tbaa !9
  %i.je = add nsw i32 %.080.i, -1
  %i.jf = icmp sgt i32 %.080.i, 1
  br i1 %i.jf, label %vec.epilog.scalar.ph297, label %._crit_edge.i76, !llvm.loop !47

._crit_edge.i76:                                  ; preds = %vec.epilog.scalar.ph297, %vec.epilog.middle.block308, %middle.block291
  %.lcssa227 = phi ptr [ %i.iz, %vec.epilog.middle.block308 ], [ %i.iu, %middle.block291 ], [ %i.jb, %vec.epilog.scalar.ph297 ]
  %.lcssa226 = phi ptr [ %i.iy, %vec.epilog.middle.block308 ], [ %i.it, %middle.block291 ], [ %i.jd, %vec.epilog.scalar.ph297 ]
  %i.jg = getelementptr inbounds i8, ptr %.lcssa227, i64 %i.ij
  %i.jh = getelementptr inbounds i8, ptr %.lcssa226, i64 %i.il
  %i.ji = add nuw nsw i32 %.184.i, 1              ; 2 uses
  %exitcond.not.i77 = icmp eq i32 %i.ji, %2
  br i1 %exitcond.not.i77, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit, label %iter.check296, !llvm.loop !48

bb.f:                                             ; preds = %bb.a
  %i.jj = icmp sgt i32 %2, 0
  br i1 %i.jj, label %.lr.ph26.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph26.i:                                       ; preds = %bb.f
  %i.jk = sub nsw i32 %3, %1
  %i.jl = icmp sgt i32 %1, 0
  %i.jm = sext i32 %7 to i64                      ; 9 uses
  %i.jn = sext i32 %i.jk to i64
  br i1 %i.jl, label %.lr.ph.preheader.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph26.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.jo = add nsw i32 %1, -1
  %xtraiter544 = and i32 %1, 7                    ; 3 uses
  %i.jp = icmp ult i32 %i.jo, 7
  %unroll_iter549 = and i32 %1, 2147483640
  %lcmp.mod546.not = icmp eq i32 %xtraiter544, 0
  %lcmp.mod548 = icmp ne i32 %xtraiter544, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i81, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i81 ] ; 2 uses
  %.01923.i = phi ptr [ %0, %.lr.ph.preheader.i ], [ %i.ks, %._crit_edge.i81 ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i ; 2 uses
  br i1 %i.jp, label %.epil.preheader543, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.01721.i = phi ptr [ %i.ko, %.lr.ph.i.new ], [ %i.jq, %.lr.ph.i ] ; 2 uses
  %.120.i = phi ptr [ %i.kn, %.lr.ph.i.new ], [ %.01923.i, %.lr.ph.i ] ; 9 uses
  %niter550 = phi i32 [ %niter550.next.7, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.jr = load i8, ptr %.120.i, align 1, !tbaa !9
  store i8 %i.jr, ptr %.01721.i, align 1, !tbaa !9
  %i.js = getelementptr inbounds nuw i8, ptr %.120.i, i64 1
  %i.jt = getelementptr inbounds i8, ptr %.01721.i, i64 %i.jm ; 2 uses
  %i.ju = load i8, ptr %i.js, align 1, !tbaa !9
  store i8 %i.ju, ptr %i.jt, align 1, !tbaa !9
  %i.jv = getelementptr inbounds nuw i8, ptr %.120.i, i64 2
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 %i.jm ; 2 uses
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !9
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !9
  %i.jy = getelementptr inbounds nuw i8, ptr %.120.i, i64 3
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 %i.jm ; 2 uses
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !9
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %.120.i, i64 4
  %i.kc = getelementptr inbounds i8, ptr %i.jz, i64 %i.jm ; 2 uses
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !9
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %.120.i, i64 5
  %i.kf = getelementptr inbounds i8, ptr %i.kc, i64 %i.jm ; 2 uses
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !9
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !9
  %i.kh = getelementptr inbounds nuw i8, ptr %.120.i, i64 6
  %i.ki = getelementptr inbounds i8, ptr %i.kf, i64 %i.jm ; 2 uses
  %i.kj = load i8, ptr %i.kh, align 1, !tbaa !9
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !9
  %i.kk = getelementptr inbounds nuw i8, ptr %.120.i, i64 7
  %i.kl = getelementptr inbounds i8, ptr %i.ki, i64 %i.jm ; 2 uses
  %i.km = load i8, ptr %i.kk, align 1, !tbaa !9
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !9
  %i.kn = getelementptr inbounds nuw i8, ptr %.120.i, i64 8 ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kl, i64 %i.jm ; 2 uses
  %niter550.next.7 = add nuw nsw i32 %niter550, 8 ; 2 uses
  %niter550.ncmp.7 = icmp eq i32 %niter550.next.7, %unroll_iter549
  br i1 %niter550.ncmp.7, label %._crit_edge.i81.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !49

._crit_edge.i81.unr-lcssa:                        ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod546.not, label %._crit_edge.i81, label %.epil.preheader543

.epil.preheader543:                               ; preds = %._crit_edge.i81.unr-lcssa, %.lr.ph.i
  %.01721.i.epil.init = phi ptr [ %i.jq, %.lr.ph.i ], [ %i.ko, %._crit_edge.i81.unr-lcssa ]
  %.120.i.epil.init = phi ptr [ %.01923.i, %.lr.ph.i ], [ %i.kn, %._crit_edge.i81.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod548)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader543
  %.01721.i.epil = phi ptr [ %.01721.i.epil.init, %.epil.preheader543 ], [ %i.kr, %bb.g ] ; 2 uses
  %.120.i.epil = phi ptr [ %.120.i.epil.init, %.epil.preheader543 ], [ %i.kq, %bb.g ] ; 2 uses
  %epil.iter545 = phi i32 [ 0, %.epil.preheader543 ], [ %epil.iter545.next, %bb.g ]
  %i.kp = load i8, ptr %.120.i.epil, align 1, !tbaa !9
  store i8 %i.kp, ptr %.01721.i.epil, align 1, !tbaa !9
  %i.kq = getelementptr inbounds nuw i8, ptr %.120.i.epil, i64 1 ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %.01721.i.epil, i64 %i.jm
  %epil.iter545.next = add i32 %epil.iter545, 1   ; 2 uses
  %epil.iter545.cmp.not = icmp eq i32 %epil.iter545.next, %xtraiter544
  br i1 %epil.iter545.cmp.not, label %._crit_edge.i81, label %bb.g, !llvm.loop !50

._crit_edge.i81:                                  ; preds = %bb.g, %._crit_edge.i81.unr-lcssa
  %.lcssa518 = phi ptr [ %i.kn, %._crit_edge.i81.unr-lcssa ], [ %i.kq, %bb.g ]
  %i.ks = getelementptr inbounds i8, ptr %.lcssa518, i64 %i.jn
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit, label %.lr.ph.i, !llvm.loop !52

bb.h:                                             ; preds = %bb.a
  %i.kt = sext i32 %5 to i64
  %i.ku = getelementptr inbounds i8, ptr %4, i64 %i.kt
  %i.kv = icmp sgt i32 %2, 0
  br i1 %i.kv, label %.lr.ph28.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph28.i:                                       ; preds = %bb.h
  %i.kw = sub nsw i32 %3, %1
  %i.kx = icmp sgt i32 %1, 0
  %i.ky = sext i32 %7 to i64                      ; 9 uses
  %i.kz = sext i32 %i.kw to i64
  br i1 %i.kx, label %.lr.ph.preheader.i82, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph.preheader.i82:                             ; preds = %.lr.ph28.i
  %wide.trip.count.i83 = zext nneg i32 %2 to i64
  %i.la = add nsw i32 %1, -1
  %xtraiter536 = and i32 %1, 7                    ; 3 uses
  %i.lb = icmp ult i32 %i.la, 7
  %unroll_iter541 = and i32 %1, 2147483640
  %lcmp.mod538.not = icmp eq i32 %xtraiter536, 0
  %lcmp.mod540 = icmp ne i32 %xtraiter536, 0
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %._crit_edge.i88, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 0, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i89, %._crit_edge.i88 ] ; 2 uses
  %.02125.i = phi ptr [ %0, %.lr.ph.preheader.i82 ], [ %i.md, %._crit_edge.i88 ] ; 2 uses
  %9 = sub nsw i64 0, %indvars.iv.i85
  %10 = getelementptr inbounds i8, ptr %i.ku, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 -1 ; 2 uses
  br i1 %i.lb, label %.epil.preheader535, label %.lr.ph.i84.new

.lr.ph.i84.new:                                   ; preds = %.lr.ph.i84, %.lr.ph.i84.new
  %.01923.i86 = phi ptr [ %i.lz, %.lr.ph.i84.new ], [ %11, %.lr.ph.i84 ] ; 2 uses
  %.122.i = phi ptr [ %i.ly, %.lr.ph.i84.new ], [ %.02125.i, %.lr.ph.i84 ] ; 9 uses
  %niter542 = phi i32 [ %niter542.next.7, %.lr.ph.i84.new ], [ 0, %.lr.ph.i84 ]
  %i.lc = load i8, ptr %.122.i, align 1, !tbaa !9
  store i8 %i.lc, ptr %.01923.i86, align 1, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  %i.le = getelementptr inbounds i8, ptr %.01923.i86, i64 %i.ky ; 2 uses
  %i.lf = load i8, ptr %i.ld, align 1, !tbaa !9
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %.122.i, i64 2
  %i.lh = getelementptr inbounds i8, ptr %i.le, i64 %i.ky ; 2 uses
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !9
  store i8 %i.li, ptr %i.lh, align 1, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %.122.i, i64 3
  %i.lk = getelementptr inbounds i8, ptr %i.lh, i64 %i.ky ; 2 uses
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !9
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %.122.i, i64 4
  %i.ln = getelementptr inbounds i8, ptr %i.lk, i64 %i.ky ; 2 uses
  %i.lo = load i8, ptr %i.lm, align 1, !tbaa !9
  store i8 %i.lo, ptr %i.ln, align 1, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %.122.i, i64 5
  %i.lq = getelementptr inbounds i8, ptr %i.ln, i64 %i.ky ; 2 uses
  %i.lr = load i8, ptr %i.lp, align 1, !tbaa !9
  store i8 %i.lr, ptr %i.lq, align 1, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %.122.i, i64 6
  %i.lt = getelementptr inbounds i8, ptr %i.lq, i64 %i.ky ; 2 uses
  %i.lu = load i8, ptr %i.ls, align 1, !tbaa !9
  store i8 %i.lu, ptr %i.lt, align 1, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %.122.i, i64 7
  %i.lw = getelementptr inbounds i8, ptr %i.lt, i64 %i.ky ; 2 uses
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !9
  store i8 %i.lx, ptr %i.lw, align 1, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %.122.i, i64 8 ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %i.lw, i64 %i.ky ; 2 uses
  %niter542.next.7 = add nuw nsw i32 %niter542, 8 ; 2 uses
  %niter542.ncmp.7 = icmp eq i32 %niter542.next.7, %unroll_iter541
  br i1 %niter542.ncmp.7, label %._crit_edge.i88.unr-lcssa, label %.lr.ph.i84.new, !llvm.loop !53

._crit_edge.i88.unr-lcssa:                        ; preds = %.lr.ph.i84.new
  br i1 %lcmp.mod538.not, label %._crit_edge.i88, label %.epil.preheader535

.epil.preheader535:                               ; preds = %._crit_edge.i88.unr-lcssa, %.lr.ph.i84
  %.01923.i86.epil.init = phi ptr [ %11, %.lr.ph.i84 ], [ %i.lz, %._crit_edge.i88.unr-lcssa ]
  %.122.i.epil.init = phi ptr [ %.02125.i, %.lr.ph.i84 ], [ %i.ly, %._crit_edge.i88.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod540)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader535
  %.01923.i86.epil = phi ptr [ %.01923.i86.epil.init, %.epil.preheader535 ], [ %i.mc, %bb.i ] ; 2 uses
  %.122.i.epil = phi ptr [ %.122.i.epil.init, %.epil.preheader535 ], [ %i.mb, %bb.i ] ; 2 uses
  %epil.iter537 = phi i32 [ 0, %.epil.preheader535 ], [ %epil.iter537.next, %bb.i ]
  %i.ma = load i8, ptr %.122.i.epil, align 1, !tbaa !9
  store i8 %i.ma, ptr %.01923.i86.epil, align 1, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %.122.i.epil, i64 1 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %.01923.i86.epil, i64 %i.ky
  %epil.iter537.next = add i32 %epil.iter537, 1   ; 2 uses
  %epil.iter537.cmp.not = icmp eq i32 %epil.iter537.next, %xtraiter536
  br i1 %epil.iter537.cmp.not, label %._crit_edge.i88, label %bb.i, !llvm.loop !54

._crit_edge.i88:                                  ; preds = %bb.i, %._crit_edge.i88.unr-lcssa
  %.lcssa520 = phi ptr [ %i.ly, %._crit_edge.i88.unr-lcssa ], [ %i.mb, %bb.i ]
  %i.md = getelementptr inbounds i8, ptr %.lcssa520, i64 %i.kz
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i83
  br i1 %exitcond31.not.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit, label %.lr.ph.i84, !llvm.loop !55

bb.j:                                             ; preds = %bb.a
  %i.me = add nsw i32 %6, -1
  %i.mf = mul nsw i32 %7, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %4, i64 %i.mg
  %i.mi = sext i32 %5 to i64
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 %i.mi
  %i.mk = icmp sgt i32 %2, 0
  br i1 %i.mk, label %.lr.ph30.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph30.i:                                       ; preds = %bb.j
  %i.ml = sub nsw i32 %3, %1
  %i.mm = icmp sgt i32 %1, 0
  %i.mn = sext i32 %7 to i64
  %i.mo = sub nsw i64 0, %i.mn                    ; 9 uses
  %i.mp = sext i32 %i.ml to i64
  br i1 %i.mm, label %.lr.ph.preheader.i90, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph.preheader.i90:                             ; preds = %.lr.ph30.i
  %wide.trip.count.i91 = zext nneg i32 %2 to i64
  %i.mq = add nsw i32 %1, -1
  %xtraiter528 = and i32 %1, 7                    ; 3 uses
  %i.mr = icmp ult i32 %i.mq, 7
  %unroll_iter533 = and i32 %1, 2147483640
  %lcmp.mod530.not = icmp eq i32 %xtraiter528, 0
  %lcmp.mod532 = icmp ne i32 %xtraiter528, 0
  br label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %._crit_edge.i97, %.lr.ph.preheader.i90
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.preheader.i90 ], [ %indvars.iv.next.i98, %._crit_edge.i97 ] ; 2 uses
  %.02327.i = phi ptr [ %0, %.lr.ph.preheader.i90 ], [ %i.nt, %._crit_edge.i97 ] ; 2 uses
  %12 = sub nsw i64 0, %indvars.iv.i93
  %13 = getelementptr inbounds i8, ptr %i.mj, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 -1 ; 2 uses
  br i1 %i.mr, label %.epil.preheader527, label %.lr.ph.i92.new

.lr.ph.i92.new:                                   ; preds = %.lr.ph.i92, %.lr.ph.i92.new
  %.02125.i95 = phi ptr [ %i.np, %.lr.ph.i92.new ], [ %14, %.lr.ph.i92 ] ; 2 uses
  %.124.i = phi ptr [ %i.no, %.lr.ph.i92.new ], [ %.02327.i, %.lr.ph.i92 ] ; 9 uses
  %niter534 = phi i32 [ %niter534.next.7, %.lr.ph.i92.new ], [ 0, %.lr.ph.i92 ]
  %i.ms = load i8, ptr %.124.i, align 1, !tbaa !9
  store i8 %i.ms, ptr %.02125.i95, align 1, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %.124.i, i64 1
  %i.mu = getelementptr inbounds i8, ptr %.02125.i95, i64 %i.mo ; 2 uses
  %i.mv = load i8, ptr %i.mt, align 1, !tbaa !9
  store i8 %i.mv, ptr %i.mu, align 1, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %.124.i, i64 2
  %i.mx = getelementptr inbounds i8, ptr %i.mu, i64 %i.mo ; 2 uses
  %i.my = load i8, ptr %i.mw, align 1, !tbaa !9
  store i8 %i.my, ptr %i.mx, align 1, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %.124.i, i64 3
  %i.na = getelementptr inbounds i8, ptr %i.mx, i64 %i.mo ; 2 uses
  %i.nb = load i8, ptr %i.mz, align 1, !tbaa !9
  store i8 %i.nb, ptr %i.na, align 1, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %.124.i, i64 4
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 %i.mo ; 2 uses
  %i.ne = load i8, ptr %i.nc, align 1, !tbaa !9
  store i8 %i.ne, ptr %i.nd, align 1, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %.124.i, i64 5
  %i.ng = getelementptr inbounds i8, ptr %i.nd, i64 %i.mo ; 2 uses
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !9
  store i8 %i.nh, ptr %i.ng, align 1, !tbaa !9
  %i.ni = getelementptr inbounds nuw i8, ptr %.124.i, i64 6
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.mo ; 2 uses
  %i.nk = load i8, ptr %i.ni, align 1, !tbaa !9
  store i8 %i.nk, ptr %i.nj, align 1, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %.124.i, i64 7
  %i.nm = getelementptr inbounds i8, ptr %i.nj, i64 %i.mo ; 2 uses
  %i.nn = load i8, ptr %i.nl, align 1, !tbaa !9
  store i8 %i.nn, ptr %i.nm, align 1, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %.124.i, i64 8 ; 3 uses
  %i.np = getelementptr inbounds i8, ptr %i.nm, i64 %i.mo ; 2 uses
  %niter534.next.7 = add nuw nsw i32 %niter534, 8 ; 2 uses
  %niter534.ncmp.7 = icmp eq i32 %niter534.next.7, %unroll_iter533
  br i1 %niter534.ncmp.7, label %._crit_edge.i97.unr-lcssa, label %.lr.ph.i92.new, !llvm.loop !56

._crit_edge.i97.unr-lcssa:                        ; preds = %.lr.ph.i92.new
  br i1 %lcmp.mod530.not, label %._crit_edge.i97, label %.epil.preheader527

.epil.preheader527:                               ; preds = %._crit_edge.i97.unr-lcssa, %.lr.ph.i92
  %.02125.i95.epil.init = phi ptr [ %14, %.lr.ph.i92 ], [ %i.np, %._crit_edge.i97.unr-lcssa ]
  %.124.i.epil.init = phi ptr [ %.02327.i, %.lr.ph.i92 ], [ %i.no, %._crit_edge.i97.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod532)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader527
  %.02125.i95.epil = phi ptr [ %.02125.i95.epil.init, %.epil.preheader527 ], [ %i.ns, %bb.k ] ; 2 uses
  %.124.i.epil = phi ptr [ %.124.i.epil.init, %.epil.preheader527 ], [ %i.nr, %bb.k ] ; 2 uses
  %epil.iter529 = phi i32 [ 0, %.epil.preheader527 ], [ %epil.iter529.next, %bb.k ]
  %i.nq = load i8, ptr %.124.i.epil, align 1, !tbaa !9
  store i8 %i.nq, ptr %.02125.i95.epil, align 1, !tbaa !9
  %i.nr = getelementptr inbounds nuw i8, ptr %.124.i.epil, i64 1 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %.02125.i95.epil, i64 %i.mo
  %epil.iter529.next = add i32 %epil.iter529, 1   ; 2 uses
  %epil.iter529.cmp.not = icmp eq i32 %epil.iter529.next, %xtraiter528
  br i1 %epil.iter529.cmp.not, label %._crit_edge.i97, label %bb.k, !llvm.loop !57

._crit_edge.i97:                                  ; preds = %bb.k, %._crit_edge.i97.unr-lcssa
  %.lcssa522 = phi ptr [ %i.no, %._crit_edge.i97.unr-lcssa ], [ %i.nr, %bb.k ]
  %i.nt = getelementptr inbounds i8, ptr %.lcssa522, i64 %i.mp
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next.i98, %wide.trip.count.i91
  br i1 %exitcond33.not.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit, label %.lr.ph.i92, !llvm.loop !58

bb.l:                                             ; preds = %bb.a
  %i.nu = add nsw i32 %6, -1
  %i.nv = mul nsw i32 %7, %i.nu
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds i8, ptr %4, i64 %i.nw
  %i.ny = icmp sgt i32 %2, 0
  br i1 %i.ny, label %.lr.ph29.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph29.i:                                       ; preds = %bb.l
  %i.nz = sub nsw i32 %3, %1
  %i.oa = icmp sgt i32 %1, 0
  %i.ob = sext i32 %7 to i64
  %i.oc = sub nsw i64 0, %i.ob                    ; 9 uses
  %i.od = sext i32 %i.nz to i64
  br i1 %i.oa, label %.lr.ph.preheader.i99, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit

.lr.ph.preheader.i99:                             ; preds = %.lr.ph29.i
  %wide.trip.count.i100 = zext nneg i32 %2 to i64
  %i.oe = add nsw i32 %1, -1
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.of = icmp ult i32 %i.oe, 7
  %unroll_iter = and i32 %1, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod526 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %._crit_edge.i104, %.lr.ph.preheader.i99
  %indvars.iv.i102 = phi i64 [ 0, %.lr.ph.preheader.i99 ], [ %indvars.iv.next.i105, %._crit_edge.i104 ] ; 2 uses
  %.02226.i = phi ptr [ %0, %.lr.ph.preheader.i99 ], [ %i.pi, %._crit_edge.i104 ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 %indvars.iv.i102 ; 2 uses
  br i1 %i.of, label %.epil.preheader, label %.lr.ph.i101.new

.lr.ph.i101.new:                                  ; preds = %.lr.ph.i101, %.lr.ph.i101.new
  %.02024.i = phi ptr [ %i.pe, %.lr.ph.i101.new ], [ %i.og, %.lr.ph.i101 ] ; 2 uses
  %.123.i = phi ptr [ %i.pd, %.lr.ph.i101.new ], [ %.02226.i, %.lr.ph.i101 ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph.i101.new ], [ 0, %.lr.ph.i101 ]
  %i.oh = load i8, ptr %.123.i, align 1, !tbaa !9
  store i8 %i.oh, ptr %.02024.i, align 1, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %.123.i, i64 1
  %i.oj = getelementptr inbounds i8, ptr %.02024.i, i64 %i.oc ; 2 uses
  %i.ok = load i8, ptr %i.oi, align 1, !tbaa !9
  store i8 %i.ok, ptr %i.oj, align 1, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %.123.i, i64 2
  %i.om = getelementptr inbounds i8, ptr %i.oj, i64 %i.oc ; 2 uses
  %i.on = load i8, ptr %i.ol, align 1, !tbaa !9
  store i8 %i.on, ptr %i.om, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.123.i, i64 3
  %i.op = getelementptr inbounds i8, ptr %i.om, i64 %i.oc ; 2 uses
  %i.oq = load i8, ptr %i.oo, align 1, !tbaa !9
  store i8 %i.oq, ptr %i.op, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.123.i, i64 4
  %i.os = getelementptr inbounds i8, ptr %i.op, i64 %i.oc ; 2 uses
  %i.ot = load i8, ptr %i.or, align 1, !tbaa !9
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.123.i, i64 5
  %i.ov = getelementptr inbounds i8, ptr %i.os, i64 %i.oc ; 2 uses
  %i.ow = load i8, ptr %i.ou, align 1, !tbaa !9
  store i8 %i.ow, ptr %i.ov, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.123.i, i64 6
  %i.oy = getelementptr inbounds i8, ptr %i.ov, i64 %i.oc ; 2 uses
  %i.oz = load i8, ptr %i.ox, align 1, !tbaa !9
  store i8 %i.oz, ptr %i.oy, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.123.i, i64 7
  %i.pb = getelementptr inbounds i8, ptr %i.oy, i64 %i.oc ; 2 uses
  %i.pc = load i8, ptr %i.pa, align 1, !tbaa !9
  store i8 %i.pc, ptr %i.pb, align 1, !tbaa !9
  %i.pd = getelementptr inbounds nuw i8, ptr %.123.i, i64 8 ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.pb, i64 %i.oc ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i104.unr-lcssa, label %.lr.ph.i101.new, !llvm.loop !59

._crit_edge.i104.unr-lcssa:                       ; preds = %.lr.ph.i101.new
  br i1 %lcmp.mod.not, label %._crit_edge.i104, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i104.unr-lcssa, %.lr.ph.i101
  %.02024.i.epil.init = phi ptr [ %i.og, %.lr.ph.i101 ], [ %i.pe, %._crit_edge.i104.unr-lcssa ]
  %.123.i.epil.init = phi ptr [ %.02226.i, %.lr.ph.i101 ], [ %i.pd, %._crit_edge.i104.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.02024.i.epil = phi ptr [ %.02024.i.epil.init, %.epil.preheader ], [ %i.ph, %bb.m ] ; 2 uses
  %.123.i.epil = phi ptr [ %.123.i.epil.init, %.epil.preheader ], [ %i.pg, %bb.m ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.pf = load i8, ptr %.123.i.epil, align 1, !tbaa !9
  store i8 %i.pf, ptr %.02024.i.epil, align 1, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %.123.i.epil, i64 1 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.02024.i.epil, i64 %i.oc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i104, label %bb.m, !llvm.loop !60

._crit_edge.i104:                                 ; preds = %bb.m, %._crit_edge.i104.unr-lcssa
  %.lcssa524 = phi ptr [ %i.pd, %._crit_edge.i104.unr-lcssa ], [ %i.pg, %bb.m ]
  %i.pi = getelementptr inbounds i8, ptr %.lcssa524, i64 %i.od
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next.i105, %wide.trip.count.i100
  br i1 %exitcond32.not.i, label %_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit, label %.lr.ph.i101, !llvm.loop !61

_ZN4ncnnL17kanna_rotate_1_c1EPKhiiiPhiii.exit:    ; preds = %._crit_edge.i104, %._crit_edge.i97, %._crit_edge.i88, %._crit_edge.i81, %._crit_edge.i76, %._crit_edge.i71, %._crit_edge.i66, %._crit_edge.i, %.lr.ph29.i, %bb.l, %.lr.ph30.i, %bb.j, %.lr.ph28.i, %bb.h, %.lr.ph26.i, %bb.f, %.preheader.lr.ph.i74, %.preheader58.i, %.preheader.lr.ph.i68, %bb.d, %.preheader.lr.ph.i64, %bb.c, %.preheader.lr.ph.i, %.preheader55.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn15kanna_rotate_c2EPKhiiPhiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  %i.b = shl nsw i32 %4, 1
  tail call void @_ZN4ncnn15kanna_rotate_c2EPKhiiiPhiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.b, i32 noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn15kanna_rotate_c2EPKhiiiPhiiii(ptr nofree noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  switch i32 %8, label %_ZN4ncnnL17kanna_rotate_1_c2EPKhiiiPhiii.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.h
    i32 7, label %bb.j
    i32 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %1, 1                            ; 12 uses
  %i.b = sub i32 %3, %i.a                         ; 2 uses
  %i.c = shl i32 %5, 1
  %i.d = sub i32 %7, %i.c                         ; 2 uses
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.preheader57.lr.ph.i, label %.preheader56.i

.preheader57.lr.ph.i:                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 0
  %i.g = add i32 %i.b, %3
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = add i32 %i.d, %7
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  br i1 %i.f, label %.preheader57.us.preheader.i, label %.preheader57.preheader.i

.preheader57.preheader.i:                         ; preds = %.preheader57.lr.ph.i
  %i.k = add nsw i32 %2, -2                       ; 2 uses
  %i.l = lshr i32 %i.k, 1
  %narrow.i = add nuw nsw i32 %i.l, 1
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = mul nsw i64 %i.m, %i.h
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul nsw i64 %i.j, %i.m
  %scevgep96.i = getelementptr i8, ptr %4, i64 %i.o
  %i.p = and i32 %i.k, -2
  %i.q = add nuw nsw i32 %i.p, 2
  br label %.preheader56.i

.preheader57.us.preheader.i:                      ; preds = %.preheader57.lr.ph.i
  %i.r = sext i32 %3 to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = sext i32 %7 to i64
  %i.u = getelementptr inbounds i8, ptr %4, i64 %i.t
  %smin326 = tail call i32 @llvm.smin.i32(i32 %i.a, i32 1)
  %i.v = sub i32 %i.a, %smin326                   ; 3 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check327 = icmp ult i32 %i.v, 3
  %min.iters.check329 = icmp ult i32 %i.v, 31
  %i.y = and i64 %i.x, 28
  %n.vec331 = and i64 %i.x, 8589934560            ; 8 uses
  %i.z = trunc i64 %n.vec331 to i32
  %i.aa = sub i32 %i.a, %i.z
  %cmp.n344 = icmp eq i64 %i.x, %n.vec331
  %min.epilog.iters.check353 = icmp eq i64 %i.y, 0
  %n.vec355 = and i64 %i.x, 8589934588            ; 7 uses
  %i.ab = trunc i64 %n.vec355 to i32
  %i.ac = sub i32 %i.a, %i.ab
  %cmp.n366 = icmp eq i64 %i.x, %n.vec355
end_hunk_0
