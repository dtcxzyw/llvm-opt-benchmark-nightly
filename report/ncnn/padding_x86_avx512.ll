Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 241
begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
vec.epilog.ph350:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check348
  %vec.epilog.resume.val342 = phi i64 [ %n.vec331, %vec.epilog.iter.check348 ], [ 0, %vector.main.loop.iter.check328 ]
  %i.pz = getelementptr i8, ptr %.9.lcssa.i, i64 %i.md ; 2 uses
  br label %vec.epilog.vector.body352

vec.epilog.vector.body352:                        ; preds = %vec.epilog.vector.body352, %vec.epilog.ph350
  %index353 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph350 ], [ %index.next357, %vec.epilog.vector.body352 ] ; 2 uses
  %i.qa = shl i64 %index353, 3                    ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.lj, i64 %i.qa
  %next.gep355 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.qa
  %wide.load356 = load <8 x i64>, ptr %next.gep354, align 8, !tbaa !113 ; 2 uses
  store <8 x i64> %wide.load356, ptr %next.gep355, align 8, !tbaa !113
  %index.next357 = add nuw i64 %index353, 8       ; 2 uses
  %i.qb = icmp eq i64 %index.next357, %n.vec351
  br i1 %i.qb, label %vec.epilog.middle.block358, label %vec.epilog.vector.body352, !llvm.loop !637

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body352
  %i.qc = extractelement <8 x i64> %wide.load356, i64 7
  br i1 %cmp.n359, label %.preheader.i, label %.lr.ph81.i.preheader

.lr.ph81.i.preheader:                             ; preds = %iter.check346, %vec.epilog.iter.check348, %vec.epilog.middle.block358
  %.07780.i.ph = phi i32 [ 0, %iter.check346 ], [ %i.mc, %vec.epilog.middle.block358 ], [ %i.lz, %vec.epilog.iter.check348 ] ; 4 uses
  %.08079.i.ph = phi ptr [ %i.lj, %iter.check346 ], [ %i.me, %vec.epilog.middle.block358 ], [ %i.mb, %vec.epilog.iter.check348 ] ; 2 uses
  %.1078.i.ph = phi ptr [ %.9.lcssa.i, %iter.check346 ], [ %i.pz, %vec.epilog.middle.block358 ], [ %i.pp, %vec.epilog.iter.check348 ] ; 2 uses
  %i.qd = sub i32 %i.co, %.07780.i.ph
  %xtraiter1386 = and i32 %i.qd, 7                ; 2 uses
  %lcmp.mod1387.not = icmp eq i32 %xtraiter1386, 0
  br i1 %lcmp.mod1387.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol

.lr.ph81.i.prol:                                  ; preds = %.lr.ph81.i.preheader, %.lr.ph81.i.prol
  %.07780.i.prol = phi i32 [ %i.qh, %.lr.ph81.i.prol ], [ %.07780.i.ph, %.lr.ph81.i.preheader ]
  %.08079.i.prol = phi ptr [ %i.qf, %.lr.ph81.i.prol ], [ %.08079.i.ph, %.lr.ph81.i.preheader ] ; 2 uses
  %.1078.i.prol = phi ptr [ %i.qg, %.lr.ph81.i.prol ], [ %.1078.i.ph, %.lr.ph81.i.preheader ] ; 2 uses
  %prol.iter1388 = phi i32 [ %prol.iter1388.next, %.lr.ph81.i.prol ], [ 0, %.lr.ph81.i.preheader ]
  %i.qe = load i64, ptr %.08079.i.prol, align 8, !tbaa !113 ; 2 uses
  store i64 %i.qe, ptr %.1078.i.prol, align 8, !tbaa !113
  %i.qf = getelementptr inbounds nuw i8, ptr %.08079.i.prol, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.1078.i.prol, i64 8 ; 3 uses
  %i.qh = add nuw nsw i32 %.07780.i.prol, 1       ; 2 uses
  %prol.iter1388.next = add i32 %prol.iter1388, 1 ; 2 uses
  %prol.iter1388.cmp.not = icmp eq i32 %prol.iter1388.next, %xtraiter1386
  br i1 %prol.iter1388.cmp.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol, !llvm.loop !638

.lr.ph81.i.prol.loopexit:                         ; preds = %.lr.ph81.i.prol, %.lr.ph81.i.preheader
  %.lcssa1342.unr = phi i64 [ poison, %.lr.ph81.i.preheader ], [ %i.qe, %.lr.ph81.i.prol ]
  %.lcssa1341.unr = phi ptr [ poison, %.lr.ph81.i.preheader ], [ %i.qg, %.lr.ph81.i.prol ]
  %.07780.i.unr = phi i32 [ %.07780.i.ph, %.lr.ph81.i.preheader ], [ %i.qh, %.lr.ph81.i.prol ]
  %.08079.i.unr = phi ptr [ %.08079.i.ph, %.lr.ph81.i.preheader ], [ %i.qf, %.lr.ph81.i.prol ]
  %.1078.i.unr = phi ptr [ %.1078.i.ph, %.lr.ph81.i.preheader ], [ %i.qg, %.lr.ph81.i.prol ]
  %i.qi = sub i32 %.07780.i.ph, %i.co
  %i.qj = icmp ugt i32 %i.qi, -8
  br i1 %i.qj, label %.preheader.i, label %.lr.ph81.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i
  %.07874.i = phi i32 [ %i.ql, %.lr.ph76.i ], [ %.07874.i.ph, %.lr.ph76.i.preheader ]
  %.973.i = phi ptr [ %i.qk, %.lr.ph76.i ], [ %.973.i.ph, %.lr.ph76.i.preheader ] ; 2 uses
  store i64 %i.pf, ptr %.973.i, align 8, !tbaa !113
  %i.qk = getelementptr inbounds nuw i8, ptr %.973.i, i64 8 ; 2 uses
  %i.ql = add nuw nsw i32 %.07874.i, 1            ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.ql, %i.du
  br i1 %exitcond128.not.i, label %.preheader1.i, label %.lr.ph76.i, !llvm.loop !639

.preheader.i:                                     ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %middle.block340, %vec.epilog.middle.block358, %.preheader1.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader1.i ], [ %i.pz, %vec.epilog.middle.block358 ], [ %i.pp, %middle.block340 ], [ %.lcssa1341.unr, %.lr.ph81.i.prol.loopexit ], [ %i.rs, %.lr.ph81.i ] ; 6 uses
  %.079.lcssa.i = phi i64 [ %i.pf, %.preheader1.i ], [ %i.qc, %vec.epilog.middle.block358 ], [ %i.py, %middle.block340 ], [ %.lcssa1342.unr, %.lr.ph81.i.prol.loopexit ], [ %i.rq, %.lr.ph81.i ] ; 3 uses
  br i1 %i.ln, label %iter.check309, label %._crit_edge87.i

iter.check309:                                    ; preds = %.preheader.i
  br i1 %min.iters.check294, label %.lr.ph86.i.preheader, label %vector.main.loop.iter.check295

vector.main.loop.iter.check295:                   ; preds = %iter.check309
  br i1 %min.iters.check296, label %vec.epilog.ph313, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check295
  %i.qm = getelementptr i8, ptr %.10.lcssa.i, i64 %i.mh ; 2 uses
  %broadcast.splatinsert299 = insertelement <8 x i64> poison, i64 %.079.lcssa.i, i64 0
  %broadcast.splat300 = shufflevector <8 x i64> %broadcast.splatinsert299, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.ph297, %vector.body301
  %index302 = phi i64 [ 0, %vector.ph297 ], [ %index.next303, %vector.body301 ] ; 2 uses
  %i.qn = shl i64 %index302, 3
  %next.gep = getelementptr i8, ptr %.10.lcssa.i, i64 %i.qn ; 4 uses
  %i.qo = getelementptr i8, ptr %next.gep, i64 64
  %i.qp = getelementptr i8, ptr %next.gep, i64 128
  %i.qq = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %broadcast.splat300, ptr %next.gep, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat300, ptr %i.qo, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat300, ptr %i.qp, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat300, ptr %i.qq, align 8, !tbaa !113
  %index.next303 = add nuw i64 %index302, 32      ; 2 uses
  %i.qr = icmp eq i64 %index.next303, %n.vec298
  br i1 %i.qr, label %middle.block304, label %vector.body301, !llvm.loop !640

middle.block304:                                  ; preds = %vector.body301
  br i1 %cmp.n305, label %._crit_edge87.i, label %vec.epilog.iter.check311

vec.epilog.iter.check311:                         ; preds = %middle.block304
  br i1 %min.epilog.iters.check312, label %.lr.ph86.i.preheader, label %vec.epilog.ph313, !prof !117

vec.epilog.ph313:                                 ; preds = %vector.main.loop.iter.check295, %vec.epilog.iter.check311
  %vec.epilog.resume.val306 = phi i64 [ %n.vec298, %vec.epilog.iter.check311 ], [ 0, %vector.main.loop.iter.check295 ]
  %i.qs = getelementptr i8, ptr %.10.lcssa.i, i64 %i.mj ; 2 uses
  %broadcast.splatinsert315 = insertelement <8 x i64> poison, i64 %.079.lcssa.i, i64 0
  %broadcast.splat316 = shufflevector <8 x i64> %broadcast.splatinsert315, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body317

vec.epilog.vector.body317:                        ; preds = %vec.epilog.vector.body317, %vec.epilog.ph313
  %index318 = phi i64 [ %vec.epilog.resume.val306, %vec.epilog.ph313 ], [ %index.next320, %vec.epilog.vector.body317 ] ; 2 uses
  %i.qt = shl i64 %index318, 3
  %next.gep319 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.qt
  store <8 x i64> %broadcast.splat316, ptr %next.gep319, align 8, !tbaa !113
  %index.next320 = add nuw i64 %index318, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.qu, label %vec.epilog.middle.block321, label %vec.epilog.vector.body317, !llvm.loop !641

vec.epilog.middle.block321:                       ; preds = %vec.epilog.vector.body317
  br i1 %cmp.n322, label %._crit_edge87.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %iter.check309, %vec.epilog.iter.check311, %vec.epilog.middle.block321
  %.085.i.ph = phi i32 [ 0, %iter.check309 ], [ %i.mg, %vec.epilog.iter.check311 ], [ %i.mi, %vec.epilog.middle.block321 ]
  %.1184.i.ph = phi ptr [ %.10.lcssa.i, %iter.check309 ], [ %i.qm, %vec.epilog.iter.check311 ], [ %i.qs, %vec.epilog.middle.block321 ]
  br label %.lr.ph86.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i
  %.07780.i = phi i32 [ %i.rt, %.lr.ph81.i ], [ %.07780.i.unr, %.lr.ph81.i.prol.loopexit ]
  %.08079.i = phi ptr [ %i.rr, %.lr.ph81.i ], [ %.08079.i.unr, %.lr.ph81.i.prol.loopexit ] ; 9 uses
  %.1078.i = phi ptr [ %i.rs, %.lr.ph81.i ], [ %.1078.i.unr, %.lr.ph81.i.prol.loopexit ] ; 9 uses
  %i.qv = load i64, ptr %.08079.i, align 8, !tbaa !113
  store i64 %i.qv, ptr %.1078.i, align 8, !tbaa !113
  %i.qw = getelementptr inbounds nuw i8, ptr %.08079.i, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %.1078.i, i64 8
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !113
  store i64 %i.qy, ptr %i.qx, align 8, !tbaa !113
  %i.qz = getelementptr inbounds nuw i8, ptr %.08079.i, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %.1078.i, i64 16
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !113
  store i64 %i.rb, ptr %i.ra, align 8, !tbaa !113
  %i.rc = getelementptr inbounds nuw i8, ptr %.08079.i, i64 24
  %i.rd = getelementptr inbounds nuw i8, ptr %.1078.i, i64 24
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !113
  store i64 %i.re, ptr %i.rd, align 8, !tbaa !113
  %i.rf = getelementptr inbounds nuw i8, ptr %.08079.i, i64 32
  %i.rg = getelementptr inbounds nuw i8, ptr %.1078.i, i64 32
  %i.rh = load i64, ptr %i.rf, align 8, !tbaa !113
  store i64 %i.rh, ptr %i.rg, align 8, !tbaa !113
  %i.ri = getelementptr inbounds nuw i8, ptr %.08079.i, i64 40
  %i.rj = getelementptr inbounds nuw i8, ptr %.1078.i, i64 40
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !113
  store i64 %i.rk, ptr %i.rj, align 8, !tbaa !113
  %i.rl = getelementptr inbounds nuw i8, ptr %.08079.i, i64 48
  %i.rm = getelementptr inbounds nuw i8, ptr %.1078.i, i64 48
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !113
  store i64 %i.rn, ptr %i.rm, align 8, !tbaa !113
  %i.ro = getelementptr inbounds nuw i8, ptr %.08079.i, i64 56
  %i.rp = getelementptr inbounds nuw i8, ptr %.1078.i, i64 56
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !113 ; 2 uses
  store i64 %i.rq, ptr %i.rp, align 8, !tbaa !113
  %i.rr = getelementptr inbounds nuw i8, ptr %.08079.i, i64 64
  %i.rs = getelementptr inbounds nuw i8, ptr %.1078.i, i64 64 ; 2 uses
  %i.rt = add nuw nsw i32 %.07780.i, 8            ; 2 uses
  %exitcond129.not.i.7 = icmp eq i32 %i.rt, %i.co
  br i1 %exitcond129.not.i.7, label %.preheader.i, label %.lr.ph81.i, !llvm.loop !642

._crit_edge87.i:                                  ; preds = %.lr.ph86.i, %middle.block304, %vec.epilog.middle.block321, %.preheader.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader.i ], [ %i.qs, %vec.epilog.middle.block321 ], [ %i.qm, %middle.block304 ], [ %i.rv, %.lr.ph86.i ]
  %i.ru = add nuw nsw i32 %.08190.i, 1            ; 2 uses
  %exitcond131.not.i = icmp eq i32 %i.ru, %i.dt
  br i1 %exitcond131.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.m, !llvm.loop !643

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %.085.i = phi i32 [ %i.rw, %.lr.ph86.i ], [ %.085.i.ph, %.lr.ph86.i.preheader ]
  %.1184.i = phi ptr [ %i.rv, %.lr.ph86.i ], [ %.1184.i.ph, %.lr.ph86.i.preheader ] ; 2 uses
  store i64 %.079.lcssa.i, ptr %.1184.i, align 8, !tbaa !113
  %i.rv = getelementptr inbounds nuw i8, ptr %.1184.i, i64 8 ; 2 uses
  %i.rw = add nuw nsw i32 %.085.i, 1              ; 2 uses
  %exitcond130.not.i = icmp eq i32 %i.rw, %i.dv
  br i1 %exitcond130.not.i, label %._crit_edge87.i, label %.lr.ph86.i, !llvm.loop !644

bb.n:                                             ; preds = %bb.j
  %i.rx = load i32, ptr %i.an, align 8, !tbaa !91 ; 9 uses
  %i.ry = load i32, ptr %i.ao, align 4, !tbaa !92 ; 3 uses
  %i.rz = load i32, ptr %i.ap, align 8, !tbaa !93 ; 12 uses
  %i.sa = load i32, ptr %i.aq, align 4, !tbaa !94 ; 17 uses
  %i.sb = shl i32 %i.co, 2                        ; 6 uses
  %i.sc = mul i32 %i.sb, %i.rx
  %i.sd = sext i32 %i.sc to i64                   ; 6 uses
  %i.se = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.sd ; 5 uses
  %i.sf = icmp sgt i32 %i.rx, 0
  br i1 %i.sf, label %.preheader9.lr.ph.i, label %.preheader6.i

.preheader9.lr.ph.i:                              ; preds = %bb.n
  %i.sg = icmp sgt i32 %i.rz, 0
  %i.sh = icmp sgt i32 %i.co, 0                   ; 3 uses
  %i.si = icmp sgt i32 %i.sa, 0                   ; 2 uses
  %i.sj = sext i32 %i.sb to i64                   ; 8 uses
  %i.sk = sub nsw i64 0, %i.sj                    ; 4 uses
  br i1 %i.sg, label %.preheader9.us.preheader.i, label %.preheader9.lr.ph.split.i

.preheader9.us.preheader.i:                       ; preds = %.preheader9.lr.ph.i
  %i.sl = zext nneg i32 %i.rz to i64              ; 16 uses
  %wide.trip.count151.i = zext i32 %i.sa to i64   ; 10 uses
  %i.sm = shl nuw nsw i64 %wide.trip.count151.i, 3
  %i.sn = mul nsw i64 %wide.trip.count151.i, -8
  %i.so = add i64 %i.cx, %i.cs
  %i.sp = shl nsw i64 %i.sd, 1                    ; 3 uses
  %i.sq = add i64 %i.so, %i.sp
  %i.sr = shl nsw i64 %i.sj, 1
  %i.ss = zext i32 %i.co to i64                   ; 5 uses
  %i.st = shl nuw nsw i64 %i.sl, 3                ; 2 uses
  %scevgep1074 = getelementptr i8, ptr %i.cr, i64 8 ; 2 uses
  %i.su = getelementptr i8, ptr %scevgep1074, i64 %i.cx
  %scevgep1075 = getelementptr i8, ptr %i.su, i64 %i.sp
  %i.sv = add i64 %i.cx, %i.st
  %i.sw = add i64 %i.sv, %i.sp
  %i.sx = shl nsw i64 %i.sj, 1
  %i.sy = add nsw i32 %i.rx, -1
  %i.sz = zext i32 %i.sy to i64
  %i.ta = mul i64 %i.sx, %i.sz
  %i.tb = sub i64 %i.sw, %i.ta
  %scevgep1076 = getelementptr i8, ptr %scevgep1074, i64 %i.tb
  %min.iters.check1081 = icmp ult i32 %i.rz, 8
  %stride.check1080 = icmp sgt i32 %i.sb, 0
  %min.iters.check1083 = icmp ult i32 %i.rz, 32
  %i.tc = and i64 %i.sl, 24
  %n.vec1085 = and i64 %i.sl, 2147483616          ; 5 uses
  %i.td = shl nuw nsw i64 %n.vec1085, 3
  %cmp.n1099 = icmp eq i64 %n.vec1085, %i.sl
  %min.epilog.iters.check1105 = icmp eq i64 %i.tc, 0
  %n.vec1107 = and i64 %i.sl, 2147483640          ; 4 uses
  %i.te = shl nuw nsw i64 %n.vec1107, 3
  %cmp.n1115 = icmp eq i64 %n.vec1107, %i.sl
  %xtraiter1353 = and i64 %i.sl, 3                ; 2 uses
  %lcmp.mod1354.not = icmp eq i64 %xtraiter1353, 0
  %min.iters.check1035 = icmp ult i32 %i.co, 8
  %min.iters.check1037 = icmp ult i32 %i.co, 32
  %i.tf = and i64 %i.ss, 24
  %n.vec1039 = and i64 %i.ss, 2147483616          ; 5 uses
  %i.tg = trunc nuw nsw i64 %n.vec1039 to i32
  %i.th = shl nuw nsw i64 %n.vec1039, 3           ; 2 uses
  %cmp.n1050 = icmp eq i64 %n.vec1039, %i.ss
  %min.epilog.iters.check1058 = icmp eq i64 %i.tf, 0
  %n.vec1060 = and i64 %i.ss, 2147483640          ; 4 uses
  %i.ti = trunc nuw nsw i64 %n.vec1060 to i32
  %i.tj = shl nuw nsw i64 %n.vec1060, 3           ; 2 uses
  %cmp.n1068 = icmp eq i64 %n.vec1060, %i.ss
  %min.iters.check993 = icmp ult i32 %i.sa, 8
  %min.iters.check995 = icmp ult i32 %i.sa, 32
  %i.tk = and i64 %wide.trip.count151.i, 24
  %n.vec997 = and i64 %wide.trip.count151.i, 2147483616 ; 5 uses
  %i.tl = shl nuw nsw i64 %n.vec997, 3
  %cmp.n1011 = icmp eq i64 %n.vec997, %wide.trip.count151.i
  %min.epilog.iters.check1017 = icmp eq i64 %i.tk, 0
  %n.vec1019 = and i64 %wide.trip.count151.i, 2147483640 ; 4 uses
  %i.tm = shl nuw nsw i64 %n.vec1019, 3
  %cmp.n1027 = icmp eq i64 %n.vec1019, %wide.trip.count151.i
  %xtraiter1359 = and i64 %wide.trip.count151.i, 3 ; 2 uses
  %lcmp.mod1360.not = icmp eq i64 %xtraiter1359, 0
  br label %iter.check1102

iter.check1102:                                   ; preds = %._crit_edge.us.i66, %.preheader9.us.preheader.i
  %indvar1032 = phi i64 [ %indvar.next1033, %._crit_edge.us.i66 ], [ 0, %.preheader9.us.preheader.i ] ; 2 uses
  %.09924.us.i = phi i32 [ %i.wr, %._crit_edge.us.i66 ], [ 0, %.preheader9.us.preheader.i ]
  %.010023.us.i = phi ptr [ %.3.lcssa.us.i67, %._crit_edge.us.i66 ], [ %i.bb, %.preheader9.us.preheader.i ] ; 9 uses
  %.010122.us.i = phi ptr [ %i.wq, %._crit_edge.us.i66 ], [ %i.se, %.preheader9.us.preheader.i ] ; 15 uses
  %.010023.us.i1031 = ptrtoaddr ptr %.010023.us.i to i64 ; 2 uses
  %i.tn = mul i64 %i.sr, %indvar1032
  %reass.sub1293 = sub i64 %i.tn, %i.sq
  br i1 %min.iters.check1081, label %vec.epilog.scalar.ph1103.preheader, label %vector.memcheck1072

vector.memcheck1072:                              ; preds = %iter.check1102
  %scevgep1073 = getelementptr i8, ptr %.010023.us.i, i64 %i.st
  %bound01077 = icmp ult ptr %.010023.us.i, %scevgep1076
  %bound11078 = icmp ult ptr %scevgep1075, %scevgep1073
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %i.to = or i1 %found.conflict1079, %stride.check1080
  br i1 %i.to, label %vec.epilog.scalar.ph1103.preheader, label %vector.main.loop.iter.check1082

vector.main.loop.iter.check1082:                  ; preds = %vector.memcheck1072
  br i1 %min.iters.check1083, label %vec.epilog.ph1106, label %vector.ph1084

vector.ph1084:                                    ; preds = %vector.main.loop.iter.check1082
  %i.tp = getelementptr i8, ptr %.010023.us.i, i64 %i.td ; 2 uses
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.ph1084, %vector.body1086
  %index1087 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1097, %vector.body1086 ] ; 3 uses
  %i.tq = shl i64 %index1087, 3
  %next.gep1088 = getelementptr i8, ptr %.010023.us.i, i64 %i.tq ; 4 uses
  %i.tr = sub nuw nsw i64 %i.sl, %index1087
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %i.ts ; 4 uses
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -56
  %i.tv = getelementptr inbounds i8, ptr %i.tt, i64 -120
  %i.tw = getelementptr inbounds i8, ptr %i.tt, i64 -184
  %i.tx = getelementptr inbounds i8, ptr %i.tt, i64 -248
  %wide.load1089 = load <8 x i64>, ptr %i.tu, align 8, !tbaa !113, !alias.scope !726
  %wide.load1090 = load <8 x i64>, ptr %i.tv, align 8, !tbaa !113, !alias.scope !726
  %wide.load1091 = load <8 x i64>, ptr %i.tw, align 8, !tbaa !113, !alias.scope !726
  %wide.load1092 = load <8 x i64>, ptr %i.tx, align 8, !tbaa !113, !alias.scope !726
  %reverse1093 = shufflevector <8 x i64> %wide.load1089, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1094 = shufflevector <8 x i64> %wide.load1090, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1095 = shufflevector <8 x i64> %wide.load1091, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1096 = shufflevector <8 x i64> %wide.load1092, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ty = getelementptr i8, ptr %next.gep1088, i64 64
  %i.tz = getelementptr i8, ptr %next.gep1088, i64 128
  %i.ua = getelementptr i8, ptr %next.gep1088, i64 192
  store <8 x i64> %reverse1093, ptr %next.gep1088, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1094, ptr %i.ty, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1095, ptr %i.tz, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1096, ptr %i.ua, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1097 = add nuw i64 %index1087, 32    ; 2 uses
  %i.ub = icmp eq i64 %index.next1097, %n.vec1085
  br i1 %i.ub, label %middle.block1098, label %vector.body1086, !llvm.loop !648

middle.block1098:                                 ; preds = %vector.body1086
  br i1 %cmp.n1099, label %..preheader8_crit_edge.us.i, label %vec.epilog.iter.check1104

vec.epilog.iter.check1104:                        ; preds = %middle.block1098
  br i1 %min.epilog.iters.check1105, label %vec.epilog.scalar.ph1103.preheader, label %vec.epilog.ph1106, !prof !117

vec.epilog.ph1106:                                ; preds = %vector.main.loop.iter.check1082, %vec.epilog.iter.check1104
  %vec.epilog.resume.val1100 = phi i64 [ %n.vec1085, %vec.epilog.iter.check1104 ], [ 0, %vector.main.loop.iter.check1082 ]
  %i.uc = getelementptr i8, ptr %.010023.us.i, i64 %i.te ; 2 uses
  br label %vec.epilog.vector.body1108

vec.epilog.vector.body1108:                       ; preds = %vec.epilog.vector.body1108, %vec.epilog.ph1106
  %index1109 = phi i64 [ %vec.epilog.resume.val1100, %vec.epilog.ph1106 ], [ %index.next1113, %vec.epilog.vector.body1108 ] ; 3 uses
  %i.ud = shl i64 %index1109, 3
  %next.gep1110 = getelementptr i8, ptr %.010023.us.i, i64 %i.ud
  %i.ue = sub nuw nsw i64 %i.sl, %index1109
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %i.uf
  %i.uh = getelementptr inbounds i8, ptr %i.ug, i64 -56
  %wide.load1111 = load <8 x i64>, ptr %i.uh, align 8, !tbaa !113, !alias.scope !726
  %reverse1112 = shufflevector <8 x i64> %wide.load1111, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1112, ptr %next.gep1110, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1113 = add nuw i64 %index1109, 8     ; 2 uses
  %i.ui = icmp eq i64 %index.next1113, %n.vec1107
  br i1 %i.ui, label %vec.epilog.middle.block1114, label %vec.epilog.vector.body1108, !llvm.loop !649

vec.epilog.middle.block1114:                      ; preds = %vec.epilog.vector.body1108
  br i1 %cmp.n1115, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103.preheader

vec.epilog.scalar.ph1103.preheader:               ; preds = %iter.check1102, %vector.memcheck1072, %vec.epilog.iter.check1104, %vec.epilog.middle.block1114
  %indvars.iv142.i.ph = phi i64 [ 0, %iter.check1102 ], [ 0, %vector.memcheck1072 ], [ %n.vec1085, %vec.epilog.iter.check1104 ], [ %n.vec1107, %vec.epilog.middle.block1114 ] ; 3 uses
  %.110.us.i.ph = phi ptr [ %.010023.us.i, %iter.check1102 ], [ %.010023.us.i, %vector.memcheck1072 ], [ %i.tp, %vec.epilog.iter.check1104 ], [ %i.uc, %vec.epilog.middle.block1114 ] ; 2 uses
  br i1 %lcmp.mod1354.not, label %vec.epilog.scalar.ph1103.prol.loopexit, label %vec.epilog.scalar.ph1103.prol

vec.epilog.scalar.ph1103.prol:                    ; preds = %vec.epilog.scalar.ph1103.preheader, %vec.epilog.scalar.ph1103.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1103.prol ], [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1103.preheader ] ; 2 uses
  %.110.us.i.prol = phi ptr [ %i.um, %vec.epilog.scalar.ph1103.prol ], [ %.110.us.i.ph, %vec.epilog.scalar.ph1103.preheader ] ; 2 uses
  %prol.iter1355 = phi i64 [ %prol.iter1355.next, %vec.epilog.scalar.ph1103.prol ], [ 0, %vec.epilog.scalar.ph1103.preheader ]
  %i.uj = sub nuw nsw i64 %i.sl, %indvars.iv142.i.prol
  %.idx193.i.prol = shl nuw nsw i64 %i.uj, 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.prol
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !113
  store i64 %i.ul, ptr %.110.us.i.prol, align 8, !tbaa !113
  %i.um = getelementptr inbounds nuw i8, ptr %.110.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next143.i.prol = add nuw nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter1355.next = add i64 %prol.iter1355, 1 ; 2 uses
  %prol.iter1355.cmp.not = icmp eq i64 %prol.iter1355.next, %xtraiter1353
  br i1 %prol.iter1355.cmp.not, label %vec.epilog.scalar.ph1103.prol.loopexit, label %vec.epilog.scalar.ph1103.prol, !llvm.loop !650

vec.epilog.scalar.ph1103.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1103.prol, %vec.epilog.scalar.ph1103.preheader
  %.lcssa1314.unr = phi ptr [ poison, %vec.epilog.scalar.ph1103.preheader ], [ %i.um, %vec.epilog.scalar.ph1103.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1103.preheader ], [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1103.prol ]
  %.110.us.i.unr = phi ptr [ %.110.us.i.ph, %vec.epilog.scalar.ph1103.preheader ], [ %i.um, %vec.epilog.scalar.ph1103.prol ]
  %i.un = sub nsw i64 %indvars.iv142.i.ph, %i.sl
  %i.uo = icmp ugt i64 %i.un, -4
  br i1 %i.uo, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103

vec.epilog.scalar.ph1103:                         ; preds = %vec.epilog.scalar.ph1103.prol.loopexit, %vec.epilog.scalar.ph1103
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %vec.epilog.scalar.ph1103 ], [ %indvars.iv142.i.unr, %vec.epilog.scalar.ph1103.prol.loopexit ] ; 5 uses
  %.110.us.i = phi ptr [ %i.vc, %vec.epilog.scalar.ph1103 ], [ %.110.us.i.unr, %vec.epilog.scalar.ph1103.prol.loopexit ] ; 5 uses
  %i.up = sub nuw nsw i64 %i.sl, %indvars.iv142.i
  %.idx193.i = shl nuw nsw i64 %i.up, 3
  %i.uq = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !113
  store i64 %i.ur, ptr %.110.us.i, align 8, !tbaa !113
  %i.us = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 8
  %indvars.iv.next143.i.neg = xor i64 %indvars.iv142.i, -1
  %i.ut = add i64 %indvars.iv.next143.i.neg, %i.sl
  %.idx193.i.1 = shl nuw nsw i64 %i.ut, 3
  %i.uu = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.1
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !113
  store i64 %i.uv, ptr %i.us, align 8, !tbaa !113
  %i.uw = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 16
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2
  %12 = sub nuw nsw i64 %i.sl, %indvars.iv.next143.i.1
  %.idx193.i.2 = shl nuw nsw i64 %12, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.2
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !113
  store i64 %i.uy, ptr %i.uw, align 8, !tbaa !113
  %i.uz = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 24
  %indvars.iv.next143.i.2 = add nuw nsw i64 %indvars.iv142.i, 3
  %13 = sub nuw nsw i64 %i.sl, %indvars.iv.next143.i.2
  %.idx193.i.3 = shl nuw nsw i64 %13, 3
  %i.va = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.3
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !113
  store i64 %i.vb, ptr %i.uz, align 8, !tbaa !113
  %i.vc = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 32 ; 2 uses
  %indvars.iv.next143.i.3 = add nuw nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %i.sl
  br i1 %exitcond146.not.i.3, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103, !llvm.loop !651

.lr.ph15.us.i:                                    ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i
  %.09614.us.i = phi i32 [ %i.wb, %.lr.ph15.us.i ], [ %.09614.us.i.unr, %.lr.ph15.us.i.prol.loopexit ]
  %.09813.us.i = phi ptr [ %i.vz, %.lr.ph15.us.i ], [ %.09813.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %.212.us.i = phi ptr [ %i.wa, %.lr.ph15.us.i ], [ %.212.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %i.vd = load i64, ptr %.09813.us.i, align 8, !tbaa !113
  store i64 %i.vd, ptr %.212.us.i, align 8, !tbaa !113
  %i.ve = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 8
  %i.vg = load i64, ptr %i.ve, align 8, !tbaa !113
  store i64 %i.vg, ptr %i.vf, align 8, !tbaa !113
  %i.vh = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 16
  %i.vj = load i64, ptr %i.vh, align 8, !tbaa !113
  store i64 %i.vj, ptr %i.vi, align 8, !tbaa !113
  %i.vk = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 24
  %i.vl = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 24
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !113
  store i64 %i.vm, ptr %i.vl, align 8, !tbaa !113
  %i.vn = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 32
  %i.vp = load i64, ptr %i.vn, align 8, !tbaa !113
  store i64 %i.vp, ptr %i.vo, align 8, !tbaa !113
  %i.vq = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 40
  %i.vr = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 40
  %i.vs = load i64, ptr %i.vq, align 8, !tbaa !113
  store i64 %i.vs, ptr %i.vr, align 8, !tbaa !113
  %i.vt = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 48
  %i.vu = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 48
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !113
  store i64 %i.vv, ptr %i.vu, align 8, !tbaa !113
  %i.vw = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 56
  %i.vx = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 56
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !113
  store i64 %i.vy, ptr %i.vx, align 8, !tbaa !113
  %i.vz = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 64 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 64 ; 2 uses
  %i.wb = add nuw nsw i32 %.09614.us.i, 8         ; 2 uses
  %exitcond147.not.i.7 = icmp eq i32 %i.wb, %i.co
  br i1 %exitcond147.not.i.7, label %.preheader7.us.i, label %.lr.ph15.us.i, !llvm.loop !652

vec.epilog.scalar.ph1015:                         ; preds = %vec.epilog.scalar.ph1015.prol.loopexit, %vec.epilog.scalar.ph1015
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i.3, %vec.epilog.scalar.ph1015 ], [ %indvars.iv148.i.unr, %vec.epilog.scalar.ph1015.prol.loopexit ] ; 5 uses
  %.318.us.i = phi ptr [ %i.wp, %vec.epilog.scalar.ph1015 ], [ %.318.us.i.unr, %vec.epilog.scalar.ph1015.prol.loopexit ] ; 5 uses
  %.idx194.i = mul nsw i64 %indvars.iv148.i, -8
  %i.wc = getelementptr inbounds i8, ptr %i.xo, i64 %.idx194.i
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !113
  store i64 %i.wd, ptr %.318.us.i, align 8, !tbaa !113
  %i.we = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 8
  %indvars.iv.next149.i.neg = xor i64 %indvars.iv148.i, -1
  %.idx194.i.1 = shl nsw i64 %indvars.iv.next149.i.neg, 3
  %i.wf = getelementptr inbounds i8, ptr %i.xo, i64 %.idx194.i.1
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !113
  store i64 %i.wg, ptr %i.we, align 8, !tbaa !113
  %i.wh = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 16
  %i.wi = shl i64 %indvars.iv148.i, 3
  %.idx194.i.2 = sub i64 -16, %i.wi
  %i.wj = getelementptr inbounds i8, ptr %i.xo, i64 %.idx194.i.2
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !113
  store i64 %i.wk, ptr %i.wh, align 8, !tbaa !113
  %i.wl = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 24
  %i.wm = shl i64 %indvars.iv148.i, 3
  %.idx194.i.3 = sub i64 -24, %i.wm
  %i.wn = getelementptr inbounds i8, ptr %i.xo, i64 %.idx194.i.3
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !113
  store i64 %i.wo, ptr %i.wl, align 8, !tbaa !113
  %i.wp = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 32 ; 2 uses
  %indvars.iv.next149.i.3 = add nuw nsw i64 %indvars.iv148.i, 4 ; 2 uses
  %exitcond152.not.i.3 = icmp eq i64 %indvars.iv.next149.i.3, %wide.trip.count151.i
  br i1 %exitcond152.not.i.3, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1015, !llvm.loop !653

._crit_edge.us.i66:                               ; preds = %vec.epilog.scalar.ph1015.prol.loopexit, %vec.epilog.scalar.ph1015, %middle.block1010, %vec.epilog.middle.block1026, %.preheader7.us.i
  %.3.lcssa.us.i67 = phi ptr [ %.2.lcssa.us.i, %.preheader7.us.i ], [ %i.yb, %vec.epilog.middle.block1026 ], [ %i.xp, %middle.block1010 ], [ %.lcssa1317.unr, %vec.epilog.scalar.ph1015.prol.loopexit ], [ %i.wp, %vec.epilog.scalar.ph1015 ] ; 2 uses
  %i.wq = getelementptr inbounds [2 x i8], ptr %.010122.us.i, i64 %i.sk ; 2 uses
  %i.wr = add nuw nsw i32 %.09924.us.i, 1         ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.wr, %i.rx
  %indvar.next1033 = add i64 %indvar1032, 1
  br i1 %exitcond153.not.i, label %.preheader6.i, label %iter.check1102, !llvm.loop !654

.preheader7.us.i:                                 ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i, %middle.block1049, %vec.epilog.middle.block1067, %..preheader8_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa257, %..preheader8_crit_edge.us.i ], [ %i.xe, %vec.epilog.middle.block1067 ], [ %i.wu, %middle.block1049 ], [ %.lcssa1315.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.wa, %.lr.ph15.us.i ] ; 9 uses
  %.098.lcssa.us.i = phi ptr [ %.010122.us.i, %..preheader8_crit_edge.us.i ], [ %i.xd, %vec.epilog.middle.block1067 ], [ %i.wt, %middle.block1049 ], [ %.lcssa1316.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.vz, %.lr.ph15.us.i ] ; 2 uses
  br i1 %i.si, label %iter.check1014, label %._crit_edge.us.i66

..preheader8_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph1103.prol.loopexit, %vec.epilog.scalar.ph1103, %vec.epilog.middle.block1114, %middle.block1098
  %.lcssa257 = phi ptr [ %i.uc, %vec.epilog.middle.block1114 ], [ %i.tp, %middle.block1098 ], [ %.lcssa1314.unr, %vec.epilog.scalar.ph1103.prol.loopexit ], [ %i.vc, %vec.epilog.scalar.ph1103 ] ; 8 uses
  br i1 %i.sh, label %iter.check1055, label %.preheader7.us.i

iter.check1055:                                   ; preds = %..preheader8_crit_edge.us.i
  br i1 %min.iters.check1035, label %.lr.ph15.us.i.preheader, label %vector.memcheck1030

vector.memcheck1030:                              ; preds = %iter.check1055
  %i.ws = ptrtoaddr ptr %.lcssa257 to i64
  %reass.sub1294 = sub i64 %i.ws, %.010023.us.i1031
  %op.rdx = add i64 %.010023.us.i1031, -1
  %op.rdx1297 = add i64 %reass.sub1293, %reass.sub1294
  %op.rdx1298 = add i64 %op.rdx, %op.rdx1297
  %diff.check1034 = icmp ult i64 %op.rdx1298, 255
  br i1 %diff.check1034, label %.lr.ph15.us.i.preheader, label %vector.main.loop.iter.check1036

vector.main.loop.iter.check1036:                  ; preds = %vector.memcheck1030
  br i1 %min.iters.check1037, label %vec.epilog.ph1059, label %vector.ph1038

vector.ph1038:                                    ; preds = %vector.main.loop.iter.check1036
  %i.wt = getelementptr i8, ptr %.010122.us.i, i64 %i.th ; 2 uses
  %i.wu = getelementptr i8, ptr %.lcssa257, i64 %i.th ; 2 uses
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.ph1038, %vector.body1040
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1048, %vector.body1040 ] ; 2 uses
  %i.wv = shl i64 %index1041, 3                   ; 2 uses
  %next.gep1042 = getelementptr i8, ptr %.010122.us.i, i64 %i.wv ; 4 uses
  %next.gep1043 = getelementptr i8, ptr %.lcssa257, i64 %i.wv ; 4 uses
  %i.ww = getelementptr i8, ptr %next.gep1042, i64 64
  %i.wx = getelementptr i8, ptr %next.gep1042, i64 128
  %i.wy = getelementptr i8, ptr %next.gep1042, i64 192
  %wide.load1044 = load <8 x i64>, ptr %next.gep1042, align 8, !tbaa !113
  %wide.load1045 = load <8 x i64>, ptr %i.ww, align 8, !tbaa !113
  %wide.load1046 = load <8 x i64>, ptr %i.wx, align 8, !tbaa !113
  %wide.load1047 = load <8 x i64>, ptr %i.wy, align 8, !tbaa !113
  %i.wz = getelementptr i8, ptr %next.gep1043, i64 64
  %i.xa = getelementptr i8, ptr %next.gep1043, i64 128
  %i.xb = getelementptr i8, ptr %next.gep1043, i64 192
  store <8 x i64> %wide.load1044, ptr %next.gep1043, align 8, !tbaa !113
  store <8 x i64> %wide.load1045, ptr %i.wz, align 8, !tbaa !113
  store <8 x i64> %wide.load1046, ptr %i.xa, align 8, !tbaa !113
  store <8 x i64> %wide.load1047, ptr %i.xb, align 8, !tbaa !113
  %index.next1048 = add nuw i64 %index1041, 32    ; 2 uses
  %i.xc = icmp eq i64 %index.next1048, %n.vec1039
  br i1 %i.xc, label %middle.block1049, label %vector.body1040, !llvm.loop !655

middle.block1049:                                 ; preds = %vector.body1040
  br i1 %cmp.n1050, label %.preheader7.us.i, label %vec.epilog.iter.check1057

vec.epilog.iter.check1057:                        ; preds = %middle.block1049
  br i1 %min.epilog.iters.check1058, label %.lr.ph15.us.i.preheader, label %vec.epilog.ph1059, !prof !117

vec.epilog.ph1059:                                ; preds = %vector.main.loop.iter.check1036, %vec.epilog.iter.check1057
  %vec.epilog.resume.val1051 = phi i64 [ %n.vec1039, %vec.epilog.iter.check1057 ], [ 0, %vector.main.loop.iter.check1036 ]
  %i.xd = getelementptr i8, ptr %.010122.us.i, i64 %i.tj ; 2 uses
  %i.xe = getelementptr i8, ptr %.lcssa257, i64 %i.tj ; 2 uses
  br label %vec.epilog.vector.body1061

vec.epilog.vector.body1061:                       ; preds = %vec.epilog.vector.body1061, %vec.epilog.ph1059
  %index1062 = phi i64 [ %vec.epilog.resume.val1051, %vec.epilog.ph1059 ], [ %index.next1066, %vec.epilog.vector.body1061 ] ; 2 uses
  %i.xf = shl i64 %index1062, 3                   ; 2 uses
  %next.gep1063 = getelementptr i8, ptr %.010122.us.i, i64 %i.xf
  %next.gep1064 = getelementptr i8, ptr %.lcssa257, i64 %i.xf
  %wide.load1065 = load <8 x i64>, ptr %next.gep1063, align 8, !tbaa !113
  store <8 x i64> %wide.load1065, ptr %next.gep1064, align 8, !tbaa !113
  %index.next1066 = add nuw i64 %index1062, 8     ; 2 uses
  %i.xg = icmp eq i64 %index.next1066, %n.vec1060
  br i1 %i.xg, label %vec.epilog.middle.block1067, label %vec.epilog.vector.body1061, !llvm.loop !656

vec.epilog.middle.block1067:                      ; preds = %vec.epilog.vector.body1061
  br i1 %cmp.n1068, label %.preheader7.us.i, label %.lr.ph15.us.i.preheader

.lr.ph15.us.i.preheader:                          ; preds = %iter.check1055, %vector.memcheck1030, %vec.epilog.iter.check1057, %vec.epilog.middle.block1067
  %.09614.us.i.ph = phi i32 [ 0, %iter.check1055 ], [ 0, %vector.memcheck1030 ], [ %i.tg, %vec.epilog.iter.check1057 ], [ %i.ti, %vec.epilog.middle.block1067 ] ; 4 uses
  %.09813.us.i.ph = phi ptr [ %.010122.us.i, %iter.check1055 ], [ %.010122.us.i, %vector.memcheck1030 ], [ %i.wt, %vec.epilog.iter.check1057 ], [ %i.xd, %vec.epilog.middle.block1067 ] ; 2 uses
  %.212.us.i.ph = phi ptr [ %.lcssa257, %iter.check1055 ], [ %.lcssa257, %vector.memcheck1030 ], [ %i.wu, %vec.epilog.iter.check1057 ], [ %i.xe, %vec.epilog.middle.block1067 ] ; 2 uses
  %i.xh = sub i32 %i.co, %.09614.us.i.ph
  %xtraiter1356 = and i32 %i.xh, 7                ; 2 uses
  %lcmp.mod1357.not = icmp eq i32 %xtraiter1356, 0
  br i1 %lcmp.mod1357.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol

.lr.ph15.us.i.prol:                               ; preds = %.lr.ph15.us.i.preheader, %.lr.ph15.us.i.prol
  %.09614.us.i.prol = phi i32 [ %i.xl, %.lr.ph15.us.i.prol ], [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ]
  %.09813.us.i.prol = phi ptr [ %i.xj, %.lr.ph15.us.i.prol ], [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %.212.us.i.prol = phi ptr [ %i.xk, %.lr.ph15.us.i.prol ], [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %prol.iter1358 = phi i32 [ %prol.iter1358.next, %.lr.ph15.us.i.prol ], [ 0, %.lr.ph15.us.i.preheader ]
  %i.xi = load i64, ptr %.09813.us.i.prol, align 8, !tbaa !113
  store i64 %i.xi, ptr %.212.us.i.prol, align 8, !tbaa !113
  %i.xj = getelementptr inbounds nuw i8, ptr %.09813.us.i.prol, i64 8 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.212.us.i.prol, i64 8 ; 3 uses
  %i.xl = add nuw nsw i32 %.09614.us.i.prol, 1    ; 2 uses
  %prol.iter1358.next = add i32 %prol.iter1358, 1 ; 2 uses
  %prol.iter1358.cmp.not = icmp eq i32 %prol.iter1358.next, %xtraiter1356
  br i1 %prol.iter1358.cmp.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol, !llvm.loop !657

.lr.ph15.us.i.prol.loopexit:                      ; preds = %.lr.ph15.us.i.prol, %.lr.ph15.us.i.preheader
  %.lcssa1316.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xj, %.lr.ph15.us.i.prol ]
  %.lcssa1315.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xk, %.lr.ph15.us.i.prol ]
  %.09614.us.i.unr = phi i32 [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xl, %.lr.ph15.us.i.prol ]
  %.09813.us.i.unr = phi ptr [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xj, %.lr.ph15.us.i.prol ]
  %.212.us.i.unr = phi ptr [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xk, %.lr.ph15.us.i.prol ]
  %i.xm = sub i32 %.09614.us.i.ph, %i.co
  %i.xn = icmp ugt i32 %i.xm, -8
  br i1 %i.xn, label %.preheader7.us.i, label %.lr.ph15.us.i

iter.check1014:                                   ; preds = %.preheader7.us.i
  %i.xo = getelementptr inbounds i8, ptr %.098.lcssa.us.i, i64 -16 ; 7 uses
  br i1 %min.iters.check993, label %vec.epilog.scalar.ph1015.preheader, label %vector.memcheck986

end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %exitcond134.not.i = icmp eq i32 %i.aev, %i.rx
  br i1 %exitcond134.not.i, label %.preheader6.i, label %iter.check1234, !llvm.loop !654

.preheader9.lr.ph.split.split.i:                  ; preds = %.preheader9.lr.ph.split.i
  br i1 %i.sh, label %.preheader9.us52.i.preheader, label %.preheader9.preheader.i

.preheader9.us52.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.i
  %i.aew = add i64 %i.cx, %i.cs
  %.neg = mul nsw i64 %i.sd, -2
  %.neg1292 = sub i64 %.neg, %i.aew
  %i.aex = shl nsw i64 %i.sj, 1
  %i.aey = zext nneg i32 %i.co to i64             ; 5 uses
  %min.iters.check1255 = icmp ult i32 %i.co, 8
  %min.iters.check1257 = icmp ult i32 %i.co, 32
  %i.aez = and i64 %i.aey, 24
  %n.vec1259 = and i64 %i.aey, 2147483616         ; 5 uses
  %i.afa = trunc nuw nsw i64 %n.vec1259 to i32
  %i.afb = shl nuw nsw i64 %n.vec1259, 3          ; 2 uses
  %cmp.n1270 = icmp eq i64 %n.vec1259, %i.aey
  %min.epilog.iters.check1278 = icmp eq i64 %i.aez, 0
  %n.vec1280 = and i64 %i.aey, 2147483640         ; 4 uses
  %i.afc = trunc nuw nsw i64 %n.vec1280 to i32
  %i.afd = shl nuw nsw i64 %n.vec1280, 3          ; 2 uses
  %cmp.n1288 = icmp eq i64 %n.vec1280, %i.aey
  br label %iter.check1275

.preheader9.preheader.i:                          ; preds = %.preheader9.lr.ph.split.split.i
  %i.afe = add nsw i32 %i.rx, -1
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = shl nuw nsw i64 %i.aff, 1
  %i.afh = sub nuw nsw i64 -2, %i.afg
  %i.afi = mul nsw i64 %i.afh, %i.sj
  %i.afj = shl nsw i64 %i.sd, 1
  %i.afk = getelementptr i8, ptr %i.cy, i64 %i.afi
  %scevgep.i = getelementptr i8, ptr %i.afk, i64 %i.afj
  br label %.preheader6.i

iter.check1275:                                   ; preds = %.preheader9.us52.i.preheader, %..preheader7_crit_edge.us60.i
  %indvar1252 = phi i64 [ 0, %.preheader9.us52.i.preheader ], [ %indvar.next1253, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %.09924.us53.i = phi i32 [ 0, %.preheader9.us52.i.preheader ], [ %i.ahk, %..preheader7_crit_edge.us60.i ]
  %.010023.us54.i = phi ptr [ %i.bb, %.preheader9.us52.i.preheader ], [ %.lcssa, %..preheader7_crit_edge.us60.i ] ; 7 uses
  %.010122.us55.i = phi ptr [ %i.se, %.preheader9.us52.i.preheader ], [ %i.ahj, %..preheader7_crit_edge.us60.i ] ; 7 uses
  br i1 %min.iters.check1255, label %vec.epilog.scalar.ph1276.preheader, label %vector.memcheck1250

vector.memcheck1250:                              ; preds = %iter.check1275
  %i.afl = mul i64 %i.aex, %indvar1252
  %i.afm = add i64 %.neg1292, %i.afl
  %.010023.us54.i1251 = ptrtoaddr ptr %.010023.us54.i to i64
  %i.afn = add i64 %i.afm, %.010023.us54.i1251
  %i.afo = add i64 %i.afn, -1
  %diff.check1254 = icmp ult i64 %i.afo, 255
  br i1 %diff.check1254, label %vec.epilog.scalar.ph1276.preheader, label %vector.main.loop.iter.check1256

vector.main.loop.iter.check1256:                  ; preds = %vector.memcheck1250
  br i1 %min.iters.check1257, label %vec.epilog.ph1279, label %vector.ph1258

vector.ph1258:                                    ; preds = %vector.main.loop.iter.check1256
  %i.afp = getelementptr i8, ptr %.010122.us55.i, i64 %i.afb
  %i.afq = getelementptr i8, ptr %.010023.us54.i, i64 %i.afb ; 2 uses
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.ph1258, %vector.body1260
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1268, %vector.body1260 ] ; 2 uses
  %i.afr = shl i64 %index1261, 3                  ; 2 uses
  %next.gep1262 = getelementptr i8, ptr %.010122.us55.i, i64 %i.afr ; 4 uses
  %next.gep1263 = getelementptr i8, ptr %.010023.us54.i, i64 %i.afr ; 4 uses
  %i.afs = getelementptr i8, ptr %next.gep1262, i64 64
  %i.aft = getelementptr i8, ptr %next.gep1262, i64 128
  %i.afu = getelementptr i8, ptr %next.gep1262, i64 192
  %wide.load1264 = load <8 x i64>, ptr %next.gep1262, align 8, !tbaa !113
  %wide.load1265 = load <8 x i64>, ptr %i.afs, align 8, !tbaa !113
  %wide.load1266 = load <8 x i64>, ptr %i.aft, align 8, !tbaa !113
  %wide.load1267 = load <8 x i64>, ptr %i.afu, align 8, !tbaa !113
  %i.afv = getelementptr i8, ptr %next.gep1263, i64 64
  %i.afw = getelementptr i8, ptr %next.gep1263, i64 128
  %i.afx = getelementptr i8, ptr %next.gep1263, i64 192
  store <8 x i64> %wide.load1264, ptr %next.gep1263, align 8, !tbaa !113
  store <8 x i64> %wide.load1265, ptr %i.afv, align 8, !tbaa !113
  store <8 x i64> %wide.load1266, ptr %i.afw, align 8, !tbaa !113
  store <8 x i64> %wide.load1267, ptr %i.afx, align 8, !tbaa !113
  %index.next1268 = add nuw i64 %index1261, 32    ; 2 uses
  %i.afy = icmp eq i64 %index.next1268, %n.vec1259
  br i1 %i.afy, label %middle.block1269, label %vector.body1260, !llvm.loop !682

middle.block1269:                                 ; preds = %vector.body1260
  br i1 %cmp.n1270, label %..preheader7_crit_edge.us60.i, label %vec.epilog.iter.check1277

vec.epilog.iter.check1277:                        ; preds = %middle.block1269
  br i1 %min.epilog.iters.check1278, label %vec.epilog.scalar.ph1276.preheader, label %vec.epilog.ph1279, !prof !117

vec.epilog.ph1279:                                ; preds = %vector.main.loop.iter.check1256, %vec.epilog.iter.check1277
  %vec.epilog.resume.val1271 = phi i64 [ %n.vec1259, %vec.epilog.iter.check1277 ], [ 0, %vector.main.loop.iter.check1256 ]
  %i.afz = getelementptr i8, ptr %.010122.us55.i, i64 %i.afd
  %i.aga = getelementptr i8, ptr %.010023.us54.i, i64 %i.afd ; 2 uses
  br label %vec.epilog.vector.body1281

vec.epilog.vector.body1281:                       ; preds = %vec.epilog.vector.body1281, %vec.epilog.ph1279
  %index1282 = phi i64 [ %vec.epilog.resume.val1271, %vec.epilog.ph1279 ], [ %index.next1286, %vec.epilog.vector.body1281 ] ; 2 uses
  %i.agb = shl i64 %index1282, 3                  ; 2 uses
  %next.gep1283 = getelementptr i8, ptr %.010122.us55.i, i64 %i.agb
  %next.gep1284 = getelementptr i8, ptr %.010023.us54.i, i64 %i.agb
  %wide.load1285 = load <8 x i64>, ptr %next.gep1283, align 8, !tbaa !113
  store <8 x i64> %wide.load1285, ptr %next.gep1284, align 8, !tbaa !113
  %index.next1286 = add nuw i64 %index1282, 8     ; 2 uses
  %i.agc = icmp eq i64 %index.next1286, %n.vec1280
  br i1 %i.agc, label %vec.epilog.middle.block1287, label %vec.epilog.vector.body1281, !llvm.loop !683

vec.epilog.middle.block1287:                      ; preds = %vec.epilog.vector.body1281
  br i1 %cmp.n1288, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1276.preheader

vec.epilog.scalar.ph1276.preheader:               ; preds = %iter.check1275, %vector.memcheck1250, %vec.epilog.iter.check1277, %vec.epilog.middle.block1287
  %.09614.us57.i.ph = phi i32 [ 0, %iter.check1275 ], [ 0, %vector.memcheck1250 ], [ %i.afa, %vec.epilog.iter.check1277 ], [ %i.afc, %vec.epilog.middle.block1287 ] ; 4 uses
  %.09813.us58.i.ph = phi ptr [ %.010122.us55.i, %iter.check1275 ], [ %.010122.us55.i, %vector.memcheck1250 ], [ %i.afp, %vec.epilog.iter.check1277 ], [ %i.afz, %vec.epilog.middle.block1287 ] ; 2 uses
  %.212.us59.i.ph = phi ptr [ %.010023.us54.i, %iter.check1275 ], [ %.010023.us54.i, %vector.memcheck1250 ], [ %i.afq, %vec.epilog.iter.check1277 ], [ %i.aga, %vec.epilog.middle.block1287 ] ; 2 uses
  %i.agd = sub i32 %i.co, %.09614.us57.i.ph
  %xtraiter = and i32 %i.agd, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1276.prol.loopexit, label %vec.epilog.scalar.ph1276.prol

vec.epilog.scalar.ph1276.prol:                    ; preds = %vec.epilog.scalar.ph1276.preheader, %vec.epilog.scalar.ph1276.prol
  %.09614.us57.i.prol = phi i32 [ %i.agh, %vec.epilog.scalar.ph1276.prol ], [ %.09614.us57.i.ph, %vec.epilog.scalar.ph1276.preheader ]
  %.09813.us58.i.prol = phi ptr [ %i.agf, %vec.epilog.scalar.ph1276.prol ], [ %.09813.us58.i.ph, %vec.epilog.scalar.ph1276.preheader ] ; 2 uses
  %.212.us59.i.prol = phi ptr [ %i.agg, %vec.epilog.scalar.ph1276.prol ], [ %.212.us59.i.ph, %vec.epilog.scalar.ph1276.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1276.prol ], [ 0, %vec.epilog.scalar.ph1276.preheader ]
  %i.age = load i64, ptr %.09813.us58.i.prol, align 8, !tbaa !113
  store i64 %i.age, ptr %.212.us59.i.prol, align 8, !tbaa !113
  %i.agf = getelementptr inbounds nuw i8, ptr %.09813.us58.i.prol, i64 8 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.212.us59.i.prol, i64 8 ; 3 uses
  %i.agh = add nuw nsw i32 %.09614.us57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1276.prol.loopexit, label %vec.epilog.scalar.ph1276.prol, !llvm.loop !684

vec.epilog.scalar.ph1276.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1276.prol, %vec.epilog.scalar.ph1276.preheader
  %.lcssa1306.unr = phi ptr [ poison, %vec.epilog.scalar.ph1276.preheader ], [ %i.agg, %vec.epilog.scalar.ph1276.prol ]
  %.09614.us57.i.unr = phi i32 [ %.09614.us57.i.ph, %vec.epilog.scalar.ph1276.preheader ], [ %i.agh, %vec.epilog.scalar.ph1276.prol ]
  %.09813.us58.i.unr = phi ptr [ %.09813.us58.i.ph, %vec.epilog.scalar.ph1276.preheader ], [ %i.agf, %vec.epilog.scalar.ph1276.prol ]
  %.212.us59.i.unr = phi ptr [ %.212.us59.i.ph, %vec.epilog.scalar.ph1276.preheader ], [ %i.agg, %vec.epilog.scalar.ph1276.prol ]
  %i.agi = sub i32 %.09614.us57.i.ph, %i.co
  %i.agj = icmp ugt i32 %i.agi, -8
  br i1 %i.agj, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1276

vec.epilog.scalar.ph1276:                         ; preds = %vec.epilog.scalar.ph1276.prol.loopexit, %vec.epilog.scalar.ph1276
  %.09614.us57.i = phi i32 [ %i.ahi, %vec.epilog.scalar.ph1276 ], [ %.09614.us57.i.unr, %vec.epilog.scalar.ph1276.prol.loopexit ]
  %.09813.us58.i = phi ptr [ %i.ahg, %vec.epilog.scalar.ph1276 ], [ %.09813.us58.i.unr, %vec.epilog.scalar.ph1276.prol.loopexit ] ; 9 uses
  %.212.us59.i = phi ptr [ %i.ahh, %vec.epilog.scalar.ph1276 ], [ %.212.us59.i.unr, %vec.epilog.scalar.ph1276.prol.loopexit ] ; 9 uses
  %i.agk = load i64, ptr %.09813.us58.i, align 8, !tbaa !113
  store i64 %i.agk, ptr %.212.us59.i, align 8, !tbaa !113
  %i.agl = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 8
  %i.agm = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 8
  %i.agn = load i64, ptr %i.agl, align 8, !tbaa !113
  store i64 %i.agn, ptr %i.agm, align 8, !tbaa !113
  %i.ago = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 16
  %i.agp = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 16
  %i.agq = load i64, ptr %i.ago, align 8, !tbaa !113
  store i64 %i.agq, ptr %i.agp, align 8, !tbaa !113
  %i.agr = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 24
  %i.ags = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 24
  %i.agt = load i64, ptr %i.agr, align 8, !tbaa !113
  store i64 %i.agt, ptr %i.ags, align 8, !tbaa !113
  %i.agu = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 32
  %i.agv = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 32
  %i.agw = load i64, ptr %i.agu, align 8, !tbaa !113
  store i64 %i.agw, ptr %i.agv, align 8, !tbaa !113
  %i.agx = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 40
  %i.agy = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 40
  %i.agz = load i64, ptr %i.agx, align 8, !tbaa !113
  store i64 %i.agz, ptr %i.agy, align 8, !tbaa !113
  %i.aha = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 48
  %i.ahb = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 48
  %i.ahc = load i64, ptr %i.aha, align 8, !tbaa !113
  store i64 %i.ahc, ptr %i.ahb, align 8, !tbaa !113
  %i.ahd = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 56
  %i.ahe = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 56
  %i.ahf = load i64, ptr %i.ahd, align 8, !tbaa !113
  store i64 %i.ahf, ptr %i.ahe, align 8, !tbaa !113
  %i.ahg = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 64
  %i.ahh = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 64 ; 2 uses
  %i.ahi = add nuw nsw i32 %.09614.us57.i, 8      ; 2 uses
  %exitcond.not.i64.7 = icmp eq i32 %i.ahi, %i.co
  br i1 %exitcond.not.i64.7, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1276, !llvm.loop !685

..preheader7_crit_edge.us60.i:                    ; preds = %vec.epilog.scalar.ph1276.prol.loopexit, %vec.epilog.scalar.ph1276, %vec.epilog.middle.block1287, %middle.block1269
  %.lcssa = phi ptr [ %i.aga, %vec.epilog.middle.block1287 ], [ %i.afq, %middle.block1269 ], [ %.lcssa1306.unr, %vec.epilog.scalar.ph1276.prol.loopexit ], [ %i.ahh, %vec.epilog.scalar.ph1276 ] ; 2 uses
  %i.ahj = getelementptr inbounds [2 x i8], ptr %.010122.us55.i, i64 %i.sk ; 2 uses
  %i.ahk = add nuw nsw i32 %.09924.us53.i, 1      ; 2 uses
  %exitcond131.not.i65 = icmp eq i32 %i.ahk, %i.rx
  %indvar.next1253 = add i64 %indvar1252, 1
  br i1 %exitcond131.not.i65, label %.preheader6.i, label %iter.check1275, !llvm.loop !654

.preheader6.i:                                    ; preds = %..preheader7_crit_edge.us60.i, %._crit_edge.us45.i, %._crit_edge.us45.us.i, %._crit_edge.us.i66, %.preheader9.preheader.i, %bb.n
  %.0101.lcssa.i = phi ptr [ %i.se, %bb.n ], [ %i.aeu, %._crit_edge.us45.i ], [ %i.wq, %._crit_edge.us.i66 ], [ %scevgep.i, %.preheader9.preheader.i ], [ %i.adf, %._crit_edge.us45.us.i ], [ %i.ahj, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %.0100.lcssa.i = phi ptr [ %i.bb, %bb.n ], [ %.lcssa252, %._crit_edge.us45.i ], [ %.3.lcssa.us.i67, %._crit_edge.us.i66 ], [ %i.bb, %.preheader9.preheader.i ], [ %.lcssa255, %._crit_edge.us45.us.i ], [ %.lcssa, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %i.ahl = icmp sgt i32 %i.cp, 0
  br i1 %i.ahl, label %.preheader5.lr.ph.i, label %._crit_edge85.i

.preheader5.lr.ph.i:                              ; preds = %.preheader6.i
  %i.ahm = icmp sgt i32 %i.rz, 0
  %i.ahn = icmp sgt i32 %i.co, 0
  %i.aho = icmp sgt i32 %i.sa, 0
  %i.ahp = zext i32 %i.rz to i64                  ; 16 uses
  %wide.trip.count163.i = zext i32 %i.sa to i64   ; 10 uses
  %i.ahq = shl nuw nsw i64 %wide.trip.count163.i, 3
  %i.ahr = mul nsw i64 %wide.trip.count163.i, -8
  %i.ahs = zext i32 %i.co to i64                  ; 5 uses
  %i.aht = shl nuw nsw i64 %i.ahp, 3              ; 2 uses
  %min.iters.check949 = icmp ult i32 %i.rz, 8
  %min.iters.check951 = icmp ult i32 %i.rz, 32
  %i.ahu = and i64 %i.ahp, 24
  %n.vec953 = and i64 %i.ahp, 2147483616          ; 5 uses
  %i.ahv = shl nuw nsw i64 %n.vec953, 3
  %cmp.n967 = icmp eq i64 %n.vec953, %i.ahp
  %min.epilog.iters.check973 = icmp eq i64 %i.ahu, 0
  %n.vec975 = and i64 %i.ahp, 2147483640          ; 4 uses
  %i.ahw = shl nuw nsw i64 %n.vec975, 3
  %cmp.n983 = icmp eq i64 %n.vec975, %i.ahp
  %xtraiter1362 = and i64 %i.ahp, 3               ; 2 uses
  %lcmp.mod1363.not = icmp eq i64 %xtraiter1362, 0
  %min.iters.check905 = icmp ult i32 %i.co, 8
  %min.iters.check907 = icmp ult i32 %i.co, 32
  %i.ahx = and i64 %i.ahs, 24
  %n.vec909 = and i64 %i.ahs, 2147483616          ; 5 uses
  %i.ahy = trunc nuw nsw i64 %n.vec909 to i32
  %i.ahz = shl nuw nsw i64 %n.vec909, 3           ; 2 uses
  %cmp.n920 = icmp eq i64 %n.vec909, %i.ahs
  %min.epilog.iters.check928 = icmp eq i64 %i.ahx, 0
  %n.vec930 = and i64 %i.ahs, 2147483640          ; 4 uses
  %i.aia = trunc nuw nsw i64 %n.vec930 to i32
  %i.aib = shl nuw nsw i64 %n.vec930, 3           ; 2 uses
  %cmp.n938 = icmp eq i64 %n.vec930, %i.ahs
  %min.iters.check864 = icmp ult i32 %i.sa, 8
  %min.iters.check866 = icmp ult i32 %i.sa, 32
  %i.aic = and i64 %wide.trip.count163.i, 24
  %n.vec868 = and i64 %wide.trip.count163.i, 2147483616 ; 5 uses
  %i.aid = shl nuw nsw i64 %n.vec868, 3
  %cmp.n882 = icmp eq i64 %n.vec868, %wide.trip.count163.i
  %min.epilog.iters.check888 = icmp eq i64 %i.aic, 0
  %n.vec890 = and i64 %wide.trip.count163.i, 2147483640 ; 4 uses
  %i.aie = shl nuw nsw i64 %n.vec890, 3
  %cmp.n898 = icmp eq i64 %n.vec890, %wide.trip.count163.i
  %xtraiter1368 = and i64 %wide.trip.count163.i, 3 ; 2 uses
  %lcmp.mod1369.not = icmp eq i64 %xtraiter1368, 0
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge.i61, %.preheader5.lr.ph.i
  %.09484.i = phi i32 [ 0, %.preheader5.lr.ph.i ], [ %i.anw, %._crit_edge.i61 ]
  %.483.i = phi ptr [ %.0100.lcssa.i, %.preheader5.lr.ph.i ], [ %.7.lcssa.i62, %._crit_edge.i61 ] ; 9 uses
  %.110282.i = phi ptr [ %.0101.lcssa.i, %.preheader5.lr.ph.i ], [ %.2103.lcssa.i, %._crit_edge.i61 ] ; 15 uses
  %.110282.i903 = ptrtoaddr ptr %.110282.i to i64
  br i1 %i.ahm, label %iter.check970, label %.preheader4.i57

iter.check970:                                    ; preds = %.preheader5.i
  br i1 %min.iters.check949, label %.lr.ph.i63.preheader, label %vector.memcheck942

vector.memcheck942:                               ; preds = %iter.check970
  %scevgep943 = getelementptr i8, ptr %.483.i, i64 %i.aht
  %scevgep944 = getelementptr i8, ptr %.110282.i, i64 8 ; 2 uses
  %scevgep945 = getelementptr i8, ptr %scevgep944, i64 %i.aht
  %bound0946 = icmp ult ptr %.483.i, %scevgep945
  %bound1947 = icmp ult ptr %scevgep944, %scevgep943
  %found.conflict948 = and i1 %bound0946, %bound1947
  br i1 %found.conflict948, label %.lr.ph.i63.preheader, label %vector.main.loop.iter.check950

vector.main.loop.iter.check950:                   ; preds = %vector.memcheck942
  br i1 %min.iters.check951, label %vec.epilog.ph974, label %vector.ph952

vector.ph952:                                     ; preds = %vector.main.loop.iter.check950
  %i.aif = getelementptr i8, ptr %.483.i, i64 %i.ahv ; 2 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.ph952, %vector.body954
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next965, %vector.body954 ] ; 3 uses
  %i.aig = shl i64 %index955, 3
  %next.gep956 = getelementptr i8, ptr %.483.i, i64 %i.aig ; 4 uses
  %i.aih = sub nuw nsw i64 %i.ahp, %index955
  %i.aii = shl nuw nsw i64 %i.aih, 3
  %i.aij = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %i.aii ; 4 uses
  %i.aik = getelementptr inbounds i8, ptr %i.aij, i64 -56
  %i.ail = getelementptr inbounds i8, ptr %i.aij, i64 -120
  %i.aim = getelementptr inbounds i8, ptr %i.aij, i64 -184
  %i.ain = getelementptr inbounds i8, ptr %i.aij, i64 -248
  %wide.load957 = load <8 x i64>, ptr %i.aik, align 8, !tbaa !113, !alias.scope !734
  %wide.load958 = load <8 x i64>, ptr %i.ail, align 8, !tbaa !113, !alias.scope !734
  %wide.load959 = load <8 x i64>, ptr %i.aim, align 8, !tbaa !113, !alias.scope !734
  %wide.load960 = load <8 x i64>, ptr %i.ain, align 8, !tbaa !113, !alias.scope !734
  %reverse961 = shufflevector <8 x i64> %wide.load957, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse962 = shufflevector <8 x i64> %wide.load958, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse963 = shufflevector <8 x i64> %wide.load959, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse964 = shufflevector <8 x i64> %wide.load960, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aio = getelementptr i8, ptr %next.gep956, i64 64
  %i.aip = getelementptr i8, ptr %next.gep956, i64 128
  %i.aiq = getelementptr i8, ptr %next.gep956, i64 192
  store <8 x i64> %reverse961, ptr %next.gep956, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  store <8 x i64> %reverse962, ptr %i.aio, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  store <8 x i64> %reverse963, ptr %i.aip, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  store <8 x i64> %reverse964, ptr %i.aiq, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  %index.next965 = add nuw i64 %index955, 32      ; 2 uses
  %i.air = icmp eq i64 %index.next965, %n.vec953
  br i1 %i.air, label %middle.block966, label %vector.body954, !llvm.loop !689

middle.block966:                                  ; preds = %vector.body954
  br i1 %cmp.n967, label %.preheader4.i57, label %vec.epilog.iter.check972

vec.epilog.iter.check972:                         ; preds = %middle.block966
  br i1 %min.epilog.iters.check973, label %.lr.ph.i63.preheader, label %vec.epilog.ph974, !prof !117

vec.epilog.ph974:                                 ; preds = %vector.main.loop.iter.check950, %vec.epilog.iter.check972
  %vec.epilog.resume.val968 = phi i64 [ %n.vec953, %vec.epilog.iter.check972 ], [ 0, %vector.main.loop.iter.check950 ]
  %i.ais = getelementptr i8, ptr %.483.i, i64 %i.ahw ; 2 uses
  br label %vec.epilog.vector.body976

vec.epilog.vector.body976:                        ; preds = %vec.epilog.vector.body976, %vec.epilog.ph974
  %index977 = phi i64 [ %vec.epilog.resume.val968, %vec.epilog.ph974 ], [ %index.next981, %vec.epilog.vector.body976 ] ; 3 uses
  %i.ait = shl i64 %index977, 3
  %next.gep978 = getelementptr i8, ptr %.483.i, i64 %i.ait
  %i.aiu = sub nuw nsw i64 %i.ahp, %index977
  %i.aiv = shl nuw nsw i64 %i.aiu, 3
  %i.aiw = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %i.aiv
  %i.aix = getelementptr inbounds i8, ptr %i.aiw, i64 -56
  %wide.load979 = load <8 x i64>, ptr %i.aix, align 8, !tbaa !113, !alias.scope !734
  %reverse980 = shufflevector <8 x i64> %wide.load979, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse980, ptr %next.gep978, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  %index.next981 = add nuw i64 %index977, 8       ; 2 uses
  %i.aiy = icmp eq i64 %index.next981, %n.vec975
  br i1 %i.aiy, label %vec.epilog.middle.block982, label %vec.epilog.vector.body976, !llvm.loop !690

vec.epilog.middle.block982:                       ; preds = %vec.epilog.vector.body976
  br i1 %cmp.n983, label %.preheader4.i57, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %iter.check970, %vector.memcheck942, %vec.epilog.iter.check972, %vec.epilog.middle.block982
  %indvars.iv154.i.ph = phi i64 [ 0, %iter.check970 ], [ 0, %vector.memcheck942 ], [ %n.vec953, %vec.epilog.iter.check972 ], [ %n.vec975, %vec.epilog.middle.block982 ] ; 3 uses
  %.570.i.ph = phi ptr [ %.483.i, %iter.check970 ], [ %.483.i, %vector.memcheck942 ], [ %i.aif, %vec.epilog.iter.check972 ], [ %i.ais, %vec.epilog.middle.block982 ] ; 2 uses
  br i1 %lcmp.mod1363.not, label %.lr.ph.i63.prol.loopexit, label %.lr.ph.i63.prol

.lr.ph.i63.prol:                                  ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63.prol
  %indvars.iv154.i.prol = phi i64 [ %indvars.iv.next155.i.prol, %.lr.ph.i63.prol ], [ %indvars.iv154.i.ph, %.lr.ph.i63.preheader ] ; 2 uses
  %.570.i.prol = phi ptr [ %i.ajc, %.lr.ph.i63.prol ], [ %.570.i.ph, %.lr.ph.i63.preheader ] ; 2 uses
  %prol.iter1364 = phi i64 [ %prol.iter1364.next, %.lr.ph.i63.prol ], [ 0, %.lr.ph.i63.preheader ]
  %i.aiz = sub nuw nsw i64 %i.ahp, %indvars.iv154.i.prol
  %.idx195.i.prol = shl nuw nsw i64 %i.aiz, 3
  %i.aja = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %.idx195.i.prol
  %i.ajb = load i64, ptr %i.aja, align 8, !tbaa !113
  store i64 %i.ajb, ptr %.570.i.prol, align 8, !tbaa !113
  %i.ajc = getelementptr inbounds nuw i8, ptr %.570.i.prol, i64 8 ; 3 uses
  %indvars.iv.next155.i.prol = add nuw nsw i64 %indvars.iv154.i.prol, 1 ; 2 uses
  %prol.iter1364.next = add i64 %prol.iter1364, 1 ; 2 uses
  %prol.iter1364.cmp.not = icmp eq i64 %prol.iter1364.next, %xtraiter1362
  br i1 %prol.iter1364.cmp.not, label %.lr.ph.i63.prol.loopexit, label %.lr.ph.i63.prol, !llvm.loop !691

.lr.ph.i63.prol.loopexit:                         ; preds = %.lr.ph.i63.prol, %.lr.ph.i63.preheader
  %.lcssa1319.unr = phi ptr [ poison, %.lr.ph.i63.preheader ], [ %i.ajc, %.lr.ph.i63.prol ]
  %indvars.iv154.i.unr = phi i64 [ %indvars.iv154.i.ph, %.lr.ph.i63.preheader ], [ %indvars.iv.next155.i.prol, %.lr.ph.i63.prol ]
  %.570.i.unr = phi ptr [ %.570.i.ph, %.lr.ph.i63.preheader ], [ %i.ajc, %.lr.ph.i63.prol ]
  %i.ajd = sub nsw i64 %indvars.iv154.i.ph, %i.ahp
  %i.aje = icmp ugt i64 %i.ajd, -4
  br i1 %i.aje, label %.preheader4.i57, label %.lr.ph.i63

._crit_edge85.i:                                  ; preds = %._crit_edge.i61, %.preheader6.i
  %.1102.lcssa.i = phi ptr [ %.0101.lcssa.i, %.preheader6.i ], [ %.2103.lcssa.i, %._crit_edge.i61 ] ; 3 uses
  %.4.lcssa.i50 = phi ptr [ %.0100.lcssa.i, %.preheader6.i ], [ %.7.lcssa.i62, %._crit_edge.i61 ]
  %i.ajf = icmp sgt i32 %i.ry, 0
  br i1 %i.ajf, label %.preheader2.lr.ph.i, label %_ZN4ncnn3MatD2Ev.exit37

.preheader2.lr.ph.i:                              ; preds = %._crit_edge85.i
  %.1102.lcssa.i773 = ptrtoaddr ptr %.1102.lcssa.i to i64
  %i.ajg = shl i32 %i.co, 3
  %i.ajh = sext i32 %i.ajg to i64                 ; 4 uses
  %i.aji = sub nsw i64 0, %i.ajh
  %i.ajj = getelementptr inbounds [2 x i8], ptr %.1102.lcssa.i, i64 %i.aji
  %i.ajk = icmp sgt i32 %i.rz, 0
  %i.ajl = icmp sgt i32 %i.co, 0
  %i.ajm = icmp sgt i32 %i.sa, 0
  %i.ajn = sext i32 %i.sb to i64                  ; 2 uses
  %i.ajo = sub nsw i64 0, %i.ajn
  %i.ajp = zext i32 %i.rz to i64                  ; 16 uses
  %wide.trip.count175.i = zext i32 %i.sa to i64   ; 10 uses
  %i.ajq = shl nuw nsw i64 %wide.trip.count175.i, 3
  %i.ajr = mul nsw i64 %wide.trip.count175.i, -8
  %i.ajs = shl nsw i64 %i.ajh, 1
  %i.ajt = sub i64 %i.ajs, %.1102.lcssa.i773
  %i.aju = shl nsw i64 %i.ajn, 1                  ; 2 uses
  %i.ajv = zext i32 %i.co to i64                  ; 5 uses
  %i.ajw = shl nuw nsw i64 %i.ajp, 3              ; 2 uses
  %scevgep814 = getelementptr i8, ptr %.1102.lcssa.i, i64 8 ; 2 uses
  %i.ajx = mul nsw i64 %i.ajh, -2
  %scevgep815 = getelementptr i8, ptr %scevgep814, i64 %i.ajx
  %i.ajy = add nsw i32 %i.ry, -1
  %i.ajz = zext i32 %i.ajy to i64
  %i.aka = mul i64 %i.aju, %i.ajz
  %i.akb = shl nsw i64 %i.ajh, 1
  %i.akc = add i64 %i.aka, %i.akb
  %i.akd = sub i64 %i.ajw, %i.akc
  %scevgep816 = getelementptr i8, ptr %scevgep814, i64 %i.akd
  %min.iters.check820 = icmp ult i32 %i.rz, 8
  %stride.check = icmp sgt i32 %i.sb, 0
  %min.iters.check822 = icmp ult i32 %i.rz, 32
  %i.ake = and i64 %i.ajp, 24
  %n.vec824 = and i64 %i.ajp, 2147483616          ; 5 uses
  %i.akf = shl nuw nsw i64 %n.vec824, 3
  %cmp.n838 = icmp eq i64 %n.vec824, %i.ajp
  %min.epilog.iters.check844 = icmp eq i64 %i.ake, 0
  %n.vec846 = and i64 %i.ajp, 2147483640          ; 4 uses
  %i.akg = shl nuw nsw i64 %n.vec846, 3
  %cmp.n854 = icmp eq i64 %n.vec846, %i.ajp
  %xtraiter1371 = and i64 %i.ajp, 3               ; 2 uses
  %lcmp.mod1372.not = icmp eq i64 %xtraiter1371, 0
  %min.iters.check775 = icmp ult i32 %i.co, 8
  %min.iters.check777 = icmp ult i32 %i.co, 32
  %i.akh = and i64 %i.ajv, 24
  %n.vec779 = and i64 %i.ajv, 2147483616          ; 5 uses
  %i.aki = trunc nuw nsw i64 %n.vec779 to i32
  %i.akj = shl nuw nsw i64 %n.vec779, 3           ; 2 uses
  %cmp.n790 = icmp eq i64 %n.vec779, %i.ajv
  %min.epilog.iters.check798 = icmp eq i64 %i.akh, 0
  %n.vec800 = and i64 %i.ajv, 2147483640          ; 4 uses
  %i.akk = trunc nuw nsw i64 %n.vec800 to i32
  %i.akl = shl nuw nsw i64 %n.vec800, 3           ; 2 uses
  %cmp.n808 = icmp eq i64 %n.vec800, %i.ajv
  %min.iters.check735 = icmp ult i32 %i.sa, 8
  %min.iters.check737 = icmp ult i32 %i.sa, 32
  %i.akm = and i64 %wide.trip.count175.i, 24
  %n.vec739 = and i64 %wide.trip.count175.i, 2147483616 ; 5 uses
  %i.akn = shl nuw nsw i64 %n.vec739, 3
  %cmp.n752 = icmp eq i64 %n.vec739, %wide.trip.count175.i
  %min.epilog.iters.check758 = icmp eq i64 %i.akm, 0
  %n.vec760 = and i64 %wide.trip.count175.i, 2147483640 ; 4 uses
  %i.ako = shl nuw nsw i64 %n.vec760, 3
  %cmp.n768 = icmp eq i64 %n.vec760, %wide.trip.count175.i
  %xtraiter1377 = and i64 %wide.trip.count175.i, 3 ; 2 uses
  %lcmp.mod1378.not = icmp eq i64 %xtraiter1377, 0
  br label %.preheader2.i51

.preheader4.i57:                                  ; preds = %.lr.ph.i63.prol.loopexit, %.lr.ph.i63, %middle.block966, %vec.epilog.middle.block982, %.preheader5.i
  %.5.lcssa.i58 = phi ptr [ %.483.i, %.preheader5.i ], [ %i.ais, %vec.epilog.middle.block982 ], [ %i.aif, %middle.block966 ], [ %.lcssa1319.unr, %.lr.ph.i63.prol.loopexit ], [ %i.aly, %.lr.ph.i63 ] ; 7 uses
  br i1 %i.ahn, label %iter.check925, label %.preheader3.i59

iter.check925:                                    ; preds = %.preheader4.i57
  %.5.lcssa.i58902 = ptrtoaddr ptr %.5.lcssa.i58 to i64
  %i.akp = sub i64 %.110282.i903, %.5.lcssa.i58902
  %diff.check904 = icmp ugt i64 %i.akp, -256
  %or.cond1296 = select i1 %min.iters.check905, i1 true, i1 %diff.check904
  br i1 %or.cond1296, label %.lr.ph75.i.preheader, label %vector.main.loop.iter.check906

vector.main.loop.iter.check906:                   ; preds = %iter.check925
  br i1 %min.iters.check907, label %vec.epilog.ph929, label %vector.ph908

vector.ph908:                                     ; preds = %vector.main.loop.iter.check906
  %i.akq = getelementptr i8, ptr %.5.lcssa.i58, i64 %i.ahz ; 2 uses
  %i.akr = getelementptr i8, ptr %.110282.i, i64 %i.ahz ; 2 uses
  br label %vector.body910

vector.body910:                                   ; preds = %vector.ph908, %vector.body910
  %index911 = phi i64 [ 0, %vector.ph908 ], [ %index.next918, %vector.body910 ] ; 2 uses
  %i.aks = shl i64 %index911, 3                   ; 2 uses
  %next.gep912 = getelementptr i8, ptr %.5.lcssa.i58, i64 %i.aks ; 4 uses
  %next.gep913 = getelementptr i8, ptr %.110282.i, i64 %i.aks ; 4 uses
  %i.akt = getelementptr i8, ptr %next.gep913, i64 64
  %i.aku = getelementptr i8, ptr %next.gep913, i64 128
  %i.akv = getelementptr i8, ptr %next.gep913, i64 192
  %wide.load914 = load <8 x i64>, ptr %next.gep913, align 8, !tbaa !113
  %wide.load915 = load <8 x i64>, ptr %i.akt, align 8, !tbaa !113
  %wide.load916 = load <8 x i64>, ptr %i.aku, align 8, !tbaa !113
  %wide.load917 = load <8 x i64>, ptr %i.akv, align 8, !tbaa !113
  %i.akw = getelementptr i8, ptr %next.gep912, i64 64
  %i.akx = getelementptr i8, ptr %next.gep912, i64 128
  %i.aky = getelementptr i8, ptr %next.gep912, i64 192
  store <8 x i64> %wide.load914, ptr %next.gep912, align 8, !tbaa !113
  store <8 x i64> %wide.load915, ptr %i.akw, align 8, !tbaa !113
  store <8 x i64> %wide.load916, ptr %i.akx, align 8, !tbaa !113
  store <8 x i64> %wide.load917, ptr %i.aky, align 8, !tbaa !113
  %index.next918 = add nuw i64 %index911, 32      ; 2 uses
  %i.akz = icmp eq i64 %index.next918, %n.vec909
  br i1 %i.akz, label %middle.block919, label %vector.body910, !llvm.loop !692

middle.block919:                                  ; preds = %vector.body910
  br i1 %cmp.n920, label %.preheader3.i59, label %vec.epilog.iter.check927

vec.epilog.iter.check927:                         ; preds = %middle.block919
  br i1 %min.epilog.iters.check928, label %.lr.ph75.i.preheader, label %vec.epilog.ph929, !prof !117

vec.epilog.ph929:                                 ; preds = %vector.main.loop.iter.check906, %vec.epilog.iter.check927
  %vec.epilog.resume.val921 = phi i64 [ %n.vec909, %vec.epilog.iter.check927 ], [ 0, %vector.main.loop.iter.check906 ]
  %i.ala = getelementptr i8, ptr %.5.lcssa.i58, i64 %i.aib ; 2 uses
  %i.alb = getelementptr i8, ptr %.110282.i, i64 %i.aib ; 2 uses
  br label %vec.epilog.vector.body931

vec.epilog.vector.body931:                        ; preds = %vec.epilog.vector.body931, %vec.epilog.ph929
  %index932 = phi i64 [ %vec.epilog.resume.val921, %vec.epilog.ph929 ], [ %index.next936, %vec.epilog.vector.body931 ] ; 2 uses
  %i.alc = shl i64 %index932, 3                   ; 2 uses
  %next.gep933 = getelementptr i8, ptr %.5.lcssa.i58, i64 %i.alc
  %next.gep934 = getelementptr i8, ptr %.110282.i, i64 %i.alc
  %wide.load935 = load <8 x i64>, ptr %next.gep934, align 8, !tbaa !113
  store <8 x i64> %wide.load935, ptr %next.gep933, align 8, !tbaa !113
  %index.next936 = add nuw i64 %index932, 8       ; 2 uses
  %i.ald = icmp eq i64 %index.next936, %n.vec930
  br i1 %i.ald, label %vec.epilog.middle.block937, label %vec.epilog.vector.body931, !llvm.loop !693

vec.epilog.middle.block937:                       ; preds = %vec.epilog.vector.body931
  br i1 %cmp.n938, label %.preheader3.i59, label %.lr.ph75.i.preheader

.lr.ph75.i.preheader:                             ; preds = %iter.check925, %vec.epilog.iter.check927, %vec.epilog.middle.block937
  %.09274.i.ph = phi i32 [ 0, %iter.check925 ], [ %i.ahy, %vec.epilog.iter.check927 ], [ %i.aia, %vec.epilog.middle.block937 ] ; 4 uses
  %.673.i.ph = phi ptr [ %.5.lcssa.i58, %iter.check925 ], [ %i.akq, %vec.epilog.iter.check927 ], [ %i.ala, %vec.epilog.middle.block937 ] ; 2 uses
  %.210372.i.ph = phi ptr [ %.110282.i, %iter.check925 ], [ %i.akr, %vec.epilog.iter.check927 ], [ %i.alb, %vec.epilog.middle.block937 ] ; 2 uses
  %i.ale = sub i32 %i.co, %.09274.i.ph
  %xtraiter1365 = and i32 %i.ale, 7               ; 2 uses
  %lcmp.mod1366.not = icmp eq i32 %xtraiter1365, 0
  br i1 %lcmp.mod1366.not, label %.lr.ph75.i.prol.loopexit, label %.lr.ph75.i.prol

.lr.ph75.i.prol:                                  ; preds = %.lr.ph75.i.preheader, %.lr.ph75.i.prol
  %.09274.i.prol = phi i32 [ %i.ali, %.lr.ph75.i.prol ], [ %.09274.i.ph, %.lr.ph75.i.preheader ]
  %.673.i.prol = phi ptr [ %i.alh, %.lr.ph75.i.prol ], [ %.673.i.ph, %.lr.ph75.i.preheader ] ; 2 uses
  %.210372.i.prol = phi ptr [ %i.alg, %.lr.ph75.i.prol ], [ %.210372.i.ph, %.lr.ph75.i.preheader ] ; 2 uses
  %prol.iter1367 = phi i32 [ %prol.iter1367.next, %.lr.ph75.i.prol ], [ 0, %.lr.ph75.i.preheader ]
  %i.alf = load i64, ptr %.210372.i.prol, align 8, !tbaa !113
  store i64 %i.alf, ptr %.673.i.prol, align 8, !tbaa !113
  %i.alg = getelementptr inbounds nuw i8, ptr %.210372.i.prol, i64 8 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.673.i.prol, i64 8 ; 3 uses
  %i.ali = add nuw nsw i32 %.09274.i.prol, 1      ; 2 uses
  %prol.iter1367.next = add i32 %prol.iter1367, 1 ; 2 uses
  %prol.iter1367.cmp.not = icmp eq i32 %prol.iter1367.next, %xtraiter1365
  br i1 %prol.iter1367.cmp.not, label %.lr.ph75.i.prol.loopexit, label %.lr.ph75.i.prol, !llvm.loop !694

.lr.ph75.i.prol.loopexit:                         ; preds = %.lr.ph75.i.prol, %.lr.ph75.i.preheader
  %.lcssa1321.unr = phi ptr [ poison, %.lr.ph75.i.preheader ], [ %i.alg, %.lr.ph75.i.prol ]
  %.lcssa1320.unr = phi ptr [ poison, %.lr.ph75.i.preheader ], [ %i.alh, %.lr.ph75.i.prol ]
  %.09274.i.unr = phi i32 [ %.09274.i.ph, %.lr.ph75.i.preheader ], [ %i.ali, %.lr.ph75.i.prol ]
  %.673.i.unr = phi ptr [ %.673.i.ph, %.lr.ph75.i.preheader ], [ %i.alh, %.lr.ph75.i.prol ]
  %.210372.i.unr = phi ptr [ %.210372.i.ph, %.lr.ph75.i.preheader ], [ %i.alg, %.lr.ph75.i.prol ]
  %i.alj = sub i32 %.09274.i.ph, %i.co
  %i.alk = icmp ugt i32 %i.alj, -8
  br i1 %i.alk, label %.preheader3.i59, label %.lr.ph75.i

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.prol.loopexit, %.lr.ph.i63
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i.3, %.lr.ph.i63 ], [ %indvars.iv154.i.unr, %.lr.ph.i63.prol.loopexit ] ; 5 uses
  %.570.i = phi ptr [ %i.aly, %.lr.ph.i63 ], [ %.570.i.unr, %.lr.ph.i63.prol.loopexit ] ; 5 uses
  %i.all = sub nuw nsw i64 %i.ahp, %indvars.iv154.i
  %.idx195.i = shl nuw nsw i64 %i.all, 3
  %i.alm = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %.idx195.i
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !113
  store i64 %i.aln, ptr %.570.i, align 8, !tbaa !113
  %i.alo = getelementptr inbounds nuw i8, ptr %.570.i, i64 8
  %indvars.iv.next155.i.neg = xor i64 %indvars.iv154.i, -1
  %i.alp = add i64 %indvars.iv.next155.i.neg, %i.ahp
  %.idx195.i.1 = shl nuw nsw i64 %i.alp, 3
  %i.alq = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %.idx195.i.1
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !113
  store i64 %i.alr, ptr %i.alo, align 8, !tbaa !113
  %i.als = getelementptr inbounds nuw i8, ptr %.570.i, i64 16
  %indvars.iv.next155.i.1 = add nuw nsw i64 %indvars.iv154.i, 2
  %14 = sub nuw nsw i64 %i.ahp, %indvars.iv.next155.i.1
  %.idx195.i.2 = shl nuw nsw i64 %14, 3
  %i.alt = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %.idx195.i.2
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !113
  store i64 %i.alu, ptr %i.als, align 8, !tbaa !113
  %i.alv = getelementptr inbounds nuw i8, ptr %.570.i, i64 24
  %indvars.iv.next155.i.2 = add nuw nsw i64 %indvars.iv154.i, 3
  %15 = sub nuw nsw i64 %i.ahp, %indvars.iv.next155.i.2
  %.idx195.i.3 = shl nuw nsw i64 %15, 3
  %i.alw = getelementptr inbounds nuw i8, ptr %.110282.i, i64 %.idx195.i.3
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !113
  store i64 %i.alx, ptr %i.alv, align 8, !tbaa !113
  %i.aly = getelementptr inbounds nuw i8, ptr %.570.i, i64 32 ; 2 uses
  %indvars.iv.next155.i.3 = add nuw nsw i64 %indvars.iv154.i, 4 ; 2 uses
  %exitcond158.not.i.3 = icmp eq i64 %indvars.iv.next155.i.3, %i.ahp
  br i1 %exitcond158.not.i.3, label %.preheader4.i57, label %.lr.ph.i63, !llvm.loop !695

.preheader3.i59:                                  ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i, %middle.block919, %vec.epilog.middle.block937, %.preheader4.i57
  %.2103.lcssa.i = phi ptr [ %.110282.i, %.preheader4.i57 ], [ %i.alb, %vec.epilog.middle.block937 ], [ %i.akr, %middle.block919 ], [ %.lcssa1321.unr, %.lr.ph75.i.prol.loopexit ], [ %i.ant, %.lr.ph75.i ] ; 4 uses
  %.6.lcssa.i60 = phi ptr [ %.5.lcssa.i58, %.preheader4.i57 ], [ %i.ala, %vec.epilog.middle.block937 ], [ %i.akq, %middle.block919 ], [ %.lcssa1320.unr, %.lr.ph75.i.prol.loopexit ], [ %i.anu, %.lr.ph75.i ] ; 9 uses
  br i1 %i.aho, label %iter.check885, label %._crit_edge.i61

iter.check885:                                    ; preds = %.preheader3.i59
  %i.alz = getelementptr inbounds i8, ptr %.2103.lcssa.i, i64 -16 ; 7 uses
  br i1 %min.iters.check864, label %vec.epilog.scalar.ph886.preheader, label %vector.memcheck857

vector.memcheck857:                               ; preds = %iter.check885
  %scevgep858 = getelementptr i8, ptr %.6.lcssa.i60, i64 %i.ahq
  %scevgep859 = getelementptr i8, ptr %.2103.lcssa.i, i64 -8 ; 2 uses
  %scevgep860 = getelementptr i8, ptr %scevgep859, i64 %i.ahr
  %bound0861 = icmp ult ptr %.6.lcssa.i60, %scevgep859
  %bound1862 = icmp ult ptr %scevgep860, %scevgep858
  %found.conflict863 = and i1 %bound0861, %bound1862
  br i1 %found.conflict863, label %vec.epilog.scalar.ph886.preheader, label %vector.main.loop.iter.check865

vector.main.loop.iter.check865:                   ; preds = %vector.memcheck857
  br i1 %min.iters.check866, label %vec.epilog.ph889, label %vector.ph867

vector.ph867:                                     ; preds = %vector.main.loop.iter.check865
  %i.ama = getelementptr i8, ptr %.6.lcssa.i60, i64 %i.aid ; 2 uses
  br label %vector.body869

vector.body869:                                   ; preds = %vector.ph867, %vector.body869
  %index870 = phi i64 [ 0, %vector.ph867 ], [ %index.next880, %vector.body869 ] ; 3 uses
  %i.amb = shl i64 %index870, 3
  %next.gep871 = getelementptr i8, ptr %.6.lcssa.i60, i64 %i.amb ; 4 uses
  %i.amc = mul nsw i64 %index870, -8
  %i.amd = getelementptr inbounds i8, ptr %i.alz, i64 %i.amc ; 4 uses
  %i.ame = getelementptr inbounds i8, ptr %i.amd, i64 -56
  %i.amf = getelementptr inbounds i8, ptr %i.amd, i64 -120
  %i.amg = getelementptr inbounds i8, ptr %i.amd, i64 -184
  %i.amh = getelementptr inbounds i8, ptr %i.amd, i64 -248
  %wide.load872 = load <8 x i64>, ptr %i.ame, align 8, !tbaa !113, !alias.scope !736
  %wide.load873 = load <8 x i64>, ptr %i.amf, align 8, !tbaa !113, !alias.scope !736
  %wide.load874 = load <8 x i64>, ptr %i.amg, align 8, !tbaa !113, !alias.scope !736
  %wide.load875 = load <8 x i64>, ptr %i.amh, align 8, !tbaa !113, !alias.scope !736
  %reverse876 = shufflevector <8 x i64> %wide.load872, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse877 = shufflevector <8 x i64> %wide.load873, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse878 = shufflevector <8 x i64> %wide.load874, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse879 = shufflevector <8 x i64> %wide.load875, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ami = getelementptr i8, ptr %next.gep871, i64 64
  %i.amj = getelementptr i8, ptr %next.gep871, i64 128
  %i.amk = getelementptr i8, ptr %next.gep871, i64 192
  store <8 x i64> %reverse876, ptr %next.gep871, align 8, !tbaa !113, !alias.scope !737, !noalias !736
  store <8 x i64> %reverse877, ptr %i.ami, align 8, !tbaa !113, !alias.scope !737, !noalias !736
  store <8 x i64> %reverse878, ptr %i.amj, align 8, !tbaa !113, !alias.scope !737, !noalias !736
  store <8 x i64> %reverse879, ptr %i.amk, align 8, !tbaa !113, !alias.scope !737, !noalias !736
  %index.next880 = add nuw i64 %index870, 32      ; 2 uses
  %i.aml = icmp eq i64 %index.next880, %n.vec868
  br i1 %i.aml, label %middle.block881, label %vector.body869, !llvm.loop !699

middle.block881:                                  ; preds = %vector.body869
  br i1 %cmp.n882, label %._crit_edge.i61, label %vec.epilog.iter.check887

vec.epilog.iter.check887:                         ; preds = %middle.block881
  br i1 %min.epilog.iters.check888, label %vec.epilog.scalar.ph886.preheader, label %vec.epilog.ph889, !prof !117

vec.epilog.ph889:                                 ; preds = %vector.main.loop.iter.check865, %vec.epilog.iter.check887
  %vec.epilog.resume.val883 = phi i64 [ %n.vec868, %vec.epilog.iter.check887 ], [ 0, %vector.main.loop.iter.check865 ]
  %i.amm = getelementptr i8, ptr %.6.lcssa.i60, i64 %i.aie ; 2 uses
  br label %vec.epilog.vector.body891

vec.epilog.vector.body891:                        ; preds = %vec.epilog.vector.body891, %vec.epilog.ph889
  %index892 = phi i64 [ %vec.epilog.resume.val883, %vec.epilog.ph889 ], [ %index.next896, %vec.epilog.vector.body891 ] ; 3 uses
  %i.amn = shl i64 %index892, 3
  %next.gep893 = getelementptr i8, ptr %.6.lcssa.i60, i64 %i.amn
  %i.amo = mul nsw i64 %index892, -8
  %i.amp = getelementptr inbounds i8, ptr %i.alz, i64 %i.amo
  %i.amq = getelementptr inbounds i8, ptr %i.amp, i64 -56
  %wide.load894 = load <8 x i64>, ptr %i.amq, align 8, !tbaa !113, !alias.scope !736
  %reverse895 = shufflevector <8 x i64> %wide.load894, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse895, ptr %next.gep893, align 8, !tbaa !113, !alias.scope !737, !noalias !736
  %index.next896 = add nuw i64 %index892, 8       ; 2 uses
  %i.amr = icmp eq i64 %index.next896, %n.vec890
  br i1 %i.amr, label %vec.epilog.middle.block897, label %vec.epilog.vector.body891, !llvm.loop !700

vec.epilog.middle.block897:                       ; preds = %vec.epilog.vector.body891
  br i1 %cmp.n898, label %._crit_edge.i61, label %vec.epilog.scalar.ph886.preheader

vec.epilog.scalar.ph886.preheader:                ; preds = %iter.check885, %vector.memcheck857, %vec.epilog.iter.check887, %vec.epilog.middle.block897
  %indvars.iv160.i.ph = phi i64 [ 0, %iter.check885 ], [ 0, %vector.memcheck857 ], [ %n.vec868, %vec.epilog.iter.check887 ], [ %n.vec890, %vec.epilog.middle.block897 ] ; 3 uses
  %.778.i.ph = phi ptr [ %.6.lcssa.i60, %iter.check885 ], [ %.6.lcssa.i60, %vector.memcheck857 ], [ %i.ama, %vec.epilog.iter.check887 ], [ %i.amm, %vec.epilog.middle.block897 ] ; 2 uses
  br i1 %lcmp.mod1369.not, label %vec.epilog.scalar.ph886.prol.loopexit, label %vec.epilog.scalar.ph886.prol

vec.epilog.scalar.ph886.prol:                     ; preds = %vec.epilog.scalar.ph886.preheader, %vec.epilog.scalar.ph886.prol
  %indvars.iv160.i.prol = phi i64 [ %indvars.iv.next161.i.prol, %vec.epilog.scalar.ph886.prol ], [ %indvars.iv160.i.ph, %vec.epilog.scalar.ph886.preheader ] ; 2 uses
  %.778.i.prol = phi ptr [ %i.amu, %vec.epilog.scalar.ph886.prol ], [ %.778.i.ph, %vec.epilog.scalar.ph886.preheader ] ; 2 uses
  %prol.iter1370 = phi i64 [ %prol.iter1370.next, %vec.epilog.scalar.ph886.prol ], [ 0, %vec.epilog.scalar.ph886.preheader ]
  %.idx196.i.prol = mul nsw i64 %indvars.iv160.i.prol, -8
  %i.ams = getelementptr inbounds i8, ptr %i.alz, i64 %.idx196.i.prol
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !113
  store i64 %i.amt, ptr %.778.i.prol, align 8, !tbaa !113
  %i.amu = getelementptr inbounds nuw i8, ptr %.778.i.prol, i64 8 ; 3 uses
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.prol, 1 ; 2 uses
  %prol.iter1370.next = add i64 %prol.iter1370, 1 ; 2 uses
  %prol.iter1370.cmp.not = icmp eq i64 %prol.iter1370.next, %xtraiter1368
  br i1 %prol.iter1370.cmp.not, label %vec.epilog.scalar.ph886.prol.loopexit, label %vec.epilog.scalar.ph886.prol, !llvm.loop !701

vec.epilog.scalar.ph886.prol.loopexit:            ; preds = %vec.epilog.scalar.ph886.prol, %vec.epilog.scalar.ph886.preheader
  %.lcssa1322.unr = phi ptr [ poison, %vec.epilog.scalar.ph886.preheader ], [ %i.amu, %vec.epilog.scalar.ph886.prol ]
  %indvars.iv160.i.unr = phi i64 [ %indvars.iv160.i.ph, %vec.epilog.scalar.ph886.preheader ], [ %indvars.iv.next161.i.prol, %vec.epilog.scalar.ph886.prol ]
  %.778.i.unr = phi ptr [ %.778.i.ph, %vec.epilog.scalar.ph886.preheader ], [ %i.amu, %vec.epilog.scalar.ph886.prol ]
  %i.amv = sub nsw i64 %indvars.iv160.i.ph, %wide.trip.count163.i
  %i.amw = icmp ugt i64 %i.amv, -4
  br i1 %i.amw, label %._crit_edge.i61, label %vec.epilog.scalar.ph886

.lr.ph75.i:                                       ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i
  %.09274.i = phi i32 [ %i.anv, %.lr.ph75.i ], [ %.09274.i.unr, %.lr.ph75.i.prol.loopexit ]
  %.673.i = phi ptr [ %i.anu, %.lr.ph75.i ], [ %.673.i.unr, %.lr.ph75.i.prol.loopexit ] ; 9 uses
  %.210372.i = phi ptr [ %i.ant, %.lr.ph75.i ], [ %.210372.i.unr, %.lr.ph75.i.prol.loopexit ] ; 9 uses
  %i.amx = load i64, ptr %.210372.i, align 8, !tbaa !113
  store i64 %i.amx, ptr %.673.i, align 8, !tbaa !113
  %i.amy = getelementptr inbounds nuw i8, ptr %.210372.i, i64 8
  %i.amz = getelementptr inbounds nuw i8, ptr %.673.i, i64 8
  %i.ana = load i64, ptr %i.amy, align 8, !tbaa !113
  store i64 %i.ana, ptr %i.amz, align 8, !tbaa !113
  %i.anb = getelementptr inbounds nuw i8, ptr %.210372.i, i64 16
  %i.anc = getelementptr inbounds nuw i8, ptr %.673.i, i64 16
  %i.and = load i64, ptr %i.anb, align 8, !tbaa !113
  store i64 %i.and, ptr %i.anc, align 8, !tbaa !113
  %i.ane = getelementptr inbounds nuw i8, ptr %.210372.i, i64 24
  %i.anf = getelementptr inbounds nuw i8, ptr %.673.i, i64 24
  %i.ang = load i64, ptr %i.ane, align 8, !tbaa !113
  store i64 %i.ang, ptr %i.anf, align 8, !tbaa !113
  %i.anh = getelementptr inbounds nuw i8, ptr %.210372.i, i64 32
  %i.ani = getelementptr inbounds nuw i8, ptr %.673.i, i64 32
  %i.anj = load i64, ptr %i.anh, align 8, !tbaa !113
  store i64 %i.anj, ptr %i.ani, align 8, !tbaa !113
  %i.ank = getelementptr inbounds nuw i8, ptr %.210372.i, i64 40
  %i.anl = getelementptr inbounds nuw i8, ptr %.673.i, i64 40
  %i.anm = load i64, ptr %i.ank, align 8, !tbaa !113
  store i64 %i.anm, ptr %i.anl, align 8, !tbaa !113
  %i.ann = getelementptr inbounds nuw i8, ptr %.210372.i, i64 48
  %i.ano = getelementptr inbounds nuw i8, ptr %.673.i, i64 48
  %i.anp = load i64, ptr %i.ann, align 8, !tbaa !113
  store i64 %i.anp, ptr %i.ano, align 8, !tbaa !113
  %i.anq = getelementptr inbounds nuw i8, ptr %.210372.i, i64 56
  %i.anr = getelementptr inbounds nuw i8, ptr %.673.i, i64 56
  %i.ans = load i64, ptr %i.anq, align 8, !tbaa !113
  store i64 %i.ans, ptr %i.anr, align 8, !tbaa !113
  %i.ant = getelementptr inbounds nuw i8, ptr %.210372.i, i64 64 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.673.i, i64 64 ; 2 uses
  %i.anv = add nuw nsw i32 %.09274.i, 8           ; 2 uses
  %exitcond159.not.i.7 = icmp eq i32 %i.anv, %i.co
  br i1 %exitcond159.not.i.7, label %.preheader3.i59, label %.lr.ph75.i, !llvm.loop !702

._crit_edge.i61:                                  ; preds = %vec.epilog.scalar.ph886.prol.loopexit, %vec.epilog.scalar.ph886, %middle.block881, %vec.epilog.middle.block897, %.preheader3.i59
  %.7.lcssa.i62 = phi ptr [ %.6.lcssa.i60, %.preheader3.i59 ], [ %i.amm, %vec.epilog.middle.block897 ], [ %i.ama, %middle.block881 ], [ %.lcssa1322.unr, %vec.epilog.scalar.ph886.prol.loopexit ], [ %i.aok, %vec.epilog.scalar.ph886 ] ; 2 uses
  %i.anw = add nuw nsw i32 %.09484.i, 1           ; 2 uses
  %exitcond165.not.i = icmp eq i32 %i.anw, %i.cp
  br i1 %exitcond165.not.i, label %._crit_edge85.i, label %.preheader5.i, !llvm.loop !703

vec.epilog.scalar.ph886:                          ; preds = %vec.epilog.scalar.ph886.prol.loopexit, %vec.epilog.scalar.ph886
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.3, %vec.epilog.scalar.ph886 ], [ %indvars.iv160.i.unr, %vec.epilog.scalar.ph886.prol.loopexit ] ; 5 uses
  %.778.i = phi ptr [ %i.aok, %vec.epilog.scalar.ph886 ], [ %.778.i.unr, %vec.epilog.scalar.ph886.prol.loopexit ] ; 5 uses
  %.idx196.i = mul nsw i64 %indvars.iv160.i, -8
  %i.anx = getelementptr inbounds i8, ptr %i.alz, i64 %.idx196.i
  %i.any = load i64, ptr %i.anx, align 8, !tbaa !113
  store i64 %i.any, ptr %.778.i, align 8, !tbaa !113
  %i.anz = getelementptr inbounds nuw i8, ptr %.778.i, i64 8
  %indvars.iv.next161.i.neg = xor i64 %indvars.iv160.i, -1
  %.idx196.i.1 = shl nsw i64 %indvars.iv.next161.i.neg, 3
  %i.aoa = getelementptr inbounds i8, ptr %i.alz, i64 %.idx196.i.1
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !113
  store i64 %i.aob, ptr %i.anz, align 8, !tbaa !113
  %i.aoc = getelementptr inbounds nuw i8, ptr %.778.i, i64 16
  %i.aod = shl i64 %indvars.iv160.i, 3
  %.idx196.i.2 = sub i64 -16, %i.aod
  %i.aoe = getelementptr inbounds i8, ptr %i.alz, i64 %.idx196.i.2
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !113
  store i64 %i.aof, ptr %i.aoc, align 8, !tbaa !113
  %i.aog = getelementptr inbounds nuw i8, ptr %.778.i, i64 24
  %i.aoh = shl i64 %indvars.iv160.i, 3
  %.idx196.i.3 = sub i64 -24, %i.aoh
  %i.aoi = getelementptr inbounds i8, ptr %i.alz, i64 %.idx196.i.3
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !113
  store i64 %i.aoj, ptr %i.aog, align 8, !tbaa !113
  %i.aok = getelementptr inbounds nuw i8, ptr %.778.i, i64 32 ; 2 uses
  %indvars.iv.next161.i.3 = add nuw nsw i64 %indvars.iv160.i, 4 ; 2 uses
  %exitcond164.not.i.3 = icmp eq i64 %indvars.iv.next161.i.3, %wide.trip.count163.i
  br i1 %exitcond164.not.i.3, label %._crit_edge.i61, label %vec.epilog.scalar.ph886, !llvm.loop !704

.preheader2.i51:                                  ; preds = %._crit_edge101.i, %.preheader2.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge101.i ], [ 0, %.preheader2.lr.ph.i ] ; 2 uses
  %.090105.i = phi i32 [ %i.asx, %._crit_edge101.i ], [ 0, %.preheader2.lr.ph.i ]
  %.8104.i = phi ptr [ %.11.lcssa.i56, %._crit_edge101.i ], [ %.4.lcssa.i50, %.preheader2.lr.ph.i ] ; 9 uses
  %.3104103.i = phi ptr [ %i.asw, %._crit_edge101.i ], [ %i.ajj, %.preheader2.lr.ph.i ] ; 15 uses
  %i.aol = mul i64 %i.aju, %indvar
  %i.aom = add i64 %i.ajt, %i.aol
  br i1 %i.ajk, label %iter.check841, label %.preheader1.i52
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a

vector.main.loop.iter.check821:                   ; preds = %vector.memcheck812
  br i1 %min.iters.check822, label %vec.epilog.ph845, label %vector.ph823

vector.ph823:                                     ; preds = %vector.main.loop.iter.check821
  %i.aoo = getelementptr i8, ptr %.8104.i, i64 %i.akf ; 2 uses
  br label %vector.body825

vector.body825:                                   ; preds = %vector.ph823, %vector.body825
  %index826 = phi i64 [ 0, %vector.ph823 ], [ %index.next836, %vector.body825 ] ; 3 uses
  %i.aop = shl i64 %index826, 3
  %next.gep827 = getelementptr i8, ptr %.8104.i, i64 %i.aop ; 4 uses
  %i.aoq = sub nuw nsw i64 %i.ajp, %index826
  %i.aor = shl nuw nsw i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %i.aor ; 4 uses
  %i.aot = getelementptr inbounds i8, ptr %i.aos, i64 -56
  %i.aou = getelementptr inbounds i8, ptr %i.aos, i64 -120
  %i.aov = getelementptr inbounds i8, ptr %i.aos, i64 -184
  %i.aow = getelementptr inbounds i8, ptr %i.aos, i64 -248
  %wide.load828 = load <8 x i64>, ptr %i.aot, align 8, !tbaa !113, !alias.scope !738
  %wide.load829 = load <8 x i64>, ptr %i.aou, align 8, !tbaa !113, !alias.scope !738
  %wide.load830 = load <8 x i64>, ptr %i.aov, align 8, !tbaa !113, !alias.scope !738
  %wide.load831 = load <8 x i64>, ptr %i.aow, align 8, !tbaa !113, !alias.scope !738
  %reverse832 = shufflevector <8 x i64> %wide.load828, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse833 = shufflevector <8 x i64> %wide.load829, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse834 = shufflevector <8 x i64> %wide.load830, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse835 = shufflevector <8 x i64> %wide.load831, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aox = getelementptr i8, ptr %next.gep827, i64 64
  %i.aoy = getelementptr i8, ptr %next.gep827, i64 128
  %i.aoz = getelementptr i8, ptr %next.gep827, i64 192
  store <8 x i64> %reverse832, ptr %next.gep827, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse833, ptr %i.aox, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse834, ptr %i.aoy, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse835, ptr %i.aoz, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  %index.next836 = add nuw i64 %index826, 32      ; 2 uses
  %i.apa = icmp eq i64 %index.next836, %n.vec824
  br i1 %i.apa, label %middle.block837, label %vector.body825, !llvm.loop !708

middle.block837:                                  ; preds = %vector.body825
  br i1 %cmp.n838, label %.preheader1.i52, label %vec.epilog.iter.check843

vec.epilog.iter.check843:                         ; preds = %middle.block837
  br i1 %min.epilog.iters.check844, label %.lr.ph90.i.preheader, label %vec.epilog.ph845, !prof !117

vec.epilog.ph845:                                 ; preds = %vector.main.loop.iter.check821, %vec.epilog.iter.check843
  %vec.epilog.resume.val839 = phi i64 [ %n.vec824, %vec.epilog.iter.check843 ], [ 0, %vector.main.loop.iter.check821 ]
  %i.apb = getelementptr i8, ptr %.8104.i, i64 %i.akg ; 2 uses
  br label %vec.epilog.vector.body847

vec.epilog.vector.body847:                        ; preds = %vec.epilog.vector.body847, %vec.epilog.ph845
  %index848 = phi i64 [ %vec.epilog.resume.val839, %vec.epilog.ph845 ], [ %index.next852, %vec.epilog.vector.body847 ] ; 3 uses
  %i.apc = shl i64 %index848, 3
  %next.gep849 = getelementptr i8, ptr %.8104.i, i64 %i.apc
  %i.apd = sub nuw nsw i64 %i.ajp, %index848
  %i.ape = shl nuw nsw i64 %i.apd, 3
  %i.apf = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %i.ape
  %i.apg = getelementptr inbounds i8, ptr %i.apf, i64 -56
  %wide.load850 = load <8 x i64>, ptr %i.apg, align 8, !tbaa !113, !alias.scope !738
  %reverse851 = shufflevector <8 x i64> %wide.load850, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse851, ptr %next.gep849, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  %index.next852 = add nuw i64 %index848, 8       ; 2 uses
  %i.aph = icmp eq i64 %index.next852, %n.vec846
  br i1 %i.aph, label %vec.epilog.middle.block853, label %vec.epilog.vector.body847, !llvm.loop !709

vec.epilog.middle.block853:                       ; preds = %vec.epilog.vector.body847
  br i1 %cmp.n854, label %.preheader1.i52, label %.lr.ph90.i.preheader

.lr.ph90.i.preheader:                             ; preds = %iter.check841, %vector.memcheck812, %vec.epilog.iter.check843, %vec.epilog.middle.block853
  %indvars.iv166.i.ph = phi i64 [ 0, %iter.check841 ], [ 0, %vector.memcheck812 ], [ %n.vec824, %vec.epilog.iter.check843 ], [ %n.vec846, %vec.epilog.middle.block853 ] ; 3 uses
  %.988.i.ph = phi ptr [ %.8104.i, %iter.check841 ], [ %.8104.i, %vector.memcheck812 ], [ %i.aoo, %vec.epilog.iter.check843 ], [ %i.apb, %vec.epilog.middle.block853 ] ; 2 uses
  br i1 %lcmp.mod1372.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol

.lr.ph90.i.prol:                                  ; preds = %.lr.ph90.i.preheader, %.lr.ph90.i.prol
  %indvars.iv166.i.prol = phi i64 [ %indvars.iv.next167.i.prol, %.lr.ph90.i.prol ], [ %indvars.iv166.i.ph, %.lr.ph90.i.preheader ] ; 2 uses
  %.988.i.prol = phi ptr [ %i.apl, %.lr.ph90.i.prol ], [ %.988.i.ph, %.lr.ph90.i.preheader ] ; 2 uses
  %prol.iter1373 = phi i64 [ %prol.iter1373.next, %.lr.ph90.i.prol ], [ 0, %.lr.ph90.i.preheader ]
  %i.api = sub nuw nsw i64 %i.ajp, %indvars.iv166.i.prol
  %.idx197.i.prol = shl nuw nsw i64 %i.api, 3
  %i.apj = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.prol
  %i.apk = load i64, ptr %i.apj, align 8, !tbaa !113
  store i64 %i.apk, ptr %.988.i.prol, align 8, !tbaa !113
  %i.apl = getelementptr inbounds nuw i8, ptr %.988.i.prol, i64 8 ; 3 uses
  %indvars.iv.next167.i.prol = add nuw nsw i64 %indvars.iv166.i.prol, 1 ; 2 uses
  %prol.iter1373.next = add i64 %prol.iter1373, 1 ; 2 uses
  %prol.iter1373.cmp.not = icmp eq i64 %prol.iter1373.next, %xtraiter1371
  br i1 %prol.iter1373.cmp.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol, !llvm.loop !710

.lr.ph90.i.prol.loopexit:                         ; preds = %.lr.ph90.i.prol, %.lr.ph90.i.preheader
  %.lcssa1323.unr = phi ptr [ poison, %.lr.ph90.i.preheader ], [ %i.apl, %.lr.ph90.i.prol ]
  %indvars.iv166.i.unr = phi i64 [ %indvars.iv166.i.ph, %.lr.ph90.i.preheader ], [ %indvars.iv.next167.i.prol, %.lr.ph90.i.prol ]
  %.988.i.unr = phi ptr [ %.988.i.ph, %.lr.ph90.i.preheader ], [ %i.apl, %.lr.ph90.i.prol ]
  %i.apm = sub nsw i64 %indvars.iv166.i.ph, %i.ajp
  %i.apn = icmp ugt i64 %i.apm, -4
  br i1 %i.apn, label %.preheader1.i52, label %.lr.ph90.i

.preheader1.i52:                                  ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i, %middle.block837, %vec.epilog.middle.block853, %.preheader2.i51
  %.9.lcssa.i53 = phi ptr [ %.8104.i, %.preheader2.i51 ], [ %i.apb, %vec.epilog.middle.block853 ], [ %i.aoo, %middle.block837 ], [ %.lcssa1323.unr, %.lr.ph90.i.prol.loopexit ], [ %i.aqy, %.lr.ph90.i ] ; 8 uses
  %.9.lcssa.i53772 = ptrtoaddr ptr %.9.lcssa.i53 to i64
  br i1 %i.ajl, label %iter.check795, label %.preheader.i54

iter.check795:                                    ; preds = %.preheader1.i52
  br i1 %min.iters.check775, label %.lr.ph95.i.preheader, label %vector.memcheck771

vector.memcheck771:                               ; preds = %iter.check795
  %i.apo = add i64 %i.aom, %.9.lcssa.i53772
  %i.app = add i64 %i.apo, -1
  %diff.check774 = icmp ult i64 %i.app, 255
  br i1 %diff.check774, label %.lr.ph95.i.preheader, label %vector.main.loop.iter.check776

vector.main.loop.iter.check776:                   ; preds = %vector.memcheck771
  br i1 %min.iters.check777, label %vec.epilog.ph799, label %vector.ph778

vector.ph778:                                     ; preds = %vector.main.loop.iter.check776
  %i.apq = getelementptr i8, ptr %.3104103.i, i64 %i.akj ; 2 uses
  %i.apr = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.akj ; 2 uses
  br label %vector.body780

vector.body780:                                   ; preds = %vector.ph778, %vector.body780
  %index781 = phi i64 [ 0, %vector.ph778 ], [ %index.next788, %vector.body780 ] ; 2 uses
  %i.aps = shl i64 %index781, 3                   ; 2 uses
  %next.gep782 = getelementptr i8, ptr %.3104103.i, i64 %i.aps ; 4 uses
  %next.gep783 = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.aps ; 4 uses
  %i.apt = getelementptr i8, ptr %next.gep782, i64 64
  %i.apu = getelementptr i8, ptr %next.gep782, i64 128
  %i.apv = getelementptr i8, ptr %next.gep782, i64 192
  %wide.load784 = load <8 x i64>, ptr %next.gep782, align 8, !tbaa !113
  %wide.load785 = load <8 x i64>, ptr %i.apt, align 8, !tbaa !113
  %wide.load786 = load <8 x i64>, ptr %i.apu, align 8, !tbaa !113
  %wide.load787 = load <8 x i64>, ptr %i.apv, align 8, !tbaa !113
  %i.apw = getelementptr i8, ptr %next.gep783, i64 64
  %i.apx = getelementptr i8, ptr %next.gep783, i64 128
  %i.apy = getelementptr i8, ptr %next.gep783, i64 192
  store <8 x i64> %wide.load784, ptr %next.gep783, align 8, !tbaa !113
  store <8 x i64> %wide.load785, ptr %i.apw, align 8, !tbaa !113
  store <8 x i64> %wide.load786, ptr %i.apx, align 8, !tbaa !113
  store <8 x i64> %wide.load787, ptr %i.apy, align 8, !tbaa !113
  %index.next788 = add nuw i64 %index781, 32      ; 2 uses
  %i.apz = icmp eq i64 %index.next788, %n.vec779
  br i1 %i.apz, label %middle.block789, label %vector.body780, !llvm.loop !711

middle.block789:                                  ; preds = %vector.body780
  br i1 %cmp.n790, label %.preheader.i54, label %vec.epilog.iter.check797

vec.epilog.iter.check797:                         ; preds = %middle.block789
  br i1 %min.epilog.iters.check798, label %.lr.ph95.i.preheader, label %vec.epilog.ph799, !prof !117

vec.epilog.ph799:                                 ; preds = %vector.main.loop.iter.check776, %vec.epilog.iter.check797
  %vec.epilog.resume.val791 = phi i64 [ %n.vec779, %vec.epilog.iter.check797 ], [ 0, %vector.main.loop.iter.check776 ]
  %i.aqa = getelementptr i8, ptr %.3104103.i, i64 %i.akl ; 2 uses
  %i.aqb = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.akl ; 2 uses
  br label %vec.epilog.vector.body801

vec.epilog.vector.body801:                        ; preds = %vec.epilog.vector.body801, %vec.epilog.ph799
  %index802 = phi i64 [ %vec.epilog.resume.val791, %vec.epilog.ph799 ], [ %index.next806, %vec.epilog.vector.body801 ] ; 2 uses
  %i.aqc = shl i64 %index802, 3                   ; 2 uses
  %next.gep803 = getelementptr i8, ptr %.3104103.i, i64 %i.aqc
  %next.gep804 = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.aqc
  %wide.load805 = load <8 x i64>, ptr %next.gep803, align 8, !tbaa !113
  store <8 x i64> %wide.load805, ptr %next.gep804, align 8, !tbaa !113
  %index.next806 = add nuw i64 %index802, 8       ; 2 uses
  %i.aqd = icmp eq i64 %index.next806, %n.vec800
  br i1 %i.aqd, label %vec.epilog.middle.block807, label %vec.epilog.vector.body801, !llvm.loop !712

vec.epilog.middle.block807:                       ; preds = %vec.epilog.vector.body801
  br i1 %cmp.n808, label %.preheader.i54, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %iter.check795, %vector.memcheck771, %vec.epilog.iter.check797, %vec.epilog.middle.block807
  %.08794.i.ph = phi i32 [ 0, %iter.check795 ], [ 0, %vector.memcheck771 ], [ %i.aki, %vec.epilog.iter.check797 ], [ %i.akk, %vec.epilog.middle.block807 ] ; 4 uses
  %.08993.i.ph = phi ptr [ %.3104103.i, %iter.check795 ], [ %.3104103.i, %vector.memcheck771 ], [ %i.apq, %vec.epilog.iter.check797 ], [ %i.aqa, %vec.epilog.middle.block807 ] ; 2 uses
  %.1092.i.ph = phi ptr [ %.9.lcssa.i53, %iter.check795 ], [ %.9.lcssa.i53, %vector.memcheck771 ], [ %i.apr, %vec.epilog.iter.check797 ], [ %i.aqb, %vec.epilog.middle.block807 ] ; 2 uses
  %i.aqe = sub i32 %i.co, %.08794.i.ph
  %xtraiter1374 = and i32 %i.aqe, 7               ; 2 uses
  %lcmp.mod1375.not = icmp eq i32 %xtraiter1374, 0
  br i1 %lcmp.mod1375.not, label %.lr.ph95.i.prol.loopexit, label %.lr.ph95.i.prol

.lr.ph95.i.prol:                                  ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i.prol
  %.08794.i.prol = phi i32 [ %i.aqi, %.lr.ph95.i.prol ], [ %.08794.i.ph, %.lr.ph95.i.preheader ]
  %.08993.i.prol = phi ptr [ %i.aqg, %.lr.ph95.i.prol ], [ %.08993.i.ph, %.lr.ph95.i.preheader ] ; 2 uses
  %.1092.i.prol = phi ptr [ %i.aqh, %.lr.ph95.i.prol ], [ %.1092.i.ph, %.lr.ph95.i.preheader ] ; 2 uses
  %prol.iter1376 = phi i32 [ %prol.iter1376.next, %.lr.ph95.i.prol ], [ 0, %.lr.ph95.i.preheader ]
  %i.aqf = load i64, ptr %.08993.i.prol, align 8, !tbaa !113
  store i64 %i.aqf, ptr %.1092.i.prol, align 8, !tbaa !113
  %i.aqg = getelementptr inbounds nuw i8, ptr %.08993.i.prol, i64 8 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.1092.i.prol, i64 8 ; 3 uses
  %i.aqi = add nuw nsw i32 %.08794.i.prol, 1      ; 2 uses
  %prol.iter1376.next = add i32 %prol.iter1376, 1 ; 2 uses
  %prol.iter1376.cmp.not = icmp eq i32 %prol.iter1376.next, %xtraiter1374
  br i1 %prol.iter1376.cmp.not, label %.lr.ph95.i.prol.loopexit, label %.lr.ph95.i.prol, !llvm.loop !713

.lr.ph95.i.prol.loopexit:                         ; preds = %.lr.ph95.i.prol, %.lr.ph95.i.preheader
  %.lcssa1325.unr = phi ptr [ poison, %.lr.ph95.i.preheader ], [ %i.aqg, %.lr.ph95.i.prol ]
  %.lcssa1324.unr = phi ptr [ poison, %.lr.ph95.i.preheader ], [ %i.aqh, %.lr.ph95.i.prol ]
  %.08794.i.unr = phi i32 [ %.08794.i.ph, %.lr.ph95.i.preheader ], [ %i.aqi, %.lr.ph95.i.prol ]
  %.08993.i.unr = phi ptr [ %.08993.i.ph, %.lr.ph95.i.preheader ], [ %i.aqg, %.lr.ph95.i.prol ]
  %.1092.i.unr = phi ptr [ %.1092.i.ph, %.lr.ph95.i.preheader ], [ %i.aqh, %.lr.ph95.i.prol ]
  %i.aqj = sub i32 %.08794.i.ph, %i.co
  %i.aqk = icmp ugt i32 %i.aqj, -8
  br i1 %i.aqk, label %.preheader.i54, label %.lr.ph95.i

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i.3, %.lr.ph90.i ], [ %indvars.iv166.i.unr, %.lr.ph90.i.prol.loopexit ] ; 5 uses
  %.988.i = phi ptr [ %i.aqy, %.lr.ph90.i ], [ %.988.i.unr, %.lr.ph90.i.prol.loopexit ] ; 5 uses
  %i.aql = sub nuw nsw i64 %i.ajp, %indvars.iv166.i
  %.idx197.i = shl nuw nsw i64 %i.aql, 3
  %i.aqm = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !113
  store i64 %i.aqn, ptr %.988.i, align 8, !tbaa !113
  %i.aqo = getelementptr inbounds nuw i8, ptr %.988.i, i64 8
  %indvars.iv.next167.i.neg = xor i64 %indvars.iv166.i, -1
  %i.aqp = add i64 %indvars.iv.next167.i.neg, %i.ajp
  %.idx197.i.1 = shl nuw nsw i64 %i.aqp, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.1
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !113
  store i64 %i.aqr, ptr %i.aqo, align 8, !tbaa !113
  %i.aqs = getelementptr inbounds nuw i8, ptr %.988.i, i64 16
  %indvars.iv.next167.i.1 = add nuw nsw i64 %indvars.iv166.i, 2
  %16 = sub nuw nsw i64 %i.ajp, %indvars.iv.next167.i.1
  %.idx197.i.2 = shl nuw nsw i64 %16, 3
  %i.aqt = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.2
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !113
  store i64 %i.aqu, ptr %i.aqs, align 8, !tbaa !113
  %i.aqv = getelementptr inbounds nuw i8, ptr %.988.i, i64 24
  %indvars.iv.next167.i.2 = add nuw nsw i64 %indvars.iv166.i, 3
  %17 = sub nuw nsw i64 %i.ajp, %indvars.iv.next167.i.2
  %.idx197.i.3 = shl nuw nsw i64 %17, 3
  %i.aqw = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.3
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !113
  store i64 %i.aqx, ptr %i.aqv, align 8, !tbaa !113
  %i.aqy = getelementptr inbounds nuw i8, ptr %.988.i, i64 32 ; 2 uses
  %indvars.iv.next167.i.3 = add nuw nsw i64 %indvars.iv166.i, 4 ; 2 uses
  %exitcond170.not.i.3 = icmp eq i64 %indvars.iv.next167.i.3, %i.ajp
  br i1 %exitcond170.not.i.3, label %.preheader1.i52, label %.lr.ph90.i, !llvm.loop !714

.preheader.i54:                                   ; preds = %.lr.ph95.i.prol.loopexit, %.lr.ph95.i, %middle.block789, %vec.epilog.middle.block807, %.preheader1.i52
  %.10.lcssa.i55 = phi ptr [ %.9.lcssa.i53, %.preheader1.i52 ], [ %i.aqb, %vec.epilog.middle.block807 ], [ %i.apr, %middle.block789 ], [ %.lcssa1324.unr, %.lr.ph95.i.prol.loopexit ], [ %i.asu, %.lr.ph95.i ] ; 9 uses
  %.089.lcssa.i = phi ptr [ %.3104103.i, %.preheader1.i52 ], [ %i.aqa, %vec.epilog.middle.block807 ], [ %i.apq, %middle.block789 ], [ %.lcssa1325.unr, %.lr.ph95.i.prol.loopexit ], [ %i.ast, %.lr.ph95.i ] ; 2 uses
  br i1 %i.ajm, label %iter.check755, label %._crit_edge101.i

iter.check755:                                    ; preds = %.preheader.i54
  %i.aqz = getelementptr inbounds i8, ptr %.089.lcssa.i, i64 -16 ; 7 uses
  br i1 %min.iters.check735, label %vec.epilog.scalar.ph756.preheader, label %vector.memcheck732

vector.memcheck732:                               ; preds = %iter.check755
  %scevgep = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.ajq
  %scevgep733 = getelementptr i8, ptr %.089.lcssa.i, i64 -8 ; 2 uses
  %scevgep734 = getelementptr i8, ptr %scevgep733, i64 %i.ajr
  %bound0 = icmp ult ptr %.10.lcssa.i55, %scevgep733
  %bound1 = icmp ult ptr %scevgep734, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph756.preheader, label %vector.main.loop.iter.check736

vector.main.loop.iter.check736:                   ; preds = %vector.memcheck732
  br i1 %min.iters.check737, label %vec.epilog.ph759, label %vector.ph738

vector.ph738:                                     ; preds = %vector.main.loop.iter.check736
  %i.ara = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.akn ; 2 uses
  br label %vector.body740

vector.body740:                                   ; preds = %vector.ph738, %vector.body740
  %index741 = phi i64 [ 0, %vector.ph738 ], [ %index.next750, %vector.body740 ] ; 3 uses
  %i.arb = shl i64 %index741, 3
  %next.gep742 = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.arb ; 4 uses
  %i.arc = mul nsw i64 %index741, -8
  %i.ard = getelementptr inbounds i8, ptr %i.aqz, i64 %i.arc ; 4 uses
  %i.are = getelementptr inbounds i8, ptr %i.ard, i64 -56
  %i.arf = getelementptr inbounds i8, ptr %i.ard, i64 -120
  %i.arg = getelementptr inbounds i8, ptr %i.ard, i64 -184
  %i.arh = getelementptr inbounds i8, ptr %i.ard, i64 -248
  %wide.load743 = load <8 x i64>, ptr %i.are, align 8, !tbaa !113, !alias.scope !740
  %wide.load744 = load <8 x i64>, ptr %i.arf, align 8, !tbaa !113, !alias.scope !740
  %wide.load745 = load <8 x i64>, ptr %i.arg, align 8, !tbaa !113, !alias.scope !740
  %wide.load746 = load <8 x i64>, ptr %i.arh, align 8, !tbaa !113, !alias.scope !740
  %reverse = shufflevector <8 x i64> %wide.load743, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse747 = shufflevector <8 x i64> %wide.load744, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse748 = shufflevector <8 x i64> %wide.load745, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse749 = shufflevector <8 x i64> %wide.load746, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ari = getelementptr i8, ptr %next.gep742, i64 64
  %i.arj = getelementptr i8, ptr %next.gep742, i64 128
  %i.ark = getelementptr i8, ptr %next.gep742, i64 192
  store <8 x i64> %reverse, ptr %next.gep742, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse747, ptr %i.ari, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse748, ptr %i.arj, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse749, ptr %i.ark, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  %index.next750 = add nuw i64 %index741, 32      ; 2 uses
  %i.arl = icmp eq i64 %index.next750, %n.vec739
  br i1 %i.arl, label %middle.block751, label %vector.body740, !llvm.loop !718

middle.block751:                                  ; preds = %vector.body740
  br i1 %cmp.n752, label %._crit_edge101.i, label %vec.epilog.iter.check757

vec.epilog.iter.check757:                         ; preds = %middle.block751
  br i1 %min.epilog.iters.check758, label %vec.epilog.scalar.ph756.preheader, label %vec.epilog.ph759, !prof !117

vec.epilog.ph759:                                 ; preds = %vector.main.loop.iter.check736, %vec.epilog.iter.check757
  %vec.epilog.resume.val753 = phi i64 [ %n.vec739, %vec.epilog.iter.check757 ], [ 0, %vector.main.loop.iter.check736 ]
  %i.arm = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.ako ; 2 uses
  br label %vec.epilog.vector.body761

vec.epilog.vector.body761:                        ; preds = %vec.epilog.vector.body761, %vec.epilog.ph759
  %index762 = phi i64 [ %vec.epilog.resume.val753, %vec.epilog.ph759 ], [ %index.next766, %vec.epilog.vector.body761 ] ; 3 uses
  %i.arn = shl i64 %index762, 3
  %next.gep763 = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.arn
  %i.aro = mul nsw i64 %index762, -8
  %i.arp = getelementptr inbounds i8, ptr %i.aqz, i64 %i.aro
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 -56
  %wide.load764 = load <8 x i64>, ptr %i.arq, align 8, !tbaa !113, !alias.scope !740
  %reverse765 = shufflevector <8 x i64> %wide.load764, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse765, ptr %next.gep763, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  %index.next766 = add nuw i64 %index762, 8       ; 2 uses
  %i.arr = icmp eq i64 %index.next766, %n.vec760
  br i1 %i.arr, label %vec.epilog.middle.block767, label %vec.epilog.vector.body761, !llvm.loop !719

vec.epilog.middle.block767:                       ; preds = %vec.epilog.vector.body761
  br i1 %cmp.n768, label %._crit_edge101.i, label %vec.epilog.scalar.ph756.preheader

vec.epilog.scalar.ph756.preheader:                ; preds = %iter.check755, %vector.memcheck732, %vec.epilog.iter.check757, %vec.epilog.middle.block767
  %indvars.iv172.i.ph = phi i64 [ 0, %iter.check755 ], [ 0, %vector.memcheck732 ], [ %n.vec739, %vec.epilog.iter.check757 ], [ %n.vec760, %vec.epilog.middle.block767 ] ; 3 uses
  %.1198.i.ph = phi ptr [ %.10.lcssa.i55, %iter.check755 ], [ %.10.lcssa.i55, %vector.memcheck732 ], [ %i.ara, %vec.epilog.iter.check757 ], [ %i.arm, %vec.epilog.middle.block767 ] ; 2 uses
  br i1 %lcmp.mod1378.not, label %vec.epilog.scalar.ph756.prol.loopexit, label %vec.epilog.scalar.ph756.prol

vec.epilog.scalar.ph756.prol:                     ; preds = %vec.epilog.scalar.ph756.preheader, %vec.epilog.scalar.ph756.prol
  %indvars.iv172.i.prol = phi i64 [ %indvars.iv.next173.i.prol, %vec.epilog.scalar.ph756.prol ], [ %indvars.iv172.i.ph, %vec.epilog.scalar.ph756.preheader ] ; 2 uses
  %.1198.i.prol = phi ptr [ %i.aru, %vec.epilog.scalar.ph756.prol ], [ %.1198.i.ph, %vec.epilog.scalar.ph756.preheader ] ; 2 uses
  %prol.iter1379 = phi i64 [ %prol.iter1379.next, %vec.epilog.scalar.ph756.prol ], [ 0, %vec.epilog.scalar.ph756.preheader ]
  %.idx198.i.prol = mul nsw i64 %indvars.iv172.i.prol, -8
  %i.ars = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.prol
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !113
  store i64 %i.art, ptr %.1198.i.prol, align 8, !tbaa !113
  %i.aru = getelementptr inbounds nuw i8, ptr %.1198.i.prol, i64 8 ; 3 uses
  %indvars.iv.next173.i.prol = add nuw nsw i64 %indvars.iv172.i.prol, 1 ; 2 uses
  %prol.iter1379.next = add i64 %prol.iter1379, 1 ; 2 uses
  %prol.iter1379.cmp.not = icmp eq i64 %prol.iter1379.next, %xtraiter1377
  br i1 %prol.iter1379.cmp.not, label %vec.epilog.scalar.ph756.prol.loopexit, label %vec.epilog.scalar.ph756.prol, !llvm.loop !720

vec.epilog.scalar.ph756.prol.loopexit:            ; preds = %vec.epilog.scalar.ph756.prol, %vec.epilog.scalar.ph756.preheader
  %.lcssa1326.unr = phi ptr [ poison, %vec.epilog.scalar.ph756.preheader ], [ %i.aru, %vec.epilog.scalar.ph756.prol ]
  %indvars.iv172.i.unr = phi i64 [ %indvars.iv172.i.ph, %vec.epilog.scalar.ph756.preheader ], [ %indvars.iv.next173.i.prol, %vec.epilog.scalar.ph756.prol ]
  %.1198.i.unr = phi ptr [ %.1198.i.ph, %vec.epilog.scalar.ph756.preheader ], [ %i.aru, %vec.epilog.scalar.ph756.prol ]
  %i.arv = sub nsw i64 %indvars.iv172.i.ph, %wide.trip.count175.i
  %i.arw = icmp ugt i64 %i.arv, -4
  br i1 %i.arw, label %._crit_edge101.i, label %vec.epilog.scalar.ph756

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.prol.loopexit, %.lr.ph95.i
  %.08794.i = phi i32 [ %i.asv, %.lr.ph95.i ], [ %.08794.i.unr, %.lr.ph95.i.prol.loopexit ]
  %.08993.i = phi ptr [ %i.ast, %.lr.ph95.i ], [ %.08993.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %.1092.i = phi ptr [ %i.asu, %.lr.ph95.i ], [ %.1092.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %i.arx = load i64, ptr %.08993.i, align 8, !tbaa !113
  store i64 %i.arx, ptr %.1092.i, align 8, !tbaa !113
  %i.ary = getelementptr inbounds nuw i8, ptr %.08993.i, i64 8
  %i.arz = getelementptr inbounds nuw i8, ptr %.1092.i, i64 8
  %i.asa = load i64, ptr %i.ary, align 8, !tbaa !113
  store i64 %i.asa, ptr %i.arz, align 8, !tbaa !113
  %i.asb = getelementptr inbounds nuw i8, ptr %.08993.i, i64 16
  %i.asc = getelementptr inbounds nuw i8, ptr %.1092.i, i64 16
  %i.asd = load i64, ptr %i.asb, align 8, !tbaa !113
  store i64 %i.asd, ptr %i.asc, align 8, !tbaa !113
  %i.ase = getelementptr inbounds nuw i8, ptr %.08993.i, i64 24
  %i.asf = getelementptr inbounds nuw i8, ptr %.1092.i, i64 24
  %i.asg = load i64, ptr %i.ase, align 8, !tbaa !113
  store i64 %i.asg, ptr %i.asf, align 8, !tbaa !113
  %i.ash = getelementptr inbounds nuw i8, ptr %.08993.i, i64 32
  %i.asi = getelementptr inbounds nuw i8, ptr %.1092.i, i64 32
  %i.asj = load i64, ptr %i.ash, align 8, !tbaa !113
  store i64 %i.asj, ptr %i.asi, align 8, !tbaa !113
  %i.ask = getelementptr inbounds nuw i8, ptr %.08993.i, i64 40
  %i.asl = getelementptr inbounds nuw i8, ptr %.1092.i, i64 40
  %i.asm = load i64, ptr %i.ask, align 8, !tbaa !113
  store i64 %i.asm, ptr %i.asl, align 8, !tbaa !113
  %i.asn = getelementptr inbounds nuw i8, ptr %.08993.i, i64 48
  %i.aso = getelementptr inbounds nuw i8, ptr %.1092.i, i64 48
  %i.asp = load i64, ptr %i.asn, align 8, !tbaa !113
  store i64 %i.asp, ptr %i.aso, align 8, !tbaa !113
  %i.asq = getelementptr inbounds nuw i8, ptr %.08993.i, i64 56
  %i.asr = getelementptr inbounds nuw i8, ptr %.1092.i, i64 56
  %i.ass = load i64, ptr %i.asq, align 8, !tbaa !113
  store i64 %i.ass, ptr %i.asr, align 8, !tbaa !113
  %i.ast = getelementptr inbounds nuw i8, ptr %.08993.i, i64 64 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.1092.i, i64 64 ; 2 uses
  %i.asv = add nuw nsw i32 %.08794.i, 8           ; 2 uses
  %exitcond171.not.i.7 = icmp eq i32 %i.asv, %i.co
  br i1 %exitcond171.not.i.7, label %.preheader.i54, label %.lr.ph95.i, !llvm.loop !721

._crit_edge101.i:                                 ; preds = %vec.epilog.scalar.ph756.prol.loopexit, %vec.epilog.scalar.ph756, %middle.block751, %vec.epilog.middle.block767, %.preheader.i54
  %.11.lcssa.i56 = phi ptr [ %.10.lcssa.i55, %.preheader.i54 ], [ %i.arm, %vec.epilog.middle.block767 ], [ %i.ara, %middle.block751 ], [ %.lcssa1326.unr, %vec.epilog.scalar.ph756.prol.loopexit ], [ %i.atl, %vec.epilog.scalar.ph756 ]
  %i.asw = getelementptr inbounds [2 x i8], ptr %.3104103.i, i64 %i.ajo
  %i.asx = add nuw nsw i32 %.090105.i, 1          ; 2 uses
  %exitcond177.not.i = icmp eq i32 %i.asx, %i.ry
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond177.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %.preheader2.i51, !llvm.loop !722

vec.epilog.scalar.ph756:                          ; preds = %vec.epilog.scalar.ph756.prol.loopexit, %vec.epilog.scalar.ph756
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i.3, %vec.epilog.scalar.ph756 ], [ %indvars.iv172.i.unr, %vec.epilog.scalar.ph756.prol.loopexit ] ; 5 uses
  %.1198.i = phi ptr [ %i.atl, %vec.epilog.scalar.ph756 ], [ %.1198.i.unr, %vec.epilog.scalar.ph756.prol.loopexit ] ; 5 uses
  %.idx198.i = mul nsw i64 %indvars.iv172.i, -8
  %i.asy = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !113
  store i64 %i.asz, ptr %.1198.i, align 8, !tbaa !113
  %i.ata = getelementptr inbounds nuw i8, ptr %.1198.i, i64 8
  %indvars.iv.next173.i.neg = xor i64 %indvars.iv172.i, -1
  %.idx198.i.1 = shl nsw i64 %indvars.iv.next173.i.neg, 3
  %i.atb = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.1
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !113
  store i64 %i.atc, ptr %i.ata, align 8, !tbaa !113
  %i.atd = getelementptr inbounds nuw i8, ptr %.1198.i, i64 16
  %i.ate = shl i64 %indvars.iv172.i, 3
  %.idx198.i.2 = sub i64 -16, %i.ate
  %i.atf = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.2
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !113
  store i64 %i.atg, ptr %i.atd, align 8, !tbaa !113
  %i.ath = getelementptr inbounds nuw i8, ptr %.1198.i, i64 24
  %i.ati = shl i64 %indvars.iv172.i, 3
  %.idx198.i.3 = sub i64 -24, %i.ati
  %i.atj = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.3
  %i.atk = load i64, ptr %i.atj, align 8, !tbaa !113
  store i64 %i.atk, ptr %i.ath, align 8, !tbaa !113
  %i.atl = getelementptr inbounds nuw i8, ptr %.1198.i, i64 32 ; 2 uses
  %indvars.iv.next173.i.3 = add nuw nsw i64 %indvars.iv172.i, 4 ; 2 uses
  %exitcond176.not.i.3 = icmp eq i64 %indvars.iv.next173.i.3, %wide.trip.count175.i
  br i1 %exitcond176.not.i.3, label %._crit_edge101.i, label %vec.epilog.scalar.ph756, !llvm.loop !723

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %._crit_edge101.i, %._crit_edge87.i, %._crit_edge70.i, %bb.j, %._crit_edge85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !100
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g, %_ZN4ncnn3MatD2Ev.exit37
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a

vec.epilog.ph360:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check358
  %vec.epilog.resume.val352 = phi i64 [ %n.vec341, %vec.epilog.iter.check358 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.ss = getelementptr i8, ptr %.9.lcssa.i, i64 %i.pj ; 2 uses
  br label %vec.epilog.vector.body362

vec.epilog.vector.body362:                        ; preds = %vec.epilog.vector.body362, %vec.epilog.ph360
  %index363 = phi i64 [ %vec.epilog.resume.val352, %vec.epilog.ph360 ], [ %index.next367, %vec.epilog.vector.body362 ] ; 2 uses
  %i.st = shl i64 %index363, 3                    ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.op, i64 %i.st
  %next.gep365 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.st
  %wide.load366 = load <8 x i64>, ptr %next.gep364, align 8, !tbaa !113
  store <8 x i64> %wide.load366, ptr %next.gep365, align 8, !tbaa !113
  %index.next367 = add nuw i64 %index363, 8       ; 2 uses
  %i.su = icmp eq i64 %index.next367, %n.vec361
  br i1 %i.su, label %vec.epilog.middle.block368, label %vec.epilog.vector.body362, !llvm.loop !854

vec.epilog.middle.block368:                       ; preds = %vec.epilog.vector.body362
  br i1 %cmp.n369, label %.preheader.i, label %.lr.ph83.i.preheader

.lr.ph83.i.preheader:                             ; preds = %iter.check356, %vec.epilog.iter.check358, %vec.epilog.middle.block368
  %.05982.i.ph = phi i32 [ 0, %iter.check356 ], [ %i.pi, %vec.epilog.middle.block368 ], [ %i.pf, %vec.epilog.iter.check358 ] ; 4 uses
  %.06181.i.ph = phi ptr [ %i.op, %iter.check356 ], [ %i.pk, %vec.epilog.middle.block368 ], [ %i.ph, %vec.epilog.iter.check358 ] ; 2 uses
  %.1080.i.ph = phi ptr [ %.9.lcssa.i, %iter.check356 ], [ %i.ss, %vec.epilog.middle.block368 ], [ %i.sj, %vec.epilog.iter.check358 ] ; 2 uses
  %i.sv = sub i32 %i.cs, %.05982.i.ph
  %xtraiter1425 = and i32 %i.sv, 7                ; 2 uses
  %lcmp.mod1426.not = icmp eq i32 %xtraiter1425, 0
  br i1 %lcmp.mod1426.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol

.lr.ph83.i.prol:                                  ; preds = %.lr.ph83.i.preheader, %.lr.ph83.i.prol
  %.05982.i.prol = phi i32 [ %i.sz, %.lr.ph83.i.prol ], [ %.05982.i.ph, %.lr.ph83.i.preheader ]
  %.06181.i.prol = phi ptr [ %i.sw, %.lr.ph83.i.prol ], [ %.06181.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %.1080.i.prol = phi ptr [ %i.sy, %.lr.ph83.i.prol ], [ %.1080.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %prol.iter1427 = phi i32 [ %prol.iter1427.next, %.lr.ph83.i.prol ], [ 0, %.lr.ph83.i.preheader ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.06181.i.prol, i64 8 ; 3 uses
  %i.sx = load i64, ptr %.06181.i.prol, align 8, !tbaa !113
  %i.sy = getelementptr inbounds nuw i8, ptr %.1080.i.prol, i64 8 ; 3 uses
  store i64 %i.sx, ptr %.1080.i.prol, align 8, !tbaa !113
  %i.sz = add nuw nsw i32 %.05982.i.prol, 1       ; 2 uses
  %prol.iter1427.next = add i32 %prol.iter1427, 1 ; 2 uses
  %prol.iter1427.cmp.not = icmp eq i32 %prol.iter1427.next, %xtraiter1425
  br i1 %prol.iter1427.cmp.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol, !llvm.loop !855

.lr.ph83.i.prol.loopexit:                         ; preds = %.lr.ph83.i.prol, %.lr.ph83.i.preheader
  %.lcssa1374.unr = phi ptr [ poison, %.lr.ph83.i.preheader ], [ %i.sw, %.lr.ph83.i.prol ]
  %.lcssa1373.unr = phi ptr [ poison, %.lr.ph83.i.preheader ], [ %i.sy, %.lr.ph83.i.prol ]
  %.05982.i.unr = phi i32 [ %.05982.i.ph, %.lr.ph83.i.preheader ], [ %i.sz, %.lr.ph83.i.prol ]
  %.06181.i.unr = phi ptr [ %.06181.i.ph, %.lr.ph83.i.preheader ], [ %i.sw, %.lr.ph83.i.prol ]
  %.1080.i.unr = phi ptr [ %.1080.i.ph, %.lr.ph83.i.preheader ], [ %i.sy, %.lr.ph83.i.prol ]
  %i.ta = sub i32 %.05982.i.ph, %i.cs
  %i.tb = icmp ugt i32 %i.ta, -8
  br i1 %i.tb, label %.preheader.i, label %.lr.ph83.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.lr.ph78.i
  %.06077.i = phi i32 [ %i.td, %.lr.ph78.i ], [ %.06077.i.ph, %.lr.ph78.i.preheader ]
  %.976.i = phi ptr [ %i.tc, %.lr.ph78.i ], [ %.976.i.ph, %.lr.ph78.i.preheader ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.976.i, i64 8 ; 2 uses
  store i64 %.pre136.i, ptr %.976.i, align 8, !tbaa !113
  %i.td = add nuw nsw i32 %.06077.i, 1            ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.td, %i.dy
  br i1 %exitcond127.not.i, label %.preheader1.i, label %.lr.ph78.i, !llvm.loop !856

.preheader.i:                                     ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block350, %vec.epilog.middle.block368, %.preheader1.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader1.i ], [ %i.ss, %vec.epilog.middle.block368 ], [ %i.sj, %middle.block350 ], [ %.lcssa1373.unr, %.lr.ph83.i.prol.loopexit ], [ %i.ul, %.lr.ph83.i ] ; 6 uses
  %.061.lcssa.i = phi ptr [ %i.op, %.preheader1.i ], [ %i.pk, %vec.epilog.middle.block368 ], [ %i.ph, %middle.block350 ], [ %.lcssa1374.unr, %.lr.ph83.i.prol.loopexit ], [ %i.uj, %.lr.ph83.i ]
  br i1 %i.ot, label %iter.check319, label %._crit_edge89.i

iter.check319:                                    ; preds = %.preheader.i
  %i.te = getelementptr inbounds i8, ptr %.061.lcssa.i, i64 -8
  %.pre137.i = load i64, ptr %i.te, align 8, !tbaa !113 ; 3 uses
  br i1 %min.iters.check304, label %vec.epilog.scalar.ph320.preheader, label %vector.main.loop.iter.check305

vector.main.loop.iter.check305:                   ; preds = %iter.check319
  br i1 %min.iters.check306, label %vec.epilog.ph323, label %vector.ph307

vector.ph307:                                     ; preds = %vector.main.loop.iter.check305
  %i.tf = getelementptr i8, ptr %.10.lcssa.i, i64 %i.pn ; 2 uses
  %broadcast.splatinsert309 = insertelement <8 x i64> poison, i64 %.pre137.i, i64 0
  %broadcast.splat310 = shufflevector <8 x i64> %broadcast.splatinsert309, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.ph307, %vector.body311
  %index312 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body311 ] ; 2 uses
  %i.tg = shl i64 %index312, 3
  %next.gep = getelementptr i8, ptr %.10.lcssa.i, i64 %i.tg ; 4 uses
  %i.th = getelementptr i8, ptr %next.gep, i64 64
  %i.ti = getelementptr i8, ptr %next.gep, i64 128
  %i.tj = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %broadcast.splat310, ptr %next.gep, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat310, ptr %i.th, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat310, ptr %i.ti, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat310, ptr %i.tj, align 8, !tbaa !113
  %index.next313 = add nuw i64 %index312, 32      ; 2 uses
  %i.tk = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.tk, label %middle.block314, label %vector.body311, !llvm.loop !857

middle.block314:                                  ; preds = %vector.body311
  br i1 %cmp.n315, label %._crit_edge89.i, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block314
  br i1 %min.epilog.iters.check322, label %vec.epilog.scalar.ph320.preheader, label %vec.epilog.ph323, !prof !117

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check305, %vec.epilog.iter.check321
  %vec.epilog.resume.val316 = phi i64 [ %n.vec308, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check305 ]
  %i.tl = getelementptr i8, ptr %.10.lcssa.i, i64 %i.pp ; 2 uses
  %broadcast.splatinsert325 = insertelement <8 x i64> poison, i64 %.pre137.i, i64 0
  %broadcast.splat326 = shufflevector <8 x i64> %broadcast.splatinsert325, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body327

vec.epilog.vector.body327:                        ; preds = %vec.epilog.vector.body327, %vec.epilog.ph323
  %index328 = phi i64 [ %vec.epilog.resume.val316, %vec.epilog.ph323 ], [ %index.next330, %vec.epilog.vector.body327 ] ; 2 uses
  %i.tm = shl i64 %index328, 3
  %next.gep329 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.tm
  store <8 x i64> %broadcast.splat326, ptr %next.gep329, align 8, !tbaa !113
  %index.next330 = add nuw i64 %index328, 8       ; 2 uses
  %i.tn = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.tn, label %vec.epilog.middle.block331, label %vec.epilog.vector.body327, !llvm.loop !858

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body327
  br i1 %cmp.n332, label %._crit_edge89.i, label %vec.epilog.scalar.ph320.preheader

vec.epilog.scalar.ph320.preheader:                ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block331
  %.087.i.ph = phi i32 [ 0, %iter.check319 ], [ %i.pm, %vec.epilog.iter.check321 ], [ %i.po, %vec.epilog.middle.block331 ]
  %.1186.i.ph = phi ptr [ %.10.lcssa.i, %iter.check319 ], [ %i.tf, %vec.epilog.iter.check321 ], [ %i.tl, %vec.epilog.middle.block331 ]
  br label %vec.epilog.scalar.ph320

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i
  %.05982.i = phi i32 [ %i.um, %.lr.ph83.i ], [ %.05982.i.unr, %.lr.ph83.i.prol.loopexit ]
  %.06181.i = phi ptr [ %i.uj, %.lr.ph83.i ], [ %.06181.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %.1080.i = phi ptr [ %i.ul, %.lr.ph83.i ], [ %.1080.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.06181.i, i64 8
  %i.tp = load i64, ptr %.06181.i, align 8, !tbaa !113
  %i.tq = getelementptr inbounds nuw i8, ptr %.1080.i, i64 8
  store i64 %i.tp, ptr %.1080.i, align 8, !tbaa !113
  %i.tr = getelementptr inbounds nuw i8, ptr %.06181.i, i64 16
  %i.ts = load i64, ptr %i.to, align 8, !tbaa !113
  %i.tt = getelementptr inbounds nuw i8, ptr %.1080.i, i64 16
  store i64 %i.ts, ptr %i.tq, align 8, !tbaa !113
  %i.tu = getelementptr inbounds nuw i8, ptr %.06181.i, i64 24
  %i.tv = load i64, ptr %i.tr, align 8, !tbaa !113
  %i.tw = getelementptr inbounds nuw i8, ptr %.1080.i, i64 24
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !113
  %i.tx = getelementptr inbounds nuw i8, ptr %.06181.i, i64 32
  %i.ty = load i64, ptr %i.tu, align 8, !tbaa !113
  %i.tz = getelementptr inbounds nuw i8, ptr %.1080.i, i64 32
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !113
  %i.ua = getelementptr inbounds nuw i8, ptr %.06181.i, i64 40
  %i.ub = load i64, ptr %i.tx, align 8, !tbaa !113
  %i.uc = getelementptr inbounds nuw i8, ptr %.1080.i, i64 40
  store i64 %i.ub, ptr %i.tz, align 8, !tbaa !113
  %i.ud = getelementptr inbounds nuw i8, ptr %.06181.i, i64 48
  %i.ue = load i64, ptr %i.ua, align 8, !tbaa !113
  %i.uf = getelementptr inbounds nuw i8, ptr %.1080.i, i64 48
  store i64 %i.ue, ptr %i.uc, align 8, !tbaa !113
  %i.ug = getelementptr inbounds nuw i8, ptr %.06181.i, i64 56
  %i.uh = load i64, ptr %i.ud, align 8, !tbaa !113
  %i.ui = getelementptr inbounds nuw i8, ptr %.1080.i, i64 56
  store i64 %i.uh, ptr %i.uf, align 8, !tbaa !113
  %i.uj = getelementptr inbounds nuw i8, ptr %.06181.i, i64 64 ; 2 uses
  %i.uk = load i64, ptr %i.ug, align 8, !tbaa !113
  %i.ul = getelementptr inbounds nuw i8, ptr %.1080.i, i64 64 ; 2 uses
  store i64 %i.uk, ptr %i.ui, align 8, !tbaa !113
  %i.um = add nuw nsw i32 %.05982.i, 8            ; 2 uses
  %exitcond128.not.i.7 = icmp eq i32 %i.um, %i.cs
  br i1 %exitcond128.not.i.7, label %.preheader.i, label %.lr.ph83.i, !llvm.loop !859

._crit_edge89.i:                                  ; preds = %vec.epilog.scalar.ph320, %middle.block314, %vec.epilog.middle.block331, %.preheader.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader.i ], [ %i.tl, %vec.epilog.middle.block331 ], [ %i.tf, %middle.block314 ], [ %i.uo, %vec.epilog.scalar.ph320 ]
  %i.un = add nuw nsw i32 %.06292.i, 1            ; 2 uses
  %exitcond130.not.i = icmp eq i32 %i.un, %i.dx
  br i1 %exitcond130.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i, !llvm.loop !860

vec.epilog.scalar.ph320:                          ; preds = %vec.epilog.scalar.ph320.preheader, %vec.epilog.scalar.ph320
  %.087.i = phi i32 [ %i.up, %vec.epilog.scalar.ph320 ], [ %.087.i.ph, %vec.epilog.scalar.ph320.preheader ]
  %.1186.i = phi ptr [ %i.uo, %vec.epilog.scalar.ph320 ], [ %.1186.i.ph, %vec.epilog.scalar.ph320.preheader ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.1186.i, i64 8 ; 2 uses
  store i64 %.pre137.i, ptr %.1186.i, align 8, !tbaa !113
  %i.up = add nuw nsw i32 %.087.i, 1              ; 2 uses
  %exitcond129.not.i = icmp eq i32 %i.up, %i.dz
  br i1 %exitcond129.not.i, label %._crit_edge89.i, label %vec.epilog.scalar.ph320, !llvm.loop !861

bb.h:                                             ; preds = %bb.f
  %i.uq = load i32, ptr %i.an, align 8, !tbaa !91 ; 9 uses
  %i.ur = load i32, ptr %i.ao, align 4, !tbaa !92 ; 3 uses
  %i.us = load i32, ptr %i.ap, align 8, !tbaa !93 ; 16 uses
  %i.ut = load i32, ptr %i.aq, align 4, !tbaa !94 ; 12 uses
  %i.uu = mul i32 %i.uq, %i.cs
  %i.uv = sext i32 %i.uu to i64                   ; 7 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.uv ; 5 uses
  %i.ux = icmp sgt i32 %i.uq, 0
  br i1 %i.ux, label %.preheader9.lr.ph.i65, label %.preheader6.i47

.preheader9.lr.ph.i65:                            ; preds = %bb.h
  %i.uy = icmp sgt i32 %i.us, 0                   ; 2 uses
  %i.uz = icmp sgt i32 %i.cs, 0                   ; 3 uses
  %i.va = icmp sgt i32 %i.ut, 0
  %i.vb = sub nsw i64 0, %i.df                    ; 4 uses
  br i1 %i.va, label %.preheader9.us.preheader.i, label %.preheader9.lr.ph.split.i66

.preheader9.us.preheader.i:                       ; preds = %.preheader9.lr.ph.i65
  %i.vc = zext i32 %i.us to i64                   ; 16 uses
  %wide.trip.count150.i = zext nneg i32 %i.ut to i64 ; 10 uses
  %i.vd = shl nuw nsw i64 %wide.trip.count150.i, 3
  %i.ve = mul nsw i64 %wide.trip.count150.i, -8
  %i.vf = add i64 %i.db, %i.cw
  %.neg1321 = mul nsw i64 %i.uv, -8
  %.neg1322 = sub i64 %.neg1321, %i.vf
  %i.vg = shl nsw i64 %i.df, 3
  %i.vh = zext i32 %i.cs to i64                   ; 5 uses
  %i.vi = shl nuw nsw i64 %i.vc, 3                ; 2 uses
  %scevgep1100 = getelementptr i8, ptr %i.cv, i64 8 ; 2 uses
  %i.vj = shl nsw i64 %i.uv, 3
  %i.vk = add i64 %i.db, %i.vj                    ; 2 uses
  %scevgep1101 = getelementptr i8, ptr %scevgep1100, i64 %i.vk
  %i.vl = add i64 %i.vk, %i.vi
  %i.vm = shl nsw i64 %i.df, 3
  %i.vn = add nsw i32 %i.uq, -1
  %i.vo = zext i32 %i.vn to i64
  %i.vp = mul i64 %i.vm, %i.vo
  %i.vq = sub i64 %i.vl, %i.vp
  %scevgep1102 = getelementptr i8, ptr %scevgep1100, i64 %i.vq
  %min.iters.check1107 = icmp ult i32 %i.us, 8
  %stride.check1106 = icmp sgt i32 %i.cs, 0
  %min.iters.check1109 = icmp ult i32 %i.us, 32
  %i.vr = and i64 %i.vc, 24
  %n.vec1111 = and i64 %i.vc, 2147483616          ; 5 uses
  %i.vs = shl nuw nsw i64 %n.vec1111, 3
  %cmp.n1125 = icmp eq i64 %n.vec1111, %i.vc
  %min.epilog.iters.check1131 = icmp eq i64 %i.vr, 0
  %n.vec1133 = and i64 %i.vc, 2147483640          ; 4 uses
  %i.vt = shl nuw nsw i64 %n.vec1133, 3
  %cmp.n1141 = icmp eq i64 %n.vec1133, %i.vc
  %xtraiter1386 = and i64 %i.vc, 3                ; 2 uses
  %lcmp.mod1387.not = icmp eq i64 %xtraiter1386, 0
  %min.iters.check1061 = icmp ult i32 %i.cs, 8
  %min.iters.check1063 = icmp ult i32 %i.cs, 32
  %i.vu = and i64 %i.vh, 24
  %n.vec1065 = and i64 %i.vh, 2147483616          ; 5 uses
  %i.vv = trunc nuw nsw i64 %n.vec1065 to i32
  %i.vw = shl nuw nsw i64 %n.vec1065, 3           ; 2 uses
  %cmp.n1076 = icmp eq i64 %n.vec1065, %i.vh
  %min.epilog.iters.check1084 = icmp eq i64 %i.vu, 0
  %n.vec1086 = and i64 %i.vh, 2147483640          ; 4 uses
  %i.vx = trunc nuw nsw i64 %n.vec1086 to i32
  %i.vy = shl nuw nsw i64 %n.vec1086, 3           ; 2 uses
  %cmp.n1094 = icmp eq i64 %n.vec1086, %i.vh
  %min.iters.check1019 = icmp ult i32 %i.ut, 8
  %min.iters.check1021 = icmp ult i32 %i.ut, 32
  %i.vz = and i64 %wide.trip.count150.i, 24
  %n.vec1023 = and i64 %wide.trip.count150.i, 2147483616 ; 5 uses
  %i.wa = shl nuw nsw i64 %n.vec1023, 3
  %cmp.n1037 = icmp eq i64 %n.vec1023, %wide.trip.count150.i
  %min.epilog.iters.check1043 = icmp eq i64 %i.vz, 0
  %n.vec1045 = and i64 %wide.trip.count150.i, 2147483640 ; 4 uses
  %i.wb = shl nuw nsw i64 %n.vec1045, 3
  %cmp.n1053 = icmp eq i64 %n.vec1045, %wide.trip.count150.i
  %xtraiter1392 = and i64 %wide.trip.count150.i, 3 ; 2 uses
  %lcmp.mod1393.not = icmp eq i64 %xtraiter1392, 0
  br label %.preheader9.us.i71

.preheader9.us.i71:                               ; preds = %._crit_edge.us.i75, %.preheader9.us.preheader.i
  %indvar1058 = phi i64 [ %indvar.next1059, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ] ; 2 uses
  %.08724.us.i = phi i32 [ %i.aay, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ]
  %.08823.us.i = phi ptr [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.us.preheader.i ] ; 9 uses
  %.08922.us.i = phi ptr [ %i.aax, %._crit_edge.us.i75 ], [ %i.uw, %.preheader9.us.preheader.i ] ; 15 uses
  %i.wc = mul i64 %i.vg, %indvar1058
  %i.wd = add i64 %.neg1322, %i.wc
  br i1 %i.uy, label %iter.check1128, label %.preheader8.us.i

iter.check1128:                                   ; preds = %.preheader9.us.i71
  br i1 %min.iters.check1107, label %.lr.ph.us.i.preheader, label %vector.memcheck1098

vector.memcheck1098:                              ; preds = %iter.check1128
  %scevgep1099 = getelementptr i8, ptr %.08823.us.i, i64 %i.vi
  %bound01103 = icmp ult ptr %.08823.us.i, %scevgep1102
  %bound11104 = icmp ult ptr %scevgep1101, %scevgep1099
  %found.conflict1105 = and i1 %bound01103, %bound11104
  %i.we = or i1 %found.conflict1105, %stride.check1106
  br i1 %i.we, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check1108

vector.main.loop.iter.check1108:                  ; preds = %vector.memcheck1098
  br i1 %min.iters.check1109, label %vec.epilog.ph1132, label %vector.ph1110

vector.ph1110:                                    ; preds = %vector.main.loop.iter.check1108
  %i.wf = getelementptr i8, ptr %.08823.us.i, i64 %i.vs ; 2 uses
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.ph1110, %vector.body1112
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1123, %vector.body1112 ] ; 3 uses
  %i.wg = shl i64 %index1113, 3
  %next.gep1114 = getelementptr i8, ptr %.08823.us.i, i64 %i.wg ; 4 uses
  %i.wh = sub nuw nsw i64 %i.vc, %index1113
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wh ; 4 uses
  %i.wj = getelementptr inbounds i8, ptr %i.wi, i64 -56
  %i.wk = getelementptr inbounds i8, ptr %i.wi, i64 -120
  %i.wl = getelementptr inbounds i8, ptr %i.wi, i64 -184
  %i.wm = getelementptr inbounds i8, ptr %i.wi, i64 -248
  %wide.load1115 = load <8 x i64>, ptr %i.wj, align 8, !tbaa !113, !alias.scope !938
  %wide.load1116 = load <8 x i64>, ptr %i.wk, align 8, !tbaa !113, !alias.scope !938
  %wide.load1117 = load <8 x i64>, ptr %i.wl, align 8, !tbaa !113, !alias.scope !938
  %wide.load1118 = load <8 x i64>, ptr %i.wm, align 8, !tbaa !113, !alias.scope !938
  %reverse1119 = shufflevector <8 x i64> %wide.load1115, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1120 = shufflevector <8 x i64> %wide.load1116, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1121 = shufflevector <8 x i64> %wide.load1117, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1122 = shufflevector <8 x i64> %wide.load1118, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.wn = getelementptr i8, ptr %next.gep1114, i64 64
  %i.wo = getelementptr i8, ptr %next.gep1114, i64 128
  %i.wp = getelementptr i8, ptr %next.gep1114, i64 192
  store <8 x i64> %reverse1119, ptr %next.gep1114, align 8, !tbaa !113, !alias.scope !939, !noalias !938
  store <8 x i64> %reverse1120, ptr %i.wn, align 8, !tbaa !113, !alias.scope !939, !noalias !938
  store <8 x i64> %reverse1121, ptr %i.wo, align 8, !tbaa !113, !alias.scope !939, !noalias !938
  store <8 x i64> %reverse1122, ptr %i.wp, align 8, !tbaa !113, !alias.scope !939, !noalias !938
  %index.next1123 = add nuw i64 %index1113, 32    ; 2 uses
  %i.wq = icmp eq i64 %index.next1123, %n.vec1111
  br i1 %i.wq, label %middle.block1124, label %vector.body1112, !llvm.loop !865

middle.block1124:                                 ; preds = %vector.body1112
  br i1 %cmp.n1125, label %.preheader8.us.i, label %vec.epilog.iter.check1130

vec.epilog.iter.check1130:                        ; preds = %middle.block1124
  br i1 %min.epilog.iters.check1131, label %.lr.ph.us.i.preheader, label %vec.epilog.ph1132, !prof !117

vec.epilog.ph1132:                                ; preds = %vector.main.loop.iter.check1108, %vec.epilog.iter.check1130
  %vec.epilog.resume.val1126 = phi i64 [ %n.vec1111, %vec.epilog.iter.check1130 ], [ 0, %vector.main.loop.iter.check1108 ]
  %i.wr = getelementptr i8, ptr %.08823.us.i, i64 %i.vt ; 2 uses
  br label %vec.epilog.vector.body1134

vec.epilog.vector.body1134:                       ; preds = %vec.epilog.vector.body1134, %vec.epilog.ph1132
  %index1135 = phi i64 [ %vec.epilog.resume.val1126, %vec.epilog.ph1132 ], [ %index.next1139, %vec.epilog.vector.body1134 ] ; 3 uses
  %i.ws = shl i64 %index1135, 3
  %next.gep1136 = getelementptr i8, ptr %.08823.us.i, i64 %i.ws
  %i.wt = sub nuw nsw i64 %i.vc, %index1135
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wt
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -56
  %wide.load1137 = load <8 x i64>, ptr %i.wv, align 8, !tbaa !113, !alias.scope !938
  %reverse1138 = shufflevector <8 x i64> %wide.load1137, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1138, ptr %next.gep1136, align 8, !tbaa !113, !alias.scope !939, !noalias !938
  %index.next1139 = add nuw i64 %index1135, 8     ; 2 uses
  %i.ww = icmp eq i64 %index.next1139, %n.vec1133
  br i1 %i.ww, label %vec.epilog.middle.block1140, label %vec.epilog.vector.body1134, !llvm.loop !866

vec.epilog.middle.block1140:                      ; preds = %vec.epilog.vector.body1134
  br i1 %cmp.n1141, label %.preheader8.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %iter.check1128, %vector.memcheck1098, %vec.epilog.iter.check1130, %vec.epilog.middle.block1140
  %indvars.iv141.i.ph = phi i64 [ 0, %iter.check1128 ], [ 0, %vector.memcheck1098 ], [ %n.vec1111, %vec.epilog.iter.check1130 ], [ %n.vec1133, %vec.epilog.middle.block1140 ] ; 3 uses
  %.110.us.i78.ph = phi ptr [ %.08823.us.i, %iter.check1128 ], [ %.08823.us.i, %vector.memcheck1098 ], [ %i.wf, %vec.epilog.iter.check1130 ], [ %i.wr, %vec.epilog.middle.block1140 ] ; 2 uses
  br i1 %lcmp.mod1387.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i.prol
  %indvars.iv141.i.prol = phi i64 [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.110.us.i78.prol = phi ptr [ %i.xa, %.lr.ph.us.i.prol ], [ %.110.us.i78.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %prol.iter1388 = phi i64 [ %prol.iter1388.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader ]
  %i.wx = sub nuw nsw i64 %i.vc, %indvars.iv141.i.prol
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wx
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !113
  %i.xa = getelementptr inbounds nuw i8, ptr %.110.us.i78.prol, i64 8 ; 3 uses
  store i64 %i.wz, ptr %.110.us.i78.prol, align 8, !tbaa !113
  %indvars.iv.next142.i.prol = add nuw nsw i64 %indvars.iv141.i.prol, 1 ; 2 uses
  %prol.iter1388.next = add i64 %prol.iter1388, 1 ; 2 uses
  %prol.iter1388.cmp.not = icmp eq i64 %prol.iter1388.next, %xtraiter1386
  br i1 %prol.iter1388.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !867

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader
  %.lcssa1346.unr = phi ptr [ poison, %.lr.ph.us.i.preheader ], [ %i.xa, %.lr.ph.us.i.prol ]
  %indvars.iv141.i.unr = phi i64 [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader ], [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ]
  %.110.us.i78.unr = phi ptr [ %.110.us.i78.ph, %.lr.ph.us.i.preheader ], [ %i.xa, %.lr.ph.us.i.prol ]
  %i.xb = sub nsw i64 %indvars.iv141.i.ph, %i.vc
  %i.xc = icmp ugt i64 %i.xb, -4
  br i1 %i.xc, label %.preheader8.us.i, label %.lr.ph.us.i.preheader.new

.lr.ph.us.i.preheader.new:                        ; preds = %.lr.ph.us.i.prol.loopexit
  %invariant.gep1506 = getelementptr [8 x i8], ptr %.08922.us.i, i64 %i.vc
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.i.preheader.new
  %indvars.iv141.i = phi i64 [ %indvars.iv141.i.unr, %.lr.ph.us.i.preheader.new ], [ %indvars.iv.next142.i.3, %.lr.ph.us.i ] ; 5 uses
  %.110.us.i78 = phi ptr [ %.110.us.i78.unr, %.lr.ph.us.i.preheader.new ], [ %i.xm, %.lr.ph.us.i ] ; 5 uses
  %i.xd = sub nuw nsw i64 %i.vc, %indvars.iv141.i
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.xd
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !113
  %i.xg = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 8
  store i64 %i.xf, ptr %.110.us.i78, align 8, !tbaa !113
  %indvars.iv.next142.i.neg = xor i64 %indvars.iv141.i, -1
  %gep1507 = getelementptr [8 x i8], ptr %invariant.gep1506, i64 %indvars.iv.next142.i.neg
  %i.xh = load i64, ptr %gep1507, align 8, !tbaa !113
  %i.xi = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 16
  store i64 %i.xh, ptr %i.xg, align 8, !tbaa !113
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2
  %10 = sub nuw nsw i64 %i.vc, %indvars.iv.next142.i.1
  %11 = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %10
  %i.xj = load i64, ptr %11, align 8, !tbaa !113
  %i.xk = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 24
  store i64 %i.xj, ptr %i.xi, align 8, !tbaa !113
  %indvars.iv.next142.i.2 = add nuw nsw i64 %indvars.iv141.i, 3
  %12 = sub nuw nsw i64 %i.vc, %indvars.iv.next142.i.2
  %13 = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %12
  %i.xl = load i64, ptr %13, align 8, !tbaa !113
  %i.xm = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 32 ; 2 uses
  store i64 %i.xl, ptr %i.xk, align 8, !tbaa !113
  %indvars.iv.next142.i.3 = add nuw nsw i64 %indvars.iv141.i, 4 ; 2 uses
  %exitcond145.not.i.3 = icmp eq i64 %indvars.iv.next142.i.3, %i.vc
  br i1 %exitcond145.not.i.3, label %.preheader8.us.i, label %.lr.ph.us.i, !llvm.loop !868

.lr.ph15.us.i76:                                  ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76
  %.08414.us.i = phi i32 [ %i.yl, %.lr.ph15.us.i76 ], [ %.08414.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ]
  %.08613.us.i = phi ptr [ %i.yi, %.lr.ph15.us.i76 ], [ %.08613.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %.212.us.i77 = phi ptr [ %i.yk, %.lr.ph15.us.i76 ], [ %.212.us.i77.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 8
  %i.xo = load i64, ptr %.08613.us.i, align 8, !tbaa !113
  %i.xp = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 8
  store i64 %i.xo, ptr %.212.us.i77, align 8, !tbaa !113
  %i.xq = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 16
  %i.xr = load i64, ptr %i.xn, align 8, !tbaa !113
  %i.xs = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 16
  store i64 %i.xr, ptr %i.xp, align 8, !tbaa !113
  %i.xt = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 24
  %i.xu = load i64, ptr %i.xq, align 8, !tbaa !113
  %i.xv = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 24
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !113
  %i.xw = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 32
  %i.xx = load i64, ptr %i.xt, align 8, !tbaa !113
  %i.xy = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 32
  store i64 %i.xx, ptr %i.xv, align 8, !tbaa !113
  %i.xz = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 40
  %i.ya = load i64, ptr %i.xw, align 8, !tbaa !113
  %i.yb = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 40
  store i64 %i.ya, ptr %i.xy, align 8, !tbaa !113
  %i.yc = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 48
  %i.yd = load i64, ptr %i.xz, align 8, !tbaa !113
  %i.ye = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 48
  store i64 %i.yd, ptr %i.yb, align 8, !tbaa !113
  %i.yf = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 56
  %i.yg = load i64, ptr %i.yc, align 8, !tbaa !113
  %i.yh = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 56
  store i64 %i.yg, ptr %i.ye, align 8, !tbaa !113
  %i.yi = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 64 ; 2 uses
  %i.yj = load i64, ptr %i.yf, align 8, !tbaa !113
  %i.yk = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 64 ; 2 uses
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !113
  %i.yl = add nuw nsw i32 %.08414.us.i, 8         ; 2 uses
  %exitcond146.not.i.7 = icmp eq i32 %i.yl, %i.cs
  br i1 %exitcond146.not.i.7, label %iter.check1040, label %.lr.ph15.us.i76, !llvm.loop !869

vec.epilog.scalar.ph1041:                         ; preds = %vec.epilog.scalar.ph1041.prol.loopexit, %vec.epilog.scalar.ph1041
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %vec.epilog.scalar.ph1041 ], [ %indvars.iv147.i.unr, %vec.epilog.scalar.ph1041.prol.loopexit ] ; 5 uses
  %.318.us.i74 = phi ptr [ %i.zb, %vec.epilog.scalar.ph1041 ], [ %.318.us.i74.unr, %vec.epilog.scalar.ph1041.prol.loopexit ] ; 5 uses
  %i.ym = sub nuw nsw i64 -2, %indvars.iv147.i
  %i.yn = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.ym
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !113
  %i.yp = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 8
  store i64 %i.yo, ptr %.318.us.i74, align 8, !tbaa !113
  %i.yq = sub nuw nsw i64 -3, %indvars.iv147.i
  %i.yr = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.yq
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !113
  %i.yt = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 16
  store i64 %i.ys, ptr %i.yp, align 8, !tbaa !113
  %i.yu = sub nuw nsw i64 -4, %indvars.iv147.i
  %i.yv = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.yu
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !113
  %i.yx = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 24
  store i64 %i.yw, ptr %i.yt, align 8, !tbaa !113
  %i.yy = sub nuw nsw i64 -5, %indvars.iv147.i
  %i.yz = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.yy
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !113
  %i.zb = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 32 ; 2 uses
  store i64 %i.za, ptr %i.yx, align 8, !tbaa !113
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1041, !llvm.loop !870

iter.check1040:                                   ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76, %middle.block1075, %vec.epilog.middle.block1093, %.preheader8.us.i
  %.2.lcssa.us.i73 = phi ptr [ %.1.lcssa.us.i, %.preheader8.us.i ], [ %i.aan, %vec.epilog.middle.block1093 ], [ %i.aad, %middle.block1075 ], [ %.lcssa1347.unr, %.lr.ph15.us.i76.prol.loopexit ], [ %i.yk, %.lr.ph15.us.i76 ] ; 8 uses
  %.086.lcssa.us.i = phi ptr [ %.08922.us.i, %.preheader8.us.i ], [ %i.aam, %vec.epilog.middle.block1093 ], [ %i.aac, %middle.block1075 ], [ %.lcssa1348.unr, %.lr.ph15.us.i76.prol.loopexit ], [ %i.yi, %.lr.ph15.us.i76 ] ; 8 uses
  br i1 %min.iters.check1019, label %vec.epilog.scalar.ph1041.preheader, label %vector.memcheck1012

vector.memcheck1012:                              ; preds = %iter.check1040
  %scevgep1013 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.vd
  %scevgep1014 = getelementptr i8, ptr %.086.lcssa.us.i, i64 -8 ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %scevgep1014, i64 %i.ve
  %bound01016 = icmp ult ptr %.2.lcssa.us.i73, %scevgep1014
  %bound11017 = icmp ult ptr %scevgep1015, %scevgep1013
  %found.conflict1018 = and i1 %bound01016, %bound11017
  br i1 %found.conflict1018, label %vec.epilog.scalar.ph1041.preheader, label %vector.main.loop.iter.check1020

vector.main.loop.iter.check1020:                  ; preds = %vector.memcheck1012
  br i1 %min.iters.check1021, label %vec.epilog.ph1044, label %vector.ph1022

vector.ph1022:                                    ; preds = %vector.main.loop.iter.check1020
  %i.zc = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.wa ; 2 uses
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.ph1022, %vector.body1024
  %index1025 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1035, %vector.body1024 ] ; 3 uses
  %i.zd = shl i64 %index1025, 3
  %next.gep1026 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.zd ; 4 uses
  %i.ze = sub nuw nsw i64 -2, %index1025
  %i.zf = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.ze ; 4 uses
  %i.zg = getelementptr inbounds i8, ptr %i.zf, i64 -56
  %i.zh = getelementptr inbounds i8, ptr %i.zf, i64 -120
  %i.zi = getelementptr inbounds i8, ptr %i.zf, i64 -184
  %i.zj = getelementptr inbounds i8, ptr %i.zf, i64 -248
  %wide.load1027 = load <8 x i64>, ptr %i.zg, align 8, !tbaa !113, !alias.scope !940
  %wide.load1028 = load <8 x i64>, ptr %i.zh, align 8, !tbaa !113, !alias.scope !940
  %wide.load1029 = load <8 x i64>, ptr %i.zi, align 8, !tbaa !113, !alias.scope !940
  %wide.load1030 = load <8 x i64>, ptr %i.zj, align 8, !tbaa !113, !alias.scope !940
  %reverse1031 = shufflevector <8 x i64> %wide.load1027, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1032 = shufflevector <8 x i64> %wide.load1028, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1033 = shufflevector <8 x i64> %wide.load1029, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1034 = shufflevector <8 x i64> %wide.load1030, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.zk = getelementptr i8, ptr %next.gep1026, i64 64
  %i.zl = getelementptr i8, ptr %next.gep1026, i64 128
  %i.zm = getelementptr i8, ptr %next.gep1026, i64 192
  store <8 x i64> %reverse1031, ptr %next.gep1026, align 8, !tbaa !113, !alias.scope !941, !noalias !940
  store <8 x i64> %reverse1032, ptr %i.zk, align 8, !tbaa !113, !alias.scope !941, !noalias !940
  store <8 x i64> %reverse1033, ptr %i.zl, align 8, !tbaa !113, !alias.scope !941, !noalias !940
  store <8 x i64> %reverse1034, ptr %i.zm, align 8, !tbaa !113, !alias.scope !941, !noalias !940
  %index.next1035 = add nuw i64 %index1025, 32    ; 2 uses
  %i.zn = icmp eq i64 %index.next1035, %n.vec1023
  br i1 %i.zn, label %middle.block1036, label %vector.body1024, !llvm.loop !874

middle.block1036:                                 ; preds = %vector.body1024
  br i1 %cmp.n1037, label %._crit_edge.us.i75, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  br i1 %min.epilog.iters.check1043, label %vec.epilog.scalar.ph1041.preheader, label %vec.epilog.ph1044, !prof !117

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1020, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1023, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1020 ]
  %i.zo = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.wb ; 2 uses
  br label %vec.epilog.vector.body1046

vec.epilog.vector.body1046:                       ; preds = %vec.epilog.vector.body1046, %vec.epilog.ph1044
  %index1047 = phi i64 [ %vec.epilog.resume.val1038, %vec.epilog.ph1044 ], [ %index.next1051, %vec.epilog.vector.body1046 ] ; 3 uses
  %i.zp = shl i64 %index1047, 3
  %next.gep1048 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.zp
  %i.zq = sub nuw nsw i64 -2, %index1047
  %i.zr = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.zq
  %i.zs = getelementptr inbounds i8, ptr %i.zr, i64 -56
  %wide.load1049 = load <8 x i64>, ptr %i.zs, align 8, !tbaa !113, !alias.scope !940
  %reverse1050 = shufflevector <8 x i64> %wide.load1049, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1050, ptr %next.gep1048, align 8, !tbaa !113, !alias.scope !941, !noalias !940
  %index.next1051 = add nuw i64 %index1047, 8     ; 2 uses
  %i.zt = icmp eq i64 %index.next1051, %n.vec1045
  br i1 %i.zt, label %vec.epilog.middle.block1052, label %vec.epilog.vector.body1046, !llvm.loop !875

vec.epilog.middle.block1052:                      ; preds = %vec.epilog.vector.body1046
  br i1 %cmp.n1053, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1041.preheader

vec.epilog.scalar.ph1041.preheader:               ; preds = %iter.check1040, %vector.memcheck1012, %vec.epilog.iter.check1042, %vec.epilog.middle.block1052
  %indvars.iv147.i.ph = phi i64 [ 0, %iter.check1040 ], [ 0, %vector.memcheck1012 ], [ %n.vec1023, %vec.epilog.iter.check1042 ], [ %n.vec1045, %vec.epilog.middle.block1052 ] ; 3 uses
  %.318.us.i74.ph = phi ptr [ %.2.lcssa.us.i73, %iter.check1040 ], [ %.2.lcssa.us.i73, %vector.memcheck1012 ], [ %i.zc, %vec.epilog.iter.check1042 ], [ %i.zo, %vec.epilog.middle.block1052 ] ; 2 uses
  br i1 %lcmp.mod1393.not, label %vec.epilog.scalar.ph1041.prol.loopexit, label %vec.epilog.scalar.ph1041.prol

vec.epilog.scalar.ph1041.prol:                    ; preds = %vec.epilog.scalar.ph1041.preheader, %vec.epilog.scalar.ph1041.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %vec.epilog.scalar.ph1041.prol ], [ %indvars.iv147.i.ph, %vec.epilog.scalar.ph1041.preheader ] ; 2 uses
  %.318.us.i74.prol = phi ptr [ %i.zx, %vec.epilog.scalar.ph1041.prol ], [ %.318.us.i74.ph, %vec.epilog.scalar.ph1041.preheader ] ; 2 uses
  %prol.iter1394 = phi i64 [ %prol.iter1394.next, %vec.epilog.scalar.ph1041.prol ], [ 0, %vec.epilog.scalar.ph1041.preheader ]
  %i.zu = sub nuw nsw i64 -2, %indvars.iv147.i.prol
  %i.zv = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.zu
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !113
  %i.zx = getelementptr inbounds nuw i8, ptr %.318.us.i74.prol, i64 8 ; 3 uses
  store i64 %i.zw, ptr %.318.us.i74.prol, align 8, !tbaa !113
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter1394.next = add i64 %prol.iter1394, 1 ; 2 uses
  %prol.iter1394.cmp.not = icmp eq i64 %prol.iter1394.next, %xtraiter1392
  br i1 %prol.iter1394.cmp.not, label %vec.epilog.scalar.ph1041.prol.loopexit, label %vec.epilog.scalar.ph1041.prol, !llvm.loop !876

vec.epilog.scalar.ph1041.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1041.prol, %vec.epilog.scalar.ph1041.preheader
  %.lcssa1349.unr = phi ptr [ poison, %vec.epilog.scalar.ph1041.preheader ], [ %i.zx, %vec.epilog.scalar.ph1041.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %vec.epilog.scalar.ph1041.preheader ], [ %indvars.iv.next148.i.prol, %vec.epilog.scalar.ph1041.prol ]
  %.318.us.i74.unr = phi ptr [ %.318.us.i74.ph, %vec.epilog.scalar.ph1041.preheader ], [ %i.zx, %vec.epilog.scalar.ph1041.prol ]
  %i.zy = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.zz = icmp ugt i64 %i.zy, -4
  br i1 %i.zz, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1041

.preheader8.us.i:                                 ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block1124, %vec.epilog.middle.block1140, %.preheader9.us.i71
  %.1.lcssa.us.i = phi ptr [ %.08823.us.i, %.preheader9.us.i71 ], [ %i.wr, %vec.epilog.middle.block1140 ], [ %i.wf, %middle.block1124 ], [ %.lcssa1346.unr, %.lr.ph.us.i.prol.loopexit ], [ %i.xm, %.lr.ph.us.i ] ; 8 uses
  %.1.lcssa.us.i1057 = ptrtoaddr ptr %.1.lcssa.us.i to i64
  br i1 %i.uz, label %iter.check1081, label %iter.check1040

iter.check1081:                                   ; preds = %.preheader8.us.i
  br i1 %min.iters.check1061, label %.lr.ph15.us.i76.preheader, label %vector.memcheck1056

vector.memcheck1056:                              ; preds = %iter.check1081
  %i.aaa = add i64 %i.wd, %.1.lcssa.us.i1057
  %i.aab = add i64 %i.aaa, -1
  %diff.check1060 = icmp ult i64 %i.aab, 255
  br i1 %diff.check1060, label %.lr.ph15.us.i76.preheader, label %vector.main.loop.iter.check1062

vector.main.loop.iter.check1062:                  ; preds = %vector.memcheck1056
  br i1 %min.iters.check1063, label %vec.epilog.ph1085, label %vector.ph1064

vector.ph1064:                                    ; preds = %vector.main.loop.iter.check1062
  %i.aac = getelementptr i8, ptr %.08922.us.i, i64 %i.vw ; 2 uses
  %i.aad = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.vw ; 2 uses
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.ph1064, %vector.body1066
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1074, %vector.body1066 ] ; 2 uses
  %i.aae = shl i64 %index1067, 3                  ; 2 uses
  %next.gep1068 = getelementptr i8, ptr %.08922.us.i, i64 %i.aae ; 4 uses
  %next.gep1069 = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.aae ; 4 uses
  %i.aaf = getelementptr i8, ptr %next.gep1068, i64 64
  %i.aag = getelementptr i8, ptr %next.gep1068, i64 128
  %i.aah = getelementptr i8, ptr %next.gep1068, i64 192
  %wide.load1070 = load <8 x i64>, ptr %next.gep1068, align 8, !tbaa !113
  %wide.load1071 = load <8 x i64>, ptr %i.aaf, align 8, !tbaa !113
  %wide.load1072 = load <8 x i64>, ptr %i.aag, align 8, !tbaa !113
  %wide.load1073 = load <8 x i64>, ptr %i.aah, align 8, !tbaa !113
  %i.aai = getelementptr i8, ptr %next.gep1069, i64 64
  %i.aaj = getelementptr i8, ptr %next.gep1069, i64 128
  %i.aak = getelementptr i8, ptr %next.gep1069, i64 192
  store <8 x i64> %wide.load1070, ptr %next.gep1069, align 8, !tbaa !113
  store <8 x i64> %wide.load1071, ptr %i.aai, align 8, !tbaa !113
  store <8 x i64> %wide.load1072, ptr %i.aaj, align 8, !tbaa !113
  store <8 x i64> %wide.load1073, ptr %i.aak, align 8, !tbaa !113
  %index.next1074 = add nuw i64 %index1067, 32    ; 2 uses
  %i.aal = icmp eq i64 %index.next1074, %n.vec1065
  br i1 %i.aal, label %middle.block1075, label %vector.body1066, !llvm.loop !877

middle.block1075:                                 ; preds = %vector.body1066
  br i1 %cmp.n1076, label %iter.check1040, label %vec.epilog.iter.check1083

vec.epilog.iter.check1083:                        ; preds = %middle.block1075
  br i1 %min.epilog.iters.check1084, label %.lr.ph15.us.i76.preheader, label %vec.epilog.ph1085, !prof !117

vec.epilog.ph1085:                                ; preds = %vector.main.loop.iter.check1062, %vec.epilog.iter.check1083
  %vec.epilog.resume.val1077 = phi i64 [ %n.vec1065, %vec.epilog.iter.check1083 ], [ 0, %vector.main.loop.iter.check1062 ]
  %i.aam = getelementptr i8, ptr %.08922.us.i, i64 %i.vy ; 2 uses
  %i.aan = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.vy ; 2 uses
  br label %vec.epilog.vector.body1087

vec.epilog.vector.body1087:                       ; preds = %vec.epilog.vector.body1087, %vec.epilog.ph1085
  %index1088 = phi i64 [ %vec.epilog.resume.val1077, %vec.epilog.ph1085 ], [ %index.next1092, %vec.epilog.vector.body1087 ] ; 2 uses
  %i.aao = shl i64 %index1088, 3                  ; 2 uses
  %next.gep1089 = getelementptr i8, ptr %.08922.us.i, i64 %i.aao
  %next.gep1090 = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.aao
  %wide.load1091 = load <8 x i64>, ptr %next.gep1089, align 8, !tbaa !113
  store <8 x i64> %wide.load1091, ptr %next.gep1090, align 8, !tbaa !113
  %index.next1092 = add nuw i64 %index1088, 8     ; 2 uses
  %i.aap = icmp eq i64 %index.next1092, %n.vec1086
  br i1 %i.aap, label %vec.epilog.middle.block1093, label %vec.epilog.vector.body1087, !llvm.loop !878

vec.epilog.middle.block1093:                      ; preds = %vec.epilog.vector.body1087
  br i1 %cmp.n1094, label %iter.check1040, label %.lr.ph15.us.i76.preheader

.lr.ph15.us.i76.preheader:                        ; preds = %iter.check1081, %vector.memcheck1056, %vec.epilog.iter.check1083, %vec.epilog.middle.block1093
  %.08414.us.i.ph = phi i32 [ 0, %iter.check1081 ], [ 0, %vector.memcheck1056 ], [ %i.vv, %vec.epilog.iter.check1083 ], [ %i.vx, %vec.epilog.middle.block1093 ] ; 4 uses
  %.08613.us.i.ph = phi ptr [ %.08922.us.i, %iter.check1081 ], [ %.08922.us.i, %vector.memcheck1056 ], [ %i.aac, %vec.epilog.iter.check1083 ], [ %i.aam, %vec.epilog.middle.block1093 ] ; 2 uses
  %.212.us.i77.ph = phi ptr [ %.1.lcssa.us.i, %iter.check1081 ], [ %.1.lcssa.us.i, %vector.memcheck1056 ], [ %i.aad, %vec.epilog.iter.check1083 ], [ %i.aan, %vec.epilog.middle.block1093 ] ; 2 uses
  %i.aaq = sub i32 %i.cs, %.08414.us.i.ph
  %xtraiter1389 = and i32 %i.aaq, 7               ; 2 uses
  %lcmp.mod1390.not = icmp eq i32 %xtraiter1389, 0
  br i1 %lcmp.mod1390.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol

.lr.ph15.us.i76.prol:                             ; preds = %.lr.ph15.us.i76.preheader, %.lr.ph15.us.i76.prol
  %.08414.us.i.prol = phi i32 [ %i.aau, %.lr.ph15.us.i76.prol ], [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader ]
  %.08613.us.i.prol = phi ptr [ %i.aar, %.lr.ph15.us.i76.prol ], [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader ] ; 2 uses
  %.212.us.i77.prol = phi ptr [ %i.aat, %.lr.ph15.us.i76.prol ], [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader ] ; 2 uses
  %prol.iter1391 = phi i32 [ %prol.iter1391.next, %.lr.ph15.us.i76.prol ], [ 0, %.lr.ph15.us.i76.preheader ]
  %i.aar = getelementptr inbounds nuw i8, ptr %.08613.us.i.prol, i64 8 ; 3 uses
  %i.aas = load i64, ptr %.08613.us.i.prol, align 8, !tbaa !113
  %i.aat = getelementptr inbounds nuw i8, ptr %.212.us.i77.prol, i64 8 ; 3 uses
  store i64 %i.aas, ptr %.212.us.i77.prol, align 8, !tbaa !113
  %i.aau = add nuw nsw i32 %.08414.us.i.prol, 1   ; 2 uses
  %prol.iter1391.next = add i32 %prol.iter1391, 1 ; 2 uses
  %prol.iter1391.cmp.not = icmp eq i32 %prol.iter1391.next, %xtraiter1389
  br i1 %prol.iter1391.cmp.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol, !llvm.loop !879

.lr.ph15.us.i76.prol.loopexit:                    ; preds = %.lr.ph15.us.i76.prol, %.lr.ph15.us.i76.preheader
  %.lcssa1348.unr = phi ptr [ poison, %.lr.ph15.us.i76.preheader ], [ %i.aar, %.lr.ph15.us.i76.prol ]
  %.lcssa1347.unr = phi ptr [ poison, %.lr.ph15.us.i76.preheader ], [ %i.aat, %.lr.ph15.us.i76.prol ]
  %.08414.us.i.unr = phi i32 [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader ], [ %i.aau, %.lr.ph15.us.i76.prol ]
  %.08613.us.i.unr = phi ptr [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader ], [ %i.aar, %.lr.ph15.us.i76.prol ]
  %.212.us.i77.unr = phi ptr [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader ], [ %i.aat, %.lr.ph15.us.i76.prol ]
  %i.aav = sub i32 %.08414.us.i.ph, %i.cs
  %i.aaw = icmp ugt i32 %i.aav, -8
  br i1 %i.aaw, label %iter.check1040, label %.lr.ph15.us.i76

._crit_edge.us.i75:                               ; preds = %vec.epilog.scalar.ph1041.prol.loopexit, %vec.epilog.scalar.ph1041, %vec.epilog.middle.block1052, %middle.block1036
  %.lcssa270 = phi ptr [ %i.zo, %vec.epilog.middle.block1052 ], [ %i.zc, %middle.block1036 ], [ %.lcssa1349.unr, %vec.epilog.scalar.ph1041.prol.loopexit ], [ %i.zb, %vec.epilog.scalar.ph1041 ] ; 2 uses
  %i.aax = getelementptr inbounds [8 x i8], ptr %.08922.us.i, i64 %i.vb ; 2 uses
  %i.aay = add nuw nsw i32 %.08724.us.i, 1        ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.aay, %i.uq
  %indvar.next1059 = add i64 %indvar1058, 1
  br i1 %exitcond152.not.i, label %.preheader6.i47, label %.preheader9.us.i71, !llvm.loop !880

.preheader9.lr.ph.split.i66:                      ; preds = %.preheader9.lr.ph.i65
  br i1 %i.uy, label %.preheader9.lr.ph.split.split.us.i70, label %.preheader9.lr.ph.split.split.i67

.preheader9.lr.ph.split.split.us.i70:             ; preds = %.preheader9.lr.ph.split.i66
  %i.aaz = zext nneg i32 %i.us to i64             ; 23 uses
  br i1 %i.uz, label %.preheader9.us28.us.i.preheader, label %.preheader9.us28.i.preheader

.preheader9.us28.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.aba = shl nuw nsw i64 %i.aaz, 3              ; 2 uses
  %scevgep1234 = getelementptr i8, ptr %i.cv, i64 8 ; 2 uses
  %i.abb = shl nsw i64 %i.uv, 3
  %i.abc = add i64 %i.db, %i.abb                  ; 2 uses
  %scevgep1235 = getelementptr i8, ptr %scevgep1234, i64 %i.abc
  %i.abd = add i64 %i.abc, %i.aba
  %i.abe = shl nsw i64 %i.df, 3
  %i.abf = add nsw i32 %i.uq, -1
  %i.abg = zext i32 %i.abf to i64
  %i.abh = mul i64 %i.abe, %i.abg
  %i.abi = sub i64 %i.abd, %i.abh
  %scevgep1236 = getelementptr i8, ptr %scevgep1234, i64 %i.abi
  %min.iters.check1240 = icmp ult i32 %i.us, 8
  %min.iters.check1242 = icmp ult i32 %i.us, 32
  %i.abj = and i64 %i.aaz, 24
  %n.vec1244 = and i64 %i.aaz, 2147483616         ; 5 uses
  %i.abk = shl nuw nsw i64 %n.vec1244, 3
  %cmp.n1258 = icmp eq i64 %n.vec1244, %i.aaz
  %min.epilog.iters.check1264 = icmp eq i64 %i.abj, 0
  %n.vec1266 = and i64 %i.aaz, 2147483640         ; 4 uses
  %i.abl = shl nuw nsw i64 %n.vec1266, 3
  %cmp.n1274 = icmp eq i64 %n.vec1266, %i.aaz
  %xtraiter1376 = and i64 %i.aaz, 3               ; 2 uses
  %lcmp.mod1377.not = icmp eq i64 %xtraiter1376, 0
  br label %iter.check1261

.preheader9.us28.us.i.preheader:                  ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.abm = add i64 %i.db, %i.cw
  %i.abn = shl nsw i64 %i.uv, 3
  %i.abo = add i64 %i.abm, %i.abn
  %i.abp = shl nuw nsw i64 %i.df, 3
  %i.abq = zext nneg i32 %i.cs to i64             ; 5 uses
  %xtraiter1379 = and i64 %i.aaz, 3               ; 3 uses
  %i.abr = icmp ult i32 %i.us, 4
  %unroll_iter = and i64 %i.aaz, 2147483644
  %lcmp.mod1380.not = icmp eq i64 %xtraiter1379, 0
  %lcmp.mod1382 = icmp ne i64 %xtraiter1379, 0
  %min.iters.check1149 = icmp ult i32 %i.cs, 8
  %min.iters.check1151 = icmp ult i32 %i.cs, 32
  %i.abs = and i64 %i.abq, 24
  %n.vec1153 = and i64 %i.abq, 2147483616         ; 5 uses
  %i.abt = trunc nuw nsw i64 %n.vec1153 to i32
  %i.abu = shl nuw nsw i64 %n.vec1153, 3          ; 2 uses
  %cmp.n1164 = icmp eq i64 %n.vec1153, %i.abq
  %min.epilog.iters.check1172 = icmp eq i64 %i.abs, 0
  %n.vec1174 = and i64 %i.abq, 2147483640         ; 4 uses
  %i.abv = trunc nuw nsw i64 %n.vec1174 to i32
  %i.abw = shl nuw nsw i64 %n.vec1174, 3          ; 2 uses
  %cmp.n1182 = icmp eq i64 %n.vec1174, %i.abq
  br label %iter.check1216

iter.check1216:                                   ; preds = %.preheader9.us28.us.i.preheader, %..preheader7_crit_edge.us43.us.i
  %indvar1146 = phi i64 [ 0, %.preheader9.us28.us.i.preheader ], [ %indvar.next1147, %..preheader7_crit_edge.us43.us.i ] ; 2 uses
  %.08724.us29.us.i = phi i32 [ 0, %.preheader9.us28.us.i.preheader ], [ %i.aem, %..preheader7_crit_edge.us43.us.i ]
  %.08823.us30.us.i = phi ptr [ %i.bb, %.preheader9.us28.us.i.preheader ], [ %.lcssa265, %..preheader7_crit_edge.us43.us.i ] ; 3 uses
  %.08922.us31.us.i = phi ptr [ %i.uw, %.preheader9.us28.us.i.preheader ], [ %i.ael, %..preheader7_crit_edge.us43.us.i ] ; 12 uses
  %.08823.us30.us.i1145 = ptrtoaddr ptr %.08823.us30.us.i to i64 ; 2 uses
  %i.abx = mul i64 %i.abp, %indvar1146
  %reass.sub = sub i64 %i.abx, %i.abo
  br i1 %i.abr, label %.epil.preheader, label %iter.check1216.new

iter.check1216.new:                               ; preds = %iter.check1216
  %invariant.gep1504 = getelementptr [8 x i8], ptr %.08922.us31.us.i, i64 %i.aaz
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %iter.check1216.new
  %indvars.iv134.i = phi i64 [ 0, %iter.check1216.new ], [ %indvars.iv.next135.i.3, %bb.i ] ; 5 uses
  %.110.us34.us.i = phi ptr [ %.08823.us30.us.i, %iter.check1216.new ], [ %i.acl, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %iter.check1216.new ], [ %niter.next.3, %bb.i ]
  %i.aby = sub nuw nsw i64 %i.aaz, %indvars.iv134.i
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.aby
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !113
  %i.acb = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 8
  store i64 %i.aca, ptr %.110.us34.us.i, align 8, !tbaa !113
  %indvars.iv.next135.i.neg = xor i64 %indvars.iv134.i, -1
  %gep1505 = getelementptr [8 x i8], ptr %invariant.gep1504, i64 %indvars.iv.next135.i.neg
  %i.acc = load i64, ptr %gep1505, align 8, !tbaa !113
  %i.acd = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 16
  store i64 %i.acc, ptr %i.acb, align 8, !tbaa !113
  %indvars.iv.next135.i.1 = or disjoint i64 %indvars.iv134.i, 2
  %i.ace = sub nuw nsw i64 %i.aaz, %indvars.iv.next135.i.1
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.ace
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !113
  %i.ach = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 24
  store i64 %i.acg, ptr %i.acd, align 8, !tbaa !113
  %indvars.iv.next135.i.2 = or disjoint i64 %indvars.iv134.i, 3
  %i.aci = sub nuw nsw i64 %i.aaz, %indvars.iv.next135.i.2
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.aci
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !113
  %i.acl = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 32 ; 3 uses
  store i64 %i.ack, ptr %i.ach, align 8, !tbaa !113
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iter.check1169.unr-lcssa, label %bb.i, !llvm.loop !881

iter.check1169.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod1380.not, label %iter.check1169, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check1169.unr-lcssa, %iter.check1216
  %indvars.iv134.i.epil.init = phi i64 [ 0, %iter.check1216 ], [ %indvars.iv.next135.i.3, %iter.check1169.unr-lcssa ]
  %.110.us34.us.i.epil.init = phi ptr [ %.08823.us30.us.i, %iter.check1216 ], [ %i.acl, %iter.check1169.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1382)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv134.i.epil = phi i64 [ %indvars.iv.next135.i.epil, %bb.j ], [ %indvars.iv134.i.epil.init, %.epil.preheader ] ; 2 uses
  %.110.us34.us.i.epil = phi ptr [ %i.acp, %bb.j ], [ %.110.us34.us.i.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.j ], [ 0, %.epil.preheader ]
  %i.acm = sub nuw nsw i64 %i.aaz, %indvars.iv134.i.epil
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.acm
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !113
  %i.acp = getelementptr inbounds nuw i8, ptr %.110.us34.us.i.epil, i64 8 ; 2 uses
  store i64 %i.aco, ptr %.110.us34.us.i.epil, align 8, !tbaa !113
  %indvars.iv.next135.i.epil = add nuw nsw i64 %indvars.iv134.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1379
  br i1 %epil.iter.cmp.not, label %iter.check1169, label %bb.j, !llvm.loop !882

iter.check1169:                                   ; preds = %bb.j, %iter.check1169.unr-lcssa
  %.lcssa1343 = phi ptr [ %i.acl, %iter.check1169.unr-lcssa ], [ %i.acp, %bb.j ] ; 7 uses
  br i1 %min.iters.check1149, label %..preheader8_crit_edge.us35.us.i.preheader, label %vector.memcheck1144

vector.memcheck1144:                              ; preds = %iter.check1169
  %i.acq = ptrtoaddr ptr %.lcssa1343 to i64
  %reass.sub1320 = sub i64 %i.acq, %.08823.us30.us.i1145
  %op.rdx = add i64 %.08823.us30.us.i1145, -1
  %op.rdx1330 = add i64 %reass.sub, %reass.sub1320
  %op.rdx1331 = add i64 %op.rdx, %op.rdx1330
  %diff.check1148 = icmp ult i64 %op.rdx1331, 255
  br i1 %diff.check1148, label %..preheader8_crit_edge.us35.us.i.preheader, label %vector.main.loop.iter.check1150

vector.main.loop.iter.check1150:                  ; preds = %vector.memcheck1144
  br i1 %min.iters.check1151, label %vec.epilog.ph1173, label %vector.ph1152

vector.ph1152:                                    ; preds = %vector.main.loop.iter.check1150
  %i.acr = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.abu
  %i.acs = getelementptr i8, ptr %.lcssa1343, i64 %i.abu ; 2 uses
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.ph1152, %vector.body1154
  %index1155 = phi i64 [ 0, %vector.ph1152 ], [ %index.next1162, %vector.body1154 ] ; 2 uses
  %i.act = shl i64 %index1155, 3                  ; 2 uses
  %next.gep1156 = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.act ; 4 uses
  %next.gep1157 = getelementptr i8, ptr %.lcssa1343, i64 %i.act ; 4 uses
  %i.acu = getelementptr i8, ptr %next.gep1156, i64 64
  %i.acv = getelementptr i8, ptr %next.gep1156, i64 128
  %i.acw = getelementptr i8, ptr %next.gep1156, i64 192
  %wide.load1158 = load <8 x i64>, ptr %next.gep1156, align 8, !tbaa !113
  %wide.load1159 = load <8 x i64>, ptr %i.acu, align 8, !tbaa !113
  %wide.load1160 = load <8 x i64>, ptr %i.acv, align 8, !tbaa !113
  %wide.load1161 = load <8 x i64>, ptr %i.acw, align 8, !tbaa !113
  %i.acx = getelementptr i8, ptr %next.gep1157, i64 64
  %i.acy = getelementptr i8, ptr %next.gep1157, i64 128
  %i.acz = getelementptr i8, ptr %next.gep1157, i64 192
  store <8 x i64> %wide.load1158, ptr %next.gep1157, align 8, !tbaa !113
  store <8 x i64> %wide.load1159, ptr %i.acx, align 8, !tbaa !113
  store <8 x i64> %wide.load1160, ptr %i.acy, align 8, !tbaa !113
  store <8 x i64> %wide.load1161, ptr %i.acz, align 8, !tbaa !113
  %index.next1162 = add nuw i64 %index1155, 32    ; 2 uses
  %i.ada = icmp eq i64 %index.next1162, %n.vec1153
  br i1 %i.ada, label %middle.block1163, label %vector.body1154, !llvm.loop !883

middle.block1163:                                 ; preds = %vector.body1154
  br i1 %cmp.n1164, label %..preheader7_crit_edge.us43.us.i, label %vec.epilog.iter.check1171

vec.epilog.iter.check1171:                        ; preds = %middle.block1163
  br i1 %min.epilog.iters.check1172, label %..preheader8_crit_edge.us35.us.i.preheader, label %vec.epilog.ph1173, !prof !117

vec.epilog.ph1173:                                ; preds = %vector.main.loop.iter.check1150, %vec.epilog.iter.check1171
  %vec.epilog.resume.val1165 = phi i64 [ %n.vec1153, %vec.epilog.iter.check1171 ], [ 0, %vector.main.loop.iter.check1150 ]
  %i.adb = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.abw
  %i.adc = getelementptr i8, ptr %.lcssa1343, i64 %i.abw ; 2 uses
  br label %vec.epilog.vector.body1175

vec.epilog.vector.body1175:                       ; preds = %vec.epilog.vector.body1175, %vec.epilog.ph1173
  %index1176 = phi i64 [ %vec.epilog.resume.val1165, %vec.epilog.ph1173 ], [ %index.next1180, %vec.epilog.vector.body1175 ] ; 2 uses
  %i.add = shl i64 %index1176, 3                  ; 2 uses
  %next.gep1177 = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.add
  %next.gep1178 = getelementptr i8, ptr %.lcssa1343, i64 %i.add
  %wide.load1179 = load <8 x i64>, ptr %next.gep1177, align 8, !tbaa !113
  store <8 x i64> %wide.load1179, ptr %next.gep1178, align 8, !tbaa !113
  %index.next1180 = add nuw i64 %index1176, 8     ; 2 uses
  %i.ade = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.ade, label %vec.epilog.middle.block1181, label %vec.epilog.vector.body1175, !llvm.loop !884

vec.epilog.middle.block1181:                      ; preds = %vec.epilog.vector.body1175
  br i1 %cmp.n1182, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i.preheader

..preheader8_crit_edge.us35.us.i.preheader:       ; preds = %iter.check1169, %vector.memcheck1144, %vec.epilog.iter.check1171, %vec.epilog.middle.block1181
  %.08414.us40.us.i.ph = phi i32 [ 0, %iter.check1169 ], [ 0, %vector.memcheck1144 ], [ %i.abt, %vec.epilog.iter.check1171 ], [ %i.abv, %vec.epilog.middle.block1181 ] ; 4 uses
  %.08613.us41.us.i.ph = phi ptr [ %.08922.us31.us.i, %iter.check1169 ], [ %.08922.us31.us.i, %vector.memcheck1144 ], [ %i.acr, %vec.epilog.iter.check1171 ], [ %i.adb, %vec.epilog.middle.block1181 ] ; 2 uses
  %.212.us42.us.i.ph = phi ptr [ %.lcssa1343, %iter.check1169 ], [ %.lcssa1343, %vector.memcheck1144 ], [ %i.acs, %vec.epilog.iter.check1171 ], [ %i.adc, %vec.epilog.middle.block1181 ] ; 2 uses
  %i.adf = sub i32 %i.cs, %.08414.us40.us.i.ph
  %xtraiter1383 = and i32 %i.adf, 7               ; 2 uses
  %lcmp.mod1384.not = icmp eq i32 %xtraiter1383, 0
  br i1 %lcmp.mod1384.not, label %..preheader8_crit_edge.us35.us.i.prol.loopexit, label %..preheader8_crit_edge.us35.us.i.prol

..preheader8_crit_edge.us35.us.i.prol:            ; preds = %..preheader8_crit_edge.us35.us.i.preheader, %..preheader8_crit_edge.us35.us.i.prol
  %.08414.us40.us.i.prol = phi i32 [ %i.adj, %..preheader8_crit_edge.us35.us.i.prol ], [ %.08414.us40.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ]
  %.08613.us41.us.i.prol = phi ptr [ %i.adg, %..preheader8_crit_edge.us35.us.i.prol ], [ %.08613.us41.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ] ; 2 uses
  %.212.us42.us.i.prol = phi ptr [ %i.adi, %..preheader8_crit_edge.us35.us.i.prol ], [ %.212.us42.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ] ; 2 uses
  %prol.iter1385 = phi i32 [ %prol.iter1385.next, %..preheader8_crit_edge.us35.us.i.prol ], [ 0, %..preheader8_crit_edge.us35.us.i.preheader ]
  %i.adg = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i.prol, i64 8 ; 2 uses
  %i.adh = load i64, ptr %.08613.us41.us.i.prol, align 8, !tbaa !113
  %i.adi = getelementptr inbounds nuw i8, ptr %.212.us42.us.i.prol, i64 8 ; 3 uses
  store i64 %i.adh, ptr %.212.us42.us.i.prol, align 8, !tbaa !113
  %i.adj = add nuw nsw i32 %.08414.us40.us.i.prol, 1 ; 2 uses
  %prol.iter1385.next = add i32 %prol.iter1385, 1 ; 2 uses
  %prol.iter1385.cmp.not = icmp eq i32 %prol.iter1385.next, %xtraiter1383
  br i1 %prol.iter1385.cmp.not, label %..preheader8_crit_edge.us35.us.i.prol.loopexit, label %..preheader8_crit_edge.us35.us.i.prol, !llvm.loop !885

..preheader8_crit_edge.us35.us.i.prol.loopexit:   ; preds = %..preheader8_crit_edge.us35.us.i.prol, %..preheader8_crit_edge.us35.us.i.preheader
  %.lcssa1344.unr = phi ptr [ poison, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adi, %..preheader8_crit_edge.us35.us.i.prol ]
  %.08414.us40.us.i.unr = phi i32 [ %.08414.us40.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adj, %..preheader8_crit_edge.us35.us.i.prol ]
  %.08613.us41.us.i.unr = phi ptr [ %.08613.us41.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adg, %..preheader8_crit_edge.us35.us.i.prol ]
  %.212.us42.us.i.unr = phi ptr [ %.212.us42.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adi, %..preheader8_crit_edge.us35.us.i.prol ]
  %i.adk = sub i32 %.08414.us40.us.i.ph, %i.cs
  %i.adl = icmp ugt i32 %i.adk, -8
  br i1 %i.adl, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i

..preheader8_crit_edge.us35.us.i:                 ; preds = %..preheader8_crit_edge.us35.us.i.prol.loopexit, %..preheader8_crit_edge.us35.us.i
  %.08414.us40.us.i = phi i32 [ %i.aek, %..preheader8_crit_edge.us35.us.i ], [ %.08414.us40.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ]
  %.08613.us41.us.i = phi ptr [ %i.aeh, %..preheader8_crit_edge.us35.us.i ], [ %.08613.us41.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ] ; 9 uses
  %.212.us42.us.i = phi ptr [ %i.aej, %..preheader8_crit_edge.us35.us.i ], [ %.212.us42.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ] ; 9 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 8
  %i.adn = load i64, ptr %.08613.us41.us.i, align 8, !tbaa !113
  %i.ado = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 8
  store i64 %i.adn, ptr %.212.us42.us.i, align 8, !tbaa !113
  %i.adp = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 16
  %i.adq = load i64, ptr %i.adm, align 8, !tbaa !113
  %i.adr = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 16
  store i64 %i.adq, ptr %i.ado, align 8, !tbaa !113
  %i.ads = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 24
  %i.adt = load i64, ptr %i.adp, align 8, !tbaa !113
  %i.adu = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 24
  store i64 %i.adt, ptr %i.adr, align 8, !tbaa !113
  %i.adv = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 32
  %i.adw = load i64, ptr %i.ads, align 8, !tbaa !113
  %i.adx = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 32
  store i64 %i.adw, ptr %i.adu, align 8, !tbaa !113
  %i.ady = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 40
  %i.adz = load i64, ptr %i.adv, align 8, !tbaa !113
  %i.aea = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 40
  store i64 %i.adz, ptr %i.adx, align 8, !tbaa !113
  %i.aeb = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 48
  %i.aec = load i64, ptr %i.ady, align 8, !tbaa !113
  %i.aed = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 48
  store i64 %i.aec, ptr %i.aea, align 8, !tbaa !113
  %i.aee = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 56
  %i.aef = load i64, ptr %i.aeb, align 8, !tbaa !113
  %i.aeg = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 56
  store i64 %i.aef, ptr %i.aed, align 8, !tbaa !113
  %i.aeh = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 64
  %i.aei = load i64, ptr %i.aee, align 8, !tbaa !113
  %i.aej = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 64 ; 2 uses
  store i64 %i.aei, ptr %i.aeg, align 8, !tbaa !113
  %i.aek = add nuw nsw i32 %.08414.us40.us.i, 8   ; 2 uses
  %exitcond139.not.i.7 = icmp eq i32 %i.aek, %i.cs
  br i1 %exitcond139.not.i.7, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i, !llvm.loop !886

..preheader7_crit_edge.us43.us.i:                 ; preds = %..preheader8_crit_edge.us35.us.i.prol.loopexit, %..preheader8_crit_edge.us35.us.i, %vec.epilog.middle.block1181, %middle.block1163
  %.lcssa265 = phi ptr [ %i.adc, %vec.epilog.middle.block1181 ], [ %i.acs, %middle.block1163 ], [ %.lcssa1344.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ], [ %i.aej, %..preheader8_crit_edge.us35.us.i ] ; 2 uses
  %i.ael = getelementptr inbounds [8 x i8], ptr %.08922.us31.us.i, i64 %i.vb ; 2 uses
  %i.aem = add nuw nsw i32 %.08724.us29.us.i, 1   ; 2 uses
  %exitcond140.not.i = icmp eq i32 %i.aem, %i.uq
  %indvar.next1147 = add i64 %indvar1146, 1
  br i1 %exitcond140.not.i, label %.preheader6.i47, label %iter.check1216, !llvm.loop !880

iter.check1261:                                   ; preds = %.preheader9.us28.i.preheader, %..preheader8_crit_edge.us35.i
  %.08724.us29.i = phi i32 [ %i.afw, %..preheader8_crit_edge.us35.i ], [ 0, %.preheader9.us28.i.preheader ]
  %.08823.us30.i = phi ptr [ %.lcssa262, %..preheader8_crit_edge.us35.i ], [ %i.bb, %.preheader9.us28.i.preheader ] ; 8 uses
  %.08922.us31.i = phi ptr [ %i.afv, %..preheader8_crit_edge.us35.i ], [ %i.uw, %.preheader9.us28.i.preheader ] ; 8 uses
  br i1 %min.iters.check1240, label %vec.epilog.scalar.ph1262.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1261
  %scevgep1233 = getelementptr i8, ptr %.08823.us30.i, i64 %i.aba
  %bound01237 = icmp ult ptr %.08823.us30.i, %scevgep1236
  %bound11238 = icmp ult ptr %scevgep1235, %scevgep1233
  %found.conflict1239 = and i1 %bound01237, %bound11238
  br i1 %found.conflict1239, label %vec.epilog.scalar.ph1262.preheader, label %vector.main.loop.iter.check1241

vector.main.loop.iter.check1241:                  ; preds = %vector.memcheck1232
  br i1 %min.iters.check1242, label %vec.epilog.ph1265, label %vector.ph1243

vector.ph1243:                                    ; preds = %vector.main.loop.iter.check1241
  %i.aen = getelementptr i8, ptr %.08823.us30.i, i64 %i.abk ; 2 uses
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.ph1243, %vector.body1245
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1256, %vector.body1245 ] ; 3 uses
  %i.aeo = shl i64 %index1246, 3
  %next.gep1247 = getelementptr i8, ptr %.08823.us30.i, i64 %i.aeo ; 4 uses
  %i.aep = sub nuw nsw i64 %i.aaz, %index1246
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.aep ; 4 uses
  %i.aer = getelementptr inbounds i8, ptr %i.aeq, i64 -56
  %i.aes = getelementptr inbounds i8, ptr %i.aeq, i64 -120
  %i.aet = getelementptr inbounds i8, ptr %i.aeq, i64 -184
  %i.aeu = getelementptr inbounds i8, ptr %i.aeq, i64 -248
  %wide.load1248 = load <8 x i64>, ptr %i.aer, align 8, !tbaa !113, !alias.scope !942
  %wide.load1249 = load <8 x i64>, ptr %i.aes, align 8, !tbaa !113, !alias.scope !942
  %wide.load1250 = load <8 x i64>, ptr %i.aet, align 8, !tbaa !113, !alias.scope !942
  %wide.load1251 = load <8 x i64>, ptr %i.aeu, align 8, !tbaa !113, !alias.scope !942
  %reverse1252 = shufflevector <8 x i64> %wide.load1248, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1253 = shufflevector <8 x i64> %wide.load1249, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1254 = shufflevector <8 x i64> %wide.load1250, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1255 = shufflevector <8 x i64> %wide.load1251, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aev = getelementptr i8, ptr %next.gep1247, i64 64
  %i.aew = getelementptr i8, ptr %next.gep1247, i64 128
  %i.aex = getelementptr i8, ptr %next.gep1247, i64 192
  store <8 x i64> %reverse1252, ptr %next.gep1247, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1253, ptr %i.aev, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1254, ptr %i.aew, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1255, ptr %i.aex, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  %index.next1256 = add nuw i64 %index1246, 32    ; 2 uses
  %i.aey = icmp eq i64 %index.next1256, %n.vec1244
  br i1 %i.aey, label %middle.block1257, label %vector.body1245, !llvm.loop !890

middle.block1257:                                 ; preds = %vector.body1245
  br i1 %cmp.n1258, label %..preheader8_crit_edge.us35.i, label %vec.epilog.iter.check1263

vec.epilog.iter.check1263:                        ; preds = %middle.block1257
  br i1 %min.epilog.iters.check1264, label %vec.epilog.scalar.ph1262.preheader, label %vec.epilog.ph1265, !prof !117

vec.epilog.ph1265:                                ; preds = %vector.main.loop.iter.check1241, %vec.epilog.iter.check1263
  %vec.epilog.resume.val1259 = phi i64 [ %n.vec1244, %vec.epilog.iter.check1263 ], [ 0, %vector.main.loop.iter.check1241 ]
  %i.aez = getelementptr i8, ptr %.08823.us30.i, i64 %i.abl ; 2 uses
  br label %vec.epilog.vector.body1267

vec.epilog.vector.body1267:                       ; preds = %vec.epilog.vector.body1267, %vec.epilog.ph1265
  %index1268 = phi i64 [ %vec.epilog.resume.val1259, %vec.epilog.ph1265 ], [ %index.next1272, %vec.epilog.vector.body1267 ] ; 3 uses
  %i.afa = shl i64 %index1268, 3
  %next.gep1269 = getelementptr i8, ptr %.08823.us30.i, i64 %i.afa
  %i.afb = sub nuw nsw i64 %i.aaz, %index1268
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.afb
  %i.afd = getelementptr inbounds i8, ptr %i.afc, i64 -56
  %wide.load1270 = load <8 x i64>, ptr %i.afd, align 8, !tbaa !113, !alias.scope !942
  %reverse1271 = shufflevector <8 x i64> %wide.load1270, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1271, ptr %next.gep1269, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  %index.next1272 = add nuw i64 %index1268, 8     ; 2 uses
  %i.afe = icmp eq i64 %index.next1272, %n.vec1266
  br i1 %i.afe, label %vec.epilog.middle.block1273, label %vec.epilog.vector.body1267, !llvm.loop !891

vec.epilog.middle.block1273:                      ; preds = %vec.epilog.vector.body1267
  br i1 %cmp.n1274, label %..preheader8_crit_edge.us35.i, label %vec.epilog.scalar.ph1262.preheader

vec.epilog.scalar.ph1262.preheader:               ; preds = %iter.check1261, %vector.memcheck1232, %vec.epilog.iter.check1263, %vec.epilog.middle.block1273
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1261 ], [ 0, %vector.memcheck1232 ], [ %n.vec1244, %vec.epilog.iter.check1263 ], [ %n.vec1266, %vec.epilog.middle.block1273 ] ; 3 uses
  %.110.us34.i.ph = phi ptr [ %.08823.us30.i, %iter.check1261 ], [ %.08823.us30.i, %vector.memcheck1232 ], [ %i.aen, %vec.epilog.iter.check1263 ], [ %i.aez, %vec.epilog.middle.block1273 ] ; 2 uses
  br i1 %lcmp.mod1377.not, label %vec.epilog.scalar.ph1262.prol.loopexit, label %vec.epilog.scalar.ph1262.prol

vec.epilog.scalar.ph1262.prol:                    ; preds = %vec.epilog.scalar.ph1262.preheader, %vec.epilog.scalar.ph1262.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph1262.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph1262.preheader ] ; 2 uses
  %.110.us34.i.prol = phi ptr [ %i.afi, %vec.epilog.scalar.ph1262.prol ], [ %.110.us34.i.ph, %vec.epilog.scalar.ph1262.preheader ] ; 2 uses
  %prol.iter1378 = phi i64 [ %prol.iter1378.next, %vec.epilog.scalar.ph1262.prol ], [ 0, %vec.epilog.scalar.ph1262.preheader ]
  %i.aff = sub nuw nsw i64 %i.aaz, %indvars.iv.i.prol
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.aff
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !113
  %i.afi = getelementptr inbounds nuw i8, ptr %.110.us34.i.prol, i64 8 ; 3 uses
  store i64 %i.afh, ptr %.110.us34.i.prol, align 8, !tbaa !113
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1378.next = add i64 %prol.iter1378, 1 ; 2 uses
  %prol.iter1378.cmp.not = icmp eq i64 %prol.iter1378.next, %xtraiter1376
  br i1 %prol.iter1378.cmp.not, label %vec.epilog.scalar.ph1262.prol.loopexit, label %vec.epilog.scalar.ph1262.prol, !llvm.loop !892

vec.epilog.scalar.ph1262.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1262.prol, %vec.epilog.scalar.ph1262.preheader
  %.lcssa1341.unr = phi ptr [ poison, %vec.epilog.scalar.ph1262.preheader ], [ %i.afi, %vec.epilog.scalar.ph1262.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph1262.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph1262.prol ]
  %.110.us34.i.unr = phi ptr [ %.110.us34.i.ph, %vec.epilog.scalar.ph1262.preheader ], [ %i.afi, %vec.epilog.scalar.ph1262.prol ]
  %i.afj = sub nsw i64 %indvars.iv.i.ph, %i.aaz
  %i.afk = icmp ugt i64 %i.afj, -4
  br i1 %i.afk, label %..preheader8_crit_edge.us35.i, label %vec.epilog.scalar.ph1262.preheader.new

vec.epilog.scalar.ph1262.preheader.new:           ; preds = %vec.epilog.scalar.ph1262.prol.loopexit
  %invariant.gep = getelementptr [8 x i8], ptr %.08922.us31.i, i64 %i.aaz
  br label %vec.epilog.scalar.ph1262

vec.epilog.scalar.ph1262:                         ; preds = %vec.epilog.scalar.ph1262, %vec.epilog.scalar.ph1262.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %vec.epilog.scalar.ph1262.preheader.new ], [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph1262 ] ; 5 uses
  %.110.us34.i = phi ptr [ %.110.us34.i.unr, %vec.epilog.scalar.ph1262.preheader.new ], [ %i.afu, %vec.epilog.scalar.ph1262 ] ; 5 uses
  %i.afl = sub nuw nsw i64 %i.aaz, %indvars.iv.i
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.afl
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !113
  %i.afo = getelementptr inbounds nuw i8, ptr %.110.us34.i, i64 8
  store i64 %i.afn, ptr %.110.us34.i, align 8, !tbaa !113
  %indvars.iv.next.i.neg = xor i64 %indvars.iv.i, -1
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.i.neg
  %i.afp = load i64, ptr %gep, align 8, !tbaa !113
  %i.afq = getelementptr inbounds nuw i8, ptr %.110.us34.i, i64 16
  store i64 %i.afp, ptr %i.afo, align 8, !tbaa !113
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %14 = sub nuw nsw i64 %i.aaz, %indvars.iv.next.i.1
  %15 = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %14
  %i.afr = load i64, ptr %15, align 8, !tbaa !113
  %i.afs = getelementptr inbounds nuw i8, ptr %.110.us34.i, i64 24
  store i64 %i.afr, ptr %i.afq, align 8, !tbaa !113
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %16 = sub nuw nsw i64 %i.aaz, %indvars.iv.next.i.2
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %16
  %i.aft = load i64, ptr %17, align 8, !tbaa !113
  %i.afu = getelementptr inbounds nuw i8, ptr %.110.us34.i, i64 32 ; 2 uses
  store i64 %i.aft, ptr %i.afs, align 8, !tbaa !113
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond132.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.aaz
  br i1 %exitcond132.not.i.3, label %..preheader8_crit_edge.us35.i, label %vec.epilog.scalar.ph1262, !llvm.loop !893

..preheader8_crit_edge.us35.i:                    ; preds = %vec.epilog.scalar.ph1262.prol.loopexit, %vec.epilog.scalar.ph1262, %vec.epilog.middle.block1273, %middle.block1257
  %.lcssa262 = phi ptr [ %i.aez, %vec.epilog.middle.block1273 ], [ %i.aen, %middle.block1257 ], [ %.lcssa1341.unr, %vec.epilog.scalar.ph1262.prol.loopexit ], [ %i.afu, %vec.epilog.scalar.ph1262 ] ; 2 uses
  %i.afv = getelementptr inbounds [8 x i8], ptr %.08922.us31.i, i64 %i.vb ; 2 uses
  %i.afw = add nuw nsw i32 %.08724.us29.i, 1      ; 2 uses
  %exitcond133.not.i = icmp eq i32 %i.afw, %i.uq
  br i1 %exitcond133.not.i, label %.preheader6.i47, label %iter.check1261, !llvm.loop !880

.preheader9.lr.ph.split.split.i67:                ; preds = %.preheader9.lr.ph.split.i66
  br i1 %i.uz, label %.preheader9.us51.i.preheader, label %.preheader9.preheader.i

.preheader9.us51.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.i67
  %i.afx = add i64 %i.db, %i.cw
  %.neg = mul nsw i64 %i.uv, -8
  %.neg1319 = sub i64 %.neg, %i.afx
  %i.afy = shl nuw nsw i64 %i.df, 3
  %i.afz = zext nneg i32 %i.cs to i64             ; 5 uses
  %min.iters.check1282 = icmp ult i32 %i.cs, 8
  %min.iters.check1284 = icmp ult i32 %i.cs, 32
  %i.aga = and i64 %i.afz, 24
  %n.vec1286 = and i64 %i.afz, 2147483616         ; 5 uses
  %i.agb = trunc nuw nsw i64 %n.vec1286 to i32
  %i.agc = shl nuw nsw i64 %n.vec1286, 3          ; 2 uses
  %cmp.n1297 = icmp eq i64 %n.vec1286, %i.afz
  %min.epilog.iters.check1305 = icmp eq i64 %i.aga, 0
  %n.vec1307 = and i64 %i.afz, 2147483640         ; 4 uses
  %i.agd = trunc nuw nsw i64 %n.vec1307 to i32
  %i.age = shl nuw nsw i64 %n.vec1307, 3          ; 2 uses
  %cmp.n1315 = icmp eq i64 %n.vec1307, %i.afz
  br label %iter.check1302

.preheader9.preheader.i:                          ; preds = %.preheader9.lr.ph.split.split.i67
  %i.agf = add nsw i32 %i.uq, -1
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = shl nuw nsw i64 %i.agg, 3
  %i.agi = sub nuw nsw i64 -8, %i.agh
  %i.agj = mul i64 %i.agi, %i.df
  %i.agk = shl nsw i64 %i.uv, 3
  %i.agl = getelementptr i8, ptr %i.dc, i64 %i.agj
  %scevgep.i = getelementptr i8, ptr %i.agl, i64 %i.agk
  br label %.preheader6.i47

iter.check1302:                                   ; preds = %.preheader9.us51.i.preheader, %..preheader7_crit_edge.us59.i
  %indvar1279 = phi i64 [ 0, %.preheader9.us51.i.preheader ], [ %indvar.next1280, %..preheader7_crit_edge.us59.i ] ; 2 uses
  %.08724.us52.i = phi i32 [ 0, %.preheader9.us51.i.preheader ], [ %i.ail, %..preheader7_crit_edge.us59.i ]
  %.08823.us53.i = phi ptr [ %i.bb, %.preheader9.us51.i.preheader ], [ %.lcssa, %..preheader7_crit_edge.us59.i ] ; 7 uses
  %.08922.us54.i = phi ptr [ %i.uw, %.preheader9.us51.i.preheader ], [ %i.aik, %..preheader7_crit_edge.us59.i ] ; 7 uses
  br i1 %min.iters.check1282, label %vec.epilog.scalar.ph1303.preheader, label %vector.memcheck1277

vector.memcheck1277:                              ; preds = %iter.check1302
  %i.agm = mul i64 %i.afy, %indvar1279
  %i.agn = add i64 %.neg1319, %i.agm
  %.08823.us53.i1278 = ptrtoaddr ptr %.08823.us53.i to i64
  %i.ago = add i64 %i.agn, %.08823.us53.i1278
  %i.agp = add i64 %i.ago, -1
  %diff.check1281 = icmp ult i64 %i.agp, 255
  br i1 %diff.check1281, label %vec.epilog.scalar.ph1303.preheader, label %vector.main.loop.iter.check1283

vector.main.loop.iter.check1283:                  ; preds = %vector.memcheck1277
  br i1 %min.iters.check1284, label %vec.epilog.ph1306, label %vector.ph1285

vector.ph1285:                                    ; preds = %vector.main.loop.iter.check1283
  %i.agq = getelementptr i8, ptr %.08922.us54.i, i64 %i.agc
  %i.agr = getelementptr i8, ptr %.08823.us53.i, i64 %i.agc ; 2 uses
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.ph1285, %vector.body1287
  %index1288 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1295, %vector.body1287 ] ; 2 uses
  %i.ags = shl i64 %index1288, 3                  ; 2 uses
  %next.gep1289 = getelementptr i8, ptr %.08922.us54.i, i64 %i.ags ; 4 uses
  %next.gep1290 = getelementptr i8, ptr %.08823.us53.i, i64 %i.ags ; 4 uses
  %i.agt = getelementptr i8, ptr %next.gep1289, i64 64
  %i.agu = getelementptr i8, ptr %next.gep1289, i64 128
  %i.agv = getelementptr i8, ptr %next.gep1289, i64 192
  %wide.load1291 = load <8 x i64>, ptr %next.gep1289, align 8, !tbaa !113
  %wide.load1292 = load <8 x i64>, ptr %i.agt, align 8, !tbaa !113
  %wide.load1293 = load <8 x i64>, ptr %i.agu, align 8, !tbaa !113
  %wide.load1294 = load <8 x i64>, ptr %i.agv, align 8, !tbaa !113
  %i.agw = getelementptr i8, ptr %next.gep1290, i64 64
  %i.agx = getelementptr i8, ptr %next.gep1290, i64 128
  %i.agy = getelementptr i8, ptr %next.gep1290, i64 192
  store <8 x i64> %wide.load1291, ptr %next.gep1290, align 8, !tbaa !113
  store <8 x i64> %wide.load1292, ptr %i.agw, align 8, !tbaa !113
  store <8 x i64> %wide.load1293, ptr %i.agx, align 8, !tbaa !113
  store <8 x i64> %wide.load1294, ptr %i.agy, align 8, !tbaa !113
  %index.next1295 = add nuw i64 %index1288, 32    ; 2 uses
  %i.agz = icmp eq i64 %index.next1295, %n.vec1286
  br i1 %i.agz, label %middle.block1296, label %vector.body1287, !llvm.loop !894

middle.block1296:                                 ; preds = %vector.body1287
  br i1 %cmp.n1297, label %..preheader7_crit_edge.us59.i, label %vec.epilog.iter.check1304

vec.epilog.iter.check1304:                        ; preds = %middle.block1296
  br i1 %min.epilog.iters.check1305, label %vec.epilog.scalar.ph1303.preheader, label %vec.epilog.ph1306, !prof !117

vec.epilog.ph1306:                                ; preds = %vector.main.loop.iter.check1283, %vec.epilog.iter.check1304
  %vec.epilog.resume.val1298 = phi i64 [ %n.vec1286, %vec.epilog.iter.check1304 ], [ 0, %vector.main.loop.iter.check1283 ]
  %i.aha = getelementptr i8, ptr %.08922.us54.i, i64 %i.age
  %i.ahb = getelementptr i8, ptr %.08823.us53.i, i64 %i.age ; 2 uses
  br label %vec.epilog.vector.body1308

vec.epilog.vector.body1308:                       ; preds = %vec.epilog.vector.body1308, %vec.epilog.ph1306
  %index1309 = phi i64 [ %vec.epilog.resume.val1298, %vec.epilog.ph1306 ], [ %index.next1313, %vec.epilog.vector.body1308 ] ; 2 uses
  %i.ahc = shl i64 %index1309, 3                  ; 2 uses
  %next.gep1310 = getelementptr i8, ptr %.08922.us54.i, i64 %i.ahc
  %next.gep1311 = getelementptr i8, ptr %.08823.us53.i, i64 %i.ahc
  %wide.load1312 = load <8 x i64>, ptr %next.gep1310, align 8, !tbaa !113
  store <8 x i64> %wide.load1312, ptr %next.gep1311, align 8, !tbaa !113
  %index.next1313 = add nuw i64 %index1309, 8     ; 2 uses
  %i.ahd = icmp eq i64 %index.next1313, %n.vec1307
  br i1 %i.ahd, label %vec.epilog.middle.block1314, label %vec.epilog.vector.body1308, !llvm.loop !895

vec.epilog.middle.block1314:                      ; preds = %vec.epilog.vector.body1308
  br i1 %cmp.n1315, label %..preheader7_crit_edge.us59.i, label %vec.epilog.scalar.ph1303.preheader

vec.epilog.scalar.ph1303.preheader:               ; preds = %iter.check1302, %vector.memcheck1277, %vec.epilog.iter.check1304, %vec.epilog.middle.block1314
  %.08414.us56.i.ph = phi i32 [ 0, %iter.check1302 ], [ 0, %vector.memcheck1277 ], [ %i.agb, %vec.epilog.iter.check1304 ], [ %i.agd, %vec.epilog.middle.block1314 ] ; 4 uses
  %.08613.us57.i.ph = phi ptr [ %.08922.us54.i, %iter.check1302 ], [ %.08922.us54.i, %vector.memcheck1277 ], [ %i.agq, %vec.epilog.iter.check1304 ], [ %i.aha, %vec.epilog.middle.block1314 ] ; 2 uses
  %.212.us58.i.ph = phi ptr [ %.08823.us53.i, %iter.check1302 ], [ %.08823.us53.i, %vector.memcheck1277 ], [ %i.agr, %vec.epilog.iter.check1304 ], [ %i.ahb, %vec.epilog.middle.block1314 ] ; 2 uses
  %i.ahe = sub i32 %i.cs, %.08414.us56.i.ph
  %xtraiter = and i32 %i.ahe, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1303.prol.loopexit, label %vec.epilog.scalar.ph1303.prol

vec.epilog.scalar.ph1303.prol:                    ; preds = %vec.epilog.scalar.ph1303.preheader, %vec.epilog.scalar.ph1303.prol
  %.08414.us56.i.prol = phi i32 [ %i.ahi, %vec.epilog.scalar.ph1303.prol ], [ %.08414.us56.i.ph, %vec.epilog.scalar.ph1303.preheader ]
  %.08613.us57.i.prol = phi ptr [ %i.ahf, %vec.epilog.scalar.ph1303.prol ], [ %.08613.us57.i.ph, %vec.epilog.scalar.ph1303.preheader ] ; 2 uses
  %.212.us58.i.prol = phi ptr [ %i.ahh, %vec.epilog.scalar.ph1303.prol ], [ %.212.us58.i.ph, %vec.epilog.scalar.ph1303.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1303.prol ], [ 0, %vec.epilog.scalar.ph1303.preheader ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %.08613.us57.i.prol, i64 8 ; 2 uses
  %i.ahg = load i64, ptr %.08613.us57.i.prol, align 8, !tbaa !113
  %i.ahh = getelementptr inbounds nuw i8, ptr %.212.us58.i.prol, i64 8 ; 3 uses
  store i64 %i.ahg, ptr %.212.us58.i.prol, align 8, !tbaa !113
  %i.ahi = add nuw nsw i32 %.08414.us56.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1303.prol.loopexit, label %vec.epilog.scalar.ph1303.prol, !llvm.loop !896

vec.epilog.scalar.ph1303.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1303.prol, %vec.epilog.scalar.ph1303.preheader
  %.lcssa1339.unr = phi ptr [ poison, %vec.epilog.scalar.ph1303.preheader ], [ %i.ahh, %vec.epilog.scalar.ph1303.prol ]
  %.08414.us56.i.unr = phi i32 [ %.08414.us56.i.ph, %vec.epilog.scalar.ph1303.preheader ], [ %i.ahi, %vec.epilog.scalar.ph1303.prol ]
  %.08613.us57.i.unr = phi ptr [ %.08613.us57.i.ph, %vec.epilog.scalar.ph1303.preheader ], [ %i.ahf, %vec.epilog.scalar.ph1303.prol ]
  %.212.us58.i.unr = phi ptr [ %.212.us58.i.ph, %vec.epilog.scalar.ph1303.preheader ], [ %i.ahh, %vec.epilog.scalar.ph1303.prol ]
  %i.ahj = sub i32 %.08414.us56.i.ph, %i.cs
  %i.ahk = icmp ugt i32 %i.ahj, -8
  br i1 %i.ahk, label %..preheader7_crit_edge.us59.i, label %vec.epilog.scalar.ph1303

vec.epilog.scalar.ph1303:                         ; preds = %vec.epilog.scalar.ph1303.prol.loopexit, %vec.epilog.scalar.ph1303
  %.08414.us56.i = phi i32 [ %i.aij, %vec.epilog.scalar.ph1303 ], [ %.08414.us56.i.unr, %vec.epilog.scalar.ph1303.prol.loopexit ]
  %.08613.us57.i = phi ptr [ %i.aig, %vec.epilog.scalar.ph1303 ], [ %.08613.us57.i.unr, %vec.epilog.scalar.ph1303.prol.loopexit ] ; 9 uses
  %.212.us58.i = phi ptr [ %i.aii, %vec.epilog.scalar.ph1303 ], [ %.212.us58.i.unr, %vec.epilog.scalar.ph1303.prol.loopexit ] ; 9 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 8
  %i.ahm = load i64, ptr %.08613.us57.i, align 8, !tbaa !113
  %i.ahn = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 8
  store i64 %i.ahm, ptr %.212.us58.i, align 8, !tbaa !113
  %i.aho = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 16
  %i.ahp = load i64, ptr %i.ahl, align 8, !tbaa !113
  %i.ahq = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 16
  store i64 %i.ahp, ptr %i.ahn, align 8, !tbaa !113
  %i.ahr = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 24
  %i.ahs = load i64, ptr %i.aho, align 8, !tbaa !113
  %i.aht = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 24
  store i64 %i.ahs, ptr %i.ahq, align 8, !tbaa !113
  %i.ahu = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 32
  %i.ahv = load i64, ptr %i.ahr, align 8, !tbaa !113
  %i.ahw = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 32
  store i64 %i.ahv, ptr %i.aht, align 8, !tbaa !113
  %i.ahx = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 40
  %i.ahy = load i64, ptr %i.ahu, align 8, !tbaa !113
  %i.ahz = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 40
  store i64 %i.ahy, ptr %i.ahw, align 8, !tbaa !113
  %i.aia = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 48
  %i.aib = load i64, ptr %i.ahx, align 8, !tbaa !113
  %i.aic = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 48
  store i64 %i.aib, ptr %i.ahz, align 8, !tbaa !113
  %i.aid = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 56
  %i.aie = load i64, ptr %i.aia, align 8, !tbaa !113
  %i.aif = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 56
  store i64 %i.aie, ptr %i.aic, align 8, !tbaa !113
  %i.aig = getelementptr inbounds nuw i8, ptr %.08613.us57.i, i64 64
  %i.aih = load i64, ptr %i.aid, align 8, !tbaa !113
  %i.aii = getelementptr inbounds nuw i8, ptr %.212.us58.i, i64 64 ; 2 uses
  store i64 %i.aih, ptr %i.aif, align 8, !tbaa !113
  %i.aij = add nuw nsw i32 %.08414.us56.i, 8      ; 2 uses
  %exitcond.not.i68.7 = icmp eq i32 %i.aij, %i.cs
  br i1 %exitcond.not.i68.7, label %..preheader7_crit_edge.us59.i, label %vec.epilog.scalar.ph1303, !llvm.loop !897

..preheader7_crit_edge.us59.i:                    ; preds = %vec.epilog.scalar.ph1303.prol.loopexit, %vec.epilog.scalar.ph1303, %vec.epilog.middle.block1314, %middle.block1296
  %.lcssa = phi ptr [ %i.ahb, %vec.epilog.middle.block1314 ], [ %i.agr, %middle.block1296 ], [ %.lcssa1339.unr, %vec.epilog.scalar.ph1303.prol.loopexit ], [ %i.aii, %vec.epilog.scalar.ph1303 ] ; 2 uses
  %i.aik = getelementptr inbounds [8 x i8], ptr %.08922.us54.i, i64 %i.vb ; 2 uses
  %i.ail = add nuw nsw i32 %.08724.us52.i, 1      ; 2 uses
  %exitcond130.not.i69 = icmp eq i32 %i.ail, %i.uq
  %indvar.next1280 = add i64 %indvar1279, 1
  br i1 %exitcond130.not.i69, label %.preheader6.i47, label %iter.check1302, !llvm.loop !880

.preheader6.i47:                                  ; preds = %..preheader7_crit_edge.us59.i, %..preheader8_crit_edge.us35.i, %..preheader7_crit_edge.us43.us.i, %._crit_edge.us.i75, %.preheader9.preheader.i, %bb.h
  %.089.lcssa.i = phi ptr [ %i.uw, %bb.h ], [ %i.afv, %..preheader8_crit_edge.us35.i ], [ %i.aax, %._crit_edge.us.i75 ], [ %scevgep.i, %.preheader9.preheader.i ], [ %i.ael, %..preheader7_crit_edge.us43.us.i ], [ %i.aik, %..preheader7_crit_edge.us59.i ] ; 2 uses
  %.088.lcssa.i = phi ptr [ %i.bb, %bb.h ], [ %.lcssa262, %..preheader8_crit_edge.us35.i ], [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.preheader.i ], [ %.lcssa265, %..preheader7_crit_edge.us43.us.i ], [ %.lcssa, %..preheader7_crit_edge.us59.i ] ; 2 uses
  %i.aim = icmp sgt i32 %i.ct, 0
  br i1 %i.aim, label %.preheader5.lr.ph.i56, label %._crit_edge84.i

.preheader5.lr.ph.i56:                            ; preds = %.preheader6.i47
  %i.ain = icmp sgt i32 %i.us, 0
  %i.aio = icmp sgt i32 %i.cs, 0
  %i.aip = icmp sgt i32 %i.ut, 0
  %i.aiq = zext i32 %i.us to i64                  ; 16 uses
  %wide.trip.count162.i = zext i32 %i.ut to i64   ; 10 uses
  %i.air = shl nuw nsw i64 %wide.trip.count162.i, 3
  %i.ais = mul nsw i64 %wide.trip.count162.i, -8
  %i.ait = zext i32 %i.cs to i64                  ; 5 uses
  %i.aiu = shl nuw nsw i64 %i.aiq, 3              ; 2 uses
  %min.iters.check975 = icmp ult i32 %i.us, 8
  %min.iters.check977 = icmp ult i32 %i.us, 32
  %i.aiv = and i64 %i.aiq, 24
  %n.vec979 = and i64 %i.aiq, 2147483616          ; 5 uses
  %i.aiw = shl nuw nsw i64 %n.vec979, 3
  %cmp.n993 = icmp eq i64 %n.vec979, %i.aiq
  %min.epilog.iters.check999 = icmp eq i64 %i.aiv, 0
  %n.vec1001 = and i64 %i.aiq, 2147483640         ; 4 uses
  %i.aix = shl nuw nsw i64 %n.vec1001, 3
  %cmp.n1009 = icmp eq i64 %n.vec1001, %i.aiq
  %xtraiter1395 = and i64 %i.aiq, 3               ; 2 uses
  %lcmp.mod1396.not = icmp eq i64 %xtraiter1395, 0
  %min.iters.check931 = icmp ult i32 %i.cs, 8
  %min.iters.check933 = icmp ult i32 %i.cs, 32
  %i.aiy = and i64 %i.ait, 24
  %n.vec935 = and i64 %i.ait, 2147483616          ; 5 uses
  %i.aiz = trunc nuw nsw i64 %n.vec935 to i32
  %i.aja = shl nuw nsw i64 %n.vec935, 3           ; 2 uses
  %cmp.n946 = icmp eq i64 %n.vec935, %i.ait
  %min.epilog.iters.check954 = icmp eq i64 %i.aiy, 0
  %n.vec956 = and i64 %i.ait, 2147483640          ; 4 uses
  %i.ajb = trunc nuw nsw i64 %n.vec956 to i32
  %i.ajc = shl nuw nsw i64 %n.vec956, 3           ; 2 uses
  %cmp.n964 = icmp eq i64 %n.vec956, %i.ait
  %min.iters.check890 = icmp ult i32 %i.ut, 8
  %min.iters.check892 = icmp ult i32 %i.ut, 32
  %i.ajd = and i64 %wide.trip.count162.i, 24
  %n.vec894 = and i64 %wide.trip.count162.i, 2147483616 ; 5 uses
  %i.aje = shl nuw nsw i64 %n.vec894, 3
  %cmp.n908 = icmp eq i64 %n.vec894, %wide.trip.count162.i
  %min.epilog.iters.check914 = icmp eq i64 %i.ajd, 0
  %n.vec916 = and i64 %wide.trip.count162.i, 2147483640 ; 4 uses
  %i.ajf = shl nuw nsw i64 %n.vec916, 3
  %cmp.n924 = icmp eq i64 %n.vec916, %wide.trip.count162.i
  %xtraiter1401 = and i64 %wide.trip.count162.i, 3 ; 2 uses
  %lcmp.mod1402.not = icmp eq i64 %xtraiter1401, 0
  br label %.preheader5.i57

.preheader5.i57:                                  ; preds = %._crit_edge.i62, %.preheader5.lr.ph.i56
  %.08283.i = phi i32 [ 0, %.preheader5.lr.ph.i56 ], [ %i.aoq, %._crit_edge.i62 ]
  %.482.i = phi ptr [ %.088.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.7.lcssa.i63, %._crit_edge.i62 ] ; 9 uses
  %.19081.i = phi ptr [ %.089.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 15 uses
  %.19081.i929 = ptrtoaddr ptr %.19081.i to i64
  br i1 %i.ain, label %iter.check996, label %.preheader4.i58

iter.check996:                                    ; preds = %.preheader5.i57
  br i1 %min.iters.check975, label %.lr.ph.i64.preheader, label %vector.memcheck968

vector.memcheck968:                               ; preds = %iter.check996
  %scevgep969 = getelementptr i8, ptr %.482.i, i64 %i.aiu
  %scevgep970 = getelementptr i8, ptr %.19081.i, i64 8 ; 2 uses
  %scevgep971 = getelementptr i8, ptr %scevgep970, i64 %i.aiu
  %bound0972 = icmp ult ptr %.482.i, %scevgep971
  %bound1973 = icmp ult ptr %scevgep970, %scevgep969
  %found.conflict974 = and i1 %bound0972, %bound1973
  br i1 %found.conflict974, label %.lr.ph.i64.preheader, label %vector.main.loop.iter.check976

vector.main.loop.iter.check976:                   ; preds = %vector.memcheck968
  br i1 %min.iters.check977, label %vec.epilog.ph1000, label %vector.ph978

vector.ph978:                                     ; preds = %vector.main.loop.iter.check976
  %i.ajg = getelementptr i8, ptr %.482.i, i64 %i.aiw ; 2 uses
  br label %vector.body980

vector.body980:                                   ; preds = %vector.ph978, %vector.body980
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next991, %vector.body980 ] ; 3 uses
  %i.ajh = shl i64 %index981, 3
  %next.gep982 = getelementptr i8, ptr %.482.i, i64 %i.ajh ; 4 uses
  %i.aji = sub nuw nsw i64 %i.aiq, %index981
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.aji ; 4 uses
  %i.ajk = getelementptr inbounds i8, ptr %i.ajj, i64 -56
  %i.ajl = getelementptr inbounds i8, ptr %i.ajj, i64 -120
  %i.ajm = getelementptr inbounds i8, ptr %i.ajj, i64 -184
  %i.ajn = getelementptr inbounds i8, ptr %i.ajj, i64 -248
  %wide.load983 = load <8 x i64>, ptr %i.ajk, align 8, !tbaa !113, !alias.scope !944
  %wide.load984 = load <8 x i64>, ptr %i.ajl, align 8, !tbaa !113, !alias.scope !944
  %wide.load985 = load <8 x i64>, ptr %i.ajm, align 8, !tbaa !113, !alias.scope !944
  %wide.load986 = load <8 x i64>, ptr %i.ajn, align 8, !tbaa !113, !alias.scope !944
  %reverse987 = shufflevector <8 x i64> %wide.load983, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse988 = shufflevector <8 x i64> %wide.load984, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse989 = shufflevector <8 x i64> %wide.load985, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse990 = shufflevector <8 x i64> %wide.load986, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ajo = getelementptr i8, ptr %next.gep982, i64 64
  %i.ajp = getelementptr i8, ptr %next.gep982, i64 128
  %i.ajq = getelementptr i8, ptr %next.gep982, i64 192
  store <8 x i64> %reverse987, ptr %next.gep982, align 8, !tbaa !113, !alias.scope !945, !noalias !944
  store <8 x i64> %reverse988, ptr %i.ajo, align 8, !tbaa !113, !alias.scope !945, !noalias !944
  store <8 x i64> %reverse989, ptr %i.ajp, align 8, !tbaa !113, !alias.scope !945, !noalias !944
  store <8 x i64> %reverse990, ptr %i.ajq, align 8, !tbaa !113, !alias.scope !945, !noalias !944
  %index.next991 = add nuw i64 %index981, 32      ; 2 uses
  %i.ajr = icmp eq i64 %index.next991, %n.vec979
  br i1 %i.ajr, label %middle.block992, label %vector.body980, !llvm.loop !901

middle.block992:                                  ; preds = %vector.body980
  br i1 %cmp.n993, label %.preheader4.i58, label %vec.epilog.iter.check998

vec.epilog.iter.check998:                         ; preds = %middle.block992
  br i1 %min.epilog.iters.check999, label %.lr.ph.i64.preheader, label %vec.epilog.ph1000, !prof !117

vec.epilog.ph1000:                                ; preds = %vector.main.loop.iter.check976, %vec.epilog.iter.check998
  %vec.epilog.resume.val994 = phi i64 [ %n.vec979, %vec.epilog.iter.check998 ], [ 0, %vector.main.loop.iter.check976 ]
  %i.ajs = getelementptr i8, ptr %.482.i, i64 %i.aix ; 2 uses
  br label %vec.epilog.vector.body1002

vec.epilog.vector.body1002:                       ; preds = %vec.epilog.vector.body1002, %vec.epilog.ph1000
  %index1003 = phi i64 [ %vec.epilog.resume.val994, %vec.epilog.ph1000 ], [ %index.next1007, %vec.epilog.vector.body1002 ] ; 3 uses
  %i.ajt = shl i64 %index1003, 3
  %next.gep1004 = getelementptr i8, ptr %.482.i, i64 %i.ajt
  %i.aju = sub nuw nsw i64 %i.aiq, %index1003
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.aju
  %i.ajw = getelementptr inbounds i8, ptr %i.ajv, i64 -56
  %wide.load1005 = load <8 x i64>, ptr %i.ajw, align 8, !tbaa !113, !alias.scope !944
  %reverse1006 = shufflevector <8 x i64> %wide.load1005, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1006, ptr %next.gep1004, align 8, !tbaa !113, !alias.scope !945, !noalias !944
  %index.next1007 = add nuw i64 %index1003, 8     ; 2 uses
  %i.ajx = icmp eq i64 %index.next1007, %n.vec1001
  br i1 %i.ajx, label %vec.epilog.middle.block1008, label %vec.epilog.vector.body1002, !llvm.loop !902

vec.epilog.middle.block1008:                      ; preds = %vec.epilog.vector.body1002
  br i1 %cmp.n1009, label %.preheader4.i58, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %iter.check996, %vector.memcheck968, %vec.epilog.iter.check998, %vec.epilog.middle.block1008
  %indvars.iv153.i.ph = phi i64 [ 0, %iter.check996 ], [ 0, %vector.memcheck968 ], [ %n.vec979, %vec.epilog.iter.check998 ], [ %n.vec1001, %vec.epilog.middle.block1008 ] ; 3 uses
  %.569.i.ph = phi ptr [ %.482.i, %iter.check996 ], [ %.482.i, %vector.memcheck968 ], [ %i.ajg, %vec.epilog.iter.check998 ], [ %i.ajs, %vec.epilog.middle.block1008 ] ; 2 uses
  br i1 %lcmp.mod1396.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64.prol
  %indvars.iv153.i.prol = phi i64 [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ], [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader ] ; 2 uses
  %.569.i.prol = phi ptr [ %i.akb, %.lr.ph.i64.prol ], [ %.569.i.ph, %.lr.ph.i64.preheader ] ; 2 uses
  %prol.iter1397 = phi i64 [ %prol.iter1397.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader ]
  %i.ajy = sub nuw nsw i64 %i.aiq, %indvars.iv153.i.prol
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.ajy
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !113
  %i.akb = getelementptr inbounds nuw i8, ptr %.569.i.prol, i64 8 ; 3 uses
  store i64 %i.aka, ptr %.569.i.prol, align 8, !tbaa !113
  %indvars.iv.next154.i.prol = add nuw nsw i64 %indvars.iv153.i.prol, 1 ; 2 uses
  %prol.iter1397.next = add i64 %prol.iter1397, 1 ; 2 uses
  %prol.iter1397.cmp.not = icmp eq i64 %prol.iter1397.next, %xtraiter1395
  br i1 %prol.iter1397.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !903

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %.lcssa1351.unr = phi ptr [ poison, %.lr.ph.i64.preheader ], [ %i.akb, %.lr.ph.i64.prol ]
  %indvars.iv153.i.unr = phi i64 [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader ], [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ]
  %.569.i.unr = phi ptr [ %.569.i.ph, %.lr.ph.i64.preheader ], [ %i.akb, %.lr.ph.i64.prol ]
  %i.akc = sub nsw i64 %indvars.iv153.i.ph, %i.aiq
  %i.akd = icmp ugt i64 %i.akc, -4
  br i1 %i.akd, label %.preheader4.i58, label %.lr.ph.i64.preheader.new

.lr.ph.i64.preheader.new:                         ; preds = %.lr.ph.i64.prol.loopexit
  %invariant.gep1508 = getelementptr [8 x i8], ptr %.19081.i, i64 %i.aiq
  br label %.lr.ph.i64

._crit_edge84.i:                                  ; preds = %._crit_edge.i62, %.preheader6.i47
  %.190.lcssa.i = phi ptr [ %.089.lcssa.i, %.preheader6.i47 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 3 uses
  %.4.lcssa.i48 = phi ptr [ %.088.lcssa.i, %.preheader6.i47 ], [ %.7.lcssa.i63, %._crit_edge.i62 ]
  %i.ake = icmp sgt i32 %i.ur, 0
  br i1 %i.ake, label %.preheader2.lr.ph.i49, label %_ZN4ncnn3MatD2Ev.exit34

.preheader2.lr.ph.i49:                            ; preds = %._crit_edge84.i
  %.190.lcssa.i799 = ptrtoaddr ptr %.190.lcssa.i to i64
  %i.akf = shl i32 %i.cs, 1
  %i.akg = sext i32 %i.akf to i64                 ; 4 uses
  %i.akh = sub nsw i64 0, %i.akg
  %i.aki = getelementptr inbounds [8 x i8], ptr %.190.lcssa.i, i64 %i.akh
  %i.akj = icmp sgt i32 %i.us, 0
  %i.akk = icmp sgt i32 %i.cs, 0
  %i.akl = icmp sgt i32 %i.ut, 0
  %i.akm = sub nsw i64 0, %i.df
  %i.akn = zext i32 %i.us to i64                  ; 16 uses
  %wide.trip.count174.i = zext i32 %i.ut to i64   ; 10 uses
  %i.ako = shl nuw nsw i64 %wide.trip.count174.i, 3
  %i.akp = mul nsw i64 %wide.trip.count174.i, -8
  %i.akq = shl nsw i64 %i.akg, 3
  %i.akr = sub i64 %i.akq, %.190.lcssa.i799
  %i.aks = shl nsw i64 %i.df, 3                   ; 2 uses
  %i.akt = zext i32 %i.cs to i64                  ; 5 uses
  %i.aku = shl nuw nsw i64 %i.akn, 3              ; 2 uses
  %scevgep840 = getelementptr i8, ptr %.190.lcssa.i, i64 8 ; 2 uses
  %i.akv = mul nsw i64 %i.akg, -8
  %scevgep841 = getelementptr i8, ptr %scevgep840, i64 %i.akv
  %i.akw = add nsw i32 %i.ur, -1
  %i.akx = zext i32 %i.akw to i64
  %i.aky = mul i64 %i.aks, %i.akx
  %i.akz = shl nsw i64 %i.akg, 3
  %i.ala = add i64 %i.aky, %i.akz
  %i.alb = sub i64 %i.aku, %i.ala
  %scevgep842 = getelementptr i8, ptr %scevgep840, i64 %i.alb
  %min.iters.check846 = icmp ult i32 %i.us, 8
  %stride.check = icmp sgt i32 %i.cs, 0
  %min.iters.check848 = icmp ult i32 %i.us, 32
  %i.alc = and i64 %i.akn, 24
  %n.vec850 = and i64 %i.akn, 2147483616          ; 5 uses
  %i.ald = shl nuw nsw i64 %n.vec850, 3
  %cmp.n864 = icmp eq i64 %n.vec850, %i.akn
  %min.epilog.iters.check870 = icmp eq i64 %i.alc, 0
  %n.vec872 = and i64 %i.akn, 2147483640          ; 4 uses
  %i.ale = shl nuw nsw i64 %n.vec872, 3
  %cmp.n880 = icmp eq i64 %n.vec872, %i.akn
  %xtraiter1404 = and i64 %i.akn, 3               ; 2 uses
  %lcmp.mod1405.not = icmp eq i64 %xtraiter1404, 0
  %min.iters.check801 = icmp ult i32 %i.cs, 8
  %min.iters.check803 = icmp ult i32 %i.cs, 32
  %i.alf = and i64 %i.akt, 24
  %n.vec805 = and i64 %i.akt, 2147483616          ; 5 uses
  %i.alg = trunc nuw nsw i64 %n.vec805 to i32
  %i.alh = shl nuw nsw i64 %n.vec805, 3           ; 2 uses
  %cmp.n816 = icmp eq i64 %n.vec805, %i.akt
  %min.epilog.iters.check824 = icmp eq i64 %i.alf, 0
  %n.vec826 = and i64 %i.akt, 2147483640          ; 4 uses
  %i.ali = trunc nuw nsw i64 %n.vec826 to i32
  %i.alj = shl nuw nsw i64 %n.vec826, 3           ; 2 uses
  %cmp.n834 = icmp eq i64 %n.vec826, %i.akt
  %min.iters.check761 = icmp ult i32 %i.ut, 8
  %min.iters.check763 = icmp ult i32 %i.ut, 32
  %i.alk = and i64 %wide.trip.count174.i, 24
  %n.vec765 = and i64 %wide.trip.count174.i, 2147483616 ; 5 uses
  %i.all = shl nuw nsw i64 %n.vec765, 3
  %cmp.n778 = icmp eq i64 %n.vec765, %wide.trip.count174.i
  %min.epilog.iters.check784 = icmp eq i64 %i.alk, 0
  %n.vec786 = and i64 %wide.trip.count174.i, 2147483640 ; 4 uses
  %i.alm = shl nuw nsw i64 %n.vec786, 3
  %cmp.n794 = icmp eq i64 %n.vec786, %wide.trip.count174.i
  %xtraiter1410 = and i64 %wide.trip.count174.i, 3 ; 2 uses
  %lcmp.mod1411.not = icmp eq i64 %xtraiter1410, 0
  br label %.preheader2.i50

.preheader4.i58:                                  ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block992, %vec.epilog.middle.block1008, %.preheader5.i57
  %.5.lcssa.i59 = phi ptr [ %.482.i, %.preheader5.i57 ], [ %i.ajs, %vec.epilog.middle.block1008 ], [ %i.ajg, %middle.block992 ], [ %.lcssa1351.unr, %.lr.ph.i64.prol.loopexit ], [ %i.ams, %.lr.ph.i64 ] ; 7 uses
  br i1 %i.aio, label %iter.check951, label %.preheader3.i60

iter.check951:                                    ; preds = %.preheader4.i58
  %.5.lcssa.i59928 = ptrtoaddr ptr %.5.lcssa.i59 to i64
  %i.aln = sub i64 %.19081.i929, %.5.lcssa.i59928
  %diff.check930 = icmp ugt i64 %i.aln, -256
  %or.cond1329 = select i1 %min.iters.check931, i1 true, i1 %diff.check930
  br i1 %or.cond1329, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check932

vector.main.loop.iter.check932:                   ; preds = %iter.check951
  br i1 %min.iters.check933, label %vec.epilog.ph955, label %vector.ph934

vector.ph934:                                     ; preds = %vector.main.loop.iter.check932
  %i.alo = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.aja ; 2 uses
  %i.alp = getelementptr i8, ptr %.19081.i, i64 %i.aja ; 2 uses
  br label %vector.body936

vector.body936:                                   ; preds = %vector.ph934, %vector.body936
  %index937 = phi i64 [ 0, %vector.ph934 ], [ %index.next944, %vector.body936 ] ; 2 uses
  %i.alq = shl i64 %index937, 3                   ; 2 uses
  %next.gep938 = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.alq ; 4 uses
  %next.gep939 = getelementptr i8, ptr %.19081.i, i64 %i.alq ; 4 uses
  %i.alr = getelementptr i8, ptr %next.gep939, i64 64
  %i.als = getelementptr i8, ptr %next.gep939, i64 128
  %i.alt = getelementptr i8, ptr %next.gep939, i64 192
  %wide.load940 = load <8 x i64>, ptr %next.gep939, align 8, !tbaa !113
  %wide.load941 = load <8 x i64>, ptr %i.alr, align 8, !tbaa !113
  %wide.load942 = load <8 x i64>, ptr %i.als, align 8, !tbaa !113
  %wide.load943 = load <8 x i64>, ptr %i.alt, align 8, !tbaa !113
  %i.alu = getelementptr i8, ptr %next.gep938, i64 64
  %i.alv = getelementptr i8, ptr %next.gep938, i64 128
  %i.alw = getelementptr i8, ptr %next.gep938, i64 192
  store <8 x i64> %wide.load940, ptr %next.gep938, align 8, !tbaa !113
  store <8 x i64> %wide.load941, ptr %i.alu, align 8, !tbaa !113
  store <8 x i64> %wide.load942, ptr %i.alv, align 8, !tbaa !113
  store <8 x i64> %wide.load943, ptr %i.alw, align 8, !tbaa !113
  %index.next944 = add nuw i64 %index937, 32      ; 2 uses
  %i.alx = icmp eq i64 %index.next944, %n.vec935
  br i1 %i.alx, label %middle.block945, label %vector.body936, !llvm.loop !904

middle.block945:                                  ; preds = %vector.body936
  br i1 %cmp.n946, label %.preheader3.i60, label %vec.epilog.iter.check953

vec.epilog.iter.check953:                         ; preds = %middle.block945
  br i1 %min.epilog.iters.check954, label %.lr.ph74.i.preheader, label %vec.epilog.ph955, !prof !117

vec.epilog.ph955:                                 ; preds = %vector.main.loop.iter.check932, %vec.epilog.iter.check953
  %vec.epilog.resume.val947 = phi i64 [ %n.vec935, %vec.epilog.iter.check953 ], [ 0, %vector.main.loop.iter.check932 ]
  %i.aly = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.ajc ; 2 uses
  %i.alz = getelementptr i8, ptr %.19081.i, i64 %i.ajc ; 2 uses
  br label %vec.epilog.vector.body957

vec.epilog.vector.body957:                        ; preds = %vec.epilog.vector.body957, %vec.epilog.ph955
  %index958 = phi i64 [ %vec.epilog.resume.val947, %vec.epilog.ph955 ], [ %index.next962, %vec.epilog.vector.body957 ] ; 2 uses
  %i.ama = shl i64 %index958, 3                   ; 2 uses
  %next.gep959 = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.ama
  %next.gep960 = getelementptr i8, ptr %.19081.i, i64 %i.ama
  %wide.load961 = load <8 x i64>, ptr %next.gep960, align 8, !tbaa !113
  store <8 x i64> %wide.load961, ptr %next.gep959, align 8, !tbaa !113
  %index.next962 = add nuw i64 %index958, 8       ; 2 uses
  %i.amb = icmp eq i64 %index.next962, %n.vec956
  br i1 %i.amb, label %vec.epilog.middle.block963, label %vec.epilog.vector.body957, !llvm.loop !905

vec.epilog.middle.block963:                       ; preds = %vec.epilog.vector.body957
  br i1 %cmp.n964, label %.preheader3.i60, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check951, %vec.epilog.iter.check953, %vec.epilog.middle.block963
  %.08073.i.ph = phi i32 [ 0, %iter.check951 ], [ %i.aiz, %vec.epilog.iter.check953 ], [ %i.ajb, %vec.epilog.middle.block963 ] ; 4 uses
  %.672.i.ph = phi ptr [ %.5.lcssa.i59, %iter.check951 ], [ %i.alo, %vec.epilog.iter.check953 ], [ %i.aly, %vec.epilog.middle.block963 ] ; 2 uses
  %.29171.i.ph = phi ptr [ %.19081.i, %iter.check951 ], [ %i.alp, %vec.epilog.iter.check953 ], [ %i.alz, %vec.epilog.middle.block963 ] ; 2 uses
  %i.amc = sub i32 %i.cs, %.08073.i.ph
  %xtraiter1398 = and i32 %i.amc, 7               ; 2 uses
  %lcmp.mod1399.not = icmp eq i32 %xtraiter1398, 0
  br i1 %lcmp.mod1399.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i.prol
  %.08073.i.prol = phi i32 [ %i.amg, %.lr.ph74.i.prol ], [ %.08073.i.ph, %.lr.ph74.i.preheader ]
  %.672.i.prol = phi ptr [ %i.amf, %.lr.ph74.i.prol ], [ %.672.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %.29171.i.prol = phi ptr [ %i.amd, %.lr.ph74.i.prol ], [ %.29171.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %prol.iter1400 = phi i32 [ %prol.iter1400.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader ]
  %i.amd = getelementptr inbounds nuw i8, ptr %.29171.i.prol, i64 8 ; 3 uses
  %i.ame = load i64, ptr %.29171.i.prol, align 8, !tbaa !113
  %i.amf = getelementptr inbounds nuw i8, ptr %.672.i.prol, i64 8 ; 3 uses
  store i64 %i.ame, ptr %.672.i.prol, align 8, !tbaa !113
  %i.amg = add nuw nsw i32 %.08073.i.prol, 1      ; 2 uses
  %prol.iter1400.next = add i32 %prol.iter1400, 1 ; 2 uses
  %prol.iter1400.cmp.not = icmp eq i32 %prol.iter1400.next, %xtraiter1398
  br i1 %prol.iter1400.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !906

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %.lcssa1353.unr = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.amd, %.lr.ph74.i.prol ]
  %.lcssa1352.unr = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.amf, %.lr.ph74.i.prol ]
  %.08073.i.unr = phi i32 [ %.08073.i.ph, %.lr.ph74.i.preheader ], [ %i.amg, %.lr.ph74.i.prol ]
  %.672.i.unr = phi ptr [ %.672.i.ph, %.lr.ph74.i.preheader ], [ %i.amf, %.lr.ph74.i.prol ]
  %.29171.i.unr = phi ptr [ %.29171.i.ph, %.lr.ph74.i.preheader ], [ %i.amd, %.lr.ph74.i.prol ]
  %i.amh = sub i32 %.08073.i.ph, %i.cs
  %i.ami = icmp ugt i32 %i.amh, -8
  br i1 %i.ami, label %.preheader3.i60, label %.lr.ph74.i

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %.lr.ph.i64.preheader.new
  %indvars.iv153.i = phi i64 [ %indvars.iv153.i.unr, %.lr.ph.i64.preheader.new ], [ %indvars.iv.next154.i.3, %.lr.ph.i64 ] ; 5 uses
  %.569.i = phi ptr [ %.569.i.unr, %.lr.ph.i64.preheader.new ], [ %i.ams, %.lr.ph.i64 ] ; 5 uses
  %i.amj = sub nuw nsw i64 %i.aiq, %indvars.iv153.i
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.amj
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !113
  %i.amm = getelementptr inbounds nuw i8, ptr %.569.i, i64 8
  store i64 %i.aml, ptr %.569.i, align 8, !tbaa !113
  %indvars.iv.next154.i.neg = xor i64 %indvars.iv153.i, -1
  %gep1509 = getelementptr [8 x i8], ptr %invariant.gep1508, i64 %indvars.iv.next154.i.neg
  %i.amn = load i64, ptr %gep1509, align 8, !tbaa !113
  %i.amo = getelementptr inbounds nuw i8, ptr %.569.i, i64 16
  store i64 %i.amn, ptr %i.amm, align 8, !tbaa !113
  %indvars.iv.next154.i.1 = add nuw nsw i64 %indvars.iv153.i, 2
  %18 = sub nuw nsw i64 %i.aiq, %indvars.iv.next154.i.1
  %19 = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %18
  %i.amp = load i64, ptr %19, align 8, !tbaa !113
  %i.amq = getelementptr inbounds nuw i8, ptr %.569.i, i64 24
  store i64 %i.amp, ptr %i.amo, align 8, !tbaa !113
  %indvars.iv.next154.i.2 = add nuw nsw i64 %indvars.iv153.i, 3
  %20 = sub nuw nsw i64 %i.aiq, %indvars.iv.next154.i.2
  %21 = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %20
  %i.amr = load i64, ptr %21, align 8, !tbaa !113
  %i.ams = getelementptr inbounds nuw i8, ptr %.569.i, i64 32 ; 2 uses
  store i64 %i.amr, ptr %i.amq, align 8, !tbaa !113
  %indvars.iv.next154.i.3 = add nuw nsw i64 %indvars.iv153.i, 4 ; 2 uses
  %exitcond157.not.i.3 = icmp eq i64 %indvars.iv.next154.i.3, %i.aiq
  br i1 %exitcond157.not.i.3, label %.preheader4.i58, label %.lr.ph.i64, !llvm.loop !907

.preheader3.i60:                                  ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %middle.block945, %vec.epilog.middle.block963, %.preheader4.i58
  %.291.lcssa.i = phi ptr [ %.19081.i, %.preheader4.i58 ], [ %i.alz, %vec.epilog.middle.block963 ], [ %i.alp, %middle.block945 ], [ %.lcssa1353.unr, %.lr.ph74.i.prol.loopexit ], [ %i.aom, %.lr.ph74.i ] ; 10 uses
  %.6.lcssa.i61 = phi ptr [ %.5.lcssa.i59, %.preheader4.i58 ], [ %i.aly, %vec.epilog.middle.block963 ], [ %i.alo, %middle.block945 ], [ %.lcssa1352.unr, %.lr.ph74.i.prol.loopexit ], [ %i.aoo, %.lr.ph74.i ] ; 9 uses
  br i1 %i.aip, label %iter.check911, label %._crit_edge.i62

iter.check911:                                    ; preds = %.preheader3.i60
  br i1 %min.iters.check890, label %.lr.ph79.i.preheader, label %vector.memcheck883

vector.memcheck883:                               ; preds = %iter.check911
  %scevgep884 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.air
  %scevgep885 = getelementptr i8, ptr %.291.lcssa.i, i64 -8 ; 2 uses
  %scevgep886 = getelementptr i8, ptr %scevgep885, i64 %i.ais
  %bound0887 = icmp ult ptr %.6.lcssa.i61, %scevgep885
  %bound1888 = icmp ult ptr %scevgep886, %scevgep884
  %found.conflict889 = and i1 %bound0887, %bound1888
  br i1 %found.conflict889, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check891

vector.main.loop.iter.check891:                   ; preds = %vector.memcheck883
  br i1 %min.iters.check892, label %vec.epilog.ph915, label %vector.ph893

vector.ph893:                                     ; preds = %vector.main.loop.iter.check891
  %i.amt = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.aje ; 2 uses
  br label %vector.body895

vector.body895:                                   ; preds = %vector.ph893, %vector.body895
  %index896 = phi i64 [ 0, %vector.ph893 ], [ %index.next906, %vector.body895 ] ; 3 uses
  %i.amu = shl i64 %index896, 3
  %next.gep897 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.amu ; 4 uses
  %i.amv = sub nuw nsw i64 -2, %index896
  %i.amw = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.amv ; 4 uses
  %i.amx = getelementptr inbounds i8, ptr %i.amw, i64 -56
  %i.amy = getelementptr inbounds i8, ptr %i.amw, i64 -120
  %i.amz = getelementptr inbounds i8, ptr %i.amw, i64 -184
  %i.ana = getelementptr inbounds i8, ptr %i.amw, i64 -248
  %wide.load898 = load <8 x i64>, ptr %i.amx, align 8, !tbaa !113, !alias.scope !946
  %wide.load899 = load <8 x i64>, ptr %i.amy, align 8, !tbaa !113, !alias.scope !946
  %wide.load900 = load <8 x i64>, ptr %i.amz, align 8, !tbaa !113, !alias.scope !946
  %wide.load901 = load <8 x i64>, ptr %i.ana, align 8, !tbaa !113, !alias.scope !946
  %reverse902 = shufflevector <8 x i64> %wide.load898, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse903 = shufflevector <8 x i64> %wide.load899, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse904 = shufflevector <8 x i64> %wide.load900, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse905 = shufflevector <8 x i64> %wide.load901, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.anb = getelementptr i8, ptr %next.gep897, i64 64
  %i.anc = getelementptr i8, ptr %next.gep897, i64 128
  %i.and = getelementptr i8, ptr %next.gep897, i64 192
  store <8 x i64> %reverse902, ptr %next.gep897, align 8, !tbaa !113, !alias.scope !947, !noalias !946
  store <8 x i64> %reverse903, ptr %i.anb, align 8, !tbaa !113, !alias.scope !947, !noalias !946
  store <8 x i64> %reverse904, ptr %i.anc, align 8, !tbaa !113, !alias.scope !947, !noalias !946
  store <8 x i64> %reverse905, ptr %i.and, align 8, !tbaa !113, !alias.scope !947, !noalias !946
  %index.next906 = add nuw i64 %index896, 32      ; 2 uses
  %i.ane = icmp eq i64 %index.next906, %n.vec894
  br i1 %i.ane, label %middle.block907, label %vector.body895, !llvm.loop !911

middle.block907:                                  ; preds = %vector.body895
  br i1 %cmp.n908, label %._crit_edge.i62, label %vec.epilog.iter.check913

vec.epilog.iter.check913:                         ; preds = %middle.block907
  br i1 %min.epilog.iters.check914, label %.lr.ph79.i.preheader, label %vec.epilog.ph915, !prof !117

vec.epilog.ph915:                                 ; preds = %vector.main.loop.iter.check891, %vec.epilog.iter.check913
  %vec.epilog.resume.val909 = phi i64 [ %n.vec894, %vec.epilog.iter.check913 ], [ 0, %vector.main.loop.iter.check891 ]
  %i.anf = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.ajf ; 2 uses
  br label %vec.epilog.vector.body917

vec.epilog.vector.body917:                        ; preds = %vec.epilog.vector.body917, %vec.epilog.ph915
  %index918 = phi i64 [ %vec.epilog.resume.val909, %vec.epilog.ph915 ], [ %index.next922, %vec.epilog.vector.body917 ] ; 3 uses
  %i.ang = shl i64 %index918, 3
  %next.gep919 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.ang
  %i.anh = sub nuw nsw i64 -2, %index918
  %i.ani = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.anh
  %i.anj = getelementptr inbounds i8, ptr %i.ani, i64 -56
  %wide.load920 = load <8 x i64>, ptr %i.anj, align 8, !tbaa !113, !alias.scope !946
  %reverse921 = shufflevector <8 x i64> %wide.load920, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse921, ptr %next.gep919, align 8, !tbaa !113, !alias.scope !947, !noalias !946
  %index.next922 = add nuw i64 %index918, 8       ; 2 uses
  %i.ank = icmp eq i64 %index.next922, %n.vec916
  br i1 %i.ank, label %vec.epilog.middle.block923, label %vec.epilog.vector.body917, !llvm.loop !912

vec.epilog.middle.block923:                       ; preds = %vec.epilog.vector.body917
  br i1 %cmp.n924, label %._crit_edge.i62, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check911, %vector.memcheck883, %vec.epilog.iter.check913, %vec.epilog.middle.block923
  %indvars.iv159.i.ph = phi i64 [ 0, %iter.check911 ], [ 0, %vector.memcheck883 ], [ %n.vec894, %vec.epilog.iter.check913 ], [ %n.vec916, %vec.epilog.middle.block923 ] ; 3 uses
  %.777.i.ph = phi ptr [ %.6.lcssa.i61, %iter.check911 ], [ %.6.lcssa.i61, %vector.memcheck883 ], [ %i.amt, %vec.epilog.iter.check913 ], [ %i.anf, %vec.epilog.middle.block923 ] ; 2 uses
  br i1 %lcmp.mod1402.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol

.lr.ph79.i.prol:                                  ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i.prol
  %indvars.iv159.i.prol = phi i64 [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ], [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.777.i.prol = phi ptr [ %i.ano, %.lr.ph79.i.prol ], [ %.777.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %prol.iter1403 = phi i64 [ %prol.iter1403.next, %.lr.ph79.i.prol ], [ 0, %.lr.ph79.i.preheader ]
  %i.anl = sub nuw nsw i64 -2, %indvars.iv159.i.prol
  %i.anm = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.anl
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !113
  %i.ano = getelementptr inbounds nuw i8, ptr %.777.i.prol, i64 8 ; 3 uses
  store i64 %i.ann, ptr %.777.i.prol, align 8, !tbaa !113
  %indvars.iv.next160.i.prol = add nuw nsw i64 %indvars.iv159.i.prol, 1 ; 2 uses
  %prol.iter1403.next = add i64 %prol.iter1403, 1 ; 2 uses
  %prol.iter1403.cmp.not = icmp eq i64 %prol.iter1403.next, %xtraiter1401
  br i1 %prol.iter1403.cmp.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol, !llvm.loop !913

.lr.ph79.i.prol.loopexit:                         ; preds = %.lr.ph79.i.prol, %.lr.ph79.i.preheader
  %.lcssa1354.unr = phi ptr [ poison, %.lr.ph79.i.preheader ], [ %i.ano, %.lr.ph79.i.prol ]
  %indvars.iv159.i.unr = phi i64 [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader ], [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ]
  %.777.i.unr = phi ptr [ %.777.i.ph, %.lr.ph79.i.preheader ], [ %i.ano, %.lr.ph79.i.prol ]
  %i.anp = sub nsw i64 %indvars.iv159.i.ph, %wide.trip.count162.i
  %i.anq = icmp ugt i64 %i.anp, -4
  br i1 %i.anq, label %._crit_edge.i62, label %.lr.ph79.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.08073.i = phi i32 [ %i.aop, %.lr.ph74.i ], [ %.08073.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.672.i = phi ptr [ %i.aoo, %.lr.ph74.i ], [ %.672.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %.29171.i = phi ptr [ %i.aom, %.lr.ph74.i ], [ %.29171.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.29171.i, i64 8
  %i.ans = load i64, ptr %.29171.i, align 8, !tbaa !113
  %i.ant = getelementptr inbounds nuw i8, ptr %.672.i, i64 8
  store i64 %i.ans, ptr %.672.i, align 8, !tbaa !113
  %i.anu = getelementptr inbounds nuw i8, ptr %.29171.i, i64 16
  %i.anv = load i64, ptr %i.anr, align 8, !tbaa !113
  %i.anw = getelementptr inbounds nuw i8, ptr %.672.i, i64 16
  store i64 %i.anv, ptr %i.ant, align 8, !tbaa !113
  %i.anx = getelementptr inbounds nuw i8, ptr %.29171.i, i64 24
  %i.any = load i64, ptr %i.anu, align 8, !tbaa !113
  %i.anz = getelementptr inbounds nuw i8, ptr %.672.i, i64 24
  store i64 %i.any, ptr %i.anw, align 8, !tbaa !113
  %i.aoa = getelementptr inbounds nuw i8, ptr %.29171.i, i64 32
  %i.aob = load i64, ptr %i.anx, align 8, !tbaa !113
  %i.aoc = getelementptr inbounds nuw i8, ptr %.672.i, i64 32
  store i64 %i.aob, ptr %i.anz, align 8, !tbaa !113
  %i.aod = getelementptr inbounds nuw i8, ptr %.29171.i, i64 40
  %i.aoe = load i64, ptr %i.aoa, align 8, !tbaa !113
  %i.aof = getelementptr inbounds nuw i8, ptr %.672.i, i64 40
  store i64 %i.aoe, ptr %i.aoc, align 8, !tbaa !113
  %i.aog = getelementptr inbounds nuw i8, ptr %.29171.i, i64 48
  %i.aoh = load i64, ptr %i.aod, align 8, !tbaa !113
  %i.aoi = getelementptr inbounds nuw i8, ptr %.672.i, i64 48
  store i64 %i.aoh, ptr %i.aof, align 8, !tbaa !113
  %i.aoj = getelementptr inbounds nuw i8, ptr %.29171.i, i64 56
  %i.aok = load i64, ptr %i.aog, align 8, !tbaa !113
  %i.aol = getelementptr inbounds nuw i8, ptr %.672.i, i64 56
  store i64 %i.aok, ptr %i.aoi, align 8, !tbaa !113
  %i.aom = getelementptr inbounds nuw i8, ptr %.29171.i, i64 64 ; 2 uses
  %i.aon = load i64, ptr %i.aoj, align 8, !tbaa !113
  %i.aoo = getelementptr inbounds nuw i8, ptr %.672.i, i64 64 ; 2 uses
  store i64 %i.aon, ptr %i.aol, align 8, !tbaa !113
  %i.aop = add nuw nsw i32 %.08073.i, 8           ; 2 uses
  %exitcond158.not.i.7 = icmp eq i32 %i.aop, %i.cs
  br i1 %exitcond158.not.i.7, label %.preheader3.i60, label %.lr.ph74.i, !llvm.loop !914

._crit_edge.i62:                                  ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %middle.block907, %vec.epilog.middle.block923, %.preheader3.i60
  %.7.lcssa.i63 = phi ptr [ %.6.lcssa.i61, %.preheader3.i60 ], [ %i.anf, %vec.epilog.middle.block923 ], [ %i.amt, %middle.block907 ], [ %.lcssa1354.unr, %.lr.ph79.i.prol.loopexit ], [ %i.apg, %.lr.ph79.i ] ; 2 uses
  %i.aoq = add nuw nsw i32 %.08283.i, 1           ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.aoq, %i.ct
  br i1 %exitcond164.not.i, label %._crit_edge84.i, label %.preheader5.i57, !llvm.loop !915

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %.lr.ph79.i ], [ %indvars.iv159.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %.777.i = phi ptr [ %i.apg, %.lr.ph79.i ], [ %.777.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %i.aor = sub nuw nsw i64 -2, %indvars.iv159.i
  %i.aos = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.aor
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !113
  %i.aou = getelementptr inbounds nuw i8, ptr %.777.i, i64 8
  store i64 %i.aot, ptr %.777.i, align 8, !tbaa !113
  %i.aov = sub nuw nsw i64 -3, %indvars.iv159.i
  %i.aow = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.aov
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !113
  %i.aoy = getelementptr inbounds nuw i8, ptr %.777.i, i64 16
  store i64 %i.aox, ptr %i.aou, align 8, !tbaa !113
  %i.aoz = sub nuw nsw i64 -4, %indvars.iv159.i
  %i.apa = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.aoz
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !113
  %i.apc = getelementptr inbounds nuw i8, ptr %.777.i, i64 24
  store i64 %i.apb, ptr %i.aoy, align 8, !tbaa !113
  %i.apd = sub nuw nsw i64 -5, %indvars.iv159.i
  %i.ape = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.apd
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !113
  %i.apg = getelementptr inbounds nuw i8, ptr %.777.i, i64 32 ; 2 uses
  store i64 %i.apf, ptr %i.apc, align 8, !tbaa !113
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %exitcond163.not.i.3 = icmp eq i64 %indvars.iv.next160.i.3, %wide.trip.count162.i
  br i1 %exitcond163.not.i.3, label %._crit_edge.i62, label %.lr.ph79.i, !llvm.loop !916

.preheader2.i50:                                  ; preds = %._crit_edge100.i, %.preheader2.lr.ph.i49
  %indvar = phi i64 [ %indvar.next, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ] ; 2 uses
  %.078104.i = phi i32 [ %i.atn, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ]
  %.8103.i = phi ptr [ %.11.lcssa.i55, %._crit_edge100.i ], [ %.4.lcssa.i48, %.preheader2.lr.ph.i49 ] ; 9 uses
  %.392102.i = phi ptr [ %i.atm, %._crit_edge100.i ], [ %i.aki, %.preheader2.lr.ph.i49 ] ; 15 uses
  %i.aph = mul i64 %i.aks, %indvar
  %i.api = add i64 %i.akr, %i.aph
  br i1 %i.akj, label %iter.check867, label %.preheader1.i51

iter.check867:                                    ; preds = %.preheader2.i50
  br i1 %min.iters.check846, label %.lr.ph89.i.preheader, label %vector.memcheck838

end_hunk_3
begin_hunk_4_@_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
vector.main.loop.iter.check847:                   ; preds = %vector.memcheck838
  br i1 %min.iters.check848, label %vec.epilog.ph871, label %vector.ph849

vector.ph849:                                     ; preds = %vector.main.loop.iter.check847
  %i.apk = getelementptr i8, ptr %.8103.i, i64 %i.ald ; 2 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.ph849, %vector.body851
  %index852 = phi i64 [ 0, %vector.ph849 ], [ %index.next862, %vector.body851 ] ; 3 uses
  %i.apl = shl i64 %index852, 3
  %next.gep853 = getelementptr i8, ptr %.8103.i, i64 %i.apl ; 4 uses
  %i.apm = sub nuw nsw i64 %i.akn, %index852
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.apm ; 4 uses
  %i.apo = getelementptr inbounds i8, ptr %i.apn, i64 -56
  %i.app = getelementptr inbounds i8, ptr %i.apn, i64 -120
  %i.apq = getelementptr inbounds i8, ptr %i.apn, i64 -184
  %i.apr = getelementptr inbounds i8, ptr %i.apn, i64 -248
  %wide.load854 = load <8 x i64>, ptr %i.apo, align 8, !tbaa !113, !alias.scope !948
  %wide.load855 = load <8 x i64>, ptr %i.app, align 8, !tbaa !113, !alias.scope !948
  %wide.load856 = load <8 x i64>, ptr %i.apq, align 8, !tbaa !113, !alias.scope !948
  %wide.load857 = load <8 x i64>, ptr %i.apr, align 8, !tbaa !113, !alias.scope !948
  %reverse858 = shufflevector <8 x i64> %wide.load854, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse859 = shufflevector <8 x i64> %wide.load855, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse860 = shufflevector <8 x i64> %wide.load856, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse861 = shufflevector <8 x i64> %wide.load857, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aps = getelementptr i8, ptr %next.gep853, i64 64
  %i.apt = getelementptr i8, ptr %next.gep853, i64 128
  %i.apu = getelementptr i8, ptr %next.gep853, i64 192
  store <8 x i64> %reverse858, ptr %next.gep853, align 8, !tbaa !113, !alias.scope !949, !noalias !948
  store <8 x i64> %reverse859, ptr %i.aps, align 8, !tbaa !113, !alias.scope !949, !noalias !948
  store <8 x i64> %reverse860, ptr %i.apt, align 8, !tbaa !113, !alias.scope !949, !noalias !948
  store <8 x i64> %reverse861, ptr %i.apu, align 8, !tbaa !113, !alias.scope !949, !noalias !948
  %index.next862 = add nuw i64 %index852, 32      ; 2 uses
  %i.apv = icmp eq i64 %index.next862, %n.vec850
  br i1 %i.apv, label %middle.block863, label %vector.body851, !llvm.loop !920

middle.block863:                                  ; preds = %vector.body851
  br i1 %cmp.n864, label %.preheader1.i51, label %vec.epilog.iter.check869

vec.epilog.iter.check869:                         ; preds = %middle.block863
  br i1 %min.epilog.iters.check870, label %.lr.ph89.i.preheader, label %vec.epilog.ph871, !prof !117

vec.epilog.ph871:                                 ; preds = %vector.main.loop.iter.check847, %vec.epilog.iter.check869
  %vec.epilog.resume.val865 = phi i64 [ %n.vec850, %vec.epilog.iter.check869 ], [ 0, %vector.main.loop.iter.check847 ]
  %i.apw = getelementptr i8, ptr %.8103.i, i64 %i.ale ; 2 uses
  br label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %vec.epilog.vector.body873, %vec.epilog.ph871
  %index874 = phi i64 [ %vec.epilog.resume.val865, %vec.epilog.ph871 ], [ %index.next878, %vec.epilog.vector.body873 ] ; 3 uses
  %i.apx = shl i64 %index874, 3
  %next.gep875 = getelementptr i8, ptr %.8103.i, i64 %i.apx
  %i.apy = sub nuw nsw i64 %i.akn, %index874
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.apy
  %i.aqa = getelementptr inbounds i8, ptr %i.apz, i64 -56
  %wide.load876 = load <8 x i64>, ptr %i.aqa, align 8, !tbaa !113, !alias.scope !948
  %reverse877 = shufflevector <8 x i64> %wide.load876, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse877, ptr %next.gep875, align 8, !tbaa !113, !alias.scope !949, !noalias !948
  %index.next878 = add nuw i64 %index874, 8       ; 2 uses
  %i.aqb = icmp eq i64 %index.next878, %n.vec872
  br i1 %i.aqb, label %vec.epilog.middle.block879, label %vec.epilog.vector.body873, !llvm.loop !921

vec.epilog.middle.block879:                       ; preds = %vec.epilog.vector.body873
  br i1 %cmp.n880, label %.preheader1.i51, label %.lr.ph89.i.preheader

.lr.ph89.i.preheader:                             ; preds = %iter.check867, %vector.memcheck838, %vec.epilog.iter.check869, %vec.epilog.middle.block879
  %indvars.iv165.i.ph = phi i64 [ 0, %iter.check867 ], [ 0, %vector.memcheck838 ], [ %n.vec850, %vec.epilog.iter.check869 ], [ %n.vec872, %vec.epilog.middle.block879 ] ; 3 uses
  %.987.i.ph = phi ptr [ %.8103.i, %iter.check867 ], [ %.8103.i, %vector.memcheck838 ], [ %i.apk, %vec.epilog.iter.check869 ], [ %i.apw, %vec.epilog.middle.block879 ] ; 2 uses
  br i1 %lcmp.mod1405.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.i.preheader, %.lr.ph89.i.prol
  %indvars.iv165.i.prol = phi i64 [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ], [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader ] ; 2 uses
  %.987.i.prol = phi ptr [ %i.aqf, %.lr.ph89.i.prol ], [ %.987.i.ph, %.lr.ph89.i.preheader ] ; 2 uses
  %prol.iter1406 = phi i64 [ %prol.iter1406.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.i.preheader ]
  %i.aqc = sub nuw nsw i64 %i.akn, %indvars.iv165.i.prol
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.aqc
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !113
  %i.aqf = getelementptr inbounds nuw i8, ptr %.987.i.prol, i64 8 ; 3 uses
  store i64 %i.aqe, ptr %.987.i.prol, align 8, !tbaa !113
  %indvars.iv.next166.i.prol = add nuw nsw i64 %indvars.iv165.i.prol, 1 ; 2 uses
  %prol.iter1406.next = add i64 %prol.iter1406, 1 ; 2 uses
  %prol.iter1406.cmp.not = icmp eq i64 %prol.iter1406.next, %xtraiter1404
  br i1 %prol.iter1406.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !922

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.i.preheader
  %.lcssa1355.unr = phi ptr [ poison, %.lr.ph89.i.preheader ], [ %i.aqf, %.lr.ph89.i.prol ]
  %indvars.iv165.i.unr = phi i64 [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader ], [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ]
  %.987.i.unr = phi ptr [ %.987.i.ph, %.lr.ph89.i.preheader ], [ %i.aqf, %.lr.ph89.i.prol ]
  %i.aqg = sub nsw i64 %indvars.iv165.i.ph, %i.akn
  %i.aqh = icmp ugt i64 %i.aqg, -4
  br i1 %i.aqh, label %.preheader1.i51, label %.lr.ph89.i.preheader.new

.lr.ph89.i.preheader.new:                         ; preds = %.lr.ph89.i.prol.loopexit
  %invariant.gep1510 = getelementptr [8 x i8], ptr %.392102.i, i64 %i.akn
  br label %.lr.ph89.i

.preheader1.i51:                                  ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %middle.block863, %vec.epilog.middle.block879, %.preheader2.i50
  %.9.lcssa.i52 = phi ptr [ %.8103.i, %.preheader2.i50 ], [ %i.apw, %vec.epilog.middle.block879 ], [ %i.apk, %middle.block863 ], [ %.lcssa1355.unr, %.lr.ph89.i.prol.loopexit ], [ %i.aro, %.lr.ph89.i ] ; 8 uses
  %.9.lcssa.i52798 = ptrtoaddr ptr %.9.lcssa.i52 to i64
  br i1 %i.akk, label %iter.check821, label %.preheader.i53

iter.check821:                                    ; preds = %.preheader1.i51
  br i1 %min.iters.check801, label %.lr.ph94.i.preheader, label %vector.memcheck797

vector.memcheck797:                               ; preds = %iter.check821
  %i.aqi = add i64 %i.api, %.9.lcssa.i52798
  %i.aqj = add i64 %i.aqi, -1
  %diff.check800 = icmp ult i64 %i.aqj, 255
  br i1 %diff.check800, label %.lr.ph94.i.preheader, label %vector.main.loop.iter.check802

vector.main.loop.iter.check802:                   ; preds = %vector.memcheck797
  br i1 %min.iters.check803, label %vec.epilog.ph825, label %vector.ph804

vector.ph804:                                     ; preds = %vector.main.loop.iter.check802
  %i.aqk = getelementptr i8, ptr %.392102.i, i64 %i.alh ; 2 uses
  %i.aql = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.alh ; 2 uses
  br label %vector.body806

vector.body806:                                   ; preds = %vector.ph804, %vector.body806
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next814, %vector.body806 ] ; 2 uses
  %i.aqm = shl i64 %index807, 3                   ; 2 uses
  %next.gep808 = getelementptr i8, ptr %.392102.i, i64 %i.aqm ; 4 uses
  %next.gep809 = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.aqm ; 4 uses
  %i.aqn = getelementptr i8, ptr %next.gep808, i64 64
  %i.aqo = getelementptr i8, ptr %next.gep808, i64 128
  %i.aqp = getelementptr i8, ptr %next.gep808, i64 192
  %wide.load810 = load <8 x i64>, ptr %next.gep808, align 8, !tbaa !113
  %wide.load811 = load <8 x i64>, ptr %i.aqn, align 8, !tbaa !113
  %wide.load812 = load <8 x i64>, ptr %i.aqo, align 8, !tbaa !113
  %wide.load813 = load <8 x i64>, ptr %i.aqp, align 8, !tbaa !113
  %i.aqq = getelementptr i8, ptr %next.gep809, i64 64
  %i.aqr = getelementptr i8, ptr %next.gep809, i64 128
  %i.aqs = getelementptr i8, ptr %next.gep809, i64 192
  store <8 x i64> %wide.load810, ptr %next.gep809, align 8, !tbaa !113
  store <8 x i64> %wide.load811, ptr %i.aqq, align 8, !tbaa !113
  store <8 x i64> %wide.load812, ptr %i.aqr, align 8, !tbaa !113
  store <8 x i64> %wide.load813, ptr %i.aqs, align 8, !tbaa !113
  %index.next814 = add nuw i64 %index807, 32      ; 2 uses
  %i.aqt = icmp eq i64 %index.next814, %n.vec805
  br i1 %i.aqt, label %middle.block815, label %vector.body806, !llvm.loop !923

middle.block815:                                  ; preds = %vector.body806
  br i1 %cmp.n816, label %.preheader.i53, label %vec.epilog.iter.check823

vec.epilog.iter.check823:                         ; preds = %middle.block815
  br i1 %min.epilog.iters.check824, label %.lr.ph94.i.preheader, label %vec.epilog.ph825, !prof !117

vec.epilog.ph825:                                 ; preds = %vector.main.loop.iter.check802, %vec.epilog.iter.check823
  %vec.epilog.resume.val817 = phi i64 [ %n.vec805, %vec.epilog.iter.check823 ], [ 0, %vector.main.loop.iter.check802 ]
  %i.aqu = getelementptr i8, ptr %.392102.i, i64 %i.alj ; 2 uses
  %i.aqv = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.alj ; 2 uses
  br label %vec.epilog.vector.body827

vec.epilog.vector.body827:                        ; preds = %vec.epilog.vector.body827, %vec.epilog.ph825
  %index828 = phi i64 [ %vec.epilog.resume.val817, %vec.epilog.ph825 ], [ %index.next832, %vec.epilog.vector.body827 ] ; 2 uses
  %i.aqw = shl i64 %index828, 3                   ; 2 uses
  %next.gep829 = getelementptr i8, ptr %.392102.i, i64 %i.aqw
  %next.gep830 = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.aqw
  %wide.load831 = load <8 x i64>, ptr %next.gep829, align 8, !tbaa !113
  store <8 x i64> %wide.load831, ptr %next.gep830, align 8, !tbaa !113
  %index.next832 = add nuw i64 %index828, 8       ; 2 uses
  %i.aqx = icmp eq i64 %index.next832, %n.vec826
  br i1 %i.aqx, label %vec.epilog.middle.block833, label %vec.epilog.vector.body827, !llvm.loop !924

vec.epilog.middle.block833:                       ; preds = %vec.epilog.vector.body827
  br i1 %cmp.n834, label %.preheader.i53, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %iter.check821, %vector.memcheck797, %vec.epilog.iter.check823, %vec.epilog.middle.block833
  %.07593.i.ph = phi i32 [ 0, %iter.check821 ], [ 0, %vector.memcheck797 ], [ %i.alg, %vec.epilog.iter.check823 ], [ %i.ali, %vec.epilog.middle.block833 ] ; 4 uses
  %.07792.i.ph = phi ptr [ %.392102.i, %iter.check821 ], [ %.392102.i, %vector.memcheck797 ], [ %i.aqk, %vec.epilog.iter.check823 ], [ %i.aqu, %vec.epilog.middle.block833 ] ; 2 uses
  %.1091.i.ph = phi ptr [ %.9.lcssa.i52, %iter.check821 ], [ %.9.lcssa.i52, %vector.memcheck797 ], [ %i.aql, %vec.epilog.iter.check823 ], [ %i.aqv, %vec.epilog.middle.block833 ] ; 2 uses
  %i.aqy = sub i32 %i.cs, %.07593.i.ph
  %xtraiter1407 = and i32 %i.aqy, 7               ; 2 uses
  %lcmp.mod1408.not = icmp eq i32 %xtraiter1407, 0
  br i1 %lcmp.mod1408.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol

.lr.ph94.i.prol:                                  ; preds = %.lr.ph94.i.preheader, %.lr.ph94.i.prol
  %.07593.i.prol = phi i32 [ %i.arc, %.lr.ph94.i.prol ], [ %.07593.i.ph, %.lr.ph94.i.preheader ]
  %.07792.i.prol = phi ptr [ %i.aqz, %.lr.ph94.i.prol ], [ %.07792.i.ph, %.lr.ph94.i.preheader ] ; 2 uses
  %.1091.i.prol = phi ptr [ %i.arb, %.lr.ph94.i.prol ], [ %.1091.i.ph, %.lr.ph94.i.preheader ] ; 2 uses
  %prol.iter1409 = phi i32 [ %prol.iter1409.next, %.lr.ph94.i.prol ], [ 0, %.lr.ph94.i.preheader ]
  %i.aqz = getelementptr inbounds nuw i8, ptr %.07792.i.prol, i64 8 ; 3 uses
  %i.ara = load i64, ptr %.07792.i.prol, align 8, !tbaa !113
  %i.arb = getelementptr inbounds nuw i8, ptr %.1091.i.prol, i64 8 ; 3 uses
  store i64 %i.ara, ptr %.1091.i.prol, align 8, !tbaa !113
  %i.arc = add nuw nsw i32 %.07593.i.prol, 1      ; 2 uses
  %prol.iter1409.next = add i32 %prol.iter1409, 1 ; 2 uses
  %prol.iter1409.cmp.not = icmp eq i32 %prol.iter1409.next, %xtraiter1407
  br i1 %prol.iter1409.cmp.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol, !llvm.loop !925

.lr.ph94.i.prol.loopexit:                         ; preds = %.lr.ph94.i.prol, %.lr.ph94.i.preheader
  %.lcssa1357.unr = phi ptr [ poison, %.lr.ph94.i.preheader ], [ %i.aqz, %.lr.ph94.i.prol ]
  %.lcssa1356.unr = phi ptr [ poison, %.lr.ph94.i.preheader ], [ %i.arb, %.lr.ph94.i.prol ]
  %.07593.i.unr = phi i32 [ %.07593.i.ph, %.lr.ph94.i.preheader ], [ %i.arc, %.lr.ph94.i.prol ]
  %.07792.i.unr = phi ptr [ %.07792.i.ph, %.lr.ph94.i.preheader ], [ %i.aqz, %.lr.ph94.i.prol ]
  %.1091.i.unr = phi ptr [ %.1091.i.ph, %.lr.ph94.i.preheader ], [ %i.arb, %.lr.ph94.i.prol ]
  %i.ard = sub i32 %.07593.i.ph, %i.cs
  %i.are = icmp ugt i32 %i.ard, -8
  br i1 %i.are, label %.preheader.i53, label %.lr.ph94.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.i.preheader.new
  %indvars.iv165.i = phi i64 [ %indvars.iv165.i.unr, %.lr.ph89.i.preheader.new ], [ %indvars.iv.next166.i.3, %.lr.ph89.i ] ; 5 uses
  %.987.i = phi ptr [ %.987.i.unr, %.lr.ph89.i.preheader.new ], [ %i.aro, %.lr.ph89.i ] ; 5 uses
  %i.arf = sub nuw nsw i64 %i.akn, %indvars.iv165.i
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.arf
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !113
  %i.ari = getelementptr inbounds nuw i8, ptr %.987.i, i64 8
  store i64 %i.arh, ptr %.987.i, align 8, !tbaa !113
  %indvars.iv.next166.i.neg = xor i64 %indvars.iv165.i, -1
  %gep1511 = getelementptr [8 x i8], ptr %invariant.gep1510, i64 %indvars.iv.next166.i.neg
  %i.arj = load i64, ptr %gep1511, align 8, !tbaa !113
  %i.ark = getelementptr inbounds nuw i8, ptr %.987.i, i64 16
  store i64 %i.arj, ptr %i.ari, align 8, !tbaa !113
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2
  %22 = sub nuw nsw i64 %i.akn, %indvars.iv.next166.i.1
  %23 = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %22
  %i.arl = load i64, ptr %23, align 8, !tbaa !113
  %i.arm = getelementptr inbounds nuw i8, ptr %.987.i, i64 24
  store i64 %i.arl, ptr %i.ark, align 8, !tbaa !113
  %indvars.iv.next166.i.2 = add nuw nsw i64 %indvars.iv165.i, 3
  %24 = sub nuw nsw i64 %i.akn, %indvars.iv.next166.i.2
  %25 = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %24
  %i.arn = load i64, ptr %25, align 8, !tbaa !113
  %i.aro = getelementptr inbounds nuw i8, ptr %.987.i, i64 32 ; 2 uses
  store i64 %i.arn, ptr %i.arm, align 8, !tbaa !113
  %indvars.iv.next166.i.3 = add nuw nsw i64 %indvars.iv165.i, 4 ; 2 uses
  %exitcond169.not.i.3 = icmp eq i64 %indvars.iv.next166.i.3, %i.akn
  br i1 %exitcond169.not.i.3, label %.preheader1.i51, label %.lr.ph89.i, !llvm.loop !926

.preheader.i53:                                   ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i, %middle.block815, %vec.epilog.middle.block833, %.preheader1.i51
  %.10.lcssa.i54 = phi ptr [ %.9.lcssa.i52, %.preheader1.i51 ], [ %i.aqv, %vec.epilog.middle.block833 ], [ %i.aql, %middle.block815 ], [ %.lcssa1356.unr, %.lr.ph94.i.prol.loopexit ], [ %i.atk, %.lr.ph94.i ] ; 9 uses
  %.077.lcssa.i = phi ptr [ %.392102.i, %.preheader1.i51 ], [ %i.aqu, %vec.epilog.middle.block833 ], [ %i.aqk, %middle.block815 ], [ %.lcssa1357.unr, %.lr.ph94.i.prol.loopexit ], [ %i.ati, %.lr.ph94.i ] ; 8 uses
  br i1 %i.akl, label %iter.check781, label %._crit_edge100.i

iter.check781:                                    ; preds = %.preheader.i53
  br i1 %min.iters.check761, label %.lr.ph99.i.preheader, label %vector.memcheck758

vector.memcheck758:                               ; preds = %iter.check781
  %scevgep = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.ako
  %scevgep759 = getelementptr i8, ptr %.077.lcssa.i, i64 -8 ; 2 uses
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.akp
  %bound0 = icmp ult ptr %.10.lcssa.i54, %scevgep759
  %bound1 = icmp ult ptr %scevgep760, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.i.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck758
  br i1 %min.iters.check763, label %vec.epilog.ph785, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.arp = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.all ; 2 uses
  br label %vector.body766

vector.body766:                                   ; preds = %vector.ph764, %vector.body766
  %index767 = phi i64 [ 0, %vector.ph764 ], [ %index.next776, %vector.body766 ] ; 3 uses
  %i.arq = shl i64 %index767, 3
  %next.gep768 = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.arq ; 4 uses
  %i.arr = sub nuw nsw i64 -2, %index767
  %i.ars = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.arr ; 4 uses
  %i.art = getelementptr inbounds i8, ptr %i.ars, i64 -56
  %i.aru = getelementptr inbounds i8, ptr %i.ars, i64 -120
  %i.arv = getelementptr inbounds i8, ptr %i.ars, i64 -184
  %i.arw = getelementptr inbounds i8, ptr %i.ars, i64 -248
  %wide.load769 = load <8 x i64>, ptr %i.art, align 8, !tbaa !113, !alias.scope !950
  %wide.load770 = load <8 x i64>, ptr %i.aru, align 8, !tbaa !113, !alias.scope !950
  %wide.load771 = load <8 x i64>, ptr %i.arv, align 8, !tbaa !113, !alias.scope !950
  %wide.load772 = load <8 x i64>, ptr %i.arw, align 8, !tbaa !113, !alias.scope !950
  %reverse = shufflevector <8 x i64> %wide.load769, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse773 = shufflevector <8 x i64> %wide.load770, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse774 = shufflevector <8 x i64> %wide.load771, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse775 = shufflevector <8 x i64> %wide.load772, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.arx = getelementptr i8, ptr %next.gep768, i64 64
  %i.ary = getelementptr i8, ptr %next.gep768, i64 128
  %i.arz = getelementptr i8, ptr %next.gep768, i64 192
  store <8 x i64> %reverse, ptr %next.gep768, align 8, !tbaa !113, !alias.scope !951, !noalias !950
  store <8 x i64> %reverse773, ptr %i.arx, align 8, !tbaa !113, !alias.scope !951, !noalias !950
  store <8 x i64> %reverse774, ptr %i.ary, align 8, !tbaa !113, !alias.scope !951, !noalias !950
  store <8 x i64> %reverse775, ptr %i.arz, align 8, !tbaa !113, !alias.scope !951, !noalias !950
  %index.next776 = add nuw i64 %index767, 32      ; 2 uses
  %i.asa = icmp eq i64 %index.next776, %n.vec765
  br i1 %i.asa, label %middle.block777, label %vector.body766, !llvm.loop !930

middle.block777:                                  ; preds = %vector.body766
  br i1 %cmp.n778, label %._crit_edge100.i, label %vec.epilog.iter.check783

vec.epilog.iter.check783:                         ; preds = %middle.block777
  br i1 %min.epilog.iters.check784, label %.lr.ph99.i.preheader, label %vec.epilog.ph785, !prof !117

vec.epilog.ph785:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check783
  %vec.epilog.resume.val779 = phi i64 [ %n.vec765, %vec.epilog.iter.check783 ], [ 0, %vector.main.loop.iter.check762 ]
  %i.asb = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.alm ; 2 uses
  br label %vec.epilog.vector.body787

vec.epilog.vector.body787:                        ; preds = %vec.epilog.vector.body787, %vec.epilog.ph785
  %index788 = phi i64 [ %vec.epilog.resume.val779, %vec.epilog.ph785 ], [ %index.next792, %vec.epilog.vector.body787 ] ; 3 uses
  %i.asc = shl i64 %index788, 3
  %next.gep789 = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.asc
  %i.asd = sub nuw nsw i64 -2, %index788
  %i.ase = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.asd
  %i.asf = getelementptr inbounds i8, ptr %i.ase, i64 -56
  %wide.load790 = load <8 x i64>, ptr %i.asf, align 8, !tbaa !113, !alias.scope !950
  %reverse791 = shufflevector <8 x i64> %wide.load790, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse791, ptr %next.gep789, align 8, !tbaa !113, !alias.scope !951, !noalias !950
  %index.next792 = add nuw i64 %index788, 8       ; 2 uses
  %i.asg = icmp eq i64 %index.next792, %n.vec786
  br i1 %i.asg, label %vec.epilog.middle.block793, label %vec.epilog.vector.body787, !llvm.loop !931

vec.epilog.middle.block793:                       ; preds = %vec.epilog.vector.body787
  br i1 %cmp.n794, label %._crit_edge100.i, label %.lr.ph99.i.preheader

.lr.ph99.i.preheader:                             ; preds = %iter.check781, %vector.memcheck758, %vec.epilog.iter.check783, %vec.epilog.middle.block793
  %indvars.iv171.i.ph = phi i64 [ 0, %iter.check781 ], [ 0, %vector.memcheck758 ], [ %n.vec765, %vec.epilog.iter.check783 ], [ %n.vec786, %vec.epilog.middle.block793 ] ; 3 uses
  %.1197.i.ph = phi ptr [ %.10.lcssa.i54, %iter.check781 ], [ %.10.lcssa.i54, %vector.memcheck758 ], [ %i.arp, %vec.epilog.iter.check783 ], [ %i.asb, %vec.epilog.middle.block793 ] ; 2 uses
  br i1 %lcmp.mod1411.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol

.lr.ph99.i.prol:                                  ; preds = %.lr.ph99.i.preheader, %.lr.ph99.i.prol
  %indvars.iv171.i.prol = phi i64 [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ], [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader ] ; 2 uses
  %.1197.i.prol = phi ptr [ %i.ask, %.lr.ph99.i.prol ], [ %.1197.i.ph, %.lr.ph99.i.preheader ] ; 2 uses
  %prol.iter1412 = phi i64 [ %prol.iter1412.next, %.lr.ph99.i.prol ], [ 0, %.lr.ph99.i.preheader ]
  %i.ash = sub nuw nsw i64 -2, %indvars.iv171.i.prol
  %i.asi = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.ash
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !113
  %i.ask = getelementptr inbounds nuw i8, ptr %.1197.i.prol, i64 8 ; 3 uses
  store i64 %i.asj, ptr %.1197.i.prol, align 8, !tbaa !113
  %indvars.iv.next172.i.prol = add nuw nsw i64 %indvars.iv171.i.prol, 1 ; 2 uses
  %prol.iter1412.next = add i64 %prol.iter1412, 1 ; 2 uses
  %prol.iter1412.cmp.not = icmp eq i64 %prol.iter1412.next, %xtraiter1410
  br i1 %prol.iter1412.cmp.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol, !llvm.loop !932

.lr.ph99.i.prol.loopexit:                         ; preds = %.lr.ph99.i.prol, %.lr.ph99.i.preheader
  %.lcssa1358.unr = phi ptr [ poison, %.lr.ph99.i.preheader ], [ %i.ask, %.lr.ph99.i.prol ]
  %indvars.iv171.i.unr = phi i64 [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader ], [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ]
  %.1197.i.unr = phi ptr [ %.1197.i.ph, %.lr.ph99.i.preheader ], [ %i.ask, %.lr.ph99.i.prol ]
  %i.asl = sub nsw i64 %indvars.iv171.i.ph, %wide.trip.count174.i
  %i.asm = icmp ugt i64 %i.asl, -4
  br i1 %i.asm, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i
  %.07593.i = phi i32 [ %i.atl, %.lr.ph94.i ], [ %.07593.i.unr, %.lr.ph94.i.prol.loopexit ]
  %.07792.i = phi ptr [ %i.ati, %.lr.ph94.i ], [ %.07792.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %.1091.i = phi ptr [ %i.atk, %.lr.ph94.i ], [ %.1091.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.07792.i, i64 8
  %i.aso = load i64, ptr %.07792.i, align 8, !tbaa !113
  %i.asp = getelementptr inbounds nuw i8, ptr %.1091.i, i64 8
  store i64 %i.aso, ptr %.1091.i, align 8, !tbaa !113
  %i.asq = getelementptr inbounds nuw i8, ptr %.07792.i, i64 16
  %i.asr = load i64, ptr %i.asn, align 8, !tbaa !113
  %i.ass = getelementptr inbounds nuw i8, ptr %.1091.i, i64 16
  store i64 %i.asr, ptr %i.asp, align 8, !tbaa !113
  %i.ast = getelementptr inbounds nuw i8, ptr %.07792.i, i64 24
  %i.asu = load i64, ptr %i.asq, align 8, !tbaa !113
  %i.asv = getelementptr inbounds nuw i8, ptr %.1091.i, i64 24
  store i64 %i.asu, ptr %i.ass, align 8, !tbaa !113
  %i.asw = getelementptr inbounds nuw i8, ptr %.07792.i, i64 32
  %i.asx = load i64, ptr %i.ast, align 8, !tbaa !113
  %i.asy = getelementptr inbounds nuw i8, ptr %.1091.i, i64 32
  store i64 %i.asx, ptr %i.asv, align 8, !tbaa !113
  %i.asz = getelementptr inbounds nuw i8, ptr %.07792.i, i64 40
  %i.ata = load i64, ptr %i.asw, align 8, !tbaa !113
  %i.atb = getelementptr inbounds nuw i8, ptr %.1091.i, i64 40
  store i64 %i.ata, ptr %i.asy, align 8, !tbaa !113
  %i.atc = getelementptr inbounds nuw i8, ptr %.07792.i, i64 48
  %i.atd = load i64, ptr %i.asz, align 8, !tbaa !113
  %i.ate = getelementptr inbounds nuw i8, ptr %.1091.i, i64 48
  store i64 %i.atd, ptr %i.atb, align 8, !tbaa !113
  %i.atf = getelementptr inbounds nuw i8, ptr %.07792.i, i64 56
  %i.atg = load i64, ptr %i.atc, align 8, !tbaa !113
  %i.ath = getelementptr inbounds nuw i8, ptr %.1091.i, i64 56
  store i64 %i.atg, ptr %i.ate, align 8, !tbaa !113
  %i.ati = getelementptr inbounds nuw i8, ptr %.07792.i, i64 64 ; 2 uses
  %i.atj = load i64, ptr %i.atf, align 8, !tbaa !113
  %i.atk = getelementptr inbounds nuw i8, ptr %.1091.i, i64 64 ; 2 uses
  store i64 %i.atj, ptr %i.ath, align 8, !tbaa !113
  %i.atl = add nuw nsw i32 %.07593.i, 8           ; 2 uses
  %exitcond170.not.i.7 = icmp eq i32 %i.atl, %i.cs
  br i1 %exitcond170.not.i.7, label %.preheader.i53, label %.lr.ph94.i, !llvm.loop !933

._crit_edge100.i:                                 ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i, %middle.block777, %vec.epilog.middle.block793, %.preheader.i53
  %.11.lcssa.i55 = phi ptr [ %.10.lcssa.i54, %.preheader.i53 ], [ %i.asb, %vec.epilog.middle.block793 ], [ %i.arp, %middle.block777 ], [ %.lcssa1358.unr, %.lr.ph99.i.prol.loopexit ], [ %i.aud, %.lr.ph99.i ]
  %i.atm = getelementptr inbounds [8 x i8], ptr %.392102.i, i64 %i.akm
  %i.atn = add nuw nsw i32 %.078104.i, 1          ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.atn, %i.ur
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond176.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i50, !llvm.loop !934

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i.3, %.lr.ph99.i ], [ %indvars.iv171.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %.1197.i = phi ptr [ %i.aud, %.lr.ph99.i ], [ %.1197.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %i.ato = sub nuw nsw i64 -2, %indvars.iv171.i
  %i.atp = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.ato
  %i.atq = load i64, ptr %i.atp, align 8, !tbaa !113
  %i.atr = getelementptr inbounds nuw i8, ptr %.1197.i, i64 8
  store i64 %i.atq, ptr %.1197.i, align 8, !tbaa !113
  %i.ats = sub nuw nsw i64 -3, %indvars.iv171.i
  %i.att = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.ats
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !113
  %i.atv = getelementptr inbounds nuw i8, ptr %.1197.i, i64 16
  store i64 %i.atu, ptr %i.atr, align 8, !tbaa !113
  %i.atw = sub nuw nsw i64 -4, %indvars.iv171.i
  %i.atx = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.atw
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !113
  %i.atz = getelementptr inbounds nuw i8, ptr %.1197.i, i64 24
  store i64 %i.aty, ptr %i.atv, align 8, !tbaa !113
  %i.aua = sub nuw nsw i64 -5, %indvars.iv171.i
  %i.aub = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aua
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !113
  %i.aud = getelementptr inbounds nuw i8, ptr %.1197.i, i64 32 ; 2 uses
  store i64 %i.auc, ptr %i.atz, align 8, !tbaa !113
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %exitcond175.not.i.3 = icmp eq i64 %indvars.iv.next172.i.3, %wide.trip.count174.i
  br i1 %exitcond175.not.i.3, label %._crit_edge100.i, label %.lr.ph99.i, !llvm.loop !935

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge100.i, %._crit_edge89.i, %._crit_edge73.i, %bb.f, %._crit_edge84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !100
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %_ZN4ncnn3MatD2Ev.exit34
  %i.aue = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit34 ], [ %i.as, %bb.d ], [ %i.as, %middle.block ], [ %i.as, %vec.epilog.middle.block ], [ %i.as, %.lr.ph ] ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %i.auf = sext i32 %i.aue to i64
  %.not.not = icmp slt i64 %indvars.iv174, %i.auf
end_hunk_4
