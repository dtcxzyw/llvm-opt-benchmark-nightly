Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regcomp?download=true
inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@optimize_node_left:bb.a
  %vec.epilog.resume.val865 = phi i64 [ %n.vec851, %vec.epilog.iter.check861 ], [ 0, %vector.main.loop.iter.check848 ]
  %n.vec866 = and i64 %i.rd, 8589934588           ; 4 uses
  %i.ry = getelementptr i8, ptr %.034.i332, i64 %n.vec866 ; 2 uses
  %i.rz = trunc i64 %n.vec866 to i32              ; 2 uses
  %i.sa = add i32 %.02533.i333, %i.rz             ; 2 uses
  br label %vec.epilog.vector.body867

vec.epilog.vector.body867:                        ; preds = %vec.epilog.vector.body867, %vec.epilog.ph864
  %index868 = phi i64 [ %vec.epilog.resume.val865, %vec.epilog.ph864 ], [ %index.next871, %vec.epilog.vector.body867 ] ; 3 uses
  %next.gep869 = getelementptr i8, ptr %.034.i332, i64 %index868
  %i.sb = trunc i64 %index868 to i32
  %i.sc = add i32 %.02533.i333, %i.sb
  %wide.load870 = load <4 x i8>, ptr %next.gep869, align 1, !tbaa !46
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr i8, ptr %i.j, i64 %i.sd
  store <4 x i8> %wide.load870, ptr %i.se, align 1, !tbaa !46
  %index.next871 = add nuw i64 %index868, 4       ; 2 uses
  %i.sf = icmp eq i64 %index.next871, %n.vec866
  br i1 %i.sf, label %vec.epilog.middle.block872, label %vec.epilog.vector.body867, !llvm.loop !322

vec.epilog.middle.block872:                       ; preds = %vec.epilog.vector.body867
  %cmp.n873 = icmp eq i64 %i.rd, %n.vec866
  br i1 %cmp.n873, label %.loopexit.i335, label %.lr.ph.i338.preheader

.lr.ph.i338.preheader:                            ; preds = %iter.check860, %vector.scevcheck839, %vector.memcheck846, %vec.epilog.iter.check861, %vec.epilog.middle.block872
  %.131.i339.ph = phi ptr [ %.034.i332, %iter.check860 ], [ %.034.i332, %vector.scevcheck839 ], [ %.034.i332, %vector.memcheck846 ], [ %i.ro, %vec.epilog.iter.check861 ], [ %i.ry, %vec.epilog.middle.block872 ]
  %.02430.i340.ph = phi i32 [ 0, %iter.check860 ], [ 0, %vector.scevcheck839 ], [ 0, %vector.memcheck846 ], [ %i.rp, %vec.epilog.iter.check861 ], [ %i.rz, %vec.epilog.middle.block872 ]
  %.12629.i341.ph = phi i32 [ %.02533.i333, %iter.check860 ], [ %.02533.i333, %vector.scevcheck839 ], [ %.02533.i333, %vector.memcheck846 ], [ %i.rq, %vec.epilog.iter.check861 ], [ %i.sa, %vec.epilog.middle.block872 ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph.i338.preheader, %.lr.ph.i338
  %.131.i339 = phi ptr [ %i.sg, %.lr.ph.i338 ], [ %.131.i339.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.02430.i340 = phi i32 [ %i.sl, %.lr.ph.i338 ], [ %.02430.i340.ph, %.lr.ph.i338.preheader ]
  %.12629.i341 = phi i32 [ %i.si, %.lr.ph.i338 ], [ %.12629.i341.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %i.sg = getelementptr i8, ptr %.131.i339, i64 1 ; 3 uses
  %i.sh = load i8, ptr %.131.i339, align 1, !tbaa !46
  %i.si = add i32 %.12629.i341, 1                 ; 2 uses
  %i.sj = sext i32 %.12629.i341 to i64
  %i.sk = getelementptr i8, ptr %i.j, i64 %i.sj
  store i8 %i.sh, ptr %i.sk, align 1, !tbaa !46
  %i.sl = add nuw nsw i32 %.02430.i340, 1         ; 2 uses
  %i.sm = icmp slt i32 %i.sl, %i.qt
  %i.sn = icmp ult ptr %i.sg, %i.mo
  %i.so = and i1 %i.sn, %i.sm
  br i1 %i.so, label %.lr.ph.i338, label %.loopexit.i335, !llvm.loop !323

concat_opt_exact_info_str.exit342:                ; preds = %.loopexit.i335, %bb.cc, %bb.bz
  %.025.lcssa.i330 = phi i32 [ 0, %bb.bz ], [ %.126.lcssa.i336, %.loopexit.i335 ], [ %.02533.i333, %bb.cc ]
  store i32 %.025.lcssa.i330, ptr %i.i, align 8, !tbaa !91
  store i32 1, ptr %i.h, align 4, !tbaa !346
  %.not312 = icmp eq i64 %i.mt, 0
  br i1 %.not312, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %concat_opt_exact_info_str.exit342
  %i.sp = load ptr, ptr %i.mp, align 8, !tbaa !127
  %i.sq = load ptr, ptr %i.mn, align 8, !tbaa !128
  %i.sr = load ptr, ptr %i.qa, align 8, !tbaa !80
  %i.ss = getelementptr i8, ptr %2, i64 28
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !83
  %i.su = tail call fastcc i32 @add_char_amb_opt_map_info(ptr noundef nonnull %i.s, ptr noundef %i.sp, ptr noundef %i.sq, ptr noundef %i.sr, i32 noundef %i.st) ; 2 uses
  %.not313 = icmp eq i32 %i.su, 0
  br i1 %.not313, label %.thread, label %common.ret1054

.thread:                                          ; preds = %bb.by, %bb.cd, %concat_opt_exact_info_str.exit342
  %.0263 = phi i64 [ %i.qi, %bb.by ], [ %i.mt, %bb.cd ], [ 0, %concat_opt_exact_info_str.exit342 ]
  store i64 %i.mt, ptr %1, align 8, !tbaa !94
  %i.sv = getelementptr i8, ptr %1, i64 8
  store i64 %.0263, ptr %i.sv, align 8, !tbaa !93
  %.pre687.a = load i32, ptr %i.i, align 8, !tbaa !89
  br label %bb.ce

bb.ce:                                            ; preds = %.thread, %add_char_opt_map_info.exit
  %i.sw = phi i32 [ %.pre687.a, %.thread ], [ %.025.lcssa.i, %add_char_opt_map_info.exit ]
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp eq i64 %i.mt, %i.sx
  br i1 %i.sy, label %bb.cf, label %common.ret1054

bb.cf:                                            ; preds = %bb.ce
  %i.sz = getelementptr i8, ptr %1, i64 48
  store i32 1, ptr %i.sz, align 8, !tbaa !336
  br label %common.ret1054

bb.cg:                                            ; preds = %tailrecurse
  %i.ta = getelementptr i8, ptr %.tr, i64 40
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !149
  %.not304 = icmp eq ptr %i.tb, null
  br i1 %.not304, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tc = getelementptr i8, ptr %.tr, i64 4       ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !150
  %i.te = and i32 %i.td, 1
  %.not305 = icmp eq i32 %i.te, 0
  br i1 %.not305, label %.preheader, label %bb.cj

.preheader:                                       ; preds = %bb.ch
  %i.tf = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.tg = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.th = getelementptr i8, ptr %1, i64 240       ; 4 uses
  %i.ti = load i32, ptr %i.tf, align 8, !tbaa !17
  %i.tj = and i32 %i.ti, 1
  %.not306.peel = icmp eq i32 %i.tj, 0
  br i1 %.not306.peel, label %.peel.next672.preheader.a, label %bb.ci

.peel.next672.preheader.a:                        ; preds = %bb.ci, %map_position_value.exit.i343.peel, %.preheader
  br label %.peel.next672.a

bb.ci:                                            ; preds = %.preheader
  %i.tk = load i8, ptr %i.tg, align 4, !tbaa !46
  %i.tl = icmp eq i8 %i.tk, 0
  br i1 %i.tl, label %map_position_value.exit.i343.peel, label %.peel.next672.preheader.a

map_position_value.exit.i343.peel:                ; preds = %bb.ci
  %i.tm = getelementptr i8, ptr %2, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !80
  store i8 1, ptr %i.tg, align 4, !tbaa !46
  %i.to = getelementptr i8, ptr %i.tn, i64 20
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !131
  %i.tq = icmp sgt i32 %i.tp, 1
  %spec.select = select i1 %i.tq, i32 20, i32 5
  %i.tr = load i32, ptr %i.th, align 8, !tbaa !170
  %i.ts = add i32 %i.tr, %spec.select
  store i32 %i.ts, ptr %i.th, align 8, !tbaa !170
  br label %.peel.next672.preheader.a

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.tt = getelementptr i8, ptr %2, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !80 ; 2 uses
  %i.tv = getelementptr i8, ptr %i.tu, i64 20
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !131
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr i8, ptr %i.tu, i64 16
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !130
  %i.ua = sext i32 %i.tz to i64
  store i64 %i.tx, ptr %1, align 8, !tbaa !94
  %i.ub = getelementptr i8, ptr %1, i64 8
  store i64 %i.ua, ptr %i.ub, align 8, !tbaa !93
  br label %common.ret1054

.peel.next672.a:                                  ; preds = %.peel.next672.preheader.a, %add_char_opt_map_info.exit345
  %indvars.iv667 = phi i64 [ %indvars.iv.next668, %add_char_opt_map_info.exit345 ], [ 1, %.peel.next672.preheader.a ] ; 6 uses
  %i.uc = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.ud = lshr i64 %indvars.iv667, 5
  %i.ue = and i64 %i.ud, 134217727
  %i.uf = getelementptr [4 x i8], ptr %i.tf, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !17
  %i.uh = and i32 %i.uc, 31
  %i.ui = shl nuw i32 1, %i.uh
  %i.uj = and i32 %i.ug, %i.ui
  %.not306 = icmp eq i32 %i.uj, 0
  %i.uk = load i32, ptr %i.tc, align 4, !tbaa !150
  %i.ul = and i32 %i.uk, 1
  %.not308 = icmp eq i32 %i.ul, 0
  %i.um = xor i1 %.not306, %.not308
  br i1 %i.um, label %bb.ck, label %add_char_opt_map_info.exit345

bb.ck:                                            ; preds = %.peel.next672.a
  %i.un = getelementptr i8, ptr %i.tg, i64 %indvars.iv667 ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !46
  %i.up = icmp eq i8 %i.uo, 0
  br i1 %i.up, label %bb.cl, label %add_char_opt_map_info.exit345

bb.cl:                                            ; preds = %bb.ck
  store i8 1, ptr %i.un, align 1, !tbaa !46
  %i.uq = icmp samesign ult i64 %indvars.iv667, 128
  br i1 %i.uq, label %bb.cm, label %map_position_value.exit.i343

bb.cm:                                            ; preds = %bb.cl
  %i.ur = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv667
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !96
  %i.ut = sext i16 %i.us to i32
  br label %map_position_value.exit.i343

map_position_value.exit.i343:                     ; preds = %bb.cm, %bb.cl
  %.0.i.i344 = phi i32 [ 4, %bb.cl ], [ %i.ut, %bb.cm ]
  %i.uu = load i32, ptr %i.th, align 8, !tbaa !170
  %i.uv = add i32 %i.uu, %.0.i.i344
  store i32 %i.uv, ptr %i.th, align 8, !tbaa !170
  br label %add_char_opt_map_info.exit345

add_char_opt_map_info.exit345:                    ; preds = %.peel.next672.a, %map_position_value.exit.i343, %bb.ck
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond670.not.a = icmp eq i64 %indvars.iv.next668, 256
  br i1 %exitcond670.not.a, label %.loopexit674, label %.peel.next672.a, !llvm.loop !324

.loopexit674:                                     ; preds = %add_char_opt_map_info.exit345
  store i64 1, ptr %1, align 8, !tbaa !94
  %i.uw = getelementptr i8, ptr %1, i64 8
  store i64 1, ptr %i.uw, align 8, !tbaa !93
  br label %common.ret1054

bb.cn:                                            ; preds = %tailrecurse
  %i.ux = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !80 ; 4 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 16
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !130 ; 2 uses
  %i.vb = icmp eq i32 %i.va, 1
  br i1 %i.vb, label %bb.co, label %bb.cx

bb.co:                                            ; preds = %bb.cn
  %i.vc = getelementptr i8, ptr %.tr, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !46
  %cond = icmp eq i32 %i.vd, 12
  br i1 %cond, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %bb.co
  %8 = getelementptr i8, ptr %.tr, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %.not299 = icmp eq i32 %9, 0
  %wide.trip.count = select i1 %.not299, i64 256, i64 128 ; 2 uses
  %i.ve = getelementptr i8, ptr %.tr, i64 8
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !46
  %.not300 = icmp eq i32 %i.vf, 0
  %i.vg = getelementptr i8, ptr %1, i64 244       ; 6 uses
  %i.vh = getelementptr i8, ptr %1, i64 240       ; 8 uses
  %10 = getelementptr i8, ptr %i.uy, i64 88
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = tail call i32 %11(i32 noundef 0, i32 noundef 12, ptr noundef nonnull %i.uy) #22
  %.not301.peel = icmp eq i32 %12, 0              ; 2 uses
  br i1 %.not300, label %.preheader381, label %.preheader382

.preheader382:                                    ; preds = %bb.cp
  br i1 %.not301.peel, label %13, label %.peel.next.preheader

13:                                               ; preds = %.preheader382
  %14 = load i8, ptr %i.vg, align 4, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %.preheader382.a, label %.peel.next.preheader

.preheader382.a:                                  ; preds = %13
  %16 = load ptr, ptr %i.ux, align 8, !tbaa !80
  store i8 1, ptr %i.vg, align 4, !tbaa !46
  %i.vi = getelementptr i8, ptr %16, i64 20
  %17 = load i32, ptr %i.vi, align 4, !tbaa !131
  %18 = icmp sgt i32 %17, 1
  %spec.select800 = select i1 %18, i32 20, i32 5
  %19 = load i32, ptr %i.vh, align 8, !tbaa !170
  %20 = add i32 %19, %spec.select800
  store i32 %20, ptr %i.vh, align 8, !tbaa !170
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.preheader382, %13, %.preheader382.a
  br label %.peel.next

.preheader381:                                    ; preds = %bb.cp
  br i1 %.not301.peel, label %.peel.next.preheader.a, label %bb.cq

bb.cq:                                            ; preds = %.preheader381
  %i.vj = load i8, ptr %i.vg, align 4, !tbaa !46
  %i.vk = icmp eq i8 %i.vj, 0
  br i1 %i.vk, label %map_position_value.exit.i346.peel, label %.peel.next.preheader.a

map_position_value.exit.i346.peel:                ; preds = %bb.cq
  %i.vl = load ptr, ptr %i.ux, align 8, !tbaa !80
  store i8 1, ptr %i.vg, align 4, !tbaa !46
  %i.vm = getelementptr i8, ptr %i.vl, i64 20
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !131
  %i.vo = icmp sgt i32 %i.vn, 1
  %spec.select793 = select i1 %i.vo, i32 20, i32 5
  %i.vp = load i32, ptr %i.vh, align 8, !tbaa !170
  %i.vq = add i32 %i.vp, %spec.select793
  store i32 %i.vq, ptr %i.vh, align 8, !tbaa !170
  br label %.peel.next.preheader.a

.peel.next.preheader.a:                           ; preds = %.preheader381, %bb.cq, %map_position_value.exit.i346.peel
  br label %.preheader381.a

.peel.next:                                       ; preds = %.peel.next.preheader, %add_char_opt_map_info.exit348
  %indvars.iv662 = phi i64 [ %indvars.iv.next663, %add_char_opt_map_info.exit348 ], [ 1, %.peel.next.preheader ] ; 6 uses
  %i.vr = load ptr, ptr %i.ux, align 8, !tbaa !80 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 88
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !168
  %i.vu = trunc nuw nsw i64 %indvars.iv662 to i32
  %i.vv = tail call i32 %i.vt(i32 noundef %i.vu, i32 noundef 12, ptr noundef %i.vr) #22
  %.not302 = icmp ne i32 %i.vv, 0
  %.not303 = icmp samesign ult i64 %indvars.iv662, %wide.trip.count
  %or.cond320 = select i1 %.not302, i1 %.not303, i1 false
  br i1 %or.cond320, label %add_char_opt_map_info.exit348, label %bb.cr

bb.cr:                                            ; preds = %.peel.next
  %i.vw = getelementptr i8, ptr %i.vg, i64 %indvars.iv662 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !46
  %i.vy = icmp eq i8 %i.vx, 0
  br i1 %i.vy, label %bb.cs, label %add_char_opt_map_info.exit348

bb.cs:                                            ; preds = %bb.cr
  store i8 1, ptr %i.vw, align 1, !tbaa !46
  %i.vz = icmp samesign ult i64 %indvars.iv662, 128
  br i1 %i.vz, label %bb.ct, label %map_position_value.exit.i346

bb.ct:                                            ; preds = %bb.cs
  %i.wa = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv662
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !96
  %i.wc = sext i16 %i.wb to i32
  br label %map_position_value.exit.i346

map_position_value.exit.i346:                     ; preds = %bb.ct, %bb.cs
  %.0.i.i347 = phi i32 [ 4, %bb.cs ], [ %i.wc, %bb.ct ]
  %i.wd = load i32, ptr %i.vh, align 8, !tbaa !170
  %i.we = add i32 %i.wd, %.0.i.i347
  store i32 %i.we, ptr %i.vh, align 8, !tbaa !170
  br label %add_char_opt_map_info.exit348

add_char_opt_map_info.exit348:                    ; preds = %map_position_value.exit.i346, %bb.cr, %.peel.next
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next663, 256
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !325

.preheader381.a:                                  ; preds = %.peel.next.preheader.a, %add_char_opt_map_info.exit351
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %add_char_opt_map_info.exit351 ], [ 1, %.peel.next.preheader.a ] ; 5 uses
  %i.wf = load ptr, ptr %i.ux, align 8, !tbaa !80 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wf, i64 88
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !168
  %21 = trunc nuw nsw i64 %indvars.iv666 to i32
  %i.wi = tail call i32 %i.wh(i32 noundef %21, i32 noundef 12, ptr noundef %i.wf) #22
  %.not301 = icmp eq i32 %i.wi, 0
  br i1 %.not301, label %add_char_opt_map_info.exit351, label %bb.cu

bb.cu:                                            ; preds = %.preheader381.a
  %i.wj = getelementptr i8, ptr %i.vg, i64 %indvars.iv666 ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !46
  %i.wl = icmp eq i8 %i.wk, 0
  br i1 %i.wl, label %bb.cv, label %add_char_opt_map_info.exit351

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr %i.wj, align 1, !tbaa !46
  %22 = and i64 %indvars.iv666, 128
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %bb.cw, label %map_position_value.exit.i349

bb.cw:                                            ; preds = %bb.cv
  %i.wm = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv666
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !96
  %i.wo = sext i16 %i.wn to i32
  br label %map_position_value.exit.i349

map_position_value.exit.i349:                     ; preds = %bb.cw, %bb.cv
  %.0.i.i350 = phi i32 [ 4, %bb.cv ], [ %i.wo, %bb.cw ]
  %i.wp = load i32, ptr %i.vh, align 8, !tbaa !170
  %i.wq = add i32 %i.wp, %.0.i.i350
  store i32 %i.wq, ptr %i.vh, align 8, !tbaa !170
  br label %add_char_opt_map_info.exit351

add_char_opt_map_info.exit351:                    ; preds = %map_position_value.exit.i349, %bb.cu, %.preheader381.a
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond666.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count
  br i1 %exitcond666.not, label %.loopexit, label %.preheader381.a, !llvm.loop !326

bb.cx:                                            ; preds = %bb.cn
  %i.wr = getelementptr i8, ptr %i.uy, i64 20
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !131
  %i.wt = sext i32 %i.ws to i64
  br label %.loopexit

.loopexit:                                        ; preds = %add_char_opt_map_info.exit348, %add_char_opt_map_info.exit351, %bb.co, %bb.cx
  %.0258 = phi i64 [ 1, %add_char_opt_map_info.exit351 ], [ %i.wt, %bb.cx ], [ 1, %bb.co ], [ 1, %add_char_opt_map_info.exit348 ]
  %i.wu = sext i32 %i.va to i64
  store i64 %.0258, ptr %1, align 8, !tbaa !94
  %i.wv = getelementptr i8, ptr %1, i64 8
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !93
  br label %common.ret1054

bb.cy:                                            ; preds = %tailrecurse
  %i.ww = getelementptr i8, ptr %2, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !80 ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 20
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !131
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr i8, ptr %i.wx, i64 16
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !130
  %i.xd = sext i32 %i.xc to i64
  store i64 %i.xa, ptr %1, align 8, !tbaa !94
  %i.xe = getelementptr i8, ptr %1, i64 8
  store i64 %i.xd, ptr %i.xe, align 8, !tbaa !93
  br label %common.ret1054

bb.cz:                                            ; preds = %tailrecurse
  %i.xf = getelementptr i8, ptr %.tr, i64 4
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !46 ; 4 uses
  %i.xh = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.xg)
  %i.xi = icmp eq i32 %i.xh, 1
  br i1 %i.xi, label %.split, label %common.ret1054

.split:                                           ; preds = %bb.cz
  %i.xj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.xg, i1 true)
  switch i32 %i.xj, label %common.ret1054 [
    i32 10, label %bb.db
    i32 11, label %bb.da
    i32 5, label %bb.da
    i32 4, label %bb.da
    i32 3, label %bb.da
    i32 0, label %is_left_anchor.exit.i
    i32 1, label %is_left_anchor.exit.i
    i32 2, label %is_left_anchor.exit.i
    i32 12, label %is_left_anchor.exit.i
  ]

is_left_anchor.exit.i:                            ; preds = %.split, %.split, %.split, %.split
  %i.xk = getelementptr i8, ptr %1, i64 16
  store i32 %i.xg, ptr %i.xk, align 8, !tbaa !100
  br label %common.ret1054

bb.da:                                            ; preds = %.split, %.split, %.split, %.split
  %i.xl = getelementptr i8, ptr %1, i64 20
  store i32 %i.xg, ptr %i.xl, align 4, !tbaa !101
  br label %common.ret1054

bb.db:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.xm = getelementptr i8, ptr %.tr, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !46
  %i.xo = call fastcc i32 @optimize_node_left(ptr noundef %i.xn, ptr noundef %6, ptr noundef %2) ; 2 uses
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %i.xq = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !89
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %.sink.split, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xt = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !347
  %i.xv = icmp sgt i32 %i.xu, 0
  br i1 %i.xv, label %.sink.split, label %bb.de

.sink.split:                                      ; preds = %bb.dd, %bb.dc
  %.sink794.sroa.phi = phi ptr [ %.sink794.sroa.gep, %bb.dc ], [ %.sink794.sroa.gep1025, %bb.dd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sink794.sroa.phi, i64 64, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %.sink.split, %bb.dd
  %i.xw = getelementptr i8, ptr %1, i64 176
  store i32 0, ptr %i.xw, align 8, !tbaa !348
  %i.xx = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !90
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ya = getelementptr inbounds nuw i8, ptr %6, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.ya, i64 288, i1 false), !tbaa.struct !349
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.ret1054

bb.dh:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.yb = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !84 ; 3 uses
  %i.yd = getelementptr i8, ptr %i.yc, i64 168
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !103 ; 2 uses
  %.not292 = icmp eq ptr %i.ye, null
  %i.yf = getelementptr i8, ptr %i.yc, i64 104
  %i.yg = select i1 %.not292, ptr %i.yf, ptr %i.ye ; 4 uses
  %i.yh = getelementptr i8, ptr %.tr, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !142
  %i.yj = and i32 %i.yi, 128
  %.not293 = icmp eq i32 %i.yj, 0
  br i1 %.not293, label %bb.di, label %.thread372.sink.split

bb.di:                                            ; preds = %bb.dh
  %i.yk = getelementptr i8, ptr %.tr, i64 40
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !139 ; 2 uses
  %.not294 = icmp eq ptr %i.yl, null
  %i.ym = getelementptr i8, ptr %.tr, i64 12
  %i.yn = select i1 %.not294, ptr %i.ym, ptr %i.yl ; 3 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !17
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr [8 x i8], ptr %i.yg, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !66
  %i.ys = call fastcc i32 @get_min_match_length(ptr noundef %i.yr, ptr noundef %i.c, ptr noundef nonnull %i.yc) ; 2 uses
  %.not295 = icmp eq i32 %i.ys, 0
  br i1 %.not295, label %bb.dj, label %.thread372

bb.dj:                                            ; preds = %bb.di
  %i.yt = load i32, ptr %i.yn, align 4, !tbaa !17
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr [8 x i8], ptr %i.yg, i64 %i.yu
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !66
  %i.yx = load ptr, ptr %i.yb, align 8, !tbaa !84
  %i.yy = call fastcc i32 @get_max_match_length(ptr noundef %i.yw, ptr noundef %i.d, ptr noundef %i.yx) ; 2 uses
  %.not296 = icmp eq i32 %i.yy, 0
  br i1 %.not296, label %.preheader384, label %.thread372

.preheader384:                                    ; preds = %bb.dj
  %i.yz = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !140
  %i.zb = icmp sgt i32 %i.za, 1
  br i1 %i.zb, label %.lr.ph630, label %.preheader384.._crit_edge_crit_edge

.preheader384.._crit_edge_crit_edge:              ; preds = %.preheader384
  %.pre681 = load i64, ptr %i.c, align 8, !tbaa !45
  %.pre682 = load i64, ptr %i.d, align 8, !tbaa !45
  br label %.thread372.sink.split

.lr.ph630:                                        ; preds = %.preheader384, %bb.dp
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dp ], [ 1, %.preheader384 ] ; 2 uses
  %i.zc = getelementptr [4 x i8], ptr %i.yn, i64 %indvars.iv ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !17
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr [8 x i8], ptr %i.yg, i64 %i.ze
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !66
  %i.zh = load ptr, ptr %i.yb, align 8, !tbaa !84
  %i.zi = call fastcc i32 @get_min_match_length(ptr noundef %i.zg, ptr noundef %i.e, ptr noundef %i.zh) ; 2 uses
  %.not297 = icmp eq i32 %i.zi, 0
  br i1 %.not297, label %bb.dk, label %.thread372

bb.dk:                                            ; preds = %.lr.ph630
  %i.zj = load i32, ptr %i.zc, align 4, !tbaa !17
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr [8 x i8], ptr %i.yg, i64 %i.zk
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !66
  %i.zn = load ptr, ptr %i.yb, align 8, !tbaa !84
  %i.zo = call fastcc i32 @get_max_match_length(ptr noundef %i.zm, ptr noundef %i.f, ptr noundef %i.zn) ; 2 uses
  %.not298 = icmp eq i32 %i.zo, 0
  br i1 %.not298, label %bb.dl, label %.thread372

bb.dl:                                            ; preds = %bb.dk
  %i.zp = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.zq = load i64, ptr %i.e, align 8, !tbaa !45  ; 3 uses
  %i.zr = icmp ugt i64 %i.zp, %i.zq
  br i1 %i.zr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i64 %i.zq, ptr %i.c, align 8, !tbaa !45
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.zs = phi i64 [ %i.zq, %bb.dm ], [ %i.zp, %bb.dl ]
  %i.zt = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.zu = load i64, ptr %i.f, align 8, !tbaa !45  ; 3 uses
  %i.zv = icmp ult i64 %i.zt, %i.zu
  br i1 %i.zv, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i64 %i.zu, ptr %i.d, align 8, !tbaa !45
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
end_hunk_0
begin_hunk_1_@llvm.assume
!126 = !{!"", !107, i64 0, !24, i64 8, !24, i64 16, !16, i64 24, !16, i64 28, !15, i64 32}
!127 = !{!126, !24, i64 8}
!128 = !{!126, !24, i64 16}
!129 = !{!97, !23, i64 72}
!130 = !{!97, !16, i64 16}
!131 = !{!97, !16, i64 20}
!132 = !{!"", !16, i64 0, !16, i64 4, !15, i64 8}
!133 = !{!132, !16, i64 0}
!134 = !{!132, !16, i64 4}
!135 = !{!97, !23, i64 48}
!136 = !{i64 0, i64 56, !46}
!137 = !{!126, !16, i64 28}
!138 = !{!"", !107, i64 0, !16, i64 4, !16, i64 8, !15, i64 12, !31, i64 40, !16, i64 48}
!139 = !{!138, !31, i64 40}
!140 = !{!138, !16, i64 8}
!141 = !{!54, !16, i64 36}
!142 = !{!138, !16, i64 4}
!143 = !{!119, !16, i64 4}
!144 = !{!119, !16, i64 28}
!145 = !{!116, !16, i64 12}
!146 = !{!"llvm.loop.unswitch.partial.disable"}
!147 = !{!"p1 _ZTS5_BBuf", !23, i64 0}
!148 = !{!"", !107, i64 0, !16, i64 4, !15, i64 8, !147, i64 40}
!149 = !{!148, !147, i64 40}
!150 = !{!148, !16, i64 4}
!151 = !{!"", !16, i64 0, !65, i64 8}
!152 = !{!151, !16, i64 0}
!153 = !{!151, !65, i64 8}
!154 = !{!119, !16, i64 48}
!155 = !{!116, !16, i64 16}
!156 = !{!116, !16, i64 20}
!157 = !{!113, !16, i64 16}
!158 = !{!61, !16, i64 12}
!159 = !{!33, !23, i64 80}
!160 = !{!33, !30, i64 440}
!161 = !{!"p1 _ZTS19OnigEndCallListItem", !23, i64 0}
!162 = !{!161, !161, i64 0}
!163 = !{!"OnigEndCallListItem", !161, i64 0, !23, i64 8}
!164 = !{!163, !161, i64 0}
!165 = !{!163, !23, i64 8}
!166 = !{!97, !23, i64 40}
!167 = !{!116, !30, i64 32}
!168 = !{!97, !23, i64 88}
!169 = !{!86, !16, i64 24}
!170 = !{!87, !16, i64 24}
!171 = !{!"llvm.loop.peeled.count", i32 1}
!172 = !{!116, !30, i64 40}
!173 = !{i64 5305183034911026270}
!174 = !{i64 -9181677292934710028}
!175 = !{i64 27593255635066748}
!176 = !{i64 -9048994717933253833}
!177 = !{i64 437216620000734704}
!178 = !{i64 -6826463768508616454}
!179 = !{i64 0, i64 8, !42, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 4, !17, i64 28, i64 4, !17, i64 32, i64 4, !17, i64 36, i64 4, !17, i64 40, i64 4, !17, i64 44, i64 4, !17, i64 48, i64 4, !17, i64 52, i64 4, !17, i64 56, i64 4, !17, i64 64, i64 8, !43, i64 72, i64 8, !44, i64 80, i64 8, !43, i64 88, i64 8, !43, i64 96, i64 4, !17, i64 100, i64 4, !17, i64 104, i64 4, !17, i64 108, i64 4, !17, i64 112, i64 8, !45, i64 120, i64 8, !45, i64 128, i64 4, !17, i64 136, i64 8, !42, i64 144, i64 8, !42, i64 152, i64 256, !46, i64 408, i64 8, !47, i64 416, i64 8, !47, i64 424, i64 8, !45, i64 432, i64 8, !45, i64 440, i64 8, !45, i64 448, i64 8, !41}
!180 = !{i64 -5907483826199244547}
!181 = !{i64 2918716467763643355}
!182 = !{!"p1 long", !23, i64 0}
!183 = !{!"re_registers", !16, i64 0, !16, i64 4, !182, i64 8, !182, i64 16}
!184 = !{!183, !16, i64 0}
!185 = !{i64 -9162493720001162470}
!186 = distinct !{null, null}
!187 = distinct !{!187, !105}
!188 = !{i64 4302890381092074125}
!189 = !{!"", !29, i64 0, !24, i64 8, !24, i64 16}
!190 = !{!189, !24, i64 8}
!191 = !{!54, !24, i64 184}
!192 = !{!54, !16, i64 192}
!193 = !{!54, !16, i64 88}
!194 = !{!33, !16, i64 36}
!195 = !{!88, !16, i64 16}
!196 = !{!88, !16, i64 20}
!197 = !{!33, !16, i64 108}
!198 = !{!97, !23, i64 112}
!199 = !{!86, !30, i64 0}
!200 = !{!33, !16, i64 104}
!201 = !{!33, !16, i64 128}
!202 = !{!33, !16, i64 48}
!203 = !{!54, !24, i64 56}
!204 = !{!189, !29, i64 0}
!205 = distinct !{!205, !105}
!206 = !{i64 -45946344143631043}
!207 = distinct !{!207, !105}
!208 = !{i64 5246072900309065342}
!209 = distinct !{!209, !105}
!210 = distinct !{!210, !105}
!211 = !{i64 7022731258928125129}
!212 = !{!109, !16, i64 8}
!213 = !{!109, !24, i64 16}
!214 = !{!109, !24, i64 24}
!215 = !{!54, !32, i64 72}
!216 = distinct !{!216, !105}
!217 = !{i64 -3028698148468582051}
!218 = distinct !{!218, !105}
!219 = !{i64 -9188139292566919856}
!220 = distinct !{!220, !105}
!221 = distinct !{!221, !105}
!222 = distinct !{null}
!223 = distinct !{!223, !105}
!224 = distinct !{!224, !105}
!225 = distinct !{!225, !105}
!226 = distinct !{null, null}
!227 = distinct !{!227, !105}
!228 = distinct !{!228, !105}
!229 = distinct !{!229, !105}
!230 = distinct !{!230, !105}
!231 = !{i64 -3226098039408037032}
!232 = !{!54, !16, i64 32}
!233 = !{!126, !16, i64 24}
!234 = distinct !{!234, !105}
!235 = distinct !{!235, !105}
!236 = distinct !{!236, !105}
!237 = distinct !{!237, !105}
!238 = distinct !{!238, !105, !146}
!239 = distinct !{!239, !105}
!240 = distinct !{!240, !105}
!241 = distinct !{null}
!242 = distinct !{!242, !105}
!243 = distinct !{null, null}
!244 = distinct !{!244, !105}
!245 = distinct !{null, null}
!246 = distinct !{null, null}
!247 = distinct !{null}
!248 = distinct !{null}
!249 = !{i64 -5575154921096653634}
!250 = !{!138, !16, i64 48}
!251 = !{!113, !16, i64 20}
!252 = !{i64 2215978548383785215}
!253 = distinct !{!253, !105}
!254 = distinct !{!254, !105}
!255 = !{i64 -3211172541279754411}
!256 = !{i64 -2559044867419283129}
!257 = !{i64 608032397231926479}
!258 = !{i64 561306339877038879}
!259 = !{i64 -1102892307306770647}
!260 = !{i64 -653992713180017258}
!261 = !{i64 625540913891307387}
!262 = distinct !{null}
!263 = distinct !{!263, !105}
!264 = !{i64 6539434833205886449}
!265 = !{i64 135434014004981975}
!266 = !{i64 755935328630103734}
!267 = !{i64 -4473110195201613150}
!268 = distinct !{!268, !105}
!269 = !{i64 731825858601279385}
!270 = distinct !{!270, !105}
!271 = distinct !{!271, !105}
!272 = !{i64 -4498406335058560496}
!273 = distinct !{!273, !105}
!274 = !{i64 389492533455275402}
!275 = distinct !{!275, !105}
!276 = distinct !{!276, !105}
!277 = !{i64 3935375108865839024}
!278 = distinct !{!278, !105}
!279 = distinct !{!279, !105}
!280 = distinct !{!280, !105}
!281 = !{i64 -5759445369832696702}
!282 = distinct !{!282, !105}
!283 = !{i64 4222029766126312633}
!284 = !{i64 5449248976648909549}
!285 = distinct !{!285, !105}
!286 = !{i64 3525488705418762055}
!287 = distinct !{!287, !105}
!288 = distinct !{!288, !105}
!289 = !{i64 -4640555122742675539}
!290 = !{i64 -9172572758131204871}
!291 = distinct !{!291, !105}
!292 = distinct !{!292, !105}
!293 = distinct !{!293, !105}
!294 = distinct !{!294, !105}
!295 = !{i64 1317337856175511177}
!296 = !{!97, !23, i64 32}
!297 = !{ptr @onig_is_code_in_cc}
!298 = distinct !{!298, !105}
!299 = distinct !{!299, !105}
!300 = !{i64 7817849610850104388}
!301 = !{!97, !23, i64 56}
!302 = distinct !{!302, !105}
!303 = distinct !{!303, !105}
!304 = distinct !{!304, !105}
!305 = !{i64 -4237020564855004993}
!306 = !{!116, !16, i64 48}
!307 = distinct !{!307, !105}
!308 = distinct !{!308, !105, !338, !339}
!309 = distinct !{!309, !105, !338, !339}
!310 = distinct !{!310, !105, !338}
!311 = distinct !{!311, !105, !338, !339}
!312 = distinct !{!312, !105, !338, !339}
!313 = distinct !{!313, !105, !338}
!314 = distinct !{!314, !105}
!315 = distinct !{!315, !105, !171}
!316 = distinct !{!316, !105}
!317 = distinct !{!317, !105}
!318 = distinct !{!318, !105, !338, !339}
!319 = distinct !{!319, !105, !338, !339}
!320 = distinct !{!320, !105, !338}
!321 = distinct !{!321, !105, !338, !339}
!322 = distinct !{!322, !105, !338, !339}
!323 = distinct !{!323, !105, !338}
!324 = distinct !{!324, !105, !171}
!325 = distinct !{!325, !105, !171}
!326 = distinct !{!326, !105, !171}
!327 = distinct !{!327, !105}
!328 = distinct !{!328, !105, !338, !339}
!329 = distinct !{!329, !105, !338, !339}
!330 = distinct !{!330, !105, !338}
!331 = distinct !{!331, !105}
!332 = !{i64 -8005876472347050565}
!333 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !44, i64 24, i64 4, !17, i64 28, i64 4, !17, i64 32, i64 8, !43}
!334 = !{!88, !30, i64 224}
!335 = !{!88, !16, i64 232}
!336 = !{!88, !16, i64 48}
!337 = !{!88, !16, i64 112}
!338 = !{!"llvm.loop.isvectorized", i32 1}
!339 = !{!"llvm.loop.unroll.runtime.disable"}
!340 = !{!"branch_weights", i32 4, i32 28}
!341 = !{!88, !16, i64 184}
!342 = !{!88, !30, i64 160}
!343 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 4, !17, i64 28, i64 4, !17, i64 32, i64 4, !17, i64 36, i64 24, !46}
!344 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 4, !17, i64 44, i64 4, !17, i64 48, i64 4, !17, i64 52, i64 4, !17, i64 56, i64 4, !17, i64 60, i64 24, !46, i64 88, i64 8, !45, i64 96, i64 8, !45, i64 104, i64 4, !17, i64 108, i64 4, !17, i64 112, i64 4, !17, i64 116, i64 4, !17, i64 120, i64 4, !17, i64 124, i64 24, !46, i64 152, i64 8, !45, i64 160, i64 8, !45, i64 168, i64 4, !17, i64 172, i64 4, !17, i64 176, i64 4, !17, i64 180, i64 4, !17, i64 184, i64 4, !17, i64 188, i64 24, !46, i64 216, i64 8, !45, i64 224, i64 8, !45, i64 232, i64 4, !17, i64 236, i64 4, !17, i64 240, i64 4, !17, i64 244, i64 256, !46}
!345 = !{!87, !30, i64 8}
!346 = !{!88, !16, i64 52}
!347 = !{!88, !16, i64 120}
!348 = !{!88, !16, i64 176}
!349 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 4, !17, i64 28, i64 256, !46}
!350 = !{!79, !30, i64 8}
!351 = !{!88, !30, i64 0}
!352 = !{!116, !16, i64 52}
!353 = !{i64 4788613414697262050}
!354 = distinct !{!354, !105}
!355 = !{i64 963694050551165307}
!356 = distinct !{!356, !105}
!357 = distinct !{!357, !105}
!358 = distinct !{!358, !105}
!359 = !{i64 -3936391636050139767}
!360 = distinct !{!360, !105}
!361 = distinct !{!361, !105}
!362 = !{i64 1955411080668709558}
!363 = distinct !{!363, !105}
!364 = distinct !{!364, !105}
!365 = distinct !{!365, !105}
!366 = distinct !{!366, !105}
!367 = distinct !{!367, !370}
!368 = distinct !{!368, !105}
!369 = !{i64 3515959759978290996}
!370 = !{!"llvm.loop.unroll.disable"}
!371 = distinct !{!371, !105}
!372 = distinct !{!372, !105}
!373 = distinct !{!373, !105}
!374 = distinct !{!374, !105, !146}
!375 = distinct !{!375, !105, !171}
!376 = distinct !{!376, !105, !146}
!377 = distinct !{null}
!378 = distinct !{null, null}
!379 = distinct !{null}
!380 = distinct !{null}
!381 = !{i64 -8471877711195185756}
!382 = !{i64 -2506470517036963056}
!383 = distinct !{!383, !105}
!384 = !{i64 2361119262067391901}
!385 = !{i64 -6240222916701128820}
!386 = !{i64 -6552848360508727428}
!387 = !{i64 5371558451885372517}
!388 = !{i64 -4428852637279326914}
!389 = !{i64 6784067753556604952}
!390 = !{i64 244646772341457089}
!391 = !{i64 2335679048809759721}
end_hunk_1
