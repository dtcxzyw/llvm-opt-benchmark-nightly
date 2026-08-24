Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_string?download=true
inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ij = urem i32 %i.f, 3                        ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  %spec.select130 = select i1 %i.ik, i32 3, i32 %i.ij
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162
  %.0103233 = phi i32 [ 0, %bb.v ], [ %i.ix, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %.0104232 = phi i32 [ %spec.select130, %bb.v ], [ 3, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 2 uses
  %.9231 = phi ptr [ %1, %bb.v ], [ %.lcssa534.unr, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ] ; 3 uses
  %i.il = icmp sgt i32 %.0103233, 0
  br i1 %i.il, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.im = load i32, ptr %i.h, align 4
  %i.in = lshr i32 %i.im, 16
  %i.io = trunc i32 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.9231, i64 1
  store i8 %i.io, ptr %.9231, align 1, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %i.ip, %bb.x ], [ %.9231, %bb.w ]
  %i.iq = and i32 %.0104232, 7                    ; 2 uses
  %xtraiter555 = zext nneg i32 %i.iq to i64
  %lcmp.mod556.not = icmp eq i32 %i.iq, 0
  br i1 %lcmp.mod556.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol.preheader

.lr.ph.i.i157.prol.preheader:                     ; preds = %bb.y
  %i.ir = load ptr, ptr %0, align 8, !tbaa !3343
  %i.is = sext i32 %.0103233 to i64
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 %i.is
  br label %.lr.ph.i.i157.prol

.lr.ph.i.i157.prol:                               ; preds = %.lr.ph.i.i157.prol, %.lr.ph.i.i157.prol.preheader
  %.011.i.i158.prol = phi ptr [ %i.iv, %.lr.ph.i.i157.prol ], [ %i.it, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %.0810.i.i159.prol = phi ptr [ %i.iw, %.lr.ph.i.i157.prol ], [ %.10, %.lr.ph.i.i157.prol.preheader ] ; 2 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.lr.ph.i.i157.prol ], [ 0, %.lr.ph.i.i157.prol.preheader ]
  %i.iu = load i8, ptr %.011.i.i158.prol, align 1, !tbaa !66
  store i8 %i.iu, ptr %.0810.i.i159.prol, align 1, !tbaa !66
  %i.iv = getelementptr inbounds nuw i8, ptr %.011.i.i158.prol, i64 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.0810.i.i159.prol, i64 1 ; 2 uses
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, label %.lr.ph.i.i157.prol, !llvm.loop !3365

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162: ; preds = %bb.y, %.lr.ph.i.i157.prol
  %.lcssa534.unr = phi ptr [ poison, %bb.y ], [ %i.iw, %.lr.ph.i.i157.prol ] ; 2 uses
  %i.ix = add nsw i32 %.0103233, %.0104232        ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %i.f
  br i1 %i.iy, label %bb.w, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, !llvm.loop !3366

iter.check403:                                    ; preds = %bb.u
  %i.iz = load ptr, ptr %0, align 8, !tbaa !3343  ; 7 uses
  %i.ja = zext nneg i32 %i.f to i64               ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja
  %min.iters.check387 = icmp ult i32 %i.f, 4
  %i.jc = ptrtoaddr ptr %i.iz to i64              ; 2 uses
  %i.jd = sub i64 %i.jc, %i.a
  %diff.check386 = icmp ugt i64 %i.jd, -32
  %or.cond528 = select i1 %min.iters.check387, i1 true, i1 %diff.check386
  br i1 %or.cond528, label %.lr.ph.i.i164.preheader, label %vector.main.loop.iter.check388

vector.main.loop.iter.check388:                   ; preds = %iter.check403
  %min.iters.check389 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check389, label %vec.epilog.ph407, label %vector.ph390

vector.ph390:                                     ; preds = %vector.main.loop.iter.check388
  %i.je = and i64 %i.ja, 28
  %n.vec391 = and i64 %i.ja, 2147483616           ; 5 uses
  %i.jf = getelementptr i8, ptr %i.iz, i64 %n.vec391
  %i.jg = getelementptr i8, ptr %1, i64 %n.vec391 ; 2 uses
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph390
  %index393 = phi i64 [ 0, %vector.ph390 ], [ %index.next398, %vector.body392 ] ; 3 uses
  %next.gep394 = getelementptr i8, ptr %i.iz, i64 %index393 ; 2 uses
  %next.gep395 = getelementptr i8, ptr %1, i64 %index393 ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load396 = load <16 x i8>, ptr %next.gep394, align 1, !tbaa !66
  %wide.load397 = load <16 x i8>, ptr %i.jh, align 1, !tbaa !66
  %i.ji = getelementptr i8, ptr %next.gep395, i64 16
  store <16 x i8> %wide.load396, ptr %next.gep395, align 1, !tbaa !66
  store <16 x i8> %wide.load397, ptr %i.ji, align 1, !tbaa !66
  %index.next398 = add nuw i64 %index393, 32      ; 2 uses
  %i.jj = icmp eq i64 %index.next398, %n.vec391
  br i1 %i.jj, label %middle.block399, label %vector.body392, !llvm.loop !3367

middle.block399:                                  ; preds = %vector.body392
  %cmp.n400 = icmp eq i64 %n.vec391, %i.ja
  br i1 %cmp.n400, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %vec.epilog.iter.check405

vec.epilog.iter.check405:                         ; preds = %middle.block399
  %min.epilog.iters.check406 = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check406, label %.lr.ph.i.i164.preheader, label %vec.epilog.ph407, !prof !2408

vec.epilog.ph407:                                 ; preds = %vector.main.loop.iter.check388, %vec.epilog.iter.check405
  %vec.epilog.resume.val401 = phi i64 [ %n.vec391, %vec.epilog.iter.check405 ], [ 0, %vector.main.loop.iter.check388 ]
  %n.vec408 = and i64 %i.ja, 2147483644           ; 4 uses
  %i.jk = getelementptr i8, ptr %i.iz, i64 %n.vec408
  %i.jl = getelementptr i8, ptr %1, i64 %n.vec408 ; 2 uses
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph407
  %index410 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph407 ], [ %index.next414, %vec.epilog.vector.body409 ] ; 3 uses
  %next.gep411 = getelementptr i8, ptr %i.iz, i64 %index410
  %next.gep412 = getelementptr i8, ptr %1, i64 %index410
  %wide.load413 = load <4 x i8>, ptr %next.gep411, align 1, !tbaa !66
  store <4 x i8> %wide.load413, ptr %next.gep412, align 1, !tbaa !66
  %index.next414 = add nuw i64 %index410, 4       ; 2 uses
  %i.jm = icmp eq i64 %index.next414, %n.vec408
  br i1 %i.jm, label %vec.epilog.middle.block415, label %vec.epilog.vector.body409, !llvm.loop !3368

vec.epilog.middle.block415:                       ; preds = %vec.epilog.vector.body409
  %cmp.n416 = icmp eq i64 %n.vec408, %i.ja
  br i1 %cmp.n416, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164.preheader

.lr.ph.i.i164.preheader:                          ; preds = %iter.check403, %vec.epilog.iter.check405, %vec.epilog.middle.block415
  %.011.i.i165.ph = phi ptr [ %i.iz, %iter.check403 ], [ %i.jf, %vec.epilog.iter.check405 ], [ %i.jk, %vec.epilog.middle.block415 ] ; 3 uses
  %.0810.i.i166.ph = phi ptr [ %1, %iter.check403 ], [ %i.jg, %vec.epilog.iter.check405 ], [ %i.jl, %vec.epilog.middle.block415 ] ; 2 uses
  %i.jn = add i64 %i.jc, %i.ja                    ; 2 uses
  %.011.i.i165.ph551 = ptrtoaddr ptr %.011.i.i165.ph to i64 ; 2 uses
  %i.jo = sub i64 %i.jn, %.011.i.i165.ph551
  %xtraiter552 = and i64 %i.jo, 7                 ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader, %.lr.ph.i.i164.prol
  %.011.i.i165.prol = phi ptr [ %i.jq, %.lr.ph.i.i164.prol ], [ %.011.i.i165.ph, %.lr.ph.i.i164.preheader ] ; 2 uses
  %.0810.i.i166.prol = phi ptr [ %i.jr, %.lr.ph.i.i164.prol ], [ %.0810.i.i166.ph, %.lr.ph.i.i164.preheader ] ; 2 uses
  %prol.iter554 = phi i64 [ %prol.iter554.next, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader ]
  %i.jp = load i8, ptr %.011.i.i165.prol, align 1, !tbaa !66
  store i8 %i.jp, ptr %.0810.i.i166.prol, align 1, !tbaa !66
  %i.jq = getelementptr inbounds nuw i8, ptr %.011.i.i165.prol, i64 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0810.i.i166.prol, i64 1 ; 3 uses
  %prol.iter554.next = add i64 %prol.iter554, 1   ; 2 uses
  %prol.iter554.cmp.not = icmp eq i64 %prol.iter554.next, %xtraiter552
  br i1 %prol.iter554.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !3369

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader
  %.lcssa536.unr = phi ptr [ poison, %.lr.ph.i.i164.preheader ], [ %i.jr, %.lr.ph.i.i164.prol ]
  %.011.i.i165.unr = phi ptr [ %.011.i.i165.ph, %.lr.ph.i.i164.preheader ], [ %i.jq, %.lr.ph.i.i164.prol ]
  %.0810.i.i166.unr = phi ptr [ %.0810.i.i166.ph, %.lr.ph.i.i164.preheader ], [ %i.jr, %.lr.ph.i.i164.prol ]
  %i.js = sub i64 %.011.i.i165.ph551, %i.jn
  %i.jt = icmp ugt i64 %i.js, -8
  br i1 %i.jt, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.011.i.i165 = phi ptr [ %i.kq, %.lr.ph.i.i164 ], [ %.011.i.i165.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %.0810.i.i166 = phi ptr [ %i.kr, %.lr.ph.i.i164 ], [ %.0810.i.i166.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %i.ju = load i8, ptr %.011.i.i165, align 1, !tbaa !66
  store i8 %i.ju, ptr %.0810.i.i166, align 1, !tbaa !66
  %i.jv = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 1
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !66
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !66
  %i.jy = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 2
  %i.jz = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 2
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !66
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !66
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 3
  %i.kc = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 3
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !66
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !66
  %i.ke = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 4
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !66
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !66
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 5
  %i.ki = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 5
  %i.kj = load i8, ptr %i.kh, align 1, !tbaa !66
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !66
  %i.kk = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 6
  %i.kl = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 6
  %i.km = load i8, ptr %i.kk, align 1, !tbaa !66
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !66
  %i.kn = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 7
  %i.ko = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 7
  %i.kp = load i8, ptr %i.kn, align 1, !tbaa !66
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !66
  %i.kq = getelementptr inbounds nuw i8, ptr %.011.i.i165, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0810.i.i166, i64 8 ; 2 uses
  %.not.i.i167.7 = icmp eq ptr %i.kq, %i.jb
  br i1 %.not.i.i167.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169, label %.lr.ph.i.i164, !llvm.loop !3370

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169: ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162, %middle.block399, %vec.epilog.middle.block415
  %.11 = phi ptr [ %.lcssa534.unr, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit162 ], [ %i.jl, %vec.epilog.middle.block415 ], [ %i.jg, %middle.block399 ], [ %.lcssa536.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.kr, %.lr.ph.i.i164 ] ; 7 uses
  %.11423 = ptrtoaddr ptr %.11 to i64             ; 2 uses
  %i.ks = load i32, ptr %i.h, align 4
  %i.kt = and i32 %i.ks, 536870912
  %.not = icmp eq i32 %i.kt, 0
  br i1 %.not, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169
  %i.ku = load i32, ptr %i.b, align 8, !tbaa !3347 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, %i.f
  br i1 %i.kv, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.z
  %i.kw = load ptr, ptr %0, align 8, !tbaa !3343
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %.0102234 = phi i32 [ %i.ku, %.lr.ph ], [ %3, %bb.ab ] ; 3 uses
  %2 = zext nneg i32 %.0102234 to i64
  %i.kx = getelementptr i8, ptr %i.kw, i64 %2
  %i.ky = getelementptr i8, ptr %i.kx, i64 -1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !66
  %i.la = icmp eq i8 %i.kz, 48
  br i1 %i.la, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %3 = add nsw i32 %.0102234, -1                  ; 2 uses
  %i.lb = icmp sgt i32 %3, %i.f
  br i1 %i.lb, label %bb.aa, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, !llvm.loop !3371

.critedge:                                        ; preds = %bb.aa, %bb.z
  %.0102.lcssa = phi i32 [ %i.ku, %bb.z ], [ %.0102234, %bb.aa ] ; 2 uses
  %.not126 = icmp eq i32 %.0102.lcssa, %i.f
  br i1 %.not126, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %iter.check475

iter.check475:                                    ; preds = %.critedge
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !3349
  %i.le = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 6 uses
  store i8 %i.ld, ptr %.11, align 1, !tbaa !66
  %i.lf = load ptr, ptr %0, align 8, !tbaa !3343  ; 4 uses
  %i.lg = ptrtoaddr ptr %i.lf to i64
  %i.lh = sext i32 %.0102.lcssa to i64            ; 3 uses
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  %i.lj = zext nneg i32 %i.f to i64               ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lj ; 6 uses
  %i.ll = sub nsw i64 %i.lh, %i.lj                ; 7 uses
  %min.iters.check459 = icmp ult i64 %i.ll, 4
  br i1 %min.iters.check459, label %.lr.ph.i.i171.preheader, label %vector.memcheck457

vector.memcheck457:                               ; preds = %iter.check475
  %i.lm = ptrtoaddr ptr %i.lf to i64
  %i.ln = add i64 %i.lm, %i.lj
  %i.lo = sub i64 %.11423, %i.ln
  %diff.check458 = icmp ult i64 %i.lo, 31
  br i1 %diff.check458, label %.lr.ph.i.i171.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %vector.memcheck457
  %min.iters.check461 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check461, label %vec.epilog.ph479, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.lp = and i64 %i.ll, 28
  %n.vec463 = and i64 %i.ll, -32                  ; 5 uses
  %i.lq = getelementptr i8, ptr %i.lk, i64 %n.vec463
  %i.lr = getelementptr i8, ptr %i.le, i64 %n.vec463 ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 3 uses
  %next.gep466 = getelementptr i8, ptr %i.lk, i64 %index465 ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.le, i64 %index465 ; 2 uses
  %i.ls = getelementptr i8, ptr %next.gep466, i64 16
  %wide.load468 = load <16 x i8>, ptr %next.gep466, align 1, !tbaa !66
  %wide.load469 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !66
  %i.lt = getelementptr i8, ptr %next.gep467, i64 16
  store <16 x i8> %wide.load468, ptr %next.gep467, align 1, !tbaa !66
  store <16 x i8> %wide.load469, ptr %i.lt, align 1, !tbaa !66
  %index.next470 = add nuw i64 %index465, 32      ; 2 uses
  %i.lu = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.lu, label %middle.block471, label %vector.body464, !llvm.loop !3372

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.ll, %n.vec463
  br i1 %cmp.n472, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block471
  %min.epilog.iters.check478 = icmp eq i64 %i.lp, 0
  br i1 %min.epilog.iters.check478, label %.lr.ph.i.i171.preheader, label %vec.epilog.ph479, !prof !2408

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check460, %vec.epilog.iter.check477
  %vec.epilog.resume.val473 = phi i64 [ %n.vec463, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check460 ]
  %n.vec480 = and i64 %i.ll, -4                   ; 4 uses
  %i.lv = getelementptr i8, ptr %i.lk, i64 %n.vec480
  %i.lw = getelementptr i8, ptr %i.le, i64 %n.vec480 ; 2 uses
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body481 ] ; 3 uses
  %next.gep483 = getelementptr i8, ptr %i.lk, i64 %index482
  %next.gep484 = getelementptr i8, ptr %i.le, i64 %index482
  %wide.load485 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !66
  store <4 x i8> %wide.load485, ptr %next.gep484, align 1, !tbaa !66
  %index.next486 = add nuw i64 %index482, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next486, %n.vec480
  br i1 %i.lx, label %vec.epilog.middle.block487, label %vec.epilog.vector.body481, !llvm.loop !3373

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body481
  %cmp.n488 = icmp eq i64 %i.ll, %n.vec480
  br i1 %cmp.n488, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %vector.memcheck457, %iter.check475, %vec.epilog.iter.check477, %vec.epilog.middle.block487
  %.011.i.i172.ph = phi ptr [ %i.lk, %iter.check475 ], [ %i.lk, %vector.memcheck457 ], [ %i.lq, %vec.epilog.iter.check477 ], [ %i.lv, %vec.epilog.middle.block487 ] ; 3 uses
  %.0810.i.i173.ph = phi ptr [ %i.le, %iter.check475 ], [ %i.le, %vector.memcheck457 ], [ %i.lr, %vec.epilog.iter.check477 ], [ %i.lw, %vec.epilog.middle.block487 ] ; 2 uses
  %i.ly = add i64 %i.lg, %i.lh                    ; 2 uses
  %.011.i.i172.ph562 = ptrtoaddr ptr %.011.i.i172.ph to i64 ; 2 uses
  %i.lz = sub i64 %i.ly, %.011.i.i172.ph562
  %xtraiter563 = and i64 %i.lz, 7                 ; 2 uses
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol

.lr.ph.i.i171.prol:                               ; preds = %.lr.ph.i.i171.preheader, %.lr.ph.i.i171.prol
  %.011.i.i172.prol = phi ptr [ %i.mb, %.lr.ph.i.i171.prol ], [ %.011.i.i172.ph, %.lr.ph.i.i171.preheader ] ; 2 uses
  %.0810.i.i173.prol = phi ptr [ %i.mc, %.lr.ph.i.i171.prol ], [ %.0810.i.i173.ph, %.lr.ph.i.i171.preheader ] ; 2 uses
  %prol.iter565 = phi i64 [ %prol.iter565.next, %.lr.ph.i.i171.prol ], [ 0, %.lr.ph.i.i171.preheader ]
  %i.ma = load i8, ptr %.011.i.i172.prol, align 1, !tbaa !66
  store i8 %i.ma, ptr %.0810.i.i173.prol, align 1, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %.011.i.i172.prol, i64 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0810.i.i173.prol, i64 1 ; 3 uses
  %prol.iter565.next = add i64 %prol.iter565, 1   ; 2 uses
  %prol.iter565.cmp.not = icmp eq i64 %prol.iter565.next, %xtraiter563
  br i1 %prol.iter565.cmp.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol, !llvm.loop !3374

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.lcssa530.unr = phi ptr [ poison, %.lr.ph.i.i171.preheader ], [ %i.mc, %.lr.ph.i.i171.prol ]
  %.011.i.i172.unr = phi ptr [ %.011.i.i172.ph, %.lr.ph.i.i171.preheader ], [ %i.mb, %.lr.ph.i.i171.prol ]
  %.0810.i.i173.unr = phi ptr [ %.0810.i.i173.ph, %.lr.ph.i.i171.preheader ], [ %i.mc, %.lr.ph.i.i171.prol ]
  %i.md = sub i64 %.011.i.i172.ph562, %i.ly
  %i.me = icmp ugt i64 %i.md, -8
  br i1 %i.me, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.011.i.i172 = phi ptr [ %i.nb, %.lr.ph.i.i171 ], [ %.011.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ] ; 9 uses
  %.0810.i.i173 = phi ptr [ %i.nc, %.lr.ph.i.i171 ], [ %.0810.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 9 uses
  %i.mf = load i8, ptr %.011.i.i172, align 1, !tbaa !66
  store i8 %i.mf, ptr %.0810.i.i173, align 1, !tbaa !66
  %i.mg = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 1
  %i.mh = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 1
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !66
  store i8 %i.mi, ptr %i.mh, align 1, !tbaa !66
  %i.mj = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 2
  %i.mk = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 2
  %i.ml = load i8, ptr %i.mj, align 1, !tbaa !66
  store i8 %i.ml, ptr %i.mk, align 1, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 3
  %i.mn = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 3
  %i.mo = load i8, ptr %i.mm, align 1, !tbaa !66
  store i8 %i.mo, ptr %i.mn, align 1, !tbaa !66
  %i.mp = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 4
  %i.mr = load i8, ptr %i.mp, align 1, !tbaa !66
  store i8 %i.mr, ptr %i.mq, align 1, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 5
  %i.mt = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 5
  %i.mu = load i8, ptr %i.ms, align 1, !tbaa !66
  store i8 %i.mu, ptr %i.mt, align 1, !tbaa !66
  %i.mv = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 6
  %i.mw = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 6
  %i.mx = load i8, ptr %i.mv, align 1, !tbaa !66
  store i8 %i.mx, ptr %i.mw, align 1, !tbaa !66
  %i.my = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 7
  %i.mz = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 7
  %i.na = load i8, ptr %i.my, align 1, !tbaa !66
  store i8 %i.na, ptr %i.mz, align 1, !tbaa !66
  %i.nb = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 8 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 8 ; 2 uses
  %.not.i.i174.7 = icmp eq ptr %i.nb, %i.li
  br i1 %.not.i.i174.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i171, !llvm.loop !3375

bb.ac:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !3349
  %i.nf = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 7 uses
  store i8 %i.ne, ptr %.11, align 1, !tbaa !66
  %i.ng = load ptr, ptr %0, align 8, !tbaa !3343  ; 3 uses
  %i.nh = ptrtoaddr ptr %i.ng to i64              ; 2 uses
  %i.ni = load i32, ptr %i.b, align 8, !tbaa !3347 ; 2 uses
  %i.nj = sext i32 %i.ni to i64                   ; 3 uses
  %i.nk = getelementptr inbounds i8, ptr %i.ng, i64 %i.nj
  %.not9.i.i177 = icmp eq i32 %i.f, %i.ni
  br i1 %.not9.i.i177, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, label %iter.check441

iter.check441:                                    ; preds = %bb.ac
  %i.nl = zext nneg i32 %i.f to i64               ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nl ; 6 uses
  %i.nn = sub nsw i64 %i.nj, %i.nl                ; 7 uses
  %min.iters.check425 = icmp ult i64 %i.nn, 4
  br i1 %min.iters.check425, label %.lr.ph.i.i178.preheader, label %vector.memcheck422

vector.memcheck422:                               ; preds = %iter.check441
  %i.no = add i64 %i.nh, %i.nl
  %i.np = sub i64 %.11423, %i.no
  %diff.check424 = icmp ult i64 %i.np, 31
  br i1 %diff.check424, label %.lr.ph.i.i178.preheader, label %vector.main.loop.iter.check426

vector.main.loop.iter.check426:                   ; preds = %vector.memcheck422
  %min.iters.check427 = icmp ult i64 %i.nn, 32
  br i1 %min.iters.check427, label %vec.epilog.ph445, label %vector.ph428

vector.ph428:                                     ; preds = %vector.main.loop.iter.check426
  %i.nq = and i64 %i.nn, 28
  %n.vec429 = and i64 %i.nn, -32                  ; 5 uses
  %i.nr = getelementptr i8, ptr %i.nm, i64 %n.vec429
  %i.ns = getelementptr i8, ptr %i.nf, i64 %n.vec429 ; 2 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 3 uses
  %next.gep432 = getelementptr i8, ptr %i.nm, i64 %index431 ; 2 uses
  %next.gep433 = getelementptr i8, ptr %i.nf, i64 %index431 ; 2 uses
  %i.nt = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load434 = load <16 x i8>, ptr %next.gep432, align 1, !tbaa !66
  %wide.load435 = load <16 x i8>, ptr %i.nt, align 1, !tbaa !66
  %i.nu = getelementptr i8, ptr %next.gep433, i64 16
  store <16 x i8> %wide.load434, ptr %next.gep433, align 1, !tbaa !66
  store <16 x i8> %wide.load435, ptr %i.nu, align 1, !tbaa !66
  %index.next436 = add nuw i64 %index431, 32      ; 2 uses
  %i.nv = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.nv, label %middle.block437, label %vector.body430, !llvm.loop !3376

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.nn, %n.vec429
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %i.pp = tail call i32 @llvm.smin.i32(i32 %i.po, i32 %i.pl)
  %i.pq = icmp slt i32 %i.po, 0
  %spec.select133 = select i1 %i.pq, i32 %i.pl, i32 %i.pp
  br label %.critedge7

bb.af:                                            ; preds = %bb.ae
  %i.pr = load i32, ptr %i.h, align 4
  %i.ps = and i32 %i.pr, 536870912
  %.not125 = icmp eq i32 %i.ps, 0
  %i.pt = icmp sgt i32 %i.pm, 0
  %or.cond11 = and i1 %i.pt, %.not125
  br i1 %or.cond11, label %.preheader, label %.critedge7.thread

.preheader:                                       ; preds = %bb.af
  %i.pu = load ptr, ptr %0, align 8, !tbaa !3343
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %bb.ah
  %.0 = phi i32 [ %i.qa, %bb.ah ], [ %i.pm, %.preheader ] ; 4 uses
  %i.pv = zext nneg i32 %.0 to i64
  %i.pw = getelementptr i8, ptr %i.pu, i64 %i.pv
  %i.px = getelementptr i8, ptr %i.pw, i64 -1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !66
  %i.pz = icmp eq i8 %i.py, 48
  br i1 %i.pz, label %bb.ah, label %.critedge7.thread

bb.ah:                                            ; preds = %bb.ag
  %i.qa = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.ag, label %.critedge7

.critedge7:                                       ; preds = %bb.ah, %.thread
  %.099211 = phi i32 [ %spec.select133, %.thread ], [ %i.pl, %bb.ah ] ; 2 uses
  %.not217 = icmp eq i32 %.099211, 0
  br i1 %.not217, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1216 = phi i32 [ 0, %.critedge7 ], [ %i.pm, %bb.af ], [ %.0, %bb.ag ] ; 5 uses
  %.099211215 = phi i32 [ %.099211, %.critedge7 ], [ %i.pl, %bb.af ], [ %i.pl, %bb.ag ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qc = load i8, ptr %i.qb, align 8, !tbaa !3349
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 %i.qc, ptr %i.pk, align 1, !tbaa !66
  %i.qe = icmp slt i32 %.099211215, 1
  br i1 %i.qe, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.qf = zext nneg i32 %.099211215 to i64        ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qd, i8 48, i64 %i.qf, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187:           ; preds = %.critedge7.thread, %bb.ai
  %.0.i.i186 = phi ptr [ %i.qd, %.critedge7.thread ], [ %i.qg, %bb.ai ] ; 7 uses
  %i.qh = load ptr, ptr %0, align 8, !tbaa !3343  ; 7 uses
  %i.qi = sext i32 %.1216 to i64                  ; 6 uses
  %i.qj = getelementptr inbounds i8, ptr %i.qh, i64 %i.qi
  %.not9.i.i188 = icmp eq i32 %.1216, 0
  br i1 %.not9.i.i188, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %iter.check369

iter.check369:                                    ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187
  %i.qk = ptrtoaddr ptr %i.qh to i64              ; 2 uses
  %.0.i.i186351 = ptrtoaddr ptr %.0.i.i186 to i64
  %min.iters.check353 = icmp ult i32 %.1216, 4
  %i.ql = sub i64 %i.qk, %.0.i.i186351
  %diff.check352 = icmp ugt i64 %i.ql, -32
  %or.cond529 = select i1 %min.iters.check353, i1 true, i1 %diff.check352
  br i1 %or.cond529, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %iter.check369
  %min.iters.check355 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check355, label %vec.epilog.ph373, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check354
  %n.vec357 = and i64 %i.qi, -32                  ; 5 uses
  %i.qm = getelementptr i8, ptr %i.qh, i64 %n.vec357
  %i.qn = getelementptr i8, ptr %.0.i.i186, i64 %n.vec357 ; 2 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.qh, i64 %index359 ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.0.i.i186, i64 %index359 ; 2 uses
  %i.qo = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load362 = load <16 x i8>, ptr %next.gep360, align 1, !tbaa !66
  %wide.load363 = load <16 x i8>, ptr %i.qo, align 1, !tbaa !66
  %i.qp = getelementptr i8, ptr %next.gep361, i64 16
  store <16 x i8> %wide.load362, ptr %next.gep361, align 1, !tbaa !66
  store <16 x i8> %wide.load363, ptr %i.qp, align 1, !tbaa !66
  %index.next364 = add nuw i64 %index359, 32      ; 2 uses
  %i.qq = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.qq, label %middle.block365, label %vector.body358, !llvm.loop !3380

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %n.vec357, %i.qi
  br i1 %cmp.n366, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check371

vec.epilog.iter.check371:                         ; preds = %middle.block365
  %i.qr = and i32 %.1216, 28
  %min.epilog.iters.check372 = icmp eq i32 %i.qr, 0
  br i1 %min.epilog.iters.check372, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph373, !prof !2408

vec.epilog.ph373:                                 ; preds = %vector.main.loop.iter.check354, %vec.epilog.iter.check371
  %vec.epilog.resume.val367 = phi i64 [ %n.vec357, %vec.epilog.iter.check371 ], [ 0, %vector.main.loop.iter.check354 ]
  %n.vec374 = and i64 %i.qi, -4                   ; 4 uses
  %i.qs = getelementptr i8, ptr %i.qh, i64 %n.vec374
  %i.qt = getelementptr i8, ptr %.0.i.i186, i64 %n.vec374 ; 2 uses
  br label %vec.epilog.vector.body375

vec.epilog.vector.body375:                        ; preds = %vec.epilog.vector.body375, %vec.epilog.ph373
  %index376 = phi i64 [ %vec.epilog.resume.val367, %vec.epilog.ph373 ], [ %index.next380, %vec.epilog.vector.body375 ] ; 3 uses
  %next.gep377 = getelementptr i8, ptr %i.qh, i64 %index376
  %next.gep378 = getelementptr i8, ptr %.0.i.i186, i64 %index376
  %wide.load379 = load <4 x i8>, ptr %next.gep377, align 1, !tbaa !66
  store <4 x i8> %wide.load379, ptr %next.gep378, align 1, !tbaa !66
  %index.next380 = add nuw i64 %index376, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next380, %n.vec374
  br i1 %i.qu, label %vec.epilog.middle.block381, label %vec.epilog.vector.body375, !llvm.loop !3381

vec.epilog.middle.block381:                       ; preds = %vec.epilog.vector.body375
  %cmp.n382 = icmp eq i64 %n.vec374, %i.qi
  br i1 %cmp.n382, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check369, %vec.epilog.iter.check371, %vec.epilog.middle.block381
  %.011.i.i190.ph = phi ptr [ %i.qh, %iter.check369 ], [ %i.qm, %vec.epilog.iter.check371 ], [ %i.qs, %vec.epilog.middle.block381 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check369 ], [ %i.qn, %vec.epilog.iter.check371 ], [ %i.qt, %vec.epilog.middle.block381 ] ; 2 uses
  %i.qv = add i64 %i.qk, %i.qi                    ; 2 uses
  %.011.i.i190.ph547 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qw = sub i64 %i.qv, %.011.i.i190.ph547
  %xtraiter548 = and i64 %i.qw, 7                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.qy, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.qz, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter550 = phi i64 [ %prol.iter550.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.qx = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !66
  store i8 %i.qx, ptr %.0810.i.i191.prol, align 1, !tbaa !66
  %i.qy = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter550.next = add i64 %prol.iter550, 1   ; 2 uses
  %prol.iter550.cmp.not = icmp eq i64 %prol.iter550.next, %xtraiter548
  br i1 %prol.iter550.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !3382

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa538.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.qz, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.qy, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.qz, %.lr.ph.i.i189.prol ]
  %i.ra = sub i64 %.011.i.i190.ph547, %i.qv
  %i.rb = icmp ugt i64 %i.ra, -8
  br i1 %i.rb, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.ry, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.rz, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rc = load i8, ptr %.011.i.i190, align 1, !tbaa !66
  store i8 %i.rc, ptr %.0810.i.i191, align 1, !tbaa !66
  %i.rd = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.re = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.rf = load i8, ptr %i.rd, align 1, !tbaa !66
  store i8 %i.rf, ptr %i.re, align 1, !tbaa !66
  %i.rg = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.ri = load i8, ptr %i.rg, align 1, !tbaa !66
  store i8 %i.ri, ptr %i.rh, align 1, !tbaa !66
  %i.rj = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rk = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.rl = load i8, ptr %i.rj, align 1, !tbaa !66
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !66
  %i.rm = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.rn = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.ro = load i8, ptr %i.rm, align 1, !tbaa !66
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !66
  %i.rp = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rq = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.rr = load i8, ptr %i.rp, align 1, !tbaa !66
  store i8 %i.rr, ptr %i.rq, align 1, !tbaa !66
  %i.rs = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.rt = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.ru = load i8, ptr %i.rs, align 1, !tbaa !66
  store i8 %i.ru, ptr %i.rt, align 1, !tbaa !66
  %i.rv = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rw = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.rx = load i8, ptr %i.rv, align 1, !tbaa !66
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !66
  %i.ry = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.ry, %i.qj
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !3383

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block365, %vec.epilog.middle.block381, %middle.block471, %vec.epilog.middle.block487, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pk, %.critedge7 ], [ %i.ic, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hw, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pj, %bb.ad ], [ %i.nc, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ie, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lw, %vec.epilog.middle.block487 ], [ %i.lr, %middle.block471 ], [ %i.qt, %vec.epilog.middle.block381 ], [ %i.qn, %middle.block365 ], [ %.lcssa530.unr, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa538.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.rz, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3347 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3348 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !3351
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %i.r = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %i.r
  %i.s = add nsw i32 %i.l, -1
  %i.t = zext nneg i32 %i.s to i64
  %.sroa.0186.1.v = select i1 %i.p, i64 %i.t, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.u = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.v = icmp samesign ugt i32 %.0.i, 99
  %i.w = icmp samesign ugt i32 %.0.i, 999
  %i.x = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.w, i64 %i.x, i64 %.sroa.028.0.i
  %i.y = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.v, i64 %i.y, i64 %.sroa.028.0.i
  %i.z = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.h, 16711680
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.ad = urem i32 %i.e, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, i32 3, i32 %i.ad ; 5 uses
  %i.af = icmp sgt i32 %i.b, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %1, %i.ag
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %spec.select, %i.ai         ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = add nsw i32 %i.al, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %i.am, i64 %i.aq, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ba, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ar = icmp slt i32 %.0102233, %i.b
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.as = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.as, i32 3) ; 2 uses
  %i.at = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.at ; 2 uses
  %i.au = icmp slt i32 %i.as, 3
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = sub i32 2, %.sroa.speculated
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !3384

bb.l:                                             ; preds = %bb.d
  %i.bc = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.bc    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bd = add nsw i32 %i.d, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.bg = add i64 %i.bf, %i.be
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.bg
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !3351
  %i.bj = sub nsw i32 %i.bi, %i.e                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bj, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.sroa.0186.5, 2
  %i.bo = add i64 %i.bn, %i.bm
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.e, 0
  br i1 %i.bp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = and i32 %i.h, 16711680
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bt = urem i32 %i.e, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select126 = select i1 %i.bu, i32 3, i32 %i.bt ; 4 uses
  %i.bv = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bv ; 2 uses
  %i.bw = add i32 %i.d, %i.b
  %i.bx = xor i32 %spec.select126, -1
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, 3
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.ca, 2147483644              ; 3 uses
  %i.cb = mul i32 %n.vec, 3
  %i.cc = or disjoint i32 %spec.select126, %i.cb
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.ce = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cf = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3386

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.cc, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.ci, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.ci = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !3387

bb.r:                                             ; preds = %bb.q
  %i.ck = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ck
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.ch, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cl = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cm = load ptr, ptr %0, align 8, !tbaa !3343
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %.0105237 = phi i32 [ %i.b, %.lr.ph ], [ %3, %bb.t ] ; 3 uses
  %2 = zext nneg i32 %.0105237 to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 %2
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !66
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %3 = add nsw i32 %.0105237, -1                  ; 2 uses
  %i.cs = icmp sgt i32 %3, %i.e
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !3388

.critedge:                                        ; preds = %bb.s, %bb.t
  %.0105.lcssa.ph = phi i32 [ %.0105237, %bb.s ], [ %smin, %bb.t ] ; 3 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.ct = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.ct
  %i.cu = zext nneg i32 %i.e to i64
  %i.cv = sext i32 %.0105.lcssa.ph to i64
  %.not7.i.i148 = icmp eq i32 %i.e, %.0105.lcssa.ph
  %gepdiff226 = sub nsw i64 %i.cv, %i.cu
  %i.cw = select i1 %.not7.i.i148, i64 0, i64 %gepdiff226
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cw
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.cx = zext nneg i32 %i.e to i64
  %4 = zext nneg i32 %i.b to i64
  %gepdiff = sub nsw i64 %4, %i.cx
  %i.cy = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.cy, %.sroa.0186.10 ; 2 uses
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !3351 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %i.b
  br i1 %i.da, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.db = xor i32 %i.b, -1
  %i.dc = add i32 %i.cz, %i.db
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.df = add i64 %i.de, %i.dd
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dg = add i64 %1, 1
  %i.dh = sub nsw i32 0, %i.e                     ; 5 uses
  %i.di = icmp eq i32 %i.b, 0
  br i1 %i.di, label %.thread210, label %bb.x

.thread210:                                       ; preds = %bb.w
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !3351 ; 2 uses
  %i.dk = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.dh)
  %i.dl = icmp slt i32 %i.dj, 0
  %spec.select128 = select i1 %i.dl, i32 %i.dh, i32 %i.dk
  br label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.dm = and i32 %i.h, 536870912
  %.not121 = icmp eq i32 %i.dm, 0
  %i.dn = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not121, i1 %i.dn, i1 false
  br i1 %or.cond11, label %.preheader228, label %.critedge7.thread

.preheader228:                                    ; preds = %bb.x
  %i.do = load ptr, ptr %0, align 8, !tbaa !3343
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %.0 = phi i32 [ %i.du, %bb.z ], [ %i.b, %.preheader228 ] ; 4 uses
  %i.dp = zext nneg i32 %.0 to i64
  %i.dq = getelementptr i8, ptr %i.do, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !66
  %i.dt = icmp eq i8 %i.ds, 48
  br i1 %i.dt, label %bb.z, label %.critedge7.thread

bb.z:                                             ; preds = %bb.y
  %i.du = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dh, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.y, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %.0, %bb.y ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dh, %bb.x ], [ %i.dh, %bb.y ] ; 2 uses
  %i.dv = add i64 %1, 2
  %i.dw = icmp sgt i32 %.0100214218, 0
  %i.dx = add nsw i32 %.0100214218, -1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = add i64 %1, 3
  %i.ea = add i64 %i.dz, %i.dy
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dw, i64 %i.ea, i64 %i.dv
  %i.eb = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.eb
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.df, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dg, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.e = bitcast double %1 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 256
  %i.h = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i8 %i.c, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = icmp eq i8 %i.j, 1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %spec.select = or disjoint i32 %i.n, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.c ] ; 7 uses
  %.0 = phi double [ %i.h, %bb.b ], [ %1, %bb.c ] ; 4 uses
  %i.o = fcmp ueq double %.0, +inf
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp oeq double %.0, +inf
  %i.q = and i32 %.sroa.8.0, 16777216
  %.not69 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.str.79..str.80 = select i1 %.not69, ptr @.str.80, ptr @.str.79
  %.str.81..str.82 = select i1 %.not69, ptr @.str.82, ptr @.str.81
  %i.r = select i1 %i.p, ptr %.str.79..str.80, ptr %.str.81..str.82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !3340
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !3342
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.l [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !2284 ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !2275
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.aa), !inline_history !2456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.h, %bb.i
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !2284
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2273
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !66
  %i.am = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.an = load i32, ptr %2, align 8, !tbaa !2291  ; 2 uses
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %2, align 8, !tbaa !2291
  br label %bb.k

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit, %bb.j, %bb.g
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %i.am, %bb.j ], [ %i.am, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ]
  %i.ap = load i8, ptr %i.b, align 1
  %i.aq = and i8 %i.ap, -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.k
  %.sink102 = phi i8 [ %i.aq, %bb.k ], [ %i.c, %bb.f ]
  %.sroa.8.2.ph = phi i32 [ %.sroa.8.1, %bb.k ], [ %.sroa.8.0, %bb.f ]
  %i.ar = or disjoint i8 %.sink102, 2
  store i8 %i.ar, ptr %i.b, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.f
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %bb.f ], [ %.sroa.8.2.ph, %.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_1
