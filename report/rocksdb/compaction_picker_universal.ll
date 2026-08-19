inline.NumInlined: 1516
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32PickCompactionToReduceSortedRunsEjj:bb.a
  %i.dy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 256, ptr noundef nonnull @.str.57, i32 noundef %i.di, i64 noundef %.1156327, i64 noundef %i.dv, i64 noundef %i.dx) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun12DumpSizeInfoEPcmm.exit

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun12DumpSizeInfoEPcmm.exit: ; preds = %bb.u, %bb.v
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !235, !nonnull !51, !align !52
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !9
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.dz, ptr noundef nonnull @.str.73, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.eb, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ec = add nuw i64 %.0146347, 1                ; 2 uses
  %exitcond390.not = icmp eq i64 %i.ec, %i.da
  br i1 %exitcond390.not, label %.critedge3, label %.lr.ph348, !llvm.loop !580

.critedge3:                                       ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun12DumpSizeInfoEPcmm.exit, %.lr.ph348, %.preheader324
  %.val204 = load ptr, ptr %i.k, align 8, !tbaa !231 ; 2 uses
  %.val205 = load ptr, ptr %i.l, align 8, !tbaa !234 ; 2 uses
  %i.ed = ptrtoint ptr %.val205 to i64
  %i.ee = ptrtoint ptr %.val204 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 40
  %i.eh = icmp ult i64 %i.bn, %i.eg
  br i1 %i.eh, label %.preheader325, label %.critedge3.thread, !llvm.loop !581

.critedge3.thread:                                ; preds = %.critedge3, %.critedge
  %.2169 = phi i1 [ true, %.critedge ], [ false, %.critedge3 ]
  %.2166 = phi i64 [ %.1156327, %.critedge ], [ 0, %.critedge3 ] ; 4 uses
  %.6163 = phi i32 [ %.2159.lcssa, %.critedge ], [ %.2159.lcssa452, %.critedge3 ] ; 2 uses
  %i.ei = icmp ugt i32 %.6163, 1
  %or.cond.not = and i1 %.2169, %i.ei
  br i1 %or.cond.not, label %bb.w, label %.critedge3.thread.thread

bb.w:                                             ; preds = %.critedge3.thread
  %i.ej = zext i32 %.6163 to i64
  %i.ek = add i64 %.2166, %i.ej                   ; 13 uses
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !196, !nonnull !51, !align !52 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 336
  %i.en = load i32, ptr %i.em, align 8, !tbaa !582 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0                   ; 3 uses
  br i1 %i.eo, label %.loopexit323, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val207 = load ptr, ptr %i.k, align 8, !tbaa !233 ; 9 uses
  %.val206 = load ptr, ptr %i.l, align 8, !tbaa !233 ; 4 uses
  %i.ep = icmp eq ptr %.val207, %.val206
  br i1 %i.ep, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.x
  %.val206479 = ptrtoaddr ptr %.val206 to i64
  %.val207480 = ptrtoaddr ptr %.val207 to i64
  %i.eq = add i64 %.val206479, -40
  %i.er = sub i64 %i.eq, %.val207480              ; 3 uses
  %i.es = udiv i64 %i.er, 40
  %i.et = add nuw nsw i64 %i.es, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.er, 160
  br i1 %min.iters.check, label %.lr.ph365.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check481 = icmp ult i64 %i.er, 640
  br i1 %min.iters.check481, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eu = and i64 %i.et, 15                       ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = select i1 %i.ev, i64 16, i64 %i.eu      ; 2 uses
  %n.vec = sub nsw i64 %i.et, %i.ew               ; 3 uses
  %i.ex = mul i64 %n.vec, 40
  %i.ey = getelementptr i8, ptr %.val207, i64 %i.ex ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %vec.phi482.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fa, %vector.body ]
  %vec.phi483.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fb, %vector.body ]
  %vec.phi484 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.fc, %vector.body ]
  %pointer.phi = phi ptr [ %.val207, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 40, i64 80, i64 120> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 24
  %wide.gep485.a = getelementptr i8, <4 x ptr> %vector.gep, i64 184
  %wide.gep486.a = getelementptr i8, <4 x ptr> %vector.gep, i64 344
  %wide.gep487 = getelementptr i8, <4 x ptr> %vector.gep, i64 504
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !261
  %wide.masked.gather488.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep485.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !261
  %wide.masked.gather489.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep486.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !261
  %wide.masked.gather490 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep487, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !261
  %i.ez = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.fa = add <4 x i64> %wide.masked.gather488.a, %vec.phi482.a ; 2 uses
  %i.fb = add <4 x i64> %wide.masked.gather489.a, %vec.phi483.a ; 2 uses
  %i.fc = add <4 x i64> %wide.masked.gather490, %vec.phi484 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !583

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.fa, %i.ez
  %bin.rdx491.a = add <4 x i64> %i.fb, %bin.rdx
  %bin.rdx492 = add <4 x i64> %i.fc, %bin.rdx491.a
  %i.fe = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx492) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ew, 5
  br i1 %min.epilog.iters.check, label %.lr.ph365.preheader, label %vec.epilog.ph, !prof !510

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.fe, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.ey, %vec.epilog.iter.check ], [ %.val207, %vector.main.loop.iter.check ]
  %i.ff = and i64 %i.et, 3                        ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  %i.fh = select i1 %i.fg, i64 4, i64 %i.ff
  %n.vec493 = sub nsw i64 %i.et, %i.fh            ; 2 uses
  %i.fi = mul i64 %n.vec493, 40
  %i.fj = getelementptr i8, ptr %.val207, i64 %i.fi
  %i.fk = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index494 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next500, %vec.epilog.vector.body ]
  %vec.phi495 = phi <4 x i64> [ %i.fk, %vec.epilog.ph ], [ %i.fl, %vec.epilog.vector.body ]
  %pointer.phi496 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind501, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep497 = getelementptr i8, ptr %pointer.phi496, <4 x i64> <i64 0, i64 40, i64 80, i64 120>
  %wide.gep498 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep497, i64 24
  %wide.masked.gather499 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep498, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !261
  %i.fl = add <4 x i64> %wide.masked.gather499, %vec.phi495 ; 2 uses
  %index.next500 = add nuw i64 %index494, 4       ; 2 uses
  %ptr.ind501 = getelementptr i8, ptr %pointer.phi496, i64 160
  %i.fm = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.fm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !584

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fn = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.fl)
  br label %.lr.ph365.preheader

.lr.ph365.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0141364.ph = phi i64 [ 0, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ]
  %.sroa.0285.0363.ph = phi ptr [ %.val207, %iter.check ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ]
  br label %.lr.ph365

._crit_edge:                                      ; preds = %.lr.ph365, %bb.x
  %.0141.lcssa = phi i64 [ 0, %bb.x ], [ %i.fw, %.lr.ph365 ]
  %i.fo = ptrtoint ptr %.val206 to i64
  %i.fp = ptrtoint ptr %.val207 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = sdiv exact i64 %i.fq, 40
  %i.fs = zext nneg i32 %i.en to i64
  %i.ft = mul i64 %.0141.lcssa, %i.fs
  br label %bb.y

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %.lr.ph365
  %.0141364 = phi i64 [ %i.fw, %.lr.ph365 ], [ %.0141364.ph, %.lr.ph365.preheader ]
  %.sroa.0285.0363 = phi ptr [ %i.fx, %.lr.ph365 ], [ %.sroa.0285.0363.ph, %.lr.ph365.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0285.0363, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !261
  %i.fw = add i64 %i.fv, %.0141364                ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0285.0363, i64 40 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %.val206
  br i1 %i.fy, label %._crit_edge, label %.lr.ph365, !llvm.loop !585

bb.y:                                             ; preds = %bb.z, %._crit_edge
  %.0137 = phi i64 [ 0, %._crit_edge ], [ %i.gc, %bb.z ]
  %.0136.in = phi i64 [ %i.fr, %._crit_edge ], [ %.0136, %bb.z ]
  %.0136 = add i64 %.0136.in, -1                  ; 3 uses
  %.not = icmp ult i64 %.0136, %i.ek
  br i1 %.not, label %iter.check538, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %.val207, i64 %.0136
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !253
  %i.gc = add i64 %i.gb, %.0137                   ; 2 uses
  %i.gd = mul i64 %i.gc, 100
  %.not178 = icmp ult i64 %i.gd, %i.ft
  br i1 %.not178, label %bb.y, label %.loopexit323, !llvm.loop !586

.loopexit323:                                     ; preds = %bb.z, %bb.w
  %.not383 = icmp eq i64 %i.ek, 0
  br i1 %.not383, label %._crit_edge371, label %iter.check538

iter.check538:                                    ; preds = %bb.y, %.loopexit323
  %.1143462.a = phi i1 [ %i.eo, %.loopexit323 ], [ true, %bb.y ]
  %.val215 = load ptr, ptr %i.k, align 8, !tbaa !231 ; 6 uses
  %umax504 = call i64 @llvm.umax.i64(i64 %i.ek, i64 1) ; 4 uses
  %min.iters.check505 = icmp ult i64 %i.ek, 5
  br i1 %min.iters.check505, label %vec.epilog.scalar.ph539.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check538
  %i.ge = add i64 %i.ek, -1                       ; 2 uses
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = icmp eq i64 %i.gf, 4294967295
  %i.gh = icmp ugt i64 %i.ge, 4294967295
  %i.gi = or i1 %i.gg, %i.gh
  br i1 %i.gi, label %vec.epilog.scalar.ph539.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %vector.scevcheck
  %min.iters.check507 = icmp ult i64 %i.ek, 17
  br i1 %min.iters.check507, label %vec.epilog.ph542, label %vector.ph508

vector.ph508:                                     ; preds = %vector.main.loop.iter.check506
  %i.gj = and i64 %umax504, 15                    ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = select i1 %i.gk, i64 16, i64 %i.gj      ; 2 uses
  %n.vec509 = sub nsw i64 %umax504, %i.gl         ; 4 uses
  %10 = trunc i64 %n.vec509 to i32
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next531, %vector.body510 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph508 ], [ %vec.ind.next, %vector.body510 ] ; 5 uses
  %vec.phi512.a = phi <4 x i64> [ zeroinitializer, %vector.ph508 ], [ %i.gm, %vector.body510 ]
  %vec.phi513.a = phi <4 x i64> [ zeroinitializer, %vector.ph508 ], [ %i.gn, %vector.body510 ]
  %vec.phi514.a = phi <4 x i64> [ zeroinitializer, %vector.ph508 ], [ %i.go, %vector.body510 ]
  %vec.phi515 = phi <4 x i64> [ zeroinitializer, %vector.ph508 ], [ %i.gp, %vector.body510 ]
  %step.add516 = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2517 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3518 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep519.a = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %vec.ind
  %wide.gep520.a = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add516
  %wide.gep521.a = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add.2517
  %wide.gep522.a = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add.3518
  %wide.gep523.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep519.a, i64 16
  %wide.gep524.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep520.a, i64 16
  %wide.gep525.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep521.a, i64 16
  %wide.gep526 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep522.a, i64 16
  %wide.masked.gather527.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep523.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather528.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep524.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather529.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep525.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather530 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep526, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.gm = add <4 x i64> %wide.masked.gather527.a, %vec.phi512.a ; 2 uses
  %i.gn = add <4 x i64> %wide.masked.gather528.a, %vec.phi513.a ; 2 uses
  %i.go = add <4 x i64> %wide.masked.gather529.a, %vec.phi514.a ; 2 uses
  %i.gp = add <4 x i64> %wide.masked.gather530, %vec.phi515 ; 2 uses
  %index.next531 = add nuw i64 %index511, 16      ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.gq = icmp eq i64 %index.next531, %n.vec509
  br i1 %i.gq, label %vec.epilog.iter.check540, label %vector.body510, !llvm.loop !587

vec.epilog.iter.check540:                         ; preds = %vector.body510
  %bin.rdx533.a = add <4 x i64> %i.gn, %i.gm
  %bin.rdx534.a = add <4 x i64> %i.go, %bin.rdx533.a
  %bin.rdx535 = add <4 x i64> %i.gp, %bin.rdx534.a
  %i.gr = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx535) ; 2 uses
  %min.epilog.iters.check541 = icmp samesign ult i64 %i.gl, 5
  br i1 %min.epilog.iters.check541, label %vec.epilog.scalar.ph539.preheader, label %vec.epilog.ph542, !prof !510

vec.epilog.ph542:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check540
  %vec.epilog.resume.val536 = phi i64 [ %n.vec509, %vec.epilog.iter.check540 ], [ 0, %vector.main.loop.iter.check506 ] ; 2 uses
  %bc.merge.rdx537 = phi i64 [ %i.gr, %vec.epilog.iter.check540 ], [ 0, %vector.main.loop.iter.check506 ]
  %i.gs = and i64 %umax504, 3                     ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  %i.gu = select i1 %i.gt, i64 4, i64 %i.gs
  %n.vec543 = sub nsw i64 %umax504, %i.gu         ; 3 uses
  %11 = trunc i64 %n.vec543 to i32
  %i.gv = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx537, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val536, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body544

vec.epilog.vector.body544:                        ; preds = %vec.epilog.vector.body544, %vec.epilog.ph542
  %index545 = phi i64 [ %vec.epilog.resume.val536, %vec.epilog.ph542 ], [ %index.next551, %vec.epilog.vector.body544 ]
  %vec.ind546 = phi <4 x i64> [ %induction, %vec.epilog.ph542 ], [ %vec.ind.next552, %vec.epilog.vector.body544 ] ; 2 uses
  %vec.phi547 = phi <4 x i64> [ %i.gv, %vec.epilog.ph542 ], [ %i.gw, %vec.epilog.vector.body544 ]
  %wide.gep548 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %vec.ind546
  %wide.gep549 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep548, i64 16
  %wide.masked.gather550 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep549, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.gw = add <4 x i64> %wide.masked.gather550, %vec.phi547 ; 2 uses
  %index.next551 = add nuw i64 %index545, 4       ; 2 uses
  %vec.ind.next552 = add <4 x i64> %vec.ind546, splat (i64 4)
  %i.gx = icmp eq i64 %index.next551, %n.vec543
  br i1 %i.gx, label %vec.epilog.middle.block553, label %vec.epilog.vector.body544, !llvm.loop !588

vec.epilog.middle.block553:                       ; preds = %vec.epilog.vector.body544
  %i.gy = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gw)
  br label %vec.epilog.scalar.ph539.preheader

vec.epilog.scalar.ph539.preheader:                ; preds = %vector.scevcheck, %iter.check538, %vec.epilog.iter.check540, %vec.epilog.middle.block553
  %indvars.iv.ph = phi i64 [ 0, %iter.check538 ], [ 0, %vector.scevcheck ], [ %n.vec509, %vec.epilog.iter.check540 ], [ %n.vec543, %vec.epilog.middle.block553 ]
  %.0134368.ph = phi i32 [ 0, %iter.check538 ], [ 0, %vector.scevcheck ], [ %10, %vec.epilog.iter.check540 ], [ %11, %vec.epilog.middle.block553 ]
  %.0135367.ph = phi i64 [ 0, %iter.check538 ], [ 0, %vector.scevcheck ], [ %i.gr, %vec.epilog.iter.check540 ], [ %i.gy, %vec.epilog.middle.block553 ]
  br label %vec.epilog.scalar.ph539

._crit_edge371:                                   ; preds = %vec.epilog.scalar.ph539, %.loopexit323
  %.1143463 = phi i1 [ %i.eo, %.loopexit323 ], [ %.1143462.a, %vec.epilog.scalar.ph539 ] ; 2 uses
  %.0135.lcssa = phi i64 [ 0, %.loopexit323 ], [ %i.io, %vec.epilog.scalar.ph539 ] ; 3 uses
  %i.gz = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !51, !align !52 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 776
  %.val220 = load ptr, ptr %i.ha, align 8         ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 784
  %.val221 = load ptr, ptr %i.hb, align 8
  %i.hc = getelementptr i8, ptr %i.el, i64 320
  %.val222 = load i32, ptr %i.hc, align 8, !tbaa !229
  %i.hd = sub i32 100, %.val222
  %i.he = zext i32 %i.hd to i64
  %i.hf = mul i64 %.0135.lcssa, %i.he
  %i.hg = udiv i64 %i.hf, 100
  %i.hh = ptrtoint ptr %.val221 to i64
  %i.hi = ptrtoint ptr %.val220 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 40
  %i.hl = add nsw i64 %i.hk, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge371, %bb.ab
  %i.hm = phi i64 [ %i.hw, %bb.ab ], [ 0, %._crit_edge371 ]
  %.0187.i = phi i32 [ %i.hv, %bb.ab ], [ 0, %._crit_edge371 ] ; 2 uses
  %.0196.i = phi i64 [ %i.hu, %bb.ab ], [ 0, %._crit_edge371 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %.val220, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !538 ; 3 uses
  %i.hq = icmp ugt i64 %i.hp, %.0135.lcssa
  br i1 %i.hq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.hr = sub i64 %.0196.i, %.0135.lcssa
  %i.hs = add i64 %i.hr, %i.hp
  %i.ht = icmp ugt i64 %i.hs, %i.hg
  br i1 %i.ht, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i
  %i.hu = add i64 %i.hp, %.0196.i
  %i.hv = add i32 %.0187.i, 1                     ; 3 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = icmp ugt i64 %i.hl, %i.hw
  br i1 %i.hx, label %.lr.ph.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, !llvm.loop !540

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit: ; preds = %bb.aa, %bb.ab, %._crit_edge371
  %.018.lcssa.i = phi i32 [ 0, %._crit_edge371 ], [ %i.hv, %bb.ab ], [ %.0187.i, %bb.aa ]
  %.val214 = load ptr, ptr %i.k, align 8, !tbaa !231
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %.val214, i64 %.2166
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !242 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !180, !range !138, !noundef !51
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = call noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288) %i.ib, i1 noundef zeroext %i.ie) ; 3 uses
  %.val194 = load ptr, ptr %i.k, align 8, !tbaa !231 ; 2 uses
  %.val195 = load ptr, ptr %i.l, align 8, !tbaa !234
  %i.ig = ptrtoint ptr %.val195 to i64
  %i.ih = ptrtoint ptr %.val194 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 40
  %i.ik = icmp eq i64 %i.ek, %i.ij
  br i1 %i.ik, label %bb.ad, label %bb.ac

vec.epilog.scalar.ph539:                          ; preds = %vec.epilog.scalar.ph539.preheader, %vec.epilog.scalar.ph539
  %indvars.iv = phi i64 [ %13, %vec.epilog.scalar.ph539 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph539.preheader ]
  %.0134368 = phi i32 [ %12, %vec.epilog.scalar.ph539 ], [ %.0134368.ph, %vec.epilog.scalar.ph539.preheader ]
  %.0135367 = phi i64 [ %i.io, %vec.epilog.scalar.ph539 ], [ %.0135367.ph, %vec.epilog.scalar.ph539.preheader ]
  %i.il = getelementptr inbounds nuw [40 x i8], ptr %.val215, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !253
  %i.io = add i64 %i.in, %.0135367                ; 2 uses
  %12 = add i32 %.0134368, 1                      ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.ip = icmp ugt i64 %i.ek, %13
  br i1 %i.ip, label %vec.epilog.scalar.ph539, label %._crit_edge371, !llvm.loop !589

bb.ac:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %.val194, i64 %i.ek
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !242
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.ir, i32 1)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  %.0133 = phi i32 [ %spec.select, %bb.ac ], [ %i.if, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit ] ; 9 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.it = load i8, ptr %i.is, align 8, !tbaa !91, !range !138, !noundef !51
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit: ; preds = %bb.ad
  %i.iv = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.iw = load i8, ptr %i.ic, align 1, !tbaa !180, !range !138, !noundef !51
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = call noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288) %i.iv, i1 noundef zeroext %i.ix)
  %i.iz = icmp sgt i32 %.0133, 0
  %i.ja = icmp eq i32 %.0133, %i.iy
  %i.jb = and i1 %i.iz, %i.ja
  br i1 %i.jb, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread, label %.critedge3.thread.thread

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread: ; preds = %bb.ad, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.jc = add i32 %i.if, 1                        ; 5 uses
  %i.jd = sext i32 %i.jc to i64                   ; 7 uses
  %i.je = icmp slt i32 %i.if, -1
  br i1 %i.je, label %.noexc, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #31
  unreachable

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread
  %.not.i.i.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.i.i, label %.thread, label %iter.check582

.thread:                                          ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.preheader

iter.check582:                                    ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.jh = mul nuw nsw i64 %i.jd, 56               ; 3 uses
  %i.ji = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #32 ; 10 uses
  store ptr %i.ji, ptr %3, align 8, !tbaa !387
  %i.jj = getelementptr inbounds nuw [56 x i8], ptr %i.ji, i64 %i.jd
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ji, i8 0, i64 %i.jh, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ji, i64 %i.jh
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !373
  store ptr %scevgep.i.i.i.i.i, ptr %i.jk, align 8, !tbaa !370
  %min.iters.check556 = icmp ult i32 %i.jc, 8
  br i1 %min.iters.check556, label %.lr.ph375.preheader, label %vector.main.loop.iter.check557

vector.main.loop.iter.check557:                   ; preds = %iter.check582
  %min.iters.check558 = icmp ult i32 %i.jc, 32
  br i1 %min.iters.check558, label %vec.epilog.ph586, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %n.vec560 = and i64 %i.jd, -32                  ; 4 uses
  %broadcast.splatinsert561 = insertelement <8 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat562 = shufflevector <8 x i32> %broadcast.splatinsert561, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat562
  %invariant.op640 = add <8 x i32> splat (i32 16), %broadcast.splat562
  %invariant.op642 = add <8 x i32> splat (i32 24), %broadcast.splat562
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph559
  %index564 = phi i64 [ 0, %vector.ph559 ], [ %index.next577, %vector.body563 ]
  %vec.ind565 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph559 ], [ %vec.ind.next578, %vector.body563 ] ; 5 uses
  %vec.ind566 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph559 ], [ %vec.ind.next579, %vector.body563 ] ; 5 uses
  %step.add567 = add nuw <8 x i64> %vec.ind565, splat (i64 8)
  %step.add.2568 = add nuw <8 x i64> %vec.ind565, splat (i64 16)
  %step.add.3569 = add nuw <8 x i64> %vec.ind565, splat (i64 24)
  %i.jm = add nsw <8 x i32> %broadcast.splat562, %vec.ind566
  %.reass = add <8 x i32> %vec.ind566, %invariant.op
  %.reass641 = add <8 x i32> %vec.ind566, %invariant.op640
  %.reass643 = add <8 x i32> %vec.ind566, %invariant.op642
  %wide.gep573 = getelementptr inbounds nuw [56 x i8], ptr %i.ji, <8 x i64> %vec.ind565
  %wide.gep574 = getelementptr inbounds nuw [56 x i8], ptr %i.ji, <8 x i64> %step.add567
  %wide.gep575 = getelementptr inbounds nuw [56 x i8], ptr %i.ji, <8 x i64> %step.add.2568
  %wide.gep576 = getelementptr inbounds nuw [56 x i8], ptr %i.ji, <8 x i64> %step.add.3569
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.jm, <8 x ptr> align 8 %wide.gep573, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass, <8 x ptr> align 8 %wide.gep574, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass641, <8 x ptr> align 8 %wide.gep575, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass643, <8 x ptr> align 8 %wide.gep576, <8 x i1> splat (i1 true)), !tbaa !354
  %index.next577 = add nuw i64 %index564, 32      ; 2 uses
  %vec.ind.next578 = add nuw <8 x i64> %vec.ind565, splat (i64 32)
  %vec.ind.next579 = add <8 x i32> %vec.ind566, splat (i32 32)
  %i.jn = icmp eq i64 %index.next577, %n.vec560
  br i1 %i.jn, label %middle.block580, label %vector.body563, !llvm.loop !590

middle.block580:                                  ; preds = %vector.body563
  %cmp.n = icmp eq i64 %n.vec560, %i.jd
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block580
  %i.jo = and i32 %i.jc, 24
  %min.epilog.iters.check585 = icmp eq i32 %i.jo, 0
  br i1 %min.epilog.iters.check585, label %.lr.ph375.preheader, label %vec.epilog.ph586, !prof !543

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check584
  %vec.epilog.resume.val581 = phi i64 [ %n.vec560, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check557 ] ; 3 uses
  %n.vec587 = and i64 %i.jd, -8                   ; 3 uses
  %broadcast.splatinsert588 = insertelement <8 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat589 = shufflevector <8 x i32> %broadcast.splatinsert588, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert590 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val581, i64 0
  %broadcast.splat591 = shufflevector <8 x i64> %broadcast.splatinsert590, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction592 = or disjoint <8 x i64> %broadcast.splat591, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.jp = trunc nsw i64 %vec.epilog.resume.val581 to i32
  %broadcast.splatinsert593 = insertelement <8 x i32> poison, i32 %i.jp, i64 0
  %broadcast.splat594 = shufflevector <8 x i32> %broadcast.splatinsert593, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction595 = or disjoint <8 x i32> %broadcast.splat594, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body596

vec.epilog.vector.body596:                        ; preds = %vec.epilog.vector.body596, %vec.epilog.ph586
  %index597 = phi i64 [ %vec.epilog.resume.val581, %vec.epilog.ph586 ], [ %index.next601, %vec.epilog.vector.body596 ]
  %vec.ind598 = phi <8 x i64> [ %induction592, %vec.epilog.ph586 ], [ %vec.ind.next602, %vec.epilog.vector.body596 ] ; 2 uses
  %vec.ind599 = phi <8 x i32> [ %induction595, %vec.epilog.ph586 ], [ %vec.ind.next603, %vec.epilog.vector.body596 ] ; 2 uses
  %i.jq = add nsw <8 x i32> %broadcast.splat589, %vec.ind599
  %wide.gep600 = getelementptr inbounds nuw [56 x i8], ptr %i.ji, <8 x i64> %vec.ind598
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.jq, <8 x ptr> align 8 %wide.gep600, <8 x i1> splat (i1 true)), !tbaa !354
  %index.next601 = add nuw i64 %index597, 8       ; 2 uses
  %vec.ind.next602 = add nuw <8 x i64> %vec.ind598, splat (i64 8)
  %vec.ind.next603 = add <8 x i32> %vec.ind599, splat (i32 8)
  %i.jr = icmp eq i64 %index.next601, %n.vec587
  br i1 %i.jr, label %vec.epilog.middle.block604, label %vec.epilog.vector.body596, !llvm.loop !591

vec.epilog.middle.block604:                       ; preds = %vec.epilog.vector.body596
  %cmp.n605 = icmp eq i64 %n.vec587, %i.jd
  br i1 %cmp.n605, label %.preheader, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block604
  %.0124373.ph = phi i64 [ 0, %iter.check582 ], [ %n.vec560, %vec.epilog.iter.check584 ], [ %n.vec587, %vec.epilog.middle.block604 ]
  br label %.lr.ph375

.preheader:                                       ; preds = %.lr.ph375, %middle.block580, %vec.epilog.middle.block604, %.thread
  %i.js = phi ptr [ %i.jg, %.thread ], [ %i.jl, %middle.block580 ], [ %i.jl, %vec.epilog.middle.block604 ], [ %i.jl, %.lr.ph375 ] ; 2 uses
  %i.jt = phi ptr [ %i.jf, %.thread ], [ %i.jk, %middle.block580 ], [ %i.jk, %vec.epilog.middle.block604 ], [ %i.jk, %.lr.ph375 ] ; 2 uses
  %i.ju = icmp ult i64 %.2166, %i.ek
  br i1 %i.ju, label %.lr.ph380, label %._crit_edge381

.lr.ph380:                                        ; preds = %.preheader
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ae

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %.0124373 = phi i64 [ %i.ka, %.lr.ph375 ], [ %.0124373.ph, %.lr.ph375.preheader ] ; 3 uses
  %i.jx = trunc i64 %.0124373 to i32
  %i.jy = add nsw i32 %i.hz, %i.jx
  %i.jz = getelementptr inbounds nuw [56 x i8], ptr %i.ji, i64 %.0124373
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !354
  %i.ka = add nuw i64 %.0124373, 1                ; 2 uses
  %exitcond392.not.a = icmp eq i64 %i.ka, %i.jd
  br i1 %exitcond392.not.a, label %.preheader, label %.lr.ph375, !llvm.loop !592

._crit_edge381:                                   ; preds = %bb.au, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !196, !nonnull !51, !align !52
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 349
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !271, !range !138, !noundef !51
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.aw, label %bb.ba

bb.ae:                                            ; preds = %.lr.ph380, %bb.au
  %.0123379 = phi i64 [ %.2166, %.lr.ph380 ], [ %i.no, %bb.au ] ; 4 uses
  %.val211 = load ptr, ptr %i.k, align 8, !tbaa !231
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %.val211, i64 %.0123379 ; 6 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !242 ; 3 uses
  %i.kh = icmp eq i32 %i.kg, 0
  %i.ki = load ptr, ptr %3, align 8, !tbaa !387   ; 4 uses
  br i1 %i.kh, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !243 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !328 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !365
  %.not.i232 = icmp eq ptr %i.kn, %i.kp
  br i1 %.not.i232, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !332
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store ptr %i.kq, ptr %i.km, align 8, !tbaa !328
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !331 ; 4 uses
end_hunk_0
