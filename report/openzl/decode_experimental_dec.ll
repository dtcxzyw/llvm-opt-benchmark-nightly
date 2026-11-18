Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_experimental_dec?download=true
inline.NumInlined: 142
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ZS_experimentalDecoder_decompress:bb.a
  br label %ZS_rep_update.exit361

bb.bz:                                            ; preds = %bb.bx, %.thread.i363
  %i.vn = phi i32 [ %.pre804, %.thread.i363 ], [ %.pre805, %bb.bx ] ; 2 uses
  %.sroa.0437.2 = phi i32 [ %i.vc, %.thread.i363 ], [ %.sroa.0437.1, %bb.bx ] ; 2 uses
  %i.vo = phi <2 x i32> [ %i.vk, %.thread.i363 ], [ %i.vm, %bb.bx ] ; 2 uses
  %i.vp = icmp eq i32 %i.nh, %i.vn
  %.sroa.19453.12.copyload455 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.vp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.23458.12.copyload460 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.cb:                                            ; preds = %bb.bz
  %i.vq = icmp eq i32 %i.nh, %.sroa.19453.12.copyload455
  %i.vr = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select761 = select i1 %i.vq, i32 %i.vr, i32 %.sroa.19453.12.copyload455
  br label %ZS_rep_update.exit361

ZS_rep_update.exit361:                            ; preds = %bb.cb, %bb.bt, %bb.ca, %bb.by, %bb.bs
  %.sroa.12450.0 = phi i32 [ %.pre805, %bb.by ], [ %i.nh, %bb.bs ], [ %i.nh, %bb.cb ], [ %i.nh, %bb.ca ], [ %i.nh, %bb.bt ]
  %.sroa.0437.0 = phi i32 [ %.sroa.0437.1, %bb.by ], [ %.sroa.0437.0.copyload438, %bb.bs ], [ %.sroa.0437.2, %bb.cb ], [ %.sroa.0437.2, %bb.ca ], [ %.sroa.0437.0.copyload438, %bb.bt ]
  %.sroa.19453.0 = phi i32 [ %.sroa.19453.12.copyload457, %bb.by ], [ %.sroa.19453.12.copyload, %bb.bs ], [ %i.vn, %bb.cb ], [ %.sroa.19453.12.copyload455, %bb.ca ], [ %i.uw, %bb.bt ]
  %.sroa.23458.0 = phi i32 [ %.sroa.23458.12.copyload462, %bb.by ], [ %.sroa.23458.12.copyload, %bb.bs ], [ %spec.select761, %bb.cb ], [ %.sroa.23458.12.copyload460, %bb.ca ], [ %spec.select760, %bb.bt ]
  %i.vs = phi i32 [ %i.vc, %bb.by ], [ %i.ut, %bb.bs ], [ %i.vc, %bb.cb ], [ %i.vc, %bb.ca ], [ %i.ut, %bb.bt ]
  %i.vt = phi <2 x i32> [ %i.vm, %bb.by ], [ %i.uv, %bb.bs ], [ %i.vo, %bb.cb ], [ %i.vo, %bb.ca ], [ %i.uv, %bb.bt ]
  store i32 %.sroa.0437.0, ptr %5, align 8
  store <2 x i32> %i.vt, ptr %i.my, align 4
  store i32 %.sroa.12450.0, ptr %i.mz, align 4
  store i32 %.sroa.19453.0, ptr %.sroa.19453.12..sroa_idx456, align 8
  store i32 %.sroa.23458.0, ptr %.sroa.23458.12..sroa_idx461, align 4
  %i.vu = zext i32 %i.vs to i64
  %i.vv = add i32 %i.nh, 3
  br label %bb.cc

bb.cc:                                            ; preds = %ZS_rep_update.exit361, %bb.bq
  %.sroa.2.0.extract.shift.pn.i285 = phi i64 [ %.sroa.047.4.insert.ext, %bb.bq ], [ %i.vu, %ZS_rep_update.exit361 ] ; 6 uses
  %.0152.i286 = phi i32 [ %i.up, %bb.bq ], [ %i.vv, %ZS_rep_update.exit361 ] ; 6 uses
  %.pn.i287 = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i285
  %.0154.i288 = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 %.pn.i287 ; 15 uses
  %i.vw = zext i32 %.0152.i286 to i64             ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %i.vw ; 5 uses
  %i.vy = icmp ugt ptr %i.vx, %i.nb
  br i1 %i.vy, label %bb.cd, label %bb.ce, !prof !22

bb.cd:                                            ; preds = %bb.cc
  %i.vz = icmp ugt ptr %i.vx, %i.c
  br i1 %i.vz, label %ZS_execExperimentalSequence.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.cd
  %.not771 = icmp eq i32 %.0152.i286, 0
  br i1 %.not771, label %ZS_wildcopy.exit318, label %iter.check1096

iter.check1096:                                   ; preds = %.preheader
  %i.wa = add nuw i64 %.0147.i284.lcssa1077, %i.vw
  %i.wb = add i64 %.0147.i284.lcssa1077, 1
  %umax1078 = call i64 @llvm.umax.i64(i64 %i.wa, i64 %i.wb)
  %i.wc = sub i64 %umax1078, %.0147.i284.lcssa1077 ; 7 uses
  %min.iters.check1080 = icmp ult i64 %i.wc, 8
  %i.wd = add nsw i64 %.sroa.2.0.extract.shift.pn.i285, -1
  %diff.check1082 = icmp ult i64 %i.wd, 31
  %or.cond1249 = select i1 %min.iters.check1080, i1 true, i1 %diff.check1082
  br i1 %or.cond1249, label %.lr.ph750.preheader, label %vector.main.loop.iter.check1083

vector.main.loop.iter.check1083:                  ; preds = %iter.check1096
  %min.iters.check1084 = icmp ult i64 %i.wc, 32
  br i1 %min.iters.check1084, label %vec.epilog.ph1100, label %vector.ph1085

vector.ph1085:                                    ; preds = %vector.main.loop.iter.check1083
  %i.we = and i64 %i.wc, 24
  %n.vec1086 = and i64 %i.wc, -32                 ; 5 uses
  %i.wf = getelementptr i8, ptr %.0154.i288, i64 %n.vec1086
  %i.wg = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1086
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.ph1085, %vector.body1087
  %index1088 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1093, %vector.body1087 ] ; 3 uses
  %next.gep1089 = getelementptr i8, ptr %.0154.i288, i64 %index1088 ; 2 uses
  %next.gep1090 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1088 ; 2 uses
  %i.wh = getelementptr i8, ptr %next.gep1089, i64 16
  %wide.load1091 = load <16 x i8>, ptr %next.gep1089, align 1, !tbaa !19
  %wide.load1092 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !19
  %i.wi = getelementptr i8, ptr %next.gep1090, i64 16
  store <16 x i8> %wide.load1091, ptr %next.gep1090, align 1, !tbaa !19
  store <16 x i8> %wide.load1092, ptr %i.wi, align 1, !tbaa !19
  %index.next1093 = add nuw i64 %index1088, 32    ; 2 uses
  %i.wj = icmp eq i64 %index.next1093, %n.vec1086
  br i1 %i.wj, label %middle.block1094, label %vector.body1087, !llvm.loop !67

middle.block1094:                                 ; preds = %vector.body1087
  %cmp.n1095 = icmp eq i64 %i.wc, %n.vec1086
  br i1 %cmp.n1095, label %ZS_wildcopy.exit318, label %vec.epilog.iter.check1097

vec.epilog.iter.check1097:                        ; preds = %middle.block1094
  %min.epilog.iters.check1099 = icmp eq i64 %i.we, 0
  br i1 %min.epilog.iters.check1099, label %.lr.ph750.preheader, label %vec.epilog.ph1100, !prof !98

vec.epilog.ph1100:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1097
  %vec.epilog.resume.val1101 = phi i64 [ %n.vec1086, %vec.epilog.iter.check1097 ], [ 0, %vector.main.loop.iter.check1083 ]
  %n.vec1102 = and i64 %i.wc, -8                  ; 4 uses
  %i.wk = getelementptr i8, ptr %.0154.i288, i64 %n.vec1102
  %i.wl = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1102
  br label %vec.epilog.vector.body1103

vec.epilog.vector.body1103:                       ; preds = %vec.epilog.vector.body1103, %vec.epilog.ph1100
  %index1104 = phi i64 [ %vec.epilog.resume.val1101, %vec.epilog.ph1100 ], [ %index.next1108, %vec.epilog.vector.body1103 ] ; 3 uses
  %next.gep1105 = getelementptr i8, ptr %.0154.i288, i64 %index1104
  %next.gep1106 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1104
  %wide.load1107 = load <8 x i8>, ptr %next.gep1105, align 1, !tbaa !19
  store <8 x i8> %wide.load1107, ptr %next.gep1106, align 1, !tbaa !19
  %index.next1108 = add nuw i64 %index1104, 8     ; 2 uses
  %i.wm = icmp eq i64 %index.next1108, %n.vec1102
  br i1 %i.wm, label %vec.epilog.middle.block1109, label %vec.epilog.vector.body1103, !llvm.loop !68

vec.epilog.middle.block1109:                      ; preds = %vec.epilog.vector.body1103
  %cmp.n1110 = icmp eq i64 %i.wc, %n.vec1102
  br i1 %cmp.n1110, label %ZS_wildcopy.exit318, label %.lr.ph750.preheader

.lr.ph750.preheader:                              ; preds = %iter.check1096, %vec.epilog.iter.check1097, %vec.epilog.middle.block1109
  %.0148.i292749.ph = phi ptr [ %.0154.i288, %iter.check1096 ], [ %i.wf, %vec.epilog.iter.check1097 ], [ %i.wk, %vec.epilog.middle.block1109 ]
  %.0149.i291748.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1096 ], [ %i.wg, %vec.epilog.iter.check1097 ], [ %i.wl, %vec.epilog.middle.block1109 ]
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750.preheader, %.lr.ph750
  %.0148.i292749 = phi ptr [ %i.wn, %.lr.ph750 ], [ %.0148.i292749.ph, %.lr.ph750.preheader ] ; 2 uses
  %.0149.i291748 = phi ptr [ %i.wp, %.lr.ph750 ], [ %.0149.i291748.ph, %.lr.ph750.preheader ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.0148.i292749, i64 1
  %i.wo = load i8, ptr %.0148.i292749, align 1, !tbaa !19
  %i.wp = getelementptr inbounds nuw i8, ptr %.0149.i291748, i64 1 ; 2 uses
  store i8 %i.wo, ptr %.0149.i291748, align 1, !tbaa !19
  %i.wq = icmp ult ptr %i.wp, %i.vx
  br i1 %i.wq, label %.lr.ph750, label %ZS_wildcopy.exit318, !llvm.loop !69

bb.ce:                                            ; preds = %bb.cc
  %i.wr = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 16
  br i1 %i.wr, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ws = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 8
  br i1 %i.ws, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !29
  %i.wv = load i8, ptr %.0154.i288, align 1, !tbaa !19
  store i8 %i.wv, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.ww = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 1
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !19
  %i.wy = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !19
  %i.wz = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 2
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !19
  %i.xb = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !19
  %i.xc = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 3
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !19
  %i.xe = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !19
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !29
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %.0154.i288, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val344 = load i32, ptr %i.xi, align 1
  store i32 %.val344, ptr %i.xj, align 1
  %i.xk = sext i32 %i.wu to i64
  %i.xl = sub nsw i64 0, %i.xk
  %i.xm = getelementptr inbounds i8, ptr %i.xi, i64 %i.xl
  br label %ZS_overlapCopy8.exit332

bb.ch:                                            ; preds = %bb.cf
  %.val348 = load i64, ptr %.0154.i288, align 1
  store i64 %.val348, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit332

ZS_overlapCopy8.exit332:                          ; preds = %bb.cg, %bb.ch
  %.2617 = phi ptr [ %i.xm, %bb.cg ], [ %.0154.i288, %bb.ch ] ; 9 uses
  %.not12.i317 = icmp ugt i32 %.0152.i286, 8
  br i1 %.not12.i317, label %.preheader665.preheader, label %ZS_wildcopy.exit318

.preheader665.preheader:                          ; preds = %ZS_overlapCopy8.exit332
  %i.xn = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 8 uses
  %i.xo = add nuw i64 %.0147.i284.lcssa1077, %i.vw
  %i.xp = add i64 %.0147.i284.lcssa1077, 24
  %i.xq = call i64 @llvm.umax.i64(i64 %i.xo, i64 %i.xp)
  %i.xr = add i64 %i.xq, -9
  %i.xs = sub i64 %i.xr, %.0147.i284.lcssa1077    ; 3 uses
  %i.xt = lshr i64 %i.xs, 4
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 2 uses
  %min.iters.check1144 = icmp ult i64 %i.xs, 368
  br i1 %min.iters.check1144, label %.preheader665.preheader1252, label %vector.memcheck1145

vector.memcheck1145:                              ; preds = %.preheader665.preheader
  %i.xv = and i64 %i.xs, -16                      ; 2 uses
  %i.xw = add i64 %i.xv, 16                       ; 2 uses
  %i.xx = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.xw ; 3 uses
  %i.xy = getelementptr i8, ptr %.0147.i284.lcssa, i64 16 ; 3 uses
  %i.xz = add i64 %i.xv, 24                       ; 2 uses
  %i.ya = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.xz ; 3 uses
  %11 = getelementptr i8, ptr %.2617, i64 8       ; 2 uses
  %12 = getelementptr i8, ptr %.2617, i64 %i.xw   ; 2 uses
  %i.yb = getelementptr i8, ptr %.2617, i64 16    ; 2 uses
  %i.yc = getelementptr i8, ptr %.2617, i64 %i.xz ; 2 uses
  %bound01146.a = icmp ult ptr %i.xn, %i.ya
  %bound11147.a = icmp ult ptr %i.xy, %i.xx
  %found.conflict1148.a = and i1 %bound01146.a, %bound11147.a
  %bound01149 = icmp ult ptr %i.xn, %12
  %bound11150 = icmp ult ptr %11, %i.xx
  %found.conflict1151 = and i1 %bound01149, %bound11150
  %conflict.rdx1152 = or i1 %found.conflict1148.a, %found.conflict1151
  %bound01153 = icmp ult ptr %i.xn, %i.yc
  %bound11154 = icmp ult ptr %i.yb, %i.xx
  %found.conflict1155 = and i1 %bound01153, %bound11154
  %conflict.rdx1156 = or i1 %conflict.rdx1152, %found.conflict1155
  %bound01157 = icmp ult ptr %i.xy, %12
  %bound11158 = icmp ult ptr %11, %i.ya
  %found.conflict1159 = and i1 %bound01157, %bound11158
  %conflict.rdx1160 = or i1 %conflict.rdx1156, %found.conflict1159
  %bound01161 = icmp ult ptr %i.xy, %i.yc
  %bound11162 = icmp ult ptr %i.yb, %i.ya
  %found.conflict1163 = and i1 %bound01161, %bound11162
  %conflict.rdx1164 = or i1 %conflict.rdx1160, %found.conflict1163
  br i1 %conflict.rdx1164, label %.preheader665.preheader1252, label %vector.ph1165

vector.ph1165:                                    ; preds = %vector.memcheck1145
  %n.vec1166 = and i64 %i.xu, 2305843009213693950 ; 3 uses
  %i.yd = shl i64 %n.vec1166, 4                   ; 2 uses
  %i.ye = getelementptr i8, ptr %i.xn, i64 %i.yd
  %i.yf = getelementptr i8, ptr %.2617, i64 %i.yd
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1175, %vector.body1167 ] ; 2 uses
  %i.yg = shl i64 %index1168, 4                   ; 3 uses
  %i.yh = or disjoint i64 %i.yg, 16               ; 2 uses
  %next.gep1169 = getelementptr i8, ptr %i.xn, i64 %i.yg
  %next.gep1170 = getelementptr i8, ptr %i.xn, i64 %i.yh
  %next.gep1171 = getelementptr i8, ptr %.2617, i64 %i.yg
  %next.gep1172 = getelementptr i8, ptr %.2617, i64 %i.yh
  %i.yi = getelementptr inbounds nuw i8, ptr %next.gep1171, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %next.gep1172, i64 8
  %wide.load1173 = load <2 x i64>, ptr %i.yi, align 1
  %wide.load1174 = load <2 x i64>, ptr %i.yj, align 1
  store <2 x i64> %wide.load1173, ptr %next.gep1169, align 1
  store <2 x i64> %wide.load1174, ptr %next.gep1170, align 1
  %index.next1175 = add nuw i64 %index1168, 2     ; 2 uses
  %i.yk = icmp eq i64 %index.next1175, %n.vec1166
  br i1 %i.yk, label %middle.block1176, label %vector.body1167, !llvm.loop !70

middle.block1176:                                 ; preds = %vector.body1167
  %cmp.n1177 = icmp eq i64 %i.xu, %n.vec1166
  br i1 %cmp.n1177, label %ZS_wildcopy.exit318, label %.preheader665.preheader1252

.preheader665.preheader1252:                      ; preds = %vector.memcheck1145, %.preheader665.preheader, %middle.block1176
  %.1619.ph = phi ptr [ %i.xn, %vector.memcheck1145 ], [ %i.xn, %.preheader665.preheader ], [ %i.ye, %middle.block1176 ]
  %.2617.pn.ph = phi ptr [ %.2617, %vector.memcheck1145 ], [ %.2617, %.preheader665.preheader ], [ %i.yf, %middle.block1176 ]
  br label %.preheader665

.preheader665:                                    ; preds = %.preheader665.preheader1252, %.preheader665
  %.1619 = phi ptr [ %i.yp, %.preheader665 ], [ %.1619.ph, %.preheader665.preheader1252 ] ; 3 uses
  %.2617.pn = phi ptr [ %i.yn, %.preheader665 ], [ %.2617.pn.ph, %.preheader665.preheader1252 ] ; 2 uses
  %.1616 = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 8
  %i.yl = load i64, ptr %.1616, align 1
  store i64 %i.yl, ptr %.1619, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.1619, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 16 ; 2 uses
  %i.yo = load i64, ptr %i.yn, align 1
  store i64 %i.yo, ptr %i.ym, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.1619, i64 16 ; 2 uses
  %i.yq = icmp ult ptr %i.yp, %i.vx
  br i1 %i.yq, label %.preheader665, label %ZS_wildcopy.exit318, !llvm.loop !71

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.0154.i288, i64 16, i1 false)
  %.not.i316 = icmp ugt i32 %.0152.i286, 16
  br i1 %.not.i316, label %.preheader667.preheader, label %ZS_wildcopy.exit318

.preheader667.preheader:                          ; preds = %bb.ci
  %i.yr = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader667

.preheader667:                                    ; preds = %.preheader667.preheader, %.preheader667
  %.0618 = phi ptr [ %i.yu, %.preheader667 ], [ %i.yr, %.preheader667.preheader ] ; 3 uses
  %.0154.i288.pn = phi ptr [ %i.yt, %.preheader667 ], [ %.0154.i288, %.preheader667.preheader ] ; 2 uses
  %.0615 = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0618, ptr noundef nonnull align 1 dereferenceable(16) %.0615, i64 16, i1 false)
  %i.ys = getelementptr inbounds nuw i8, ptr %.0618, i64 16
  %i.yt = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ys, ptr noundef nonnull align 1 dereferenceable(16) %i.yt, i64 16, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %.0618, i64 32 ; 2 uses
  %i.yv = icmp ult ptr %i.yu, %i.vx
  br i1 %i.yv, label %.preheader667, label %ZS_wildcopy.exit318, !llvm.loop !66

ZS_wildcopy.exit318:                              ; preds = %.preheader667, %.preheader665, %.lr.ph750, %middle.block1176, %middle.block1094, %vec.epilog.middle.block1109, %.preheader, %bb.ci, %ZS_overlapCopy8.exit332
  %i.yw = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i365 = load i16, ptr %i.yw, align 1
  %i.yx = load ptr, ptr %i.mw, align 8, !tbaa !93
  %i.yy = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = trunc i64 %i.za to i32                  ; 2 uses
  %i.zc = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.zd = mul i16 %.val.i365, -22595
  %i.ze = and i16 %i.zd, -16
  %i.zf = zext i16 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zf ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 4 ; 2 uses
  %i.zi = load i16, ptr %i.zh, align 4, !tbaa !42
  %i.zj = add i16 %i.zi, 15
  %i.zk = and i16 %i.zj, 15                       ; 2 uses
  store i16 %i.zk, ptr %i.zh, align 4, !tbaa !42
  %i.zl = zext nneg i16 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zl ; 2 uses
  store i32 %i.zb, ptr %i.zm, align 4, !tbaa !43
  %i.zn = call i32 @llvm.umin.i32(i32 %.0152.i286, i32 255)
  %i.zo = trunc nuw i32 %i.zn to i8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 6
  store i8 %i.zo, ptr %i.zp, align 2, !tbaa !44
  %i.zq = load i8, ptr %.0154.i288, align 1, !tbaa !19
  %i.zr = zext i8 %i.zq to i64
  %i.zs = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -1
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !19
  %i.zu = zext i8 %i.zt to i64
  %i.zv = shl nuw nsw i64 %i.zr, 8
  %i.zw = or disjoint i64 %i.zv, %i.zu
  %i.zx = add i32 %i.zb, 1
  %i.zy = add i32 %.0152.i286, -1
  %i.zz = mul nuw nsw i64 %i.zw, 42941
  %i.aaa = and i64 %i.zz, 65520
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.aaa ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4 ; 2 uses
  %i.aad = load i16, ptr %i.aac, align 4, !tbaa !42
  %i.aae = add i16 %i.aad, 15
  %i.aaf = and i16 %i.aae, 15                     ; 2 uses
  store i16 %i.aaf, ptr %i.aac, align 4, !tbaa !42
  %i.aag = zext nneg i16 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.aag ; 2 uses
  store i32 %i.zx, ptr %i.aah, align 4, !tbaa !43
  %i.aai = call i32 @llvm.umin.i32(i32 %i.zy, i32 255)
  %i.aaj = trunc nuw i32 %i.aai to i8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 6
  store i8 %i.aaj, ptr %i.aak, align 2, !tbaa !44
  br label %ZS_execExperimentalSequence2.exit302

ZS_execExperimentalSequence2.exit302:             ; preds = %.preheader672, %.preheader670, %.lr.ph747, %middle.block1243, %middle.block1198, %vec.epilog.middle.block1213, %.preheader669, %ZS_wildcopy.exit318, %ZS_overlapCopy8.exit333, %bb.bo
  %.1153.i289 = phi i64 [ %i.vw, %ZS_wildcopy.exit318 ], [ 0, %.preheader669 ], [ %.sroa.2.0.insert.ext.i, %ZS_overlapCopy8.exit333 ], [ %.sroa.2.0.insert.ext.i, %middle.block1243 ], [ %.sroa.2.0.insert.ext.i, %bb.bo ], [ %.sroa.2.0.insert.ext.i, %middle.block1198 ], [ %.sroa.2.0.insert.ext.i, %.lr.ph747 ], [ %.sroa.2.0.insert.ext.i, %vec.epilog.middle.block1213 ], [ %.sroa.2.0.insert.ext.i, %.preheader670 ], [ %.sroa.2.0.insert.ext.i, %.preheader672 ]
  %i.aal = add nuw nsw i64 %.1153.i289, %.sroa.047.0.insert.ext ; 2 uses
  %i.aam = icmp eq i64 %i.aal, 0
  br i1 %i.aam, label %ZS_execExperimentalSequence.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %ZS_execExperimentalSequence2.exit302
  %i.aan = getelementptr inbounds nuw i8, ptr %.2752, i64 %i.aal ; 2 uses
  %i.aao = add nuw nsw i64 %.1240751, 1           ; 2 uses
  %exitcond798.not = icmp eq i64 %i.aao, %i.ca
  br i1 %exitcond798.not, label %.loopexit676, label %bb.bd, !llvm.loop !72

bb.ck:                                            ; preds = %.lr.ph734, %bb.dr
  %.4733 = phi ptr [ %.0237.lcssa, %.lr.ph734 ], [ %i.aoe, %bb.dr ] ; 9 uses
  %.2241732 = phi i64 [ %.0239.lcssa, %.lr.ph734 ], [ %i.aof, %bb.dr ] ; 5 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.2241732
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !29 ; 5 uses
  %.sroa.043.0.insert.ext = zext i32 %i.aaq to i64 ; 11 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.2241732
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !29 ; 7 uses
  %.sroa.043.4.insert.ext = zext i32 %i.aas to i64 ; 3 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.2241732
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !29 ; 13 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.2241732
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !19
  %i.aax = ptrtoint ptr %.4733 to i64
  %i.aay = sub i64 %i.bj, %i.aax
  %i.aaz = icmp ult i64 %i.aay, %.sroa.043.0.insert.ext
  br i1 %i.aaz, label %ZS_execExperimentalSequence.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aba = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.abb = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = icmp ult i64 %i.abc, %.sroa.043.0.insert.ext
  br i1 %i.abd, label %ZS_execExperimentalSequence.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abe = getelementptr inbounds nuw i8, ptr %.4733, i64 %.sroa.043.0.insert.ext ; 2 uses
  %i.abf = icmp ugt ptr %i.abe, %i.mp
  %.pre803 = load ptr, ptr %i.co, align 8, !tbaa !26 ; 4 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.pre803, i64 %.sroa.043.0.insert.ext
  %i.abh = load ptr, ptr %i.cr, align 8
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -32
  %i.abj = icmp ugt ptr %i.abg, %i.abi
  %or.cond881 = select i1 %i.abf, i1 true, i1 %i.abj, !prof !101
  br i1 %or.cond881, label %.critedge174.i, label %bb.cn, !prof !101

.critedge174.i:                                   ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4733, ptr align 1 %.pre803, i64 %.sroa.043.0.insert.ext, i1 false)
  br label %ZS_wildcopy.exit330

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.4733, ptr noundef nonnull align 1 dereferenceable(16) %.pre803, i64 16, i1 false)
  %.not.i328 = icmp ugt i32 %i.aaq, 16
  br i1 %.not.i328, label %.preheader688.preheader, label %ZS_wildcopy.exit330

.preheader688.preheader:                          ; preds = %bb.cn
  %i.abk = getelementptr inbounds nuw i8, ptr %.4733, i64 16
  br label %.preheader688

.preheader688:                                    ; preds = %.preheader688.preheader, %.preheader688
  %.0604 = phi ptr [ %i.abn, %.preheader688 ], [ %i.abk, %.preheader688.preheader ] ; 3 uses
  %.pn = phi ptr [ %i.abm, %.preheader688 ], [ %.pre803, %.preheader688.preheader ] ; 2 uses
  %.0603 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0604, ptr noundef nonnull align 1 dereferenceable(16) %.0603, i64 16, i1 false)
  %i.abl = getelementptr inbounds nuw i8, ptr %.0604, i64 16
  %i.abm = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abl, ptr noundef nonnull align 1 dereferenceable(16) %i.abm, i64 16, i1 false)
  %i.abn = getelementptr inbounds nuw i8, ptr %.0604, i64 32 ; 2 uses
  %i.abo = icmp ult ptr %i.abn, %i.abe
  br i1 %i.abo, label %.preheader688, label %ZS_wildcopy.exit330.thread, !llvm.loop !66

ZS_wildcopy.exit330.thread:                       ; preds = %.preheader688
  %i.abp = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.sroa.043.0.insert.ext
end_hunk_0
begin_hunk_1_@ZS_experimentalDecoder_decompress:bb.a
  br label %ZS_rep_update.exit371

bb.dh:                                            ; preds = %bb.df, %.thread.i373
  %.sroa.0403.2 = phi i32 [ %i.ait, %.thread.i373 ], [ %.sroa.0403.1, %bb.df ] ; 2 uses
  %i.aje = phi <2 x i32> [ %i.ajb, %.thread.i373 ], [ %i.ajd, %bb.df ] ; 2 uses
  %i.ajf = load i32, ptr %i.mt, align 4           ; 2 uses
  %i.ajg = icmp eq i32 %i.aau, %i.ajf
  %.sroa.19419.12.copyload421 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.ajg, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.sroa.23424.12.copyload426 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dj:                                            ; preds = %bb.dh
  %i.ajh = icmp eq i32 %i.aau, %.sroa.19419.12.copyload421
  %i.aji = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select763 = select i1 %i.ajh, i32 %i.aji, i32 %.sroa.19419.12.copyload421
  br label %ZS_rep_update.exit371

ZS_rep_update.exit371:                            ; preds = %bb.dj, %bb.db, %bb.di, %bb.dg, %bb.da
  %.sroa.23424.0 = phi i32 [ %.sroa.23424.12.copyload428, %bb.dg ], [ %.sroa.23424.12.copyload, %bb.da ], [ %spec.select763, %bb.dj ], [ %.sroa.23424.12.copyload426, %bb.di ], [ %spec.select762, %bb.db ]
  %.sroa.19419.0 = phi i32 [ %.sroa.19419.12.copyload423, %bb.dg ], [ %.sroa.19419.12.copyload, %bb.da ], [ %i.ajf, %bb.dj ], [ %.sroa.19419.12.copyload421, %bb.di ], [ %i.ain, %bb.db ]
  %.sroa.12416.0 = phi i32 [ %.sroa.12416.12.copyload418, %bb.dg ], [ %i.aau, %bb.da ], [ %i.aau, %bb.dj ], [ %i.aau, %bb.di ], [ %i.aau, %bb.db ]
  %.sroa.0403.0 = phi i32 [ %.sroa.0403.1, %bb.dg ], [ %.sroa.0403.0.copyload404, %bb.da ], [ %.sroa.0403.2, %bb.dj ], [ %.sroa.0403.2, %bb.di ], [ %.sroa.0403.0.copyload404, %bb.db ]
  %i.ajj = phi i32 [ %i.ait, %bb.dg ], [ %i.aik, %bb.da ], [ %i.ait, %bb.dj ], [ %i.ait, %bb.di ], [ %i.aik, %bb.db ]
  %i.ajk = phi <2 x i32> [ %i.ajd, %bb.dg ], [ %i.aim, %bb.da ], [ %i.aje, %bb.dj ], [ %i.aje, %bb.di ], [ %i.aim, %bb.db ]
  store i32 %.sroa.0403.0, ptr %5, align 8
  store <2 x i32> %i.ajk, ptr %i.ms, align 4
  store i32 %.sroa.12416.0, ptr %i.mt, align 4
  store i32 %.sroa.19419.0, ptr %.sroa.19419.12..sroa_idx422, align 8
  store i32 %.sroa.23424.0, ptr %.sroa.23424.12..sroa_idx427, align 4
  %i.ajl = zext i32 %i.ajj to i64
  %i.ajm = add i32 %i.aau, 3
  br label %bb.dk

bb.dk:                                            ; preds = %ZS_rep_update.exit371, %bb.cy
  %.sroa.2.0.extract.shift.pn.i = phi i64 [ %.sroa.043.4.insert.ext, %bb.cy ], [ %i.ajl, %ZS_rep_update.exit371 ] ; 6 uses
  %.0152.i = phi i32 [ %i.aig, %bb.cy ], [ %i.ajm, %ZS_rep_update.exit371 ] ; 6 uses
  %.pn.i = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i
  %.0154.i = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 %.pn.i ; 15 uses
  %i.ajn = zext i32 %.0152.i to i64               ; 4 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %i.ajn ; 5 uses
  %i.ajp = icmp ugt ptr %i.ajo, %i.mp
  br i1 %i.ajp, label %bb.dl, label %bb.dm, !prof !22

bb.dl:                                            ; preds = %bb.dk
  %i.ajq = icmp ugt ptr %i.ajo, %i.c
  br i1 %i.ajq, label %ZS_execExperimentalSequence.exit.thread, label %.preheader678

.preheader678:                                    ; preds = %bb.dl
  %.not768 = icmp eq i32 %.0152.i, 0
  br i1 %.not768, label %ZS_wildcopy.exit326, label %iter.check933

iter.check933:                                    ; preds = %.preheader678
  %i.ajr = add nuw i64 %.0147.i.lcssa917, %i.ajn
  %i.ajs = add i64 %.0147.i.lcssa917, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ajr, i64 %i.ajs)
  %i.ajt = sub i64 %umax, %.0147.i.lcssa917       ; 7 uses
  %min.iters.check918 = icmp ult i64 %i.ajt, 8
  %i.aju = add nsw i64 %.sroa.2.0.extract.shift.pn.i, -1
  %diff.check920 = icmp ult i64 %i.aju, 31
  %or.cond1251 = select i1 %min.iters.check918, i1 true, i1 %diff.check920
  br i1 %or.cond1251, label %.lr.ph731.preheader, label %vector.main.loop.iter.check921

vector.main.loop.iter.check921:                   ; preds = %iter.check933
  %min.iters.check922 = icmp ult i64 %i.ajt, 32
  br i1 %min.iters.check922, label %vec.epilog.ph937, label %vector.ph923

vector.ph923:                                     ; preds = %vector.main.loop.iter.check921
  %i.ajv = and i64 %i.ajt, 24
  %n.vec924 = and i64 %i.ajt, -32                 ; 5 uses
  %i.ajw = getelementptr i8, ptr %.0154.i, i64 %n.vec924
  %i.ajx = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec924
  br label %vector.body925

vector.body925:                                   ; preds = %vector.ph923, %vector.body925
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next930, %vector.body925 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0154.i, i64 %index926 ; 2 uses
  %next.gep927 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index926 ; 2 uses
  %i.ajy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load928 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load929 = load <16 x i8>, ptr %i.ajy, align 1, !tbaa !19
  %i.ajz = getelementptr i8, ptr %next.gep927, i64 16
  store <16 x i8> %wide.load928, ptr %next.gep927, align 1, !tbaa !19
  store <16 x i8> %wide.load929, ptr %i.ajz, align 1, !tbaa !19
  %index.next930 = add nuw i64 %index926, 32      ; 2 uses
  %i.aka = icmp eq i64 %index.next930, %n.vec924
  br i1 %i.aka, label %middle.block931, label %vector.body925, !llvm.loop !81

middle.block931:                                  ; preds = %vector.body925
  %cmp.n932 = icmp eq i64 %i.ajt, %n.vec924
  br i1 %cmp.n932, label %ZS_wildcopy.exit326, label %vec.epilog.iter.check934

vec.epilog.iter.check934:                         ; preds = %middle.block931
  %min.epilog.iters.check936 = icmp eq i64 %i.ajv, 0
  br i1 %min.epilog.iters.check936, label %.lr.ph731.preheader, label %vec.epilog.ph937, !prof !98

vec.epilog.ph937:                                 ; preds = %vector.main.loop.iter.check921, %vec.epilog.iter.check934
  %vec.epilog.resume.val938 = phi i64 [ %n.vec924, %vec.epilog.iter.check934 ], [ 0, %vector.main.loop.iter.check921 ]
  %n.vec939 = and i64 %i.ajt, -8                  ; 4 uses
  %i.akb = getelementptr i8, ptr %.0154.i, i64 %n.vec939
  %i.akc = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec939
  br label %vec.epilog.vector.body940

vec.epilog.vector.body940:                        ; preds = %vec.epilog.vector.body940, %vec.epilog.ph937
  %index941 = phi i64 [ %vec.epilog.resume.val938, %vec.epilog.ph937 ], [ %index.next945, %vec.epilog.vector.body940 ] ; 3 uses
  %next.gep942 = getelementptr i8, ptr %.0154.i, i64 %index941
  %next.gep943 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index941
  %wide.load944 = load <8 x i8>, ptr %next.gep942, align 1, !tbaa !19
  store <8 x i8> %wide.load944, ptr %next.gep943, align 1, !tbaa !19
  %index.next945 = add nuw i64 %index941, 8       ; 2 uses
  %i.akd = icmp eq i64 %index.next945, %n.vec939
  br i1 %i.akd, label %vec.epilog.middle.block946, label %vec.epilog.vector.body940, !llvm.loop !82

vec.epilog.middle.block946:                       ; preds = %vec.epilog.vector.body940
  %cmp.n947 = icmp eq i64 %i.ajt, %n.vec939
  br i1 %cmp.n947, label %ZS_wildcopy.exit326, label %.lr.ph731.preheader

.lr.ph731.preheader:                              ; preds = %iter.check933, %vec.epilog.iter.check934, %vec.epilog.middle.block946
  %.0148.i730.ph = phi ptr [ %.0154.i, %iter.check933 ], [ %i.ajw, %vec.epilog.iter.check934 ], [ %i.akb, %vec.epilog.middle.block946 ]
  %.0149.i729.ph = phi ptr [ %.0147.i.lcssa, %iter.check933 ], [ %i.ajx, %vec.epilog.iter.check934 ], [ %i.akc, %vec.epilog.middle.block946 ]
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %.lr.ph731.preheader, %.lr.ph731
  %.0148.i730 = phi ptr [ %i.ake, %.lr.ph731 ], [ %.0148.i730.ph, %.lr.ph731.preheader ] ; 2 uses
  %.0149.i729 = phi ptr [ %i.akg, %.lr.ph731 ], [ %.0149.i729.ph, %.lr.ph731.preheader ] ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.0148.i730, i64 1
  %i.akf = load i8, ptr %.0148.i730, align 1, !tbaa !19
  %i.akg = getelementptr inbounds nuw i8, ptr %.0149.i729, i64 1 ; 2 uses
  store i8 %i.akf, ptr %.0149.i729, align 1, !tbaa !19
  %i.akh = icmp ult ptr %i.akg, %i.ajo
  br i1 %i.akh, label %.lr.ph731, label %ZS_wildcopy.exit326, !llvm.loop !83

bb.dm:                                            ; preds = %bb.dk
  %i.aki = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 16
  br i1 %i.aki, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.akj = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 8
  br i1 %i.akj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !29
  %i.akm = load i8, ptr %.0154.i, align 1, !tbaa !19
  store i8 %i.akm, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.akn = getelementptr inbounds nuw i8, ptr %.0154.i, i64 1
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !19
  %i.akp = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.ako, ptr %i.akp, align 1, !tbaa !19
  %i.akq = getelementptr inbounds nuw i8, ptr %.0154.i, i64 2
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !19
  %i.aks = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.akr, ptr %i.aks, align 1, !tbaa !19
  %i.akt = getelementptr inbounds nuw i8, ptr %.0154.i, i64 3
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !19
  %i.akv = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.aku, ptr %i.akv, align 1, !tbaa !19
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !29
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds i8, ptr %.0154.i, i64 %i.aky ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val346 = load i32, ptr %i.akz, align 1
  store i32 %.val346, ptr %i.ala, align 1
  %i.alb = sext i32 %i.akl to i64
  %i.alc = sub nsw i64 0, %i.alb
  %i.ald = getelementptr inbounds i8, ptr %i.akz, i64 %i.alc
  br label %ZS_overlapCopy8.exit

bb.dp:                                            ; preds = %bb.dn
  %.val350 = load i64, ptr %.0154.i, align 1
  store i64 %.val350, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.do, %bb.dp
  %.2607 = phi ptr [ %i.ald, %bb.do ], [ %.0154.i, %bb.dp ] ; 9 uses
  %.not12.i325 = icmp ugt i32 %.0152.i, 8
  br i1 %.not12.i325, label %.preheader679.preheader, label %ZS_wildcopy.exit326

.preheader679.preheader:                          ; preds = %ZS_overlapCopy8.exit
  %i.ale = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 8 uses
  %i.alf = add nuw i64 %.0147.i.lcssa917, %i.ajn
  %i.alg = add i64 %.0147.i.lcssa917, 24
  %i.alh = call i64 @llvm.umax.i64(i64 %i.alf, i64 %i.alg)
  %i.ali = add i64 %i.alh, -9
  %i.alj = sub i64 %i.ali, %.0147.i.lcssa917      ; 3 uses
  %i.alk = lshr i64 %i.alj, 4
  %i.all = add nuw nsw i64 %i.alk, 1              ; 2 uses
  %min.iters.check976 = icmp ult i64 %i.alj, 368
  br i1 %min.iters.check976, label %.preheader679.preheader1261, label %vector.memcheck977

vector.memcheck977:                               ; preds = %.preheader679.preheader
  %i.alm = and i64 %i.alj, -16                    ; 2 uses
  %i.aln = add i64 %i.alm, 16                     ; 2 uses
  %i.alo = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.aln ; 3 uses
  %i.alp = getelementptr i8, ptr %.0147.i.lcssa, i64 16 ; 3 uses
  %i.alq = add i64 %i.alm, 24                     ; 2 uses
  %i.alr = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.alq ; 3 uses
  %13 = getelementptr i8, ptr %.2607, i64 8       ; 2 uses
  %14 = getelementptr i8, ptr %.2607, i64 %i.aln  ; 2 uses
  %i.als = getelementptr i8, ptr %.2607, i64 16   ; 2 uses
  %i.alt = getelementptr i8, ptr %.2607, i64 %i.alq ; 2 uses
  %bound0.a = icmp ult ptr %i.ale, %i.alr
  %bound1.a = icmp ult ptr %i.alp, %i.alo
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0978 = icmp ult ptr %i.ale, %14
  %bound1979 = icmp ult ptr %13, %i.alo
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict980
  %bound0981 = icmp ult ptr %i.ale, %i.alt
  %bound1982 = icmp ult ptr %i.als, %i.alo
  %found.conflict983 = and i1 %bound0981, %bound1982
  %conflict.rdx984 = or i1 %conflict.rdx, %found.conflict983
  %bound0985 = icmp ult ptr %i.alp, %14
  %bound1986 = icmp ult ptr %13, %i.alr
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984, %found.conflict987
  %bound0989 = icmp ult ptr %i.alp, %i.alt
  %bound1990 = icmp ult ptr %i.als, %i.alr
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  br i1 %conflict.rdx992, label %.preheader679.preheader1261, label %vector.ph993

vector.ph993:                                     ; preds = %vector.memcheck977
  %n.vec994 = and i64 %i.all, 2305843009213693950 ; 3 uses
  %i.alu = shl i64 %n.vec994, 4                   ; 2 uses
  %i.alv = getelementptr i8, ptr %i.ale, i64 %i.alu
  %i.alw = getelementptr i8, ptr %.2607, i64 %i.alu
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next1003, %vector.body995 ] ; 2 uses
  %i.alx = shl i64 %index996, 4                   ; 3 uses
  %i.aly = or disjoint i64 %i.alx, 16             ; 2 uses
  %next.gep997 = getelementptr i8, ptr %i.ale, i64 %i.alx
  %next.gep998 = getelementptr i8, ptr %i.ale, i64 %i.aly
  %next.gep999 = getelementptr i8, ptr %.2607, i64 %i.alx
  %next.gep1000 = getelementptr i8, ptr %.2607, i64 %i.aly
  %i.alz = getelementptr inbounds nuw i8, ptr %next.gep999, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %next.gep1000, i64 8
  %wide.load1001 = load <2 x i64>, ptr %i.alz, align 1
  %wide.load1002 = load <2 x i64>, ptr %i.ama, align 1
  store <2 x i64> %wide.load1001, ptr %next.gep997, align 1
  store <2 x i64> %wide.load1002, ptr %next.gep998, align 1
  %index.next1003 = add nuw i64 %index996, 2      ; 2 uses
  %i.amb = icmp eq i64 %index.next1003, %n.vec994
  br i1 %i.amb, label %middle.block1004, label %vector.body995, !llvm.loop !84

middle.block1004:                                 ; preds = %vector.body995
  %cmp.n1005 = icmp eq i64 %i.all, %n.vec994
  br i1 %cmp.n1005, label %ZS_wildcopy.exit326, label %.preheader679.preheader1261

.preheader679.preheader1261:                      ; preds = %vector.memcheck977, %.preheader679.preheader, %middle.block1004
  %.1609.ph = phi ptr [ %i.ale, %vector.memcheck977 ], [ %i.ale, %.preheader679.preheader ], [ %i.alv, %middle.block1004 ]
  %.2607.pn.ph = phi ptr [ %.2607, %vector.memcheck977 ], [ %.2607, %.preheader679.preheader ], [ %i.alw, %middle.block1004 ]
  br label %.preheader679

.preheader679:                                    ; preds = %.preheader679.preheader1261, %.preheader679
  %.1609 = phi ptr [ %i.amg, %.preheader679 ], [ %.1609.ph, %.preheader679.preheader1261 ] ; 3 uses
  %.2607.pn = phi ptr [ %i.ame, %.preheader679 ], [ %.2607.pn.ph, %.preheader679.preheader1261 ] ; 2 uses
  %.1606 = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 8
  %i.amc = load i64, ptr %.1606, align 1
  store i64 %i.amc, ptr %.1609, align 1
  %i.amd = getelementptr inbounds nuw i8, ptr %.1609, i64 8
  %i.ame = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 16 ; 2 uses
  %i.amf = load i64, ptr %i.ame, align 1
  store i64 %i.amf, ptr %i.amd, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.1609, i64 16 ; 2 uses
  %i.amh = icmp ult ptr %i.amg, %i.ajo
  br i1 %i.amh, label %.preheader679, label %ZS_wildcopy.exit326, !llvm.loop !85

bb.dq:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.0154.i, i64 16, i1 false)
  %.not.i324 = icmp ugt i32 %.0152.i, 16
  br i1 %.not.i324, label %.preheader681.preheader, label %ZS_wildcopy.exit326

.preheader681.preheader:                          ; preds = %bb.dq
  %i.ami = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 16
  br label %.preheader681

.preheader681:                                    ; preds = %.preheader681.preheader, %.preheader681
  %.0608 = phi ptr [ %i.aml, %.preheader681 ], [ %i.ami, %.preheader681.preheader ] ; 3 uses
  %.0154.i.pn = phi ptr [ %i.amk, %.preheader681 ], [ %.0154.i, %.preheader681.preheader ] ; 2 uses
  %.0605 = getelementptr inbounds nuw i8, ptr %.0154.i.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0608, ptr noundef nonnull align 1 dereferenceable(16) %.0605, i64 16, i1 false)
  %i.amj = getelementptr inbounds nuw i8, ptr %.0608, i64 16
  %i.amk = getelementptr inbounds nuw i8, ptr %.0154.i.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.amj, ptr noundef nonnull align 1 dereferenceable(16) %i.amk, i64 16, i1 false)
  %i.aml = getelementptr inbounds nuw i8, ptr %.0608, i64 32 ; 2 uses
  %i.amm = icmp ult ptr %i.aml, %i.ajo
  br i1 %i.amm, label %.preheader681, label %ZS_wildcopy.exit326, !llvm.loop !66

ZS_wildcopy.exit326:                              ; preds = %.preheader681, %.preheader679, %.lr.ph731, %middle.block1004, %middle.block931, %vec.epilog.middle.block946, %.preheader678, %bb.dq, %ZS_overlapCopy8.exit
  %i.amn = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i375 = load i16, ptr %i.amn, align 1
  %i.amo = load ptr, ptr %i.mq, align 8, !tbaa !93
  %i.amp = ptrtoint ptr %.0147.i.lcssa to i64
  %i.amq = ptrtoint ptr %i.amo to i64
  %i.amr = sub i64 %i.amp, %i.amq
  %i.ams = trunc i64 %i.amr to i32                ; 2 uses
  %i.amt = load ptr, ptr %i.mr, align 8, !tbaa !39 ; 2 uses
  %i.amu = mul i16 %.val.i375, -22595
  %i.amv = and i16 %i.amu, -16
  %i.amw = zext i16 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %i.amw ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 4 ; 2 uses
  %i.amz = load i16, ptr %i.amy, align 4, !tbaa !42
  %i.ana = add i16 %i.amz, 15
  %i.anb = and i16 %i.ana, 15                     ; 2 uses
  store i16 %i.anb, ptr %i.amy, align 4, !tbaa !42
  %i.anc = zext nneg i16 %i.anb to i64
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.amx, i64 %i.anc ; 2 uses
  store i32 %i.ams, ptr %i.and, align 4, !tbaa !43
  %i.ane = call i32 @llvm.umin.i32(i32 %.0152.i, i32 255)
  %i.anf = trunc nuw i32 %i.ane to i8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 6
  store i8 %i.anf, ptr %i.ang, align 2, !tbaa !44
  %i.anh = load i8, ptr %.0154.i, align 1, !tbaa !19
  %i.ani = zext i8 %i.anh to i64
  %i.anj = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -1
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !19
  %i.anl = zext i8 %i.ank to i64
  %i.anm = shl nuw nsw i64 %i.ani, 8
  %i.ann = or disjoint i64 %i.anm, %i.anl
  %i.ano = add i32 %i.ams, 1
  %i.anp = add i32 %.0152.i, -1
  %i.anq = mul nuw nsw i64 %i.ann, 42941
  %i.anr = and i64 %i.anq, 65520
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %i.anr ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 4 ; 2 uses
  %i.anu = load i16, ptr %i.ant, align 4, !tbaa !42
  %i.anv = add i16 %i.anu, 15
  %i.anw = and i16 %i.anv, 15                     ; 2 uses
  store i16 %i.anw, ptr %i.ant, align 4, !tbaa !42
  %i.anx = zext nneg i16 %i.anw to i64
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.anx ; 2 uses
  store i32 %i.ano, ptr %i.any, align 4, !tbaa !43
  %i.anz = call i32 @llvm.umin.i32(i32 %i.anp, i32 255)
  %i.aoa = trunc nuw i32 %i.anz to i8
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 6
  store i8 %i.aoa, ptr %i.aob, align 2, !tbaa !44
  br label %ZS_execExperimentalSequence2.exit

ZS_execExperimentalSequence2.exit:                ; preds = %.preheader686, %.preheader684, %.lr.ph728, %middle.block1071, %middle.block1026, %vec.epilog.middle.block1041, %.preheader683, %ZS_wildcopy.exit326, %ZS_overlapCopy8.exit331, %bb.cw
  %.1153.i = phi i64 [ %i.ajn, %ZS_wildcopy.exit326 ], [ 0, %.preheader683 ], [ %.sroa.2.0.insert.ext.i303, %ZS_overlapCopy8.exit331 ], [ %.sroa.2.0.insert.ext.i303, %middle.block1071 ], [ %.sroa.2.0.insert.ext.i303, %bb.cw ], [ %.sroa.2.0.insert.ext.i303, %middle.block1026 ], [ %.sroa.2.0.insert.ext.i303, %.lr.ph728 ], [ %.sroa.2.0.insert.ext.i303, %vec.epilog.middle.block1041 ], [ %.sroa.2.0.insert.ext.i303, %.preheader684 ], [ %.sroa.2.0.insert.ext.i303, %.preheader686 ]
  %i.aoc = add nuw nsw i64 %.1153.i, %.sroa.043.0.insert.ext ; 2 uses
  %i.aod = icmp eq i64 %i.aoc, 0
  br i1 %i.aod, label %ZS_execExperimentalSequence.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %ZS_execExperimentalSequence2.exit
  %i.aoe = getelementptr inbounds nuw i8, ptr %.4733, i64 %i.aoc ; 2 uses
  %i.aof = add nuw nsw i64 %.2241732, 1           ; 2 uses
  %exitcond795.not = icmp eq i64 %i.aof, %i.ca
  br i1 %exitcond795.not, label %.loopexit676, label %bb.ck, !llvm.loop !86

.loopexit676:                                     ; preds = %bb.dr, %bb.cj, %.preheader689, %.preheader675, %bb.bb, %.critedge
  %.6 = phi ptr [ %.0237.lcssa, %.critedge ], [ %i.aan, %bb.cj ], [ %.0237.lcssa, %bb.bb ], [ %.0237.lcssa, %.preheader675 ], [ %.0237.lcssa, %.preheader689 ], [ %i.aoe, %bb.dr ] ; 6 uses
  call void @ZL_free(ptr noundef nonnull %i.cb) #11
  call void @ZL_free(ptr noundef nonnull %i.cd) #11
  call void @ZL_free(ptr noundef nonnull %i.ce) #11
  call void @ZL_free(ptr noundef nonnull %i.cf) #11
  %i.aog = load i64, ptr %i.cs, align 8, !tbaa !27 ; 3 uses
  %i.aoh = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.aoi = sub i64 %i.aog, %i.aoh                 ; 5 uses
  %i.aoj = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.aog
  %i.aol = ptrtoint ptr %.6 to i64
  %i.aom = sub i64 %i.bj, %i.aol
  %i.aon = icmp ugt i64 %i.aoi, %i.aom
  br i1 %i.aon, label %ZS_execExperimentalSequence.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %.loopexit676
  %i.aoo = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.aop = trunc nuw i8 %i.aoo to i1
  br i1 %i.aop, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.aoq = icmp eq ptr %.6, %1
  br i1 %i.aoq, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aor = getelementptr inbounds i8, ptr %.6, i64 -1
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !19
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %i.aot = phi i8 [ %i.aos, %bb.du ], [ 0, %bb.dt ]
  %.not772 = icmp eq i64 %i.aog, %i.aoh
  br i1 %.not772, label %.loopexit, label %.lr.ph758

.lr.ph758:                                        ; preds = %bb.dv
  %i.aou = getelementptr inbounds nuw i8, ptr %10, i64 4144
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph758, %bb.dy
  %.0756 = phi i64 [ 0, %.lr.ph758 ], [ %i.ape, %bb.dy ] ; 2 uses
  %.0236755 = phi i8 [ %i.aot, %.lr.ph758 ], [ %i.apa, %bb.dy ]
  %i.aov = zext i8 %.0236755 to i64
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.aov
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !35 ; 4 uses
  %i.aoy = icmp eq ptr %i.aox, null
  br i1 %i.aoy, label %ZS_execExperimentalSequence.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aoz = load ptr, ptr %i.aox, align 8, !tbaa !36 ; 2 uses
  %.not277 = icmp ult ptr %i.aoz, %i.aok
  br i1 %.not277, label %bb.dy, label %ZS_execExperimentalSequence.exit.thread

bb.dy:                                            ; preds = %bb.dx
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !19 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.6, i64 %.0756
  store i8 %i.apa, ptr %i.apb, align 1, !tbaa !19
  %i.apc = load ptr, ptr %i.aox, align 8, !tbaa !36
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  store ptr %i.apd, ptr %i.aox, align 8, !tbaa !36
  %i.ape = add nuw i64 %.0756, 1                  ; 2 uses
  %exitcond799.not = icmp eq i64 %i.ape, %i.aoi
  br i1 %exitcond799.not, label %.loopexit, label %bb.dw, !llvm.loop !87

end_hunk_1
