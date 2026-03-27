begin_hunk_0
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !182 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !183 ; 21 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !184 ; 4 uses
  %.not871.i = icmp eq i32 %i.tf, 0
end_hunk_0
begin_hunk_1
  br label %vector.body264

vector.body264:                                   ; preds = %pred.store.continue296, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next297, %pred.store.continue296 ] ; 17 uses
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.td, i64 %index265 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %wide.load = load <8 x i16>, ptr %i.th, align 2, !tbaa !56
  %wide.load266 = load <8 x i16>, ptr %i.ti, align 2, !tbaa !56
end_hunk_1
begin_hunk_2
  br i1 %i.tp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body264
  store i16 66, ptr %i.th, align 2, !tbaa !56
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body264, %pred.store.if
  %i.tq = extractelement <8 x i1> %i.tn, i64 1
  br i1 %i.tq, label %pred.store.if267, label %pred.store.continue268

end_hunk_2
begin_hunk_3
  store i16 66, ptr %i.ts, align 2, !tbaa !56
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.continue, %pred.store.if267
  %i.tt = extractelement <8 x i1> %i.tn, i64 2
  br i1 %i.tt, label %pred.store.if269, label %pred.store.continue270

end_hunk_3
begin_hunk_4
  store i16 66, ptr %i.tv, align 2, !tbaa !56
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.continue268, %pred.store.if269
  %i.tw = extractelement <8 x i1> %i.tn, i64 3
  br i1 %i.tw, label %pred.store.if271, label %pred.store.continue272

end_hunk_4
begin_hunk_5
  store i16 66, ptr %i.ty, align 2, !tbaa !56
  br label %pred.store.continue272

pred.store.continue272:                           ; preds = %pred.store.continue270, %pred.store.if271
  %i.tz = extractelement <8 x i1> %i.tn, i64 4
  br i1 %i.tz, label %pred.store.if273, label %pred.store.continue274

end_hunk_5
begin_hunk_6
  store i16 66, ptr %i.ub, align 2, !tbaa !56
  br label %pred.store.continue274

pred.store.continue274:                           ; preds = %pred.store.continue272, %pred.store.if273
  %i.uc = extractelement <8 x i1> %i.tn, i64 5
  br i1 %i.uc, label %pred.store.if275, label %pred.store.continue276

end_hunk_6
begin_hunk_7
  store i16 66, ptr %i.ue, align 2, !tbaa !56
  br label %pred.store.continue276

pred.store.continue276:                           ; preds = %pred.store.continue274, %pred.store.if275
  %i.uf = extractelement <8 x i1> %i.tn, i64 6
  br i1 %i.uf, label %pred.store.if277, label %pred.store.continue278

end_hunk_7
begin_hunk_8
  store i16 66, ptr %i.uh, align 2, !tbaa !56
  br label %pred.store.continue278

pred.store.continue278:                           ; preds = %pred.store.continue276, %pred.store.if277
  %i.ui = extractelement <8 x i1> %i.tn, i64 7
  br i1 %i.ui, label %pred.store.if279, label %pred.store.continue280

end_hunk_8
begin_hunk_9
  store i16 66, ptr %i.uk, align 2, !tbaa !56
  br label %pred.store.continue280

pred.store.continue280:                           ; preds = %pred.store.continue278, %pred.store.if279
  %i.ul = extractelement <8 x i1> %i.to, i64 0
  br i1 %i.ul, label %pred.store.if281, label %pred.store.continue282

end_hunk_9
begin_hunk_10
  store i16 66, ptr %i.un, align 2, !tbaa !56
  br label %pred.store.continue282

pred.store.continue282:                           ; preds = %pred.store.continue280, %pred.store.if281
  %i.uo = extractelement <8 x i1> %i.to, i64 1
  br i1 %i.uo, label %pred.store.if283, label %pred.store.continue284

end_hunk_10
begin_hunk_11
  store i16 66, ptr %i.uq, align 2, !tbaa !56
  br label %pred.store.continue284

pred.store.continue284:                           ; preds = %pred.store.continue282, %pred.store.if283
  %i.ur = extractelement <8 x i1> %i.to, i64 2
  br i1 %i.ur, label %pred.store.if285, label %pred.store.continue286

end_hunk_11
begin_hunk_12
  store i16 66, ptr %i.ut, align 2, !tbaa !56
  br label %pred.store.continue286

pred.store.continue286:                           ; preds = %pred.store.continue284, %pred.store.if285
  %i.uu = extractelement <8 x i1> %i.to, i64 3
  br i1 %i.uu, label %pred.store.if287, label %pred.store.continue288

end_hunk_12
begin_hunk_13
  store i16 66, ptr %i.uw, align 2, !tbaa !56
  br label %pred.store.continue288

pred.store.continue288:                           ; preds = %pred.store.continue286, %pred.store.if287
  %i.ux = extractelement <8 x i1> %i.to, i64 4
  br i1 %i.ux, label %pred.store.if289, label %pred.store.continue290

end_hunk_13
begin_hunk_14
  store i16 66, ptr %i.uz, align 2, !tbaa !56
  br label %pred.store.continue290

pred.store.continue290:                           ; preds = %pred.store.continue288, %pred.store.if289
  %i.va = extractelement <8 x i1> %i.to, i64 5
  br i1 %i.va, label %pred.store.if291, label %pred.store.continue292

end_hunk_14
begin_hunk_15
  store i16 66, ptr %i.vc, align 2, !tbaa !56
  br label %pred.store.continue292

pred.store.continue292:                           ; preds = %pred.store.continue290, %pred.store.if291
  %i.vd = extractelement <8 x i1> %i.to, i64 6
  br i1 %i.vd, label %pred.store.if293, label %pred.store.continue294

end_hunk_15
begin_hunk_16
  store i16 66, ptr %i.vf, align 2, !tbaa !56
  br label %pred.store.continue294

pred.store.continue294:                           ; preds = %pred.store.continue292, %pred.store.if293
  %i.vg = extractelement <8 x i1> %i.to, i64 7
  br i1 %i.vg, label %pred.store.if295, label %pred.store.continue296

end_hunk_16
begin_hunk_17
  store i16 66, ptr %i.vi, align 2, !tbaa !56
  br label %pred.store.continue296

pred.store.continue296:                           ; preds = %pred.store.continue294, %pred.store.if295
  %index.next297 = add nuw i64 %index265, 16      ; 2 uses
  %i.vj = icmp eq i64 %index.next297, %n.vec263
  br i1 %i.vj, label %middle.block298, label %vector.body264, !llvm.loop !186
end_hunk_17
begin_hunk_18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue313, %vec.epilog.ph
  %index304 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next314, %pred.store.continue313 ] ; 5 uses
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.td, i64 %index304 ; 2 uses
  %wide.load305 = load <4 x i16>, ptr %i.vk, align 2, !tbaa !56
  %i.vl = and <4 x i16> %wide.load305, splat (i16 16383)
  %i.vm = zext nneg <4 x i16> %i.vl to <4 x i32>
end_hunk_18
begin_hunk_19
  br i1 %i.vo, label %pred.store.if306, label %pred.store.continue307

pred.store.if306:                                 ; preds = %vec.epilog.vector.body
  store i16 66, ptr %i.vk, align 2, !tbaa !56
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %vec.epilog.vector.body, %pred.store.if306
  %i.vp = extractelement <4 x i1> %i.vn, i64 1
  br i1 %i.vp, label %pred.store.if308, label %pred.store.continue309

end_hunk_19
begin_hunk_20
  store i16 66, ptr %i.vr, align 2, !tbaa !56
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.continue307, %pred.store.if308
  %i.vs = extractelement <4 x i1> %i.vn, i64 2
  br i1 %i.vs, label %pred.store.if310, label %pred.store.continue311

end_hunk_20
begin_hunk_21
  store i16 66, ptr %i.vu, align 2, !tbaa !56
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.continue309, %pred.store.if310
  %i.vv = extractelement <4 x i1> %i.vn, i64 3
  br i1 %i.vv, label %pred.store.if312, label %pred.store.continue313

end_hunk_21
begin_hunk_22
  store i16 66, ptr %i.vx, align 2, !tbaa !56
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.continue311, %pred.store.if312
  %index.next314 = add nuw i64 %index304, 4       ; 2 uses
  %i.vy = icmp eq i64 %index.next314, %n.vec301
  br i1 %i.vy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188
end_hunk_22
begin_hunk_23
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 16 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 784 ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 776 ; 2 uses
end_hunk_23
begin_hunk_24
  br label %vector.body60

vector.body60:                                    ; preds = %pred.store.continue75, %vector.ph57
  %index61 = phi i64 [ 0, %vector.ph57 ], [ %index.next76, %pred.store.continue75 ] ; 9 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index61 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.gg, align 2, !tbaa !56 ; 9 uses
  %i.gh = and <8 x i16> %wide.load, splat (i16 16383)
  %i.gi = icmp eq <8 x i16> %i.gh, splat (i16 16383) ; 8 uses
end_hunk_24
begin_hunk_25
pred.store.if:                                    ; preds = %vector.body60
  %i.gk = extractelement <8 x i16> %wide.load, i64 0
  %i.gl = and i16 %i.gk, -16384
  %i.gm = or i16 %i.gl, %i.gf
  store i16 %i.gm, ptr %i.gg, align 2, !tbaa !56
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body60, %pred.store.if
  %i.gn = extractelement <8 x i1> %i.gi, i64 1
  br i1 %i.gn, label %pred.store.if62, label %pred.store.continue63

end_hunk_25
begin_hunk_26
  store i16 %i.gs, ptr %i.gr, align 2, !tbaa !56
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.continue, %pred.store.if62
  %i.gt = extractelement <8 x i1> %i.gi, i64 2
  br i1 %i.gt, label %pred.store.if64, label %pred.store.continue65

end_hunk_26
begin_hunk_27
  store i16 %i.gy, ptr %i.gx, align 2, !tbaa !56
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.continue63, %pred.store.if64
  %i.gz = extractelement <8 x i1> %i.gi, i64 3
  br i1 %i.gz, label %pred.store.if66, label %pred.store.continue67

end_hunk_27
begin_hunk_28
  store i16 %i.he, ptr %i.hd, align 2, !tbaa !56
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.continue65, %pred.store.if66
  %i.hf = extractelement <8 x i1> %i.gi, i64 4
  br i1 %i.hf, label %pred.store.if68, label %pred.store.continue69

end_hunk_28
begin_hunk_29
  store i16 %i.hk, ptr %i.hj, align 2, !tbaa !56
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.continue67, %pred.store.if68
  %i.hl = extractelement <8 x i1> %i.gi, i64 5
  br i1 %i.hl, label %pred.store.if70, label %pred.store.continue71

end_hunk_29
begin_hunk_30
  store i16 %i.hq, ptr %i.hp, align 2, !tbaa !56
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.continue69, %pred.store.if70
  %i.hr = extractelement <8 x i1> %i.gi, i64 6
  br i1 %i.hr, label %pred.store.if72, label %pred.store.continue73

end_hunk_30
begin_hunk_31
  store i16 %i.hw, ptr %i.hv, align 2, !tbaa !56
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.continue71, %pred.store.if72
  %i.hx = extractelement <8 x i1> %i.gi, i64 7
  br i1 %i.hx, label %pred.store.if74, label %pred.store.continue75

end_hunk_31
begin_hunk_32
  store i16 %i.ic, ptr %i.ib, align 2, !tbaa !56
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.continue73, %pred.store.if74
  %index.next76 = add nuw i64 %index61, 8         ; 2 uses
  %i.id = icmp eq i64 %index.next76, %n.vec59
  br i1 %i.id, label %middle.block77, label %vector.body60, !llvm.loop !471
end_hunk_32
