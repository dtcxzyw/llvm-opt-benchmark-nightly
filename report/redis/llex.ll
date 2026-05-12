inline.NumInlined: 23
inline.NumDeleted: 5
begin_hunk_0_@read_numeral:bb.a
._crit_edge:                                      ; preds = %bb.o, %check_next.exit37
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef 0)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !56  ; 21 uses
  %i.bt = getelementptr i8, ptr %0, i64 72        ; 6 uses
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !28 ; 22 uses
  %i.bu = getelementptr i8, ptr %.val, i64 8
  %.val.val33 = load i64, ptr %i.bu, align 8, !tbaa !66 ; 13 uses
  %.not1.i = icmp eq i64 %.val.val33, 0
  br i1 %.not1.i, label %buffreplace.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %.val.val33, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
end_hunk_0
begin_hunk_1_@read_numeral:bb.a
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.val.val33, 12
  %n.vec = and i64 %.val.val33, -16               ; 3 uses
  %i.bv = and i64 %.val.val33, 15
  br label %vector.body
end_hunk_1
begin_hunk_2_@read_numeral:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %.val.val33, -4              ; 2 uses
  %i.dw = and i64 %.val.val33, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue112, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %pred.store.continue112 ] ; 2 uses
  %i.dx = sub i64 %.val.val33, %index94           ; 4 uses
  %i.dy = getelementptr i8, ptr %.val.val, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %wide.load95 = load <4 x i8>, ptr %i.dz, align 1, !tbaa !8
  %reverse96 = shufflevector <4 x i8> %wide.load95, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %2 = icmp eq <4 x i8> %reverse96, splat (i8 46) ; 4 uses
  %i.ea = extractelement <4 x i1> %2, i64 0
  br i1 %i.ea, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %vec.epilog.vector.body
  %i.eb = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %i.bs, ptr %i.eb, align 1, !tbaa !8
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %vec.epilog.vector.body
  %i.ec = extractelement <4 x i1> %2, i64 1
  br i1 %i.ec, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  %i.ed = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.ee = getelementptr i8, ptr %i.ed, i64 -2
  store i8 %i.bs, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.ef = extractelement <4 x i1> %2, i64 2
  br i1 %i.ef, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  %i.eg = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.eh = getelementptr i8, ptr %i.eg, i64 -3
  store i8 %i.bs, ptr %i.eh, align 1, !tbaa !8
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %i.ei = extractelement <4 x i1> %2, i64 3
  br i1 %i.ei, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  %i.ej = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  store i8 %i.bs, ptr %i.ek, align 1, !tbaa !8
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %index.next113 = add nuw i64 %index94, 4        ; 2 uses
  %i.el = icmp eq i64 %index.next113, %n.vec93
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

end_hunk_2
begin_hunk_3_@read_numeral:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ew = phi i8 [ %i.ev, %bb.s ], [ 46, %bb.r ]  ; 22 uses
  store i8 %i.ew, ptr %i.br, align 8, !tbaa !56
  %.val12.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val12.val.i = load ptr, ptr %.val12.i, align 8, !tbaa !28 ; 22 uses
  %i.ex = getelementptr i8, ptr %.val12.i, i64 8
  %.val12.val13.i = load i64, ptr %i.ex, align 8, !tbaa !66 ; 13 uses
  %.not1.i.i = icmp eq i64 %.val12.val13.i, 0
  br i1 %.not1.i.i, label %buffreplace.exit.i, label %iter.check162

iter.check162:                                    ; preds = %bb.t
  %min.iters.check116 = icmp ult i64 %.val12.val13.i, 4
  br i1 %min.iters.check116, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check117

vector.main.loop.iter.check117:                   ; preds = %iter.check162
end_hunk_3
begin_hunk_4_@read_numeral:bb.a
  br i1 %min.iters.check118, label %vec.epilog.ph166, label %vector.ph119

vector.ph119:                                     ; preds = %vector.main.loop.iter.check117
  %n.mod.vf120 = and i64 %.val12.val13.i, 12
  %n.vec121 = and i64 %.val12.val13.i, -16        ; 3 uses
  %i.ey = and i64 %.val12.val13.i, 15
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.et, i64 0
end_hunk_4
begin_hunk_5_@read_numeral:bb.a

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check117, %vec.epilog.iter.check164
  %vec.epilog.resume.val161 = phi i64 [ %n.vec121, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check117 ]
  %n.vec168 = and i64 %.val12.val13.i, -4         ; 2 uses
  %i.gz = and i64 %.val12.val13.i, 3
  %broadcast.splatinsert161 = insertelement <4 x i8> poison, i8 %i.et, i64 0
  %broadcast.splat162 = shufflevector <4 x i8> %broadcast.splatinsert161, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %pred.store.continue190, %vec.epilog.ph166
  %index172 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph166 ], [ %index.next191, %pred.store.continue190 ] ; 2 uses
  %i.ha = sub i64 %.val12.val13.i, %index172      ; 4 uses
  %i.hb = getelementptr i8, ptr %.val12.val.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %wide.load165 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !8
  %reverse166 = shufflevector <4 x i8> %wide.load165, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %3 = icmp eq <4 x i8> %reverse166, %broadcast.splat162 ; 4 uses
  %i.hd = extractelement <4 x i1> %3, i64 0
  br i1 %i.hd, label %pred.store.if183, label %pred.store.continue184

pred.store.if183:                                 ; preds = %vec.epilog.vector.body171
  %i.he = getelementptr i8, ptr %i.hb, i64 -1
  store i8 %i.ew, ptr %i.he, align 1, !tbaa !8
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.if183, %vec.epilog.vector.body171
  %i.hf = extractelement <4 x i1> %3, i64 1
  br i1 %i.hf, label %pred.store.if185, label %pred.store.continue186

pred.store.if185:                                 ; preds = %pred.store.continue184
  %i.hg = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hh = getelementptr i8, ptr %i.hg, i64 -2
  store i8 %i.ew, ptr %i.hh, align 1, !tbaa !8
  br label %pred.store.continue186

pred.store.continue186:                           ; preds = %pred.store.if185, %pred.store.continue184
  %i.hi = extractelement <4 x i1> %3, i64 2
  br i1 %i.hi, label %pred.store.if187, label %pred.store.continue188

pred.store.if187:                                 ; preds = %pred.store.continue186
  %i.hj = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hk = getelementptr i8, ptr %i.hj, i64 -3
  store i8 %i.ew, ptr %i.hk, align 1, !tbaa !8
  br label %pred.store.continue188

pred.store.continue188:                           ; preds = %pred.store.if187, %pred.store.continue186
  %i.hl = extractelement <4 x i1> %3, i64 3
  br i1 %i.hl, label %pred.store.if189, label %pred.store.continue190

pred.store.if189:                                 ; preds = %pred.store.continue188
  %i.hm = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hn = getelementptr i8, ptr %i.hm, i64 -4
  store i8 %i.ew, ptr %i.hn, align 1, !tbaa !8
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.if189, %pred.store.continue188
  %index.next191 = add nuw i64 %index172, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next191, %n.vec168
  br i1 %i.ho, label %vec.epilog.middle.block192, label %vec.epilog.vector.body171, !llvm.loop !87

end_hunk_5
begin_hunk_6_@read_numeral:bb.a
bb.w:                                             ; preds = %buffreplace.exit.i
  %i.hv = load i8, ptr %i.br, align 8, !tbaa !56  ; 3 uses
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !28 ; 21 uses
  %i.hw = getelementptr i8, ptr %.val.i, i64 8
  %.val.val14.i = load i64, ptr %i.hw, align 8, !tbaa !66 ; 13 uses
  %.not1.i15.i = icmp eq i64 %.val.val14.i, 0
  br i1 %.not1.i15.i, label %buffreplace.exit19.i, label %iter.check243

iter.check243:                                    ; preds = %bb.w
  %min.iters.check195 = icmp ult i64 %.val.val14.i, 4
  br i1 %min.iters.check195, label %.lr.ph.i16.i.preheader, label %vector.main.loop.iter.check196

vector.main.loop.iter.check196:                   ; preds = %iter.check243
end_hunk_6
begin_hunk_7_@read_numeral:bb.a
  br i1 %min.iters.check197, label %vec.epilog.ph247, label %vector.ph198

vector.ph198:                                     ; preds = %vector.main.loop.iter.check196
  %n.mod.vf199 = and i64 %.val.val14.i, 12
  %n.vec200 = and i64 %.val.val14.i, -16          ; 3 uses
  %i.hx = and i64 %.val.val14.i, 15
  %broadcast.splatinsert201 = insertelement <16 x i8> poison, i8 %i.hv, i64 0
end_hunk_7
begin_hunk_8_@read_numeral:bb.a

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check196, %vec.epilog.iter.check245
  %vec.epilog.resume.val242 = phi i64 [ %n.vec200, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check196 ]
  %n.vec249 = and i64 %.val.val14.i, -4           ; 2 uses
  %i.jy = and i64 %.val.val14.i, 3
  %broadcast.splatinsert234 = insertelement <4 x i8> poison, i8 %i.hv, i64 0
  %broadcast.splat235 = shufflevector <4 x i8> %broadcast.splatinsert234, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body252

vec.epilog.vector.body252:                        ; preds = %pred.store.continue271, %vec.epilog.ph247
  %index253 = phi i64 [ %vec.epilog.resume.val242, %vec.epilog.ph247 ], [ %index.next272, %pred.store.continue271 ] ; 2 uses
  %i.jz = sub i64 %.val.val14.i, %index253        ; 4 uses
  %i.ka = getelementptr i8, ptr %.val.val.i, i64 %i.jz ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 -4
  %wide.load238 = load <4 x i8>, ptr %i.kb, align 1, !tbaa !8
  %reverse239 = shufflevector <4 x i8> %wide.load238, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %4 = icmp eq <4 x i8> %reverse239, %broadcast.splat235 ; 4 uses
  %i.kc = extractelement <4 x i1> %4, i64 0
  br i1 %i.kc, label %pred.store.if264, label %pred.store.continue265

pred.store.if264:                                 ; preds = %vec.epilog.vector.body252
  %i.kd = getelementptr i8, ptr %i.ka, i64 -1
  store i8 46, ptr %i.kd, align 1, !tbaa !8
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %vec.epilog.vector.body252
  %i.ke = extractelement <4 x i1> %4, i64 1
  br i1 %i.ke, label %pred.store.if266, label %pred.store.continue267

pred.store.if266:                                 ; preds = %pred.store.continue265
  %i.kf = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.kg = getelementptr i8, ptr %i.kf, i64 -2
  store i8 46, ptr %i.kg, align 1, !tbaa !8
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.kh = extractelement <4 x i1> %4, i64 2
  br i1 %i.kh, label %pred.store.if268, label %pred.store.continue269

pred.store.if268:                                 ; preds = %pred.store.continue267
  %i.ki = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.kj = getelementptr i8, ptr %i.ki, i64 -3
  store i8 46, ptr %i.kj, align 1, !tbaa !8
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.kk = extractelement <4 x i1> %4, i64 3
  br i1 %i.kk, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %pred.store.continue269
  %i.kl = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.km = getelementptr i8, ptr %i.kl, i64 -4
  store i8 46, ptr %i.km, align 1, !tbaa !8
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %index.next272 = add nuw i64 %index253, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next272, %n.vec249
  br i1 %i.kn, label %vec.epilog.middle.block273, label %vec.epilog.vector.body252, !llvm.loop !90

end_hunk_8
begin_hunk_9_@localeconv
!78 = distinct !{!78, !68, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 4, i32 12}
!82 = distinct !{!82, !68, !79, !80}
!83 = distinct !{!83, !68, !80, !79}
!84 = !{!85, !23, i64 0}
end_hunk_9
