Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitTruth?download=true
inline.NumInlined: 125
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 159
begin_hunk_0_@Kit_TruthVarIsVacuous:bb.a

.lr.ph.preheader:                                 ; preds = %.preheader102
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.preheader99:                                     ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph109.preheader, label %.loopexit

.lr.ph109.preheader:                              ; preds = %.preheader99
  %wide.trip.count149 = zext nneg i32 %i.d to i64
  br label %.lr.ph109

.preheader96:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph114.preheader, label %.loopexit

.lr.ph114.preheader:                              ; preds = %.preheader96
  %wide.trip.count154 = zext nneg i32 %i.d to i64
  br label %.lr.ph114

.preheader93:                                     ; preds = %bb.a
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph119.preheader, label %.loopexit

.lr.ph119.preheader:                              ; preds = %.preheader93
  %wide.trip.count159 = zext nneg i32 %i.d to i64
  br label %.lr.ph119

.preheader91:                                     ; preds = %bb.a
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph124.preheader, label %.loopexit

.lr.ph124.preheader:                              ; preds = %.preheader91
  %wide.trip.count164 = zext nneg i32 %i.d to i64
  br label %.lr.ph124

bb.b:                                             ; preds = %.lr.ph124
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit, label %.lr.ph124, !llvm.loop !189

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.b
  %indvars.iv161 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next162, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv161
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv161
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22   ; 2 uses
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, %i.k
  %i.p = lshr i32 %i.k, 1
  %i.q = and i32 %i.m, %i.p
  %i.r = or i32 %i.o, %i.q
  %i.s = and i32 %i.r, 1431655765
  %.not88 = icmp eq i32 %i.s, 0
  br i1 %.not88, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %.lr.ph119
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.loopexit, label %.lr.ph119, !llvm.loop !190

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %bb.c
  %indvars.iv156 = phi i64 [ 0, %.lr.ph119.preheader ], [ %indvars.iv.next157, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22   ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv156
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 2 uses
  %i.x = lshr i32 %i.w, 2
  %i.y = and i32 %i.x, %i.u
  %i.z = lshr i32 %i.u, 2
  %i.aa = and i32 %i.w, %i.z
  %i.ab = or i32 %i.y, %i.aa
  %i.ac = and i32 %i.ab, 858993459
  %.not87 = icmp eq i32 %i.ac, 0
  br i1 %.not87, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %.lr.ph114
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph114, !llvm.loop !191

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.d
  %indvars.iv151 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next152, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv151
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv151
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22 ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = and i32 %i.ah, %i.ae
  %i.aj = lshr i32 %i.ae, 4
  %i.ak = and i32 %i.ag, %i.aj
  %i.al = or i32 %i.ai, %i.ak
  %i.am = and i32 %i.al, 252645135
  %.not86 = icmp eq i32 %i.am, 0
  br i1 %.not86, label %bb.d, label %.loopexit

bb.e:                                             ; preds = %.lr.ph109
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit, label %.lr.ph109, !llvm.loop !192

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.e
  %indvars.iv146 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next147, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv146
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv146
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22 ; 2 uses
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, %i.ao
  %i.at = lshr i32 %i.ao, 8
  %i.au = and i32 %i.aq, %i.at
  %i.av = or i32 %i.as, %i.au
  %i.aw = and i32 %i.av, 16711935
  %.not85 = icmp eq i32 %i.aw, 0
  br i1 %.not85, label %bb.e, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !193

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22 ; 2 uses
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = and i32 %i.bb, %i.ay
  %i.bd = lshr i32 %i.ay, 16
  %i.be = and i32 %i.ba, %i.bd
  %i.bf = or i32 %i.bc, %i.be
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.bg = add nsw i32 %3, -5                      ; 3 uses
  %i.bh = shl nuw i32 1, %i.bg                    ; 2 uses
  %i.bi = icmp sgt i32 %i.d, 0
  br i1 %i.bi, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.g
  %.not133 = icmp eq i32 %i.bg, 31
  %i.bj = shl i32 2, %i.bg                        ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  br i1 %.not133, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bl = sext i32 %i.bh to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %wide.trip.count169 = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0132.us = phi i32 [ %i.ca, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.081131.us = phi ptr [ %i.by, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 3 uses
  %.082130.us = phi ptr [ %i.bz, %._crit_edge.us ], [ %1, %.preheader.us.preheader ] ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge.us, label %bb.i, !llvm.loop !194

bb.i:                                             ; preds = %.preheader.us, %bb.h
  %indvars.iv166 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next167, %bb.h ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.081131.us, i64 %indvars.iv166
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22
  %i.bo = add nuw nsw i64 %indvars.iv166, %i.bl   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.082130.us, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = and i32 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.082130.us, i64 %indvars.iv166
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds [4 x i8], ptr %.081131.us, i64 %i.bo
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = and i32 %i.bv, %i.bt
  %i.bx = or i32 %i.bw, %i.br
  %.not89.us = icmp eq i32 %i.bx, 0
  br i1 %.not89.us, label %bb.h, label %.loopexit

._crit_edge.us:                                   ; preds = %bb.h
  %i.by = getelementptr inbounds [4 x i8], ptr %.081131.us, i64 %i.bk
  %i.bz = getelementptr inbounds [4 x i8], ptr %.082130.us, i64 %i.bk
  %i.ca = add nsw i32 %.0132.us, %i.bj            ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.d
  br i1 %i.cb, label %.preheader.us, label %.loopexit, !llvm.loop !195

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %.lr.ph109, %bb.e, %.lr.ph114, %bb.d, %.lr.ph119, %bb.c, %.lr.ph124, %bb.b, %._crit_edge.us, %bb.i, %.preheader.lr.ph, %.preheader102, %.preheader99, %.preheader96, %.preheader93, %.preheader91, %bb.g
  %.080 = phi i32 [ 1, %bb.g ], [ 1, %.preheader99 ], [ 1, %._crit_edge.us ], [ 1, %.preheader96 ], [ 1, %bb.e ], [ 1, %.preheader102 ], [ poison, %.preheader.lr.ph ], [ 0, %bb.i ], [ 1, %bb.b ], [ 1, %.preheader91 ], [ 1, %bb.c ], [ 1, %.preheader93 ], [ 1, %bb.d ], [ 0, %.lr.ph124 ], [ 0, %.lr.ph119 ], [ 0, %.lr.ph114 ], [ 0, %.lr.ph109 ], [ 0, %.lr.ph ], [ 1, %bb.f ]
  ret i32 %.080
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthExist(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  %i.b = add nsw i32 %1, -5
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 32 uses
  switch i32 %2, label %bb.b [
    i32 0, label %.preheader70
    i32 1, label %.preheader72
    i32 2, label %.preheader74
    i32 3, label %.preheader76
    i32 4, label %.preheader78
  ]

.preheader78:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader78
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.f = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.f to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !22 ; 3 uses
  %wide.load135 = load <4 x i32>, ptr %i.h, align 4, !tbaa !22 ; 3 uses
  %i.i = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.j = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load135, <4 x i32> %wide.load135, <4 x i32> splat (i32 16))
  %i.k = or <4 x i32> %i.i, %wide.load
  %i.l = or <4 x i32> %i.j, %wide.load135
  store <4 x i32> %i.k, ptr %i.g, align 4, !tbaa !22
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %.loopexit, label %vector.body, !llvm.loop !196

.preheader76:                                     ; preds = %bb.a
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph82.preheader, label %.loopexit

.lr.ph82.preheader:                               ; preds = %.preheader76
  %min.iters.check137 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check137, label %.lr.ph82, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph82.preheader
  %i.o = and i32 %i.d, 2147483640
  %n.vec139 = zext nneg i32 %i.o to i64
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next144, %vector.body140 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index141 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load142 = load <4 x i32>, ptr %i.p, align 4, !tbaa !22 ; 3 uses
  %wide.load143 = load <4 x i32>, ptr %i.q, align 4, !tbaa !22 ; 3 uses
  %i.r = lshr <4 x i32> %wide.load142, splat (i32 8)
  %i.s = lshr <4 x i32> %wide.load143, splat (i32 8)
  %i.t = and <4 x i32> %i.r, splat (i32 16711935)
  %i.u = and <4 x i32> %i.s, splat (i32 16711935)
  %i.v = shl <4 x i32> %wide.load142, splat (i32 8)
  %i.w = shl <4 x i32> %wide.load143, splat (i32 8)
  %i.x = and <4 x i32> %i.v, splat (i32 -16711936)
  %i.y = and <4 x i32> %i.w, splat (i32 -16711936)
  %i.z = or disjoint <4 x i32> %i.x, %i.t
  %i.aa = or disjoint <4 x i32> %i.y, %i.u
  %i.ab = or <4 x i32> %i.z, %wide.load142
  %i.ac = or <4 x i32> %i.aa, %wide.load143
  store <4 x i32> %i.ab, ptr %i.p, align 4, !tbaa !22
  store <4 x i32> %i.ac, ptr %i.q, align 4, !tbaa !22
  %index.next144 = add nuw i64 %index141, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next144, %n.vec139
  br i1 %i.ad, label %.loopexit, label %vector.body140, !llvm.loop !197

.preheader74:                                     ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.d, 0
  br i1 %i.ae, label %.lr.ph84.preheader, label %.loopexit

.lr.ph84.preheader:                               ; preds = %.preheader74
  %min.iters.check149 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check149, label %.lr.ph84, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph84.preheader
  %i.af = and i32 %i.d, 2147483640
  %n.vec151 = zext nneg i32 %i.af to i64
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index153 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load154 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !22 ; 3 uses
  %wide.load155 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.ai = lshr <4 x i32> %wide.load154, splat (i32 4)
  %i.aj = lshr <4 x i32> %wide.load155, splat (i32 4)
  %i.ak = and <4 x i32> %i.ai, splat (i32 252645135)
  %i.al = and <4 x i32> %i.aj, splat (i32 252645135)
  %i.am = shl <4 x i32> %wide.load154, splat (i32 4)
  %i.an = shl <4 x i32> %wide.load155, splat (i32 4)
  %i.ao = and <4 x i32> %i.am, splat (i32 -252645136)
  %i.ap = and <4 x i32> %i.an, splat (i32 -252645136)
  %i.aq = or disjoint <4 x i32> %i.ao, %i.ak
  %i.ar = or disjoint <4 x i32> %i.ap, %i.al
  %i.as = or <4 x i32> %i.aq, %wide.load154
  %i.at = or <4 x i32> %i.ar, %wide.load155
  store <4 x i32> %i.as, ptr %i.ag, align 4, !tbaa !22
  store <4 x i32> %i.at, ptr %i.ah, align 4, !tbaa !22
  %index.next156 = add nuw i64 %index153, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.au, label %.loopexit, label %vector.body152, !llvm.loop !198

.preheader72:                                     ; preds = %bb.a
  %i.av = icmp sgt i32 %i.d, 0
  br i1 %i.av, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %.preheader72
  %min.iters.check161 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check161, label %.lr.ph86, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph86.preheader
  %i.aw = and i32 %i.d, 2147483640
  %n.vec163 = zext nneg i32 %i.aw to i64
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index165 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load166 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !22 ; 3 uses
  %wide.load167 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !22 ; 3 uses
  %i.az = lshr <4 x i32> %wide.load166, splat (i32 2)
  %i.ba = lshr <4 x i32> %wide.load167, splat (i32 2)
  %i.bb = and <4 x i32> %i.az, splat (i32 858993459)
  %i.bc = and <4 x i32> %i.ba, splat (i32 858993459)
  %i.bd = shl <4 x i32> %wide.load166, splat (i32 2)
  %i.be = shl <4 x i32> %wide.load167, splat (i32 2)
  %i.bf = and <4 x i32> %i.bd, splat (i32 -858993460)
  %i.bg = and <4 x i32> %i.be, splat (i32 -858993460)
  %i.bh = or disjoint <4 x i32> %i.bf, %i.bb
  %i.bi = or disjoint <4 x i32> %i.bg, %i.bc
  %i.bj = or <4 x i32> %i.bh, %wide.load166
  %i.bk = or <4 x i32> %i.bi, %wide.load167
  store <4 x i32> %i.bj, ptr %i.ax, align 4, !tbaa !22
  store <4 x i32> %i.bk, ptr %i.ay, align 4, !tbaa !22
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.bl, label %.loopexit, label %vector.body164, !llvm.loop !199

.preheader70:                                     ; preds = %bb.a
  %i.bm = icmp sgt i32 %i.d, 0
  br i1 %i.bm, label %.lr.ph88.preheader, label %.loopexit

.lr.ph88.preheader:                               ; preds = %.preheader70
  %min.iters.check173 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check173, label %.lr.ph88, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph88.preheader
  %i.bn = and i32 %i.d, 2147483640
  %n.vec175 = zext nneg i32 %i.bn to i64
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index177 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !22 ; 3 uses
  %wide.load179 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !22 ; 3 uses
  %i.bq = lshr <4 x i32> %wide.load178, splat (i32 1)
  %i.br = lshr <4 x i32> %wide.load179, splat (i32 1)
  %i.bs = and <4 x i32> %i.bq, splat (i32 1431655765)
  %i.bt = and <4 x i32> %i.br, splat (i32 1431655765)
  %i.bu = shl <4 x i32> %wide.load178, splat (i32 1)
  %i.bv = shl <4 x i32> %wide.load179, splat (i32 1)
  %i.bw = and <4 x i32> %i.bu, splat (i32 -1431655766)
  %i.bx = and <4 x i32> %i.bv, splat (i32 -1431655766)
  %i.by = or disjoint <4 x i32> %i.bw, %i.bs
  %i.bz = or disjoint <4 x i32> %i.bx, %i.bt
  %i.ca = or <4 x i32> %i.by, %wide.load178
  %i.cb = or <4 x i32> %i.bz, %wide.load179
  store <4 x i32> %i.ca, ptr %i.bo, align 4, !tbaa !22
  store <4 x i32> %i.cb, ptr %i.bp, align 4, !tbaa !22
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.cc, label %.loopexit, label %vector.body176, !llvm.loop !200

.lr.ph88:                                         ; preds = %.lr.ph88.preheader
  %i.cd = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.ce = lshr i32 %i.cd, 1
  %i.cf = and i32 %i.ce, 1431655765
  %i.cg = shl i32 %i.cd, 1
  %i.ch = and i32 %i.cg, -1431655766
  %i.ci = or disjoint i32 %i.ch, %i.cf
  %i.cj = or i32 %i.ci, %i.cd
  store i32 %i.cj, ptr %0, align 4, !tbaa !22
  %exitcond118.not = icmp eq i32 %i.d, 1
  br i1 %exitcond118.not, label %.loopexit, label %.lr.ph88.1

.lr.ph88.1:                                       ; preds = %.lr.ph88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22 ; 3 uses
end_hunk_0
begin_hunk_1_@Kit_TruthExist:bb.a

.lr.ph84.1:                                       ; preds = %.lr.ph84
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !22 ; 3 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 252645135
  %i.gu = shl i32 %i.gr, 4
  %i.gv = and i32 %i.gu, -252645136
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %i.gx = or i32 %i.gw, %i.gr
  store i32 %i.gx, ptr %i.gq, align 4, !tbaa !22
  %exitcond108.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond108.not.1, label %.loopexit, label %.lr.ph84.2

.lr.ph84.2:                                       ; preds = %.lr.ph84.1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !22 ; 3 uses
  %i.ha = lshr i32 %i.gz, 4
  %i.hb = and i32 %i.ha, 252645135
  %i.hc = shl i32 %i.gz, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = or disjoint i32 %i.hd, %i.hb
  %i.hf = or i32 %i.he, %i.gz
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22 ; 3 uses
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = and i32 %i.hi, 252645135
  %i.hk = shl i32 %i.hh, 4
  %i.hl = and i32 %i.hk, -252645136
  %i.hm = or disjoint i32 %i.hl, %i.hj
  %i.hn = or i32 %i.hm, %i.hh
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !22
  %exitcond108.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond108.not.3, label %.loopexit, label %.lr.ph84.4

.lr.ph84.4:                                       ; preds = %.lr.ph84.2
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !22 ; 3 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hq, 252645135
  %i.hs = shl i32 %i.hp, 4
  %i.ht = and i32 %i.hs, -252645136
  %i.hu = or disjoint i32 %i.ht, %i.hr
  %i.hv = or i32 %i.hu, %i.hp
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22 ; 3 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hy, 252645135
  %i.ia = shl i32 %i.hx, 4
  %i.ib = and i32 %i.ia, -252645136
  %i.ic = or disjoint i32 %i.ib, %i.hz
  %i.id = or i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !22
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !22 ; 3 uses
  %i.ig = lshr i32 %i.if, 4
  %i.ih = and i32 %i.ig, 252645135
  %i.ii = shl i32 %i.if, 4
  %i.ij = and i32 %i.ii, -252645136
  %i.ik = or disjoint i32 %i.ij, %i.ih
  %i.il = or i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ie, align 4, !tbaa !22
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph82.preheader
  %i.im = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.in = lshr i32 %i.im, 8
  %i.io = and i32 %i.in, 16711935
  %i.ip = shl i32 %i.im, 8
  %i.iq = and i32 %i.ip, -16711936
  %i.ir = or disjoint i32 %i.iq, %i.io
  %i.is = or i32 %i.ir, %i.im
  store i32 %i.is, ptr %0, align 4, !tbaa !22
  %exitcond103.not = icmp eq i32 %i.d, 1
  br i1 %exitcond103.not, label %.loopexit, label %.lr.ph82.1

.lr.ph82.1:                                       ; preds = %.lr.ph82
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !22 ; 3 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = and i32 %i.iv, 16711935
  %i.ix = shl i32 %i.iu, 8
  %i.iy = and i32 %i.ix, -16711936
  %i.iz = or disjoint i32 %i.iy, %i.iw
  %i.ja = or i32 %i.iz, %i.iu
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !22
  %exitcond103.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond103.not.1, label %.loopexit, label %.lr.ph82.2

.lr.ph82.2:                                       ; preds = %.lr.ph82.1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22 ; 3 uses
  %i.jd = lshr i32 %i.jc, 8
  %i.je = and i32 %i.jd, 16711935
  %i.jf = shl i32 %i.jc, 8
  %i.jg = and i32 %i.jf, -16711936
  %i.jh = or disjoint i32 %i.jg, %i.je
  %i.ji = or i32 %i.jh, %i.jc
  store i32 %i.ji, ptr %i.jb, align 4, !tbaa !22
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !22 ; 3 uses
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = and i32 %i.jl, 16711935
  %i.jn = shl i32 %i.jk, 8
  %i.jo = and i32 %i.jn, -16711936
  %i.jp = or disjoint i32 %i.jo, %i.jm
  %i.jq = or i32 %i.jp, %i.jk
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !22
  %exitcond103.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph82.4

.lr.ph82.4:                                       ; preds = %.lr.ph82.2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22 ; 3 uses
  %i.jt = lshr i32 %i.js, 8
  %i.ju = and i32 %i.jt, 16711935
  %i.jv = shl i32 %i.js, 8
  %i.jw = and i32 %i.jv, -16711936
  %i.jx = or disjoint i32 %i.jw, %i.ju
  %i.jy = or i32 %i.jx, %i.js
  store i32 %i.jy, ptr %i.jr, align 4, !tbaa !22
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !22 ; 3 uses
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = and i32 %i.kb, 16711935
  %i.kd = shl i32 %i.ka, 8
  %i.ke = and i32 %i.kd, -16711936
  %i.kf = or disjoint i32 %i.ke, %i.kc
  %i.kg = or i32 %i.kf, %i.ka
  store i32 %i.kg, ptr %i.jz, align 4, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !22 ; 3 uses
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = and i32 %i.kj, 16711935
  %i.kl = shl i32 %i.ki, 8
  %i.km = and i32 %i.kl, -16711936
  %i.kn = or disjoint i32 %i.km, %i.kk
  %i.ko = or i32 %i.kn, %i.ki
  store i32 %i.ko, ptr %i.kh, align 4, !tbaa !22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.kp = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.kq = tail call i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 16)
  %i.kr = or i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %0, align 4, !tbaa !22
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !22 ; 3 uses
  %i.ku = tail call i32 @llvm.fshl.i32(i32 %i.kt, i32 %i.kt, i32 16)
  %i.kv = or i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.ks, align 4, !tbaa !22
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !22 ; 3 uses
  %i.ky = tail call i32 @llvm.fshl.i32(i32 %i.kx, i32 %i.kx, i32 16)
  %i.kz = or i32 %i.ky, %i.kx
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !22 ; 3 uses
  %i.lc = tail call i32 @llvm.fshl.i32(i32 %i.lb, i32 %i.lb, i32 16)
  %i.ld = or i32 %i.lc, %i.lb
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !22
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !22 ; 3 uses
  %i.lg = tail call i32 @llvm.fshl.i32(i32 %i.lf, i32 %i.lf, i32 16)
  %i.lh = or i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !22
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !22 ; 3 uses
  %i.lk = tail call i32 @llvm.fshl.i32(i32 %i.lj, i32 %i.lj, i32 16)
  %i.ll = or i32 %i.lk, %i.lj
  store i32 %i.ll, ptr %i.li, align 4, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !22 ; 3 uses
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 16)
  %i.lp = or i32 %i.lo, %i.ln
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.lq = add nsw i32 %2, -5                      ; 3 uses
  %i.lr = shl nuw i32 1, %i.lq                    ; 4 uses
  %i.ls = icmp sgt i32 %i.d, 0
  br i1 %i.ls, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.lq, 31
  %i.lt = shl i32 2, %i.lq                        ; 2 uses
  %i.lu = sext i32 %i.lt to i64
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.lv = sext i32 %i.lr to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.lr, i32 1) ; 2 uses
  %wide.trip.count122 = zext nneg i32 %smax to i64 ; 4 uses
  %i.lw = shl nsw i64 %i.lv, 2                    ; 2 uses
  %i.lx = shl nuw nsw i64 %wide.trip.count122, 2  ; 2 uses
  %i.ly = getelementptr i8, ptr %0, i64 %i.lw
  %i.lz = getelementptr i8, ptr %i.ly, i64 %i.lx
  %i.ma = getelementptr i8, ptr %0, i64 %i.lw
  %i.mb = getelementptr i8, ptr %0, i64 %i.lx
  %min.iters.check189 = icmp slt i32 %i.lr, 8
  %bound0 = icmp ult ptr %0, %i.lz
  %bound1 = icmp ult ptr %i.ma, %i.mb
  %found.conflict = and i1 %bound0, %bound1
  %n.vec189 = and i64 %wide.trip.count122, 2147483640
  %xtraiter = and i64 %wide.trip.count122, 1
  %i.mc = icmp slt i32 %i.lr, 2
  %unroll_iter = and i64 %wide.trip.count122, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.092 = phi i32 [ %i.mx, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06791 = phi ptr [ %i.mw, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06791, i64 %i.lv ; 4 uses
  %brmerge = select i1 %min.iters.check189, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph186.preheader, label %vector.body190

scalar.ph186.preheader:                           ; preds = %.preheader
  br i1 %i.mc, label %scalar.ph186.epil.preheader, label %scalar.ph186

vector.body190:                                   ; preds = %.preheader, %vector.body190
  %index191 = phi i64 [ %index.next196, %vector.body190 ], [ 0, %.preheader ] ; 3 uses
  %i.md = getelementptr [4 x i8], ptr %invariant.gep, i64 %index191 ; 3 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16     ; 2 uses
  %wide.load192 = load <4 x i32>, ptr %i.md, align 4, !tbaa !22, !alias.scope !207
  %wide.load193 = load <4 x i32>, ptr %i.me, align 4, !tbaa !22, !alias.scope !207
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %index191 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %wide.load194 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !22, !alias.scope !208, !noalias !207
  %wide.load195 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !22, !alias.scope !208, !noalias !207
  %i.mh = or <4 x i32> %wide.load194, %wide.load192 ; 2 uses
  %i.mi = or <4 x i32> %wide.load195, %wide.load193 ; 2 uses
  store <4 x i32> %i.mh, ptr %i.mf, align 4, !tbaa !22, !alias.scope !208, !noalias !207
  store <4 x i32> %i.mi, ptr %i.mg, align 4, !tbaa !22, !alias.scope !208, !noalias !207
  store <4 x i32> %i.mh, ptr %i.md, align 4, !tbaa !22, !alias.scope !207
  store <4 x i32> %i.mi, ptr %i.me, align 4, !tbaa !22, !alias.scope !207
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.mj = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.mj, label %._crit_edge, label %vector.body190, !llvm.loop !204

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %scalar.ph186 ], [ 0, %scalar.ph186.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph186 ], [ 0, %scalar.ph186.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119 ; 2 uses
  %i.mk = load i32, ptr %gep, align 4, !tbaa !22
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !22
  %i.mn = or i32 %i.mm, %i.mk                     ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !22
  store i32 %i.mn, ptr %gep, align 4, !tbaa !22
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next120 ; 2 uses
  %i.mo = load i32, ptr %gep.1, align 4, !tbaa !22
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv.next120 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !22
  %i.mr = or i32 %i.mq, %i.mo                     ; 2 uses
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !22
  store i32 %i.mr, ptr %gep.1, align 4, !tbaa !22
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph186, !llvm.loop !205

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph186
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph186.epil.preheader

scalar.ph186.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph186.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %scalar.ph186.preheader ], [ %indvars.iv.next120.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119.epil.init ; 2 uses
  %i.ms = load i32, ptr %gep.epil, align 4, !tbaa !22
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119.epil.init ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !22
  %i.mv = or i32 %i.mu, %i.ms                     ; 2 uses
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !22
  store i32 %i.mv, ptr %gep.epil, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body190, %scalar.ph186.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.mw = getelementptr inbounds [4 x i8], ptr %.06791, i64 %i.lu
  %i.mx = add nsw i32 %.092, %i.lt                ; 2 uses
  %i.my = icmp slt i32 %i.mx, %i.d
  br i1 %i.my, label %.preheader, label %.loopexit, !llvm.loop !206

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body140, %.lr.ph82, %.lr.ph82.1, %.lr.ph82.2, %.lr.ph82.4, %vector.body152, %.lr.ph84, %.lr.ph84.1, %.lr.ph84.2, %.lr.ph84.4, %vector.body164, %.lr.ph86, %.lr.ph86.1, %.lr.ph86.2, %.lr.ph86.4, %vector.body176, %.lr.ph88, %.lr.ph88.1, %.lr.ph88.2, %.lr.ph88.4, %._crit_edge, %.preheader78, %.preheader76, %.preheader74, %.preheader72, %.preheader70, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthExistNew(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.c = icmp slt i32 %2, 6
  %i.d = add nsw i32 %2, -5
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 26 uses
  switch i32 %3, label %bb.b [
    i32 0, label %.preheader85
    i32 1, label %.preheader87
    i32 2, label %.preheader89
    i32 3, label %.preheader91
    i32 4, label %.preheader93
  ]

.preheader93:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader93
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader261, label %vector.ph

.lr.ph.preheader261:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader261.new

.lr.ph.preheader261.new:                          ; preds = %.lr.ph.preheader261
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !22 ; 3 uses
  %wide.load151 = load <4 x i32>, ptr %i.k, align 4, !tbaa !22 ; 3 uses
  %i.l = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.m = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load151, <4 x i32> %wide.load151, <4 x i32> splat (i32 16))
  %i.n = or <4 x i32> %i.l, %wide.load
  %i.o = or <4 x i32> %i.m, %wide.load151
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !22
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.loopexit, label %vector.body, !llvm.loop !209

.preheader91:                                     ; preds = %bb.a
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph97.preheader, label %.loopexit

.lr.ph97.preheader:                               ; preds = %.preheader91
  %wide.trip.count118 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.f, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check157 = icmp ugt i64 %i.t, -32
  %or.cond244 = or i1 %min.iters.check155, %diff.check157
  br i1 %or.cond244, label %.lr.ph97.preheader258, label %vector.ph158

.lr.ph97.preheader258:                            ; preds = %.lr.ph97.preheader
  %xtraiter265 = and i64 %wide.trip.count118, 1
  %i.u = icmp eq i32 %i.f, 1
  br i1 %i.u, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader258.new

.lr.ph97.preheader258.new:                        ; preds = %.lr.ph97.preheader258
  %unroll_iter269 = and i64 %wide.trip.count118, 2147483646
  br label %.lr.ph97

vector.ph158:                                     ; preds = %.lr.ph97.preheader
  %n.vec159 = and i64 %wide.trip.count118, 2147483640
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next164, %vector.body160 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index161 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load162 = load <4 x i32>, ptr %i.v, align 4, !tbaa !22 ; 3 uses
  %wide.load163 = load <4 x i32>, ptr %i.w, align 4, !tbaa !22 ; 3 uses
  %i.x = lshr <4 x i32> %wide.load162, splat (i32 8)
  %i.y = lshr <4 x i32> %wide.load163, splat (i32 8)
  %i.z = and <4 x i32> %i.x, splat (i32 16711935)
  %i.aa = and <4 x i32> %i.y, splat (i32 16711935)
  %i.ab = shl <4 x i32> %wide.load162, splat (i32 8)
  %i.ac = shl <4 x i32> %wide.load163, splat (i32 8)
  %i.ad = and <4 x i32> %i.ab, splat (i32 -16711936)
  %i.ae = and <4 x i32> %i.ac, splat (i32 -16711936)
  %i.af = or disjoint <4 x i32> %i.ad, %i.z
  %i.ag = or disjoint <4 x i32> %i.ae, %i.aa
  %i.ah = or <4 x i32> %i.af, %wide.load162
  %i.ai = or <4 x i32> %i.ag, %wide.load163
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index161 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !22
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !22
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.al, label %.loopexit, label %vector.body160, !llvm.loop !210

.preheader89:                                     ; preds = %bb.a
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader89
  %wide.trip.count123 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check171 = icmp ult i32 %i.f, 8
  %i.an = sub i64 %i.a, %i.b
  %diff.check173 = icmp ugt i64 %i.an, -32
  %or.cond245 = or i1 %min.iters.check171, %diff.check173
  br i1 %or.cond245, label %.lr.ph99.preheader255, label %vector.ph174

.lr.ph99.preheader255:                            ; preds = %.lr.ph99.preheader
  %xtraiter271 = and i64 %wide.trip.count123, 1
  %i.ao = icmp eq i32 %i.f, 1
  br i1 %i.ao, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader255.new
end_hunk_1
begin_hunk_2_@Kit_TruthExistNew:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod280)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv125.epil.init
  %i.it = load i32, ptr %i.is, align 4, !tbaa !22 ; 3 uses
  %i.iu = lshr i32 %i.it, 2
  %i.iv = and i32 %i.iu, 858993459
  %i.iw = shl i32 %i.it, 2
  %i.ix = and i32 %i.iw, -858993460
  %i.iy = or disjoint i32 %i.ix, %i.iv
  %i.iz = or i32 %i.iy, %i.it
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv125.epil.init
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !22
  br label %.loopexit

.loopexit.loopexit256.unr-lcssa:                  ; preds = %.lr.ph99
  %lcmp.mod273.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod273.not, label %.loopexit, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %.loopexit.loopexit256.unr-lcssa, %.lr.ph99.preheader255
  %indvars.iv120.epil.init = phi i64 [ 0, %.lr.ph99.preheader255 ], [ %indvars.iv.next121.1, %.loopexit.loopexit256.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv120.epil.init
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22 ; 3 uses
  %i.jd = lshr i32 %i.jc, 4
  %i.je = and i32 %i.jd, 252645135
  %i.jf = shl i32 %i.jc, 4
  %i.jg = and i32 %i.jf, -252645136
  %i.jh = or disjoint i32 %i.jg, %i.je
  %i.ji = or i32 %i.jh, %i.jc
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv120.epil.init
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !22
  br label %.loopexit

.loopexit.loopexit259.unr-lcssa:                  ; preds = %.lr.ph97
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod267.not, label %.loopexit, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %.loopexit.loopexit259.unr-lcssa, %.lr.ph97.preheader258
  %indvars.iv115.epil.init = phi i64 [ 0, %.lr.ph97.preheader258 ], [ %indvars.iv.next116.1, %.loopexit.loopexit259.unr-lcssa ] ; 2 uses
  %lcmp.mod268 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv115.epil.init
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !22 ; 3 uses
  %i.jm = lshr i32 %i.jl, 8
  %i.jn = and i32 %i.jm, 16711935
  %i.jo = shl i32 %i.jl, 8
  %i.jp = and i32 %i.jo, -16711936
  %i.jq = or disjoint i32 %i.jp, %i.jn
  %i.jr = or i32 %i.jq, %i.jl
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv115.epil.init
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !22
  br label %.loopexit

.loopexit.loopexit262.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit262.unr-lcssa, %.lr.ph.preheader261
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader261 ], [ %indvars.iv.next.3, %.loopexit.loopexit262.unr-lcssa ]
  %lcmp.mod264 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod264)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !22 ; 3 uses
  %i.jv = tail call i32 @llvm.fshl.i32(i32 %i.ju, i32 %i.ju, i32 16)
  %i.jw = or i32 %i.jv, %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !22
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !222

.loopexit:                                        ; preds = %vector.body, %.loopexit.loopexit262.unr-lcssa, %.lr.ph.epil, %vector.body160, %.lr.ph97.epil.preheader, %.loopexit.loopexit259.unr-lcssa, %vector.body176, %.lr.ph99.epil.preheader, %.loopexit.loopexit256.unr-lcssa, %vector.body192, %.lr.ph101.epil.preheader, %.loopexit.loopexit253.unr-lcssa, %vector.body208, %.lr.ph103.epil.preheader, %.loopexit.loopexit250.unr-lcssa, %._crit_edge, %.preheader93, %.preheader91, %.preheader89, %.preheader87, %.preheader85, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthExistSet(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  %i.b = add nsw i32 %2, -5
  %i.c = shl nuw i32 1, %i.b
  %spec.select.i = select i1 %i.a, i32 1, i32 %i.c ; 4 uses
  %i.d = icmp sgt i32 %spec.select.i, 0
  br i1 %i.d, label %select.unfold.preheader.i, label %Kit_TruthCopy.exit

select.unfold.preheader.i:                        ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = zext nneg i32 %spec.select.i to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  %i.h = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %select.unfold.i.preheader, label %vector.ph

select.unfold.i.preheader:                        ; preds = %select.unfold.preheader.i
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader, %select.unfold.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %select.unfold.i.prol ], [ %i.g, %select.unfold.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.prol ], [ 0, %select.unfold.i.preheader ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.prol
  store i32 %i.j, ptr %i.k, align 4, !tbaa !22
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol, !llvm.loop !223

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.g, %select.unfold.i.preheader ], [ %indvars.iv.next.i.prol, %select.unfold.i.prol ]
  %i.l = icmp ult i32 %spec.select.i, 4
  br i1 %i.l, label %Kit_TruthCopy.exit, label %select.unfold.i

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.g, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = xor i64 %index, -1
  %i.n = add i64 %i.m, %i.g                       ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -12
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -28
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !22
  %wide.load13 = load <4 x i32>, ptr %i.q, align 4, !tbaa !22
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !22
  store <4 x i32> %wide.load13, ptr %i.t, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %Kit_TruthCopy.exit, label %vector.body, !llvm.loop !224

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %select.unfold.i ], [ %indvars.iv.i.unr, %select.unfold.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.3
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.3
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !22
  %i.ah = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ah, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !225

Kit_TruthCopy.exit:                               ; preds = %vector.body, %select.unfold.i.prol.loopexit, %select.unfold.i, %bb.a
  %i.ai = icmp sgt i32 %2, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Kit_TruthCopy.exit, %bb.c
  %.011 = phi i32 [ %i.al, %bb.c ], [ 0, %Kit_TruthCopy.exit ] ; 3 uses
  %i.aj = shl nuw i32 1, %.011
  %i.ak = and i32 %i.aj, %3
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @Kit_TruthExist(ptr noundef %0, i32 noundef %2, i32 noundef %.011)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.al = add nuw nsw i32 %.011, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.c, %Kit_TruthCopy.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthForall(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  %i.b = add nsw i32 %1, -5
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 32 uses
  switch i32 %2, label %bb.b [
    i32 0, label %.preheader70
    i32 1, label %.preheader72
    i32 2, label %.preheader74
    i32 3, label %.preheader76
    i32 4, label %.preheader78
  ]

.preheader78:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader78
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.f = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.f to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !22 ; 3 uses
  %wide.load135 = load <4 x i32>, ptr %i.h, align 4, !tbaa !22 ; 3 uses
  %i.i = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.j = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load135, <4 x i32> %wide.load135, <4 x i32> splat (i32 16))
  %i.k = and <4 x i32> %i.i, %wide.load
  %i.l = and <4 x i32> %i.j, %wide.load135
  store <4 x i32> %i.k, ptr %i.g, align 4, !tbaa !22
  store <4 x i32> %i.l, ptr %i.h, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %.loopexit, label %vector.body, !llvm.loop !227

.preheader76:                                     ; preds = %bb.a
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph82.preheader, label %.loopexit

.lr.ph82.preheader:                               ; preds = %.preheader76
  %min.iters.check137 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check137, label %.lr.ph82, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph82.preheader
  %i.o = and i32 %i.d, 2147483640
  %n.vec139 = zext nneg i32 %i.o to i64
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next144, %vector.body140 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index141 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load142 = load <4 x i32>, ptr %i.p, align 4, !tbaa !22 ; 3 uses
  %wide.load143 = load <4 x i32>, ptr %i.q, align 4, !tbaa !22 ; 3 uses
  %i.r = lshr <4 x i32> %wide.load142, splat (i32 8)
  %i.s = lshr <4 x i32> %wide.load143, splat (i32 8)
  %i.t = and <4 x i32> %i.r, splat (i32 16711935)
  %i.u = and <4 x i32> %i.s, splat (i32 16711935)
  %i.v = shl <4 x i32> %wide.load142, splat (i32 8)
  %i.w = shl <4 x i32> %wide.load143, splat (i32 8)
  %i.x = and <4 x i32> %i.v, splat (i32 -16711936)
  %i.y = and <4 x i32> %i.w, splat (i32 -16711936)
  %i.z = or disjoint <4 x i32> %i.t, %i.x
  %i.aa = or disjoint <4 x i32> %i.u, %i.y
  %i.ab = and <4 x i32> %i.z, %wide.load142
  %i.ac = and <4 x i32> %i.aa, %wide.load143
  store <4 x i32> %i.ab, ptr %i.p, align 4, !tbaa !22
  store <4 x i32> %i.ac, ptr %i.q, align 4, !tbaa !22
  %index.next144 = add nuw i64 %index141, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next144, %n.vec139
  br i1 %i.ad, label %.loopexit, label %vector.body140, !llvm.loop !228

.preheader74:                                     ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.d, 0
  br i1 %i.ae, label %.lr.ph84.preheader, label %.loopexit

.lr.ph84.preheader:                               ; preds = %.preheader74
  %min.iters.check149 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check149, label %.lr.ph84, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph84.preheader
  %i.af = and i32 %i.d, 2147483640
  %n.vec151 = zext nneg i32 %i.af to i64
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index153 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load154 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !22 ; 3 uses
  %wide.load155 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.ai = lshr <4 x i32> %wide.load154, splat (i32 4)
  %i.aj = lshr <4 x i32> %wide.load155, splat (i32 4)
  %i.ak = and <4 x i32> %i.ai, splat (i32 252645135)
  %i.al = and <4 x i32> %i.aj, splat (i32 252645135)
  %i.am = shl <4 x i32> %wide.load154, splat (i32 4)
  %i.an = shl <4 x i32> %wide.load155, splat (i32 4)
  %i.ao = and <4 x i32> %i.am, splat (i32 -252645136)
  %i.ap = and <4 x i32> %i.an, splat (i32 -252645136)
  %i.aq = or disjoint <4 x i32> %i.ak, %i.ao
  %i.ar = or disjoint <4 x i32> %i.al, %i.ap
  %i.as = and <4 x i32> %i.aq, %wide.load154
  %i.at = and <4 x i32> %i.ar, %wide.load155
  store <4 x i32> %i.as, ptr %i.ag, align 4, !tbaa !22
  store <4 x i32> %i.at, ptr %i.ah, align 4, !tbaa !22
  %index.next156 = add nuw i64 %index153, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.au, label %.loopexit, label %vector.body152, !llvm.loop !229

.preheader72:                                     ; preds = %bb.a
  %i.av = icmp sgt i32 %i.d, 0
  br i1 %i.av, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %.preheader72
  %min.iters.check161 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check161, label %.lr.ph86, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph86.preheader
  %i.aw = and i32 %i.d, 2147483640
  %n.vec163 = zext nneg i32 %i.aw to i64
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index165 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load166 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !22 ; 3 uses
  %wide.load167 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !22 ; 3 uses
  %i.az = lshr <4 x i32> %wide.load166, splat (i32 2)
  %i.ba = lshr <4 x i32> %wide.load167, splat (i32 2)
  %i.bb = and <4 x i32> %i.az, splat (i32 858993459)
  %i.bc = and <4 x i32> %i.ba, splat (i32 858993459)
  %i.bd = shl <4 x i32> %wide.load166, splat (i32 2)
  %i.be = shl <4 x i32> %wide.load167, splat (i32 2)
  %i.bf = and <4 x i32> %i.bd, splat (i32 -858993460)
  %i.bg = and <4 x i32> %i.be, splat (i32 -858993460)
  %i.bh = or disjoint <4 x i32> %i.bb, %i.bf
  %i.bi = or disjoint <4 x i32> %i.bc, %i.bg
  %i.bj = and <4 x i32> %i.bh, %wide.load166
  %i.bk = and <4 x i32> %i.bi, %wide.load167
  store <4 x i32> %i.bj, ptr %i.ax, align 4, !tbaa !22
  store <4 x i32> %i.bk, ptr %i.ay, align 4, !tbaa !22
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.bl, label %.loopexit, label %vector.body164, !llvm.loop !230

.preheader70:                                     ; preds = %bb.a
  %i.bm = icmp sgt i32 %i.d, 0
  br i1 %i.bm, label %.lr.ph88.preheader, label %.loopexit

.lr.ph88.preheader:                               ; preds = %.preheader70
  %min.iters.check173 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check173, label %.lr.ph88, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph88.preheader
  %i.bn = and i32 %i.d, 2147483640
  %n.vec175 = zext nneg i32 %i.bn to i64
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index177 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !22 ; 3 uses
  %wide.load179 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !22 ; 3 uses
  %i.bq = lshr <4 x i32> %wide.load178, splat (i32 1)
  %i.br = lshr <4 x i32> %wide.load179, splat (i32 1)
  %i.bs = and <4 x i32> %i.bq, splat (i32 1431655765)
  %i.bt = and <4 x i32> %i.br, splat (i32 1431655765)
  %i.bu = shl <4 x i32> %wide.load178, splat (i32 1)
  %i.bv = shl <4 x i32> %wide.load179, splat (i32 1)
  %i.bw = and <4 x i32> %i.bu, splat (i32 -1431655766)
  %i.bx = and <4 x i32> %i.bv, splat (i32 -1431655766)
  %i.by = or disjoint <4 x i32> %i.bs, %i.bw
  %i.bz = or disjoint <4 x i32> %i.bt, %i.bx
  %i.ca = and <4 x i32> %i.by, %wide.load178
  %i.cb = and <4 x i32> %i.bz, %wide.load179
  store <4 x i32> %i.ca, ptr %i.bo, align 4, !tbaa !22
  store <4 x i32> %i.cb, ptr %i.bp, align 4, !tbaa !22
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.cc, label %.loopexit, label %vector.body176, !llvm.loop !231

.lr.ph88:                                         ; preds = %.lr.ph88.preheader
  %i.cd = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.ce = lshr i32 %i.cd, 1
  %i.cf = and i32 %i.ce, 1431655765
  %i.cg = shl i32 %i.cd, 1
  %i.ch = and i32 %i.cg, -1431655766
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = and i32 %i.ci, %i.cd
  store i32 %i.cj, ptr %0, align 4, !tbaa !22
  %exitcond118.not = icmp eq i32 %i.d, 1
  br i1 %exitcond118.not, label %.loopexit, label %.lr.ph88.1

.lr.ph88.1:                                       ; preds = %.lr.ph88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22 ; 3 uses
end_hunk_2
begin_hunk_3_@Kit_TruthForall:bb.a

.lr.ph84.1:                                       ; preds = %.lr.ph84
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !22 ; 3 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 252645135
  %i.gu = shl i32 %i.gr, 4
  %i.gv = and i32 %i.gu, -252645136
  %i.gw = or disjoint i32 %i.gt, %i.gv
  %i.gx = and i32 %i.gw, %i.gr
  store i32 %i.gx, ptr %i.gq, align 4, !tbaa !22
  %exitcond108.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond108.not.1, label %.loopexit, label %.lr.ph84.2

.lr.ph84.2:                                       ; preds = %.lr.ph84.1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !22 ; 3 uses
  %i.ha = lshr i32 %i.gz, 4
  %i.hb = and i32 %i.ha, 252645135
  %i.hc = shl i32 %i.gz, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = and i32 %i.he, %i.gz
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22 ; 3 uses
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = and i32 %i.hi, 252645135
  %i.hk = shl i32 %i.hh, 4
  %i.hl = and i32 %i.hk, -252645136
  %i.hm = or disjoint i32 %i.hj, %i.hl
  %i.hn = and i32 %i.hm, %i.hh
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !22
  %exitcond108.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond108.not.3, label %.loopexit, label %.lr.ph84.4

.lr.ph84.4:                                       ; preds = %.lr.ph84.2
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !22 ; 3 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hq, 252645135
  %i.hs = shl i32 %i.hp, 4
  %i.ht = and i32 %i.hs, -252645136
  %i.hu = or disjoint i32 %i.hr, %i.ht
  %i.hv = and i32 %i.hu, %i.hp
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22 ; 3 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hy, 252645135
  %i.ia = shl i32 %i.hx, 4
  %i.ib = and i32 %i.ia, -252645136
  %i.ic = or disjoint i32 %i.hz, %i.ib
  %i.id = and i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !22
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !22 ; 3 uses
  %i.ig = lshr i32 %i.if, 4
  %i.ih = and i32 %i.ig, 252645135
  %i.ii = shl i32 %i.if, 4
  %i.ij = and i32 %i.ii, -252645136
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = and i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ie, align 4, !tbaa !22
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph82.preheader
  %i.im = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.in = lshr i32 %i.im, 8
  %i.io = and i32 %i.in, 16711935
  %i.ip = shl i32 %i.im, 8
  %i.iq = and i32 %i.ip, -16711936
  %i.ir = or disjoint i32 %i.io, %i.iq
  %i.is = and i32 %i.ir, %i.im
  store i32 %i.is, ptr %0, align 4, !tbaa !22
  %exitcond103.not = icmp eq i32 %i.d, 1
  br i1 %exitcond103.not, label %.loopexit, label %.lr.ph82.1

.lr.ph82.1:                                       ; preds = %.lr.ph82
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !22 ; 3 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = and i32 %i.iv, 16711935
  %i.ix = shl i32 %i.iu, 8
  %i.iy = and i32 %i.ix, -16711936
  %i.iz = or disjoint i32 %i.iw, %i.iy
  %i.ja = and i32 %i.iz, %i.iu
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !22
  %exitcond103.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond103.not.1, label %.loopexit, label %.lr.ph82.2

.lr.ph82.2:                                       ; preds = %.lr.ph82.1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22 ; 3 uses
  %i.jd = lshr i32 %i.jc, 8
  %i.je = and i32 %i.jd, 16711935
  %i.jf = shl i32 %i.jc, 8
  %i.jg = and i32 %i.jf, -16711936
  %i.jh = or disjoint i32 %i.je, %i.jg
  %i.ji = and i32 %i.jh, %i.jc
  store i32 %i.ji, ptr %i.jb, align 4, !tbaa !22
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !22 ; 3 uses
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = and i32 %i.jl, 16711935
  %i.jn = shl i32 %i.jk, 8
  %i.jo = and i32 %i.jn, -16711936
  %i.jp = or disjoint i32 %i.jm, %i.jo
  %i.jq = and i32 %i.jp, %i.jk
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !22
  %exitcond103.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph82.4

.lr.ph82.4:                                       ; preds = %.lr.ph82.2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22 ; 3 uses
  %i.jt = lshr i32 %i.js, 8
  %i.ju = and i32 %i.jt, 16711935
  %i.jv = shl i32 %i.js, 8
  %i.jw = and i32 %i.jv, -16711936
  %i.jx = or disjoint i32 %i.ju, %i.jw
  %i.jy = and i32 %i.jx, %i.js
  store i32 %i.jy, ptr %i.jr, align 4, !tbaa !22
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !22 ; 3 uses
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = and i32 %i.kb, 16711935
  %i.kd = shl i32 %i.ka, 8
  %i.ke = and i32 %i.kd, -16711936
  %i.kf = or disjoint i32 %i.kc, %i.ke
  %i.kg = and i32 %i.kf, %i.ka
  store i32 %i.kg, ptr %i.jz, align 4, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !22 ; 3 uses
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = and i32 %i.kj, 16711935
  %i.kl = shl i32 %i.ki, 8
  %i.km = and i32 %i.kl, -16711936
  %i.kn = or disjoint i32 %i.kk, %i.km
  %i.ko = and i32 %i.kn, %i.ki
  store i32 %i.ko, ptr %i.kh, align 4, !tbaa !22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.kp = load i32, ptr %0, align 4, !tbaa !22    ; 3 uses
  %i.kq = tail call i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 16)
  %i.kr = and i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %0, align 4, !tbaa !22
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !22 ; 3 uses
  %i.ku = tail call i32 @llvm.fshl.i32(i32 %i.kt, i32 %i.kt, i32 16)
  %i.kv = and i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.ks, align 4, !tbaa !22
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !22 ; 3 uses
  %i.ky = tail call i32 @llvm.fshl.i32(i32 %i.kx, i32 %i.kx, i32 16)
  %i.kz = and i32 %i.ky, %i.kx
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !22 ; 3 uses
  %i.lc = tail call i32 @llvm.fshl.i32(i32 %i.lb, i32 %i.lb, i32 16)
  %i.ld = and i32 %i.lc, %i.lb
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !22
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !22 ; 3 uses
  %i.lg = tail call i32 @llvm.fshl.i32(i32 %i.lf, i32 %i.lf, i32 16)
  %i.lh = and i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !22
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !22 ; 3 uses
  %i.lk = tail call i32 @llvm.fshl.i32(i32 %i.lj, i32 %i.lj, i32 16)
  %i.ll = and i32 %i.lk, %i.lj
  store i32 %i.ll, ptr %i.li, align 4, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !22 ; 3 uses
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 16)
  %i.lp = and i32 %i.lo, %i.ln
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.lq = add nsw i32 %2, -5                      ; 3 uses
  %i.lr = shl nuw i32 1, %i.lq                    ; 4 uses
  %i.ls = icmp sgt i32 %i.d, 0
  br i1 %i.ls, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.lq, 31
  %i.lt = shl i32 2, %i.lq                        ; 2 uses
  %i.lu = sext i32 %i.lt to i64
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.lv = sext i32 %i.lr to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.lr, i32 1) ; 2 uses
  %wide.trip.count122 = zext nneg i32 %smax to i64 ; 4 uses
  %i.lw = shl nsw i64 %i.lv, 2                    ; 2 uses
  %i.lx = shl nuw nsw i64 %wide.trip.count122, 2  ; 2 uses
  %i.ly = getelementptr i8, ptr %0, i64 %i.lw
  %i.lz = getelementptr i8, ptr %i.ly, i64 %i.lx
  %i.ma = getelementptr i8, ptr %0, i64 %i.lw
  %i.mb = getelementptr i8, ptr %0, i64 %i.lx
  %min.iters.check189 = icmp slt i32 %i.lr, 8
  %bound0 = icmp ult ptr %0, %i.lz
  %bound1 = icmp ult ptr %i.ma, %i.mb
  %found.conflict = and i1 %bound0, %bound1
  %n.vec189 = and i64 %wide.trip.count122, 2147483640
  %xtraiter = and i64 %wide.trip.count122, 1
  %i.mc = icmp slt i32 %i.lr, 2
  %unroll_iter = and i64 %wide.trip.count122, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.092 = phi i32 [ %i.mx, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06791 = phi ptr [ %i.mw, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06791, i64 %i.lv ; 4 uses
  %brmerge = select i1 %min.iters.check189, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph186.preheader, label %vector.body190

scalar.ph186.preheader:                           ; preds = %.preheader
  br i1 %i.mc, label %scalar.ph186.epil.preheader, label %scalar.ph186

vector.body190:                                   ; preds = %.preheader, %vector.body190
  %index191 = phi i64 [ %index.next196, %vector.body190 ], [ 0, %.preheader ] ; 3 uses
  %i.md = getelementptr [4 x i8], ptr %invariant.gep, i64 %index191 ; 3 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16     ; 2 uses
  %wide.load192 = load <4 x i32>, ptr %i.md, align 4, !tbaa !22, !alias.scope !238
  %wide.load193 = load <4 x i32>, ptr %i.me, align 4, !tbaa !22, !alias.scope !238
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %index191 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %wide.load194 = load <4 x i32>, ptr %i.mf, align 4, !tbaa !22, !alias.scope !239, !noalias !238
  %wide.load195 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !22, !alias.scope !239, !noalias !238
  %i.mh = and <4 x i32> %wide.load194, %wide.load192 ; 2 uses
  %i.mi = and <4 x i32> %wide.load195, %wide.load193 ; 2 uses
  store <4 x i32> %i.mh, ptr %i.mf, align 4, !tbaa !22, !alias.scope !239, !noalias !238
  store <4 x i32> %i.mi, ptr %i.mg, align 4, !tbaa !22, !alias.scope !239, !noalias !238
  store <4 x i32> %i.mh, ptr %i.md, align 4, !tbaa !22, !alias.scope !238
  store <4 x i32> %i.mi, ptr %i.me, align 4, !tbaa !22, !alias.scope !238
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.mj = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.mj, label %._crit_edge, label %vector.body190, !llvm.loop !235

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %scalar.ph186 ], [ 0, %scalar.ph186.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph186 ], [ 0, %scalar.ph186.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119 ; 2 uses
  %i.mk = load i32, ptr %gep, align 4, !tbaa !22
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !22
  %i.mn = and i32 %i.mm, %i.mk                    ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !22
  store i32 %i.mn, ptr %gep, align 4, !tbaa !22
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next120 ; 2 uses
  %i.mo = load i32, ptr %gep.1, align 4, !tbaa !22
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv.next120 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !22
  %i.mr = and i32 %i.mq, %i.mo                    ; 2 uses
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !22
  store i32 %i.mr, ptr %gep.1, align 4, !tbaa !22
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph186, !llvm.loop !236

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph186
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph186.epil.preheader

scalar.ph186.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph186.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %scalar.ph186.preheader ], [ %indvars.iv.next120.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119.epil.init ; 2 uses
  %i.ms = load i32, ptr %gep.epil, align 4, !tbaa !22
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119.epil.init ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !22
  %i.mv = and i32 %i.mu, %i.ms                    ; 2 uses
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !22
  store i32 %i.mv, ptr %gep.epil, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body190, %scalar.ph186.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.mw = getelementptr inbounds [4 x i8], ptr %.06791, i64 %i.lu
  %i.mx = add nsw i32 %.092, %i.lt                ; 2 uses
  %i.my = icmp slt i32 %i.mx, %i.d
  br i1 %i.my, label %.preheader, label %.loopexit, !llvm.loop !237

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body140, %.lr.ph82, %.lr.ph82.1, %.lr.ph82.2, %.lr.ph82.4, %vector.body152, %.lr.ph84, %.lr.ph84.1, %.lr.ph84.2, %.lr.ph84.4, %vector.body164, %.lr.ph86, %.lr.ph86.1, %.lr.ph86.2, %.lr.ph86.4, %vector.body176, %.lr.ph88, %.lr.ph88.1, %.lr.ph88.2, %.lr.ph88.4, %._crit_edge, %.preheader78, %.preheader76, %.preheader74, %.preheader72, %.preheader70, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthForallNew(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.c = icmp slt i32 %2, 6
  %i.d = add nsw i32 %2, -5
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 26 uses
  switch i32 %3, label %bb.b [
    i32 0, label %.preheader85
    i32 1, label %.preheader87
    i32 2, label %.preheader89
    i32 3, label %.preheader91
    i32 4, label %.preheader93
  ]

.preheader93:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader93
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader261, label %vector.ph

.lr.ph.preheader261:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader261.new

.lr.ph.preheader261.new:                          ; preds = %.lr.ph.preheader261
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !22 ; 3 uses
  %wide.load151 = load <4 x i32>, ptr %i.k, align 4, !tbaa !22 ; 3 uses
  %i.l = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.m = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load151, <4 x i32> %wide.load151, <4 x i32> splat (i32 16))
  %i.n = and <4 x i32> %i.l, %wide.load
  %i.o = and <4 x i32> %i.m, %wide.load151
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !22
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.loopexit, label %vector.body, !llvm.loop !240

.preheader91:                                     ; preds = %bb.a
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph97.preheader, label %.loopexit

.lr.ph97.preheader:                               ; preds = %.preheader91
  %wide.trip.count118 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.f, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check157 = icmp ugt i64 %i.t, -32
  %or.cond244 = or i1 %min.iters.check155, %diff.check157
  br i1 %or.cond244, label %.lr.ph97.preheader258, label %vector.ph158

.lr.ph97.preheader258:                            ; preds = %.lr.ph97.preheader
  %xtraiter265 = and i64 %wide.trip.count118, 1
  %i.u = icmp eq i32 %i.f, 1
  br i1 %i.u, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader258.new

.lr.ph97.preheader258.new:                        ; preds = %.lr.ph97.preheader258
  %unroll_iter269 = and i64 %wide.trip.count118, 2147483646
  br label %.lr.ph97

vector.ph158:                                     ; preds = %.lr.ph97.preheader
  %n.vec159 = and i64 %wide.trip.count118, 2147483640
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next164, %vector.body160 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index161 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load162 = load <4 x i32>, ptr %i.v, align 4, !tbaa !22 ; 3 uses
  %wide.load163 = load <4 x i32>, ptr %i.w, align 4, !tbaa !22 ; 3 uses
  %i.x = lshr <4 x i32> %wide.load162, splat (i32 8)
  %i.y = lshr <4 x i32> %wide.load163, splat (i32 8)
  %i.z = and <4 x i32> %i.x, splat (i32 16711935)
  %i.aa = and <4 x i32> %i.y, splat (i32 16711935)
  %i.ab = shl <4 x i32> %wide.load162, splat (i32 8)
  %i.ac = shl <4 x i32> %wide.load163, splat (i32 8)
  %i.ad = and <4 x i32> %i.ab, splat (i32 -16711936)
  %i.ae = and <4 x i32> %i.ac, splat (i32 -16711936)
  %i.af = or disjoint <4 x i32> %i.z, %i.ad
  %i.ag = or disjoint <4 x i32> %i.aa, %i.ae
  %i.ah = and <4 x i32> %i.af, %wide.load162
  %i.ai = and <4 x i32> %i.ag, %wide.load163
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index161 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !22
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !22
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.al, label %.loopexit, label %vector.body160, !llvm.loop !241

.preheader89:                                     ; preds = %bb.a
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader89
  %wide.trip.count123 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check171 = icmp ult i32 %i.f, 8
  %i.an = sub i64 %i.a, %i.b
  %diff.check173 = icmp ugt i64 %i.an, -32
  %or.cond245 = or i1 %min.iters.check171, %diff.check173
  br i1 %or.cond245, label %.lr.ph99.preheader255, label %vector.ph174

.lr.ph99.preheader255:                            ; preds = %.lr.ph99.preheader
  %xtraiter271 = and i64 %wide.trip.count123, 1
  %i.ao = icmp eq i32 %i.f, 1
  br i1 %i.ao, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader255.new
end_hunk_3
begin_hunk_4_@Kit_TruthVarsAntiSymm:bb.a
  br i1 %i.g, label %select.unfold.preheader.i, label %Kit_TruthCopy.exit28.critedge

select.unfold.preheader.i:                        ; preds = %bb.a
  %spec.store.select35 = ptrtoaddr ptr %spec.store.select to i64
  %i.h = zext nneg i32 %spec.select.i to i64      ; 13 uses
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  %i.i = sub i64 %spec.store.select35, %i.a
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %select.unfold.i.preheader, label %vector.ph

select.unfold.i.preheader:                        ; preds = %select.unfold.preheader.i
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader, %select.unfold.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %select.unfold.i.prol ], [ %i.h, %select.unfold.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.prol ], [ 0, %select.unfold.i.preheader ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.prol
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %indvars.iv.next.i.prol
  store i32 %i.k, ptr %i.l, align 4, !tbaa !22
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol, !llvm.loop !312

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.h, %select.unfold.i.preheader ], [ %indvars.iv.next.i.prol, %select.unfold.i.prol ]
  %i.m = icmp ult i32 %spec.select.i, 4
  br i1 %i.m, label %Kit_TruthCopy.exit, label %select.unfold.i

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.h, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = xor i64 %index, -1
  %i.o = add i64 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !22
  %wide.load36 = load <4 x i32>, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -28
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !22
  store <4 x i32> %wide.load36, ptr %i.u, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %Kit_TruthCopy.exit, label %vector.body, !llvm.loop !313

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %select.unfold.i ], [ %indvars.iv.i.unr, %select.unfold.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %indvars.iv.next.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %indvars.iv.next.i.1
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %indvars.iv.next.i.2
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %indvars.iv.next.i.3
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !22
  %i.ai = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ai, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !314

Kit_TruthCopy.exit:                               ; preds = %vector.body, %select.unfold.i.prol.loopexit, %select.unfold.i
  tail call void @Kit_TruthCofactor0(ptr noundef nonnull %spec.store.select, i32 noundef %1, i32 noundef %2)
  tail call void @Kit_TruthCofactor0(ptr noundef nonnull %spec.store.select, i32 noundef %1, i32 noundef %3)
  %min.iters.check42 = icmp ult i32 %spec.select.i, 8
  %i.aj = sub i64 %spec.store.select140, %i.a
  %diff.check44 = icmp ugt i64 %i.aj, -32
  %or.cond55 = or i1 %min.iters.check42, %diff.check44
  br i1 %or.cond55, label %select.unfold.i25.preheader, label %vector.ph45

select.unfold.i25.preheader:                      ; preds = %Kit_TruthCopy.exit
  %xtraiter58 = and i64 %i.h, 3                   ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %select.unfold.i25.prol.loopexit, label %select.unfold.i25.prol

select.unfold.i25.prol:                           ; preds = %select.unfold.i25.preheader, %select.unfold.i25.prol
  %indvars.iv.i26.prol = phi i64 [ %indvars.iv.next.i27.prol, %select.unfold.i25.prol ], [ %i.h, %select.unfold.i25.preheader ]
  %prol.iter60 = phi i64 [ %prol.iter60.next, %select.unfold.i25.prol ], [ 0, %select.unfold.i25.preheader ]
  %indvars.iv.next.i27.prol = add nsw i64 %indvars.iv.i26.prol, -1 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i27.prol
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %indvars.iv.next.i27.prol
  store i32 %i.al, ptr %i.am, align 4, !tbaa !22
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %select.unfold.i25.prol.loopexit, label %select.unfold.i25.prol, !llvm.loop !315

select.unfold.i25.prol.loopexit:                  ; preds = %select.unfold.i25.prol, %select.unfold.i25.preheader
  %indvars.iv.i26.unr = phi i64 [ %i.h, %select.unfold.i25.preheader ], [ %indvars.iv.next.i27.prol, %select.unfold.i25.prol ]
  %i.an = icmp ult i32 %spec.select.i, 4
  br i1 %i.an, label %Kit_TruthCopy.exit28, label %select.unfold.i25

vector.ph45:                                      ; preds = %Kit_TruthCopy.exit
  %n.vec46 = and i64 %i.h, 2147483640
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body47 ] ; 2 uses
  %i.ao = xor i64 %index48, -1
  %i.ap = add i64 %i.ao, %i.h                     ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -28
  %wide.load49 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !22
  %wide.load50 = load <4 x i32>, ptr %i.as, align 4, !tbaa !22
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28
  store <4 x i32> %wide.load49, ptr %i.au, align 4, !tbaa !22
  store <4 x i32> %wide.load50, ptr %i.av, align 4, !tbaa !22
  %index.next51 = add nuw i64 %index48, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.aw, label %Kit_TruthCopy.exit28, label %vector.body47, !llvm.loop !316

select.unfold.i25:                                ; preds = %select.unfold.i25.prol.loopexit, %select.unfold.i25
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27.3, %select.unfold.i25 ], [ %indvars.iv.i26.unr, %select.unfold.i25.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i26, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i27
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %indvars.iv.next.i27
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !22
  %indvars.iv.next.i27.1 = add nsw i64 %indvars.iv.i26, -2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i27.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %indvars.iv.next.i27.1
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !22
  %indvars.iv.next.i27.2 = add nsw i64 %indvars.iv.i26, -3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i27.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %indvars.iv.next.i27.2
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !22
  %indvars.iv.next.i27.3 = add nsw i64 %indvars.iv.i26, -4 ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i27.3
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %indvars.iv.next.i27.3
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !22
  %i.bj = icmp sgt i64 %indvars.iv.i26, 4
  br i1 %i.bj, label %select.unfold.i25, label %Kit_TruthCopy.exit28, !llvm.loop !317

Kit_TruthCopy.exit28.critedge:                    ; preds = %bb.a
  tail call void @Kit_TruthCofactor0(ptr noundef nonnull %spec.store.select, i32 noundef %1, i32 noundef %2)
  tail call void @Kit_TruthCofactor0(ptr noundef nonnull %spec.store.select, i32 noundef %1, i32 noundef %3)
  br label %Kit_TruthCopy.exit28

Kit_TruthCopy.exit28:                             ; preds = %vector.body47, %select.unfold.i25.prol.loopexit, %select.unfold.i25, %Kit_TruthCopy.exit28.critedge
  %.pre-phi = phi i64 [ 2147483648, %Kit_TruthCopy.exit28.critedge ], [ %i.h, %select.unfold.i25.prol.loopexit ], [ %i.h, %select.unfold.i25 ], [ %i.h, %vector.body47 ] ; 2 uses
  tail call void @Kit_TruthCofactor1(ptr noundef nonnull %spec.store.select1, i32 noundef %1, i32 noundef %2)
  tail call void @Kit_TruthCofactor1(ptr noundef nonnull %spec.store.select1, i32 noundef %1, i32 noundef %3)
  %i.bk = trunc nuw i64 %.pre-phi to i32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %Kit_TruthIsEqual.exit

select.unfold.i30:                                ; preds = %.lr.ph
  %i.bm = trunc nuw i64 %i.bo to i32
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %Kit_TruthIsEqual.exit, !llvm.loop !12

.lr.ph:                                           ; preds = %Kit_TruthCopy.exit28, %select.unfold.i30
  %indvars.iv.i3132 = phi i64 [ %i.bo, %select.unfold.i30 ], [ %.pre-phi, %Kit_TruthCopy.exit28 ]
  %i.bo = add nsw i64 %indvars.iv.i3132, -1       ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %spec.store.select1, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !22
  %.not.i = icmp eq i32 %i.bq, %i.bs
  br i1 %.not.i, label %select.unfold.i30, label %.Kit_TruthIsEqual.exit_crit_edge, !llvm.loop !12

.Kit_TruthIsEqual.exit_crit_edge:                 ; preds = %.lr.ph
  br label %Kit_TruthIsEqual.exit, !llvm.loop !12

Kit_TruthIsEqual.exit:                            ; preds = %select.unfold.i30, %.Kit_TruthIsEqual.exit_crit_edge, %Kit_TruthCopy.exit28
  %.07.i = phi i32 [ 0, %.Kit_TruthIsEqual.exit_crit_edge ], [ 1, %Kit_TruthCopy.exit28 ], [ 1, %select.unfold.i30 ]
  ret i32 %.07.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthChangePhase(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  %i.b = add nsw i32 %1, -5
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 32 uses
  switch i32 %2, label %bb.b [
    i32 0, label %.preheader71
    i32 1, label %.preheader73
    i32 2, label %.preheader75
    i32 3, label %.preheader77
    i32 4, label %.preheader79
  ]

.preheader79:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader79
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.f = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.f to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !22 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %i.h, align 4, !tbaa !22 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.j = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load136, <4 x i32> %wide.load136, <4 x i32> splat (i32 16))
  store <4 x i32> %i.i, ptr %i.g, align 4, !tbaa !22
  store <4 x i32> %i.j, ptr %i.h, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %.loopexit, label %vector.body, !llvm.loop !318

.preheader77:                                     ; preds = %bb.a
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.preheader77
  %min.iters.check138 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check138, label %.lr.ph83, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph83.preheader
  %i.m = and i32 %i.d, 2147483640
  %n.vec140 = zext nneg i32 %i.m to i64
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next145, %vector.body141 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index142 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %wide.load143 = load <4 x i32>, ptr %i.n, align 4, !tbaa !22 ; 2 uses
  %wide.load144 = load <4 x i32>, ptr %i.o, align 4, !tbaa !22 ; 2 uses
  %i.p = shl <4 x i32> %wide.load143, splat (i32 8)
  %i.q = shl <4 x i32> %wide.load144, splat (i32 8)
  %i.r = and <4 x i32> %i.p, splat (i32 -16711936)
  %i.s = and <4 x i32> %i.q, splat (i32 -16711936)
  %i.t = lshr <4 x i32> %wide.load143, splat (i32 8)
  %i.u = lshr <4 x i32> %wide.load144, splat (i32 8)
  %i.v = and <4 x i32> %i.t, splat (i32 16711935)
  %i.w = and <4 x i32> %i.u, splat (i32 16711935)
  %i.x = or disjoint <4 x i32> %i.r, %i.v
  %i.y = or disjoint <4 x i32> %i.s, %i.w
  store <4 x i32> %i.x, ptr %i.n, align 4, !tbaa !22
  store <4 x i32> %i.y, ptr %i.o, align 4, !tbaa !22
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.z, label %.loopexit, label %vector.body141, !llvm.loop !319

.preheader75:                                     ; preds = %bb.a
  %i.aa = icmp sgt i32 %i.d, 0
  br i1 %i.aa, label %.lr.ph85.preheader, label %.loopexit

.lr.ph85.preheader:                               ; preds = %.preheader75
  %min.iters.check150 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check150, label %.lr.ph85, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph85.preheader
  %i.ab = and i32 %i.d, 2147483640
  %n.vec152 = zext nneg i32 %i.ab to i64
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next157, %vector.body153 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index154 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load155 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !22 ; 2 uses
  %wide.load156 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !22 ; 2 uses
  %i.ae = shl <4 x i32> %wide.load155, splat (i32 4)
  %i.af = shl <4 x i32> %wide.load156, splat (i32 4)
  %i.ag = and <4 x i32> %i.ae, splat (i32 -252645136)
  %i.ah = and <4 x i32> %i.af, splat (i32 -252645136)
  %i.ai = lshr <4 x i32> %wide.load155, splat (i32 4)
  %i.aj = lshr <4 x i32> %wide.load156, splat (i32 4)
  %i.ak = and <4 x i32> %i.ai, splat (i32 252645135)
  %i.al = and <4 x i32> %i.aj, splat (i32 252645135)
  %i.am = or disjoint <4 x i32> %i.ag, %i.ak
  %i.an = or disjoint <4 x i32> %i.ah, %i.al
  store <4 x i32> %i.am, ptr %i.ac, align 4, !tbaa !22
  store <4 x i32> %i.an, ptr %i.ad, align 4, !tbaa !22
  %index.next157 = add nuw i64 %index154, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.ao, label %.loopexit, label %vector.body153, !llvm.loop !320

.preheader73:                                     ; preds = %bb.a
  %i.ap = icmp sgt i32 %i.d, 0
  br i1 %i.ap, label %.lr.ph87.preheader, label %.loopexit

.lr.ph87.preheader:                               ; preds = %.preheader73
  %min.iters.check162 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check162, label %.lr.ph87, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph87.preheader
  %i.aq = and i32 %i.d, 2147483640
  %n.vec164 = zext nneg i32 %i.aq to i64
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index166 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load167 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !22 ; 2 uses
  %wide.load168 = load <4 x i32>, ptr %i.as, align 4, !tbaa !22 ; 2 uses
  %i.at = shl <4 x i32> %wide.load167, splat (i32 2)
  %i.au = shl <4 x i32> %wide.load168, splat (i32 2)
  %i.av = and <4 x i32> %i.at, splat (i32 -858993460)
  %i.aw = and <4 x i32> %i.au, splat (i32 -858993460)
  %i.ax = lshr <4 x i32> %wide.load167, splat (i32 2)
  %i.ay = lshr <4 x i32> %wide.load168, splat (i32 2)
  %i.az = and <4 x i32> %i.ax, splat (i32 858993459)
  %i.ba = and <4 x i32> %i.ay, splat (i32 858993459)
  %i.bb = or disjoint <4 x i32> %i.av, %i.az
  %i.bc = or disjoint <4 x i32> %i.aw, %i.ba
  store <4 x i32> %i.bb, ptr %i.ar, align 4, !tbaa !22
  store <4 x i32> %i.bc, ptr %i.as, align 4, !tbaa !22
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.bd, label %.loopexit, label %vector.body165, !llvm.loop !321

.preheader71:                                     ; preds = %bb.a
  %i.be = icmp sgt i32 %i.d, 0
  br i1 %i.be, label %.lr.ph89.preheader, label %.loopexit

.lr.ph89.preheader:                               ; preds = %.preheader71
  %min.iters.check174 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check174, label %.lr.ph89, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph89.preheader
  %i.bf = and i32 %i.d, 2147483640
  %n.vec176 = zext nneg i32 %i.bf to i64
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index178 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !22 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !22 ; 2 uses
  %i.bi = shl <4 x i32> %wide.load179, splat (i32 1)
  %i.bj = shl <4 x i32> %wide.load180, splat (i32 1)
  %i.bk = and <4 x i32> %i.bi, splat (i32 -1431655766)
  %i.bl = and <4 x i32> %i.bj, splat (i32 -1431655766)
  %i.bm = lshr <4 x i32> %wide.load179, splat (i32 1)
  %i.bn = lshr <4 x i32> %wide.load180, splat (i32 1)
  %i.bo = and <4 x i32> %i.bm, splat (i32 1431655765)
  %i.bp = and <4 x i32> %i.bn, splat (i32 1431655765)
  %i.bq = or disjoint <4 x i32> %i.bk, %i.bo
  %i.br = or disjoint <4 x i32> %i.bl, %i.bp
  store <4 x i32> %i.bq, ptr %i.bg, align 4, !tbaa !22
  store <4 x i32> %i.br, ptr %i.bh, align 4, !tbaa !22
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.bs, label %.loopexit, label %vector.body177, !llvm.loop !322

.lr.ph89:                                         ; preds = %.lr.ph89.preheader
  %i.bt = load i32, ptr %0, align 4, !tbaa !22    ; 2 uses
  %i.bu = shl i32 %i.bt, 1
  %i.bv = and i32 %i.bu, -1431655766
  %i.bw = lshr i32 %i.bt, 1
  %i.bx = and i32 %i.bw, 1431655765
  %i.by = or disjoint i32 %i.bv, %i.bx
  store i32 %i.by, ptr %0, align 4, !tbaa !22
  %exitcond119.not = icmp eq i32 %i.d, 1
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph89.1

.lr.ph89.1:                                       ; preds = %.lr.ph89
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22 ; 2 uses
  %i.cb = shl i32 %i.ca, 1
  %i.cc = and i32 %i.cb, -1431655766
  %i.cd = lshr i32 %i.ca, 1
  %i.ce = and i32 %i.cd, 1431655765
  %i.cf = or disjoint i32 %i.cc, %i.ce
  store i32 %i.cf, ptr %i.bz, align 4, !tbaa !22
  %exitcond119.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond119.not.1, label %.loopexit, label %.lr.ph89.2

.lr.ph89.2:                                       ; preds = %.lr.ph89.1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@Kit_TruthChangePhase:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !22 ; 2 uses
  %i.fg = shl i32 %i.ff, 2
  %i.fh = and i32 %i.fg, -858993460
  %i.fi = lshr i32 %i.ff, 2
  %i.fj = and i32 %i.fi, 858993459
  %i.fk = or disjoint i32 %i.fh, %i.fj
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !22
  br label %.loopexit

.lr.ph85:                                         ; preds = %.lr.ph85.preheader
  %i.fl = load i32, ptr %0, align 4, !tbaa !22    ; 2 uses
  %i.fm = shl i32 %i.fl, 4
  %i.fn = and i32 %i.fm, -252645136
  %i.fo = lshr i32 %i.fl, 4
  %i.fp = and i32 %i.fo, 252645135
  %i.fq = or disjoint i32 %i.fn, %i.fp
  store i32 %i.fq, ptr %0, align 4, !tbaa !22
  %exitcond109.not = icmp eq i32 %i.d, 1
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !22 ; 2 uses
  %i.ft = shl i32 %i.fs, 4
  %i.fu = and i32 %i.ft, -252645136
  %i.fv = lshr i32 %i.fs, 4
  %i.fw = and i32 %i.fv, 252645135
  %i.fx = or disjoint i32 %i.fu, %i.fw
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !22
  %exitcond109.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond109.not.1, label %.loopexit, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !22 ; 2 uses
  %i.ga = shl i32 %i.fz, 4
  %i.gb = and i32 %i.ga, -252645136
  %i.gc = lshr i32 %i.fz, 4
  %i.gd = and i32 %i.gc, 252645135
  %i.ge = or disjoint i32 %i.gb, %i.gd
  store i32 %i.ge, ptr %i.fy, align 4, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !22 ; 2 uses
  %i.gh = shl i32 %i.gg, 4
  %i.gi = and i32 %i.gh, -252645136
  %i.gj = lshr i32 %i.gg, 4
  %i.gk = and i32 %i.gj, 252645135
  %i.gl = or disjoint i32 %i.gi, %i.gk
  store i32 %i.gl, ptr %i.gf, align 4, !tbaa !22
  %exitcond109.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond109.not.3, label %.loopexit, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.2
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !22 ; 2 uses
  %i.go = shl i32 %i.gn, 4
  %i.gp = and i32 %i.go, -252645136
  %i.gq = lshr i32 %i.gn, 4
  %i.gr = and i32 %i.gq, 252645135
  %i.gs = or disjoint i32 %i.gp, %i.gr
  store i32 %i.gs, ptr %i.gm, align 4, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !22 ; 2 uses
  %i.gv = shl i32 %i.gu, 4
  %i.gw = and i32 %i.gv, -252645136
  %i.gx = lshr i32 %i.gu, 4
  %i.gy = and i32 %i.gx, 252645135
  %i.gz = or disjoint i32 %i.gw, %i.gy
  store i32 %i.gz, ptr %i.gt, align 4, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !22 ; 2 uses
  %i.hc = shl i32 %i.hb, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = lshr i32 %i.hb, 4
  %i.hf = and i32 %i.he, 252645135
  %i.hg = or disjoint i32 %i.hd, %i.hf
  store i32 %i.hg, ptr %i.ha, align 4, !tbaa !22
  br label %.loopexit

.lr.ph83:                                         ; preds = %.lr.ph83.preheader
  %i.hh = load i32, ptr %0, align 4, !tbaa !22    ; 2 uses
  %i.hi = shl i32 %i.hh, 8
  %i.hj = and i32 %i.hi, -16711936
  %i.hk = lshr i32 %i.hh, 8
  %i.hl = and i32 %i.hk, 16711935
  %i.hm = or disjoint i32 %i.hj, %i.hl
  store i32 %i.hm, ptr %0, align 4, !tbaa !22
  %exitcond104.not = icmp eq i32 %i.d, 1
  br i1 %exitcond104.not, label %.loopexit, label %.lr.ph83.1

.lr.ph83.1:                                       ; preds = %.lr.ph83
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !22 ; 2 uses
  %i.hp = shl i32 %i.ho, 8
  %i.hq = and i32 %i.hp, -16711936
  %i.hr = lshr i32 %i.ho, 8
  %i.hs = and i32 %i.hr, 16711935
  %i.ht = or disjoint i32 %i.hq, %i.hs
  store i32 %i.ht, ptr %i.hn, align 4, !tbaa !22
  %exitcond104.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond104.not.1, label %.loopexit, label %.lr.ph83.2

.lr.ph83.2:                                       ; preds = %.lr.ph83.1
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !22 ; 2 uses
  %i.hw = shl i32 %i.hv, 8
  %i.hx = and i32 %i.hw, -16711936
  %i.hy = lshr i32 %i.hv, 8
  %i.hz = and i32 %i.hy, 16711935
  %i.ia = or disjoint i32 %i.hx, %i.hz
  store i32 %i.ia, ptr %i.hu, align 4, !tbaa !22
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !22 ; 2 uses
  %i.id = shl i32 %i.ic, 8
  %i.ie = and i32 %i.id, -16711936
  %i.if = lshr i32 %i.ic, 8
  %i.ig = and i32 %i.if, 16711935
  %i.ih = or disjoint i32 %i.ie, %i.ig
  store i32 %i.ih, ptr %i.ib, align 4, !tbaa !22
  %exitcond104.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond104.not.3, label %.loopexit, label %.lr.ph83.4

.lr.ph83.4:                                       ; preds = %.lr.ph83.2
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !22 ; 2 uses
  %i.ik = shl i32 %i.ij, 8
  %i.il = and i32 %i.ik, -16711936
  %i.im = lshr i32 %i.ij, 8
  %i.in = and i32 %i.im, 16711935
  %i.io = or disjoint i32 %i.il, %i.in
  store i32 %i.io, ptr %i.ii, align 4, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !22 ; 2 uses
  %i.ir = shl i32 %i.iq, 8
  %i.is = and i32 %i.ir, -16711936
  %i.it = lshr i32 %i.iq, 8
  %i.iu = and i32 %i.it, 16711935
  %i.iv = or disjoint i32 %i.is, %i.iu
  store i32 %i.iv, ptr %i.ip, align 4, !tbaa !22
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !22 ; 2 uses
  %i.iy = shl i32 %i.ix, 8
  %i.iz = and i32 %i.iy, -16711936
  %i.ja = lshr i32 %i.ix, 8
  %i.jb = and i32 %i.ja, 16711935
  %i.jc = or disjoint i32 %i.iz, %i.jb
  store i32 %i.jc, ptr %i.iw, align 4, !tbaa !22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.jd = load i32, ptr %0, align 4, !tbaa !22    ; 2 uses
  %i.je = tail call i32 @llvm.fshl.i32(i32 %i.jd, i32 %i.jd, i32 16)
  store i32 %i.je, ptr %0, align 4, !tbaa !22
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !22 ; 2 uses
  %i.jh = tail call i32 @llvm.fshl.i32(i32 %i.jg, i32 %i.jg, i32 16)
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !22
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !22 ; 2 uses
  %i.jk = tail call i32 @llvm.fshl.i32(i32 %i.jj, i32 %i.jj, i32 16)
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !22 ; 2 uses
  %i.jn = tail call i32 @llvm.fshl.i32(i32 %i.jm, i32 %i.jm, i32 16)
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !22
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !22 ; 2 uses
  %i.jq = tail call i32 @llvm.fshl.i32(i32 %i.jp, i32 %i.jp, i32 16)
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !22
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22 ; 2 uses
  %i.jt = tail call i32 @llvm.fshl.i32(i32 %i.js, i32 %i.js, i32 16)
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !22
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !22 ; 2 uses
  %i.jw = tail call i32 @llvm.fshl.i32(i32 %i.jv, i32 %i.jv, i32 16)
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !22
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.jx = add nsw i32 %2, -5                      ; 3 uses
  %i.jy = shl nuw i32 1, %i.jx                    ; 4 uses
  %i.jz = icmp sgt i32 %i.d, 0
  br i1 %i.jz, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.jx, 31
  %i.ka = shl i32 2, %i.jx                        ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kc = sext i32 %i.jy to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.jy, i32 1) ; 2 uses
  %wide.trip.count123 = zext nneg i32 %smax to i64 ; 4 uses
  %i.kd = shl nsw i64 %i.kc, 2                    ; 2 uses
  %i.ke = shl nuw nsw i64 %wide.trip.count123, 2  ; 2 uses
  %i.kf = getelementptr i8, ptr %0, i64 %i.kd
  %i.kg = getelementptr i8, ptr %i.kf, i64 %i.ke
  %i.kh = getelementptr i8, ptr %0, i64 %i.kd
  %i.ki = getelementptr i8, ptr %0, i64 %i.ke
  %min.iters.check190 = icmp slt i32 %i.jy, 8
  %bound0 = icmp ult ptr %0, %i.kg
  %bound1 = icmp ult ptr %i.kh, %i.ki
  %found.conflict = and i1 %bound0, %bound1
  %n.vec190 = and i64 %wide.trip.count123, 2147483640
  %xtraiter = and i64 %wide.trip.count123, 1
  %i.kj = icmp slt i32 %i.jy, 2
  %unroll_iter = and i64 %wide.trip.count123, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod217 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.093 = phi i32 [ %i.kz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06892 = phi ptr [ %i.ky, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06892, i64 %i.kc ; 4 uses
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph187.preheader, label %vector.body191

scalar.ph187.preheader:                           ; preds = %.preheader
  br i1 %i.kj, label %scalar.ph187.epil.preheader, label %scalar.ph187

vector.body191:                                   ; preds = %.preheader, %vector.body191
  %index192 = phi i64 [ %index.next197, %vector.body191 ], [ 0, %.preheader ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %index192 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %wide.load193 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !22, !alias.scope !329, !noalias !330
  %wide.load194 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !22, !alias.scope !329, !noalias !330
  %i.km = getelementptr [4 x i8], ptr %invariant.gep, i64 %index192 ; 3 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 16     ; 2 uses
  %wide.load195 = load <4 x i32>, ptr %i.km, align 4, !tbaa !22, !alias.scope !330
  %wide.load196 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !22, !alias.scope !330
  store <4 x i32> %wide.load195, ptr %i.kk, align 4, !tbaa !22, !alias.scope !329, !noalias !330
  store <4 x i32> %wide.load196, ptr %i.kl, align 4, !tbaa !22, !alias.scope !329, !noalias !330
  store <4 x i32> %wide.load193, ptr %i.km, align 4, !tbaa !22, !alias.scope !330
  store <4 x i32> %wide.load194, ptr %i.kn, align 4, !tbaa !22, !alias.scope !330
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.ko, label %._crit_edge, label %vector.body191, !llvm.loop !326

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.1, %scalar.ph187 ], [ 0, %scalar.ph187.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph187 ], [ 0, %scalar.ph187.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv120 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !22
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv120 ; 2 uses
  %i.kr = load i32, ptr %gep, align 4, !tbaa !22
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !22
  store i32 %i.kq, ptr %gep, align 4, !tbaa !22
  %indvars.iv.next121 = or disjoint i64 %indvars.iv120, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv.next121 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !22
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next121 ; 2 uses
  %i.ku = load i32, ptr %gep.1, align 4, !tbaa !22
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !22
  store i32 %i.kt, ptr %gep.1, align 4, !tbaa !22
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph187, !llvm.loop !327

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph187
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph187.epil.preheader

scalar.ph187.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph187.preheader
  %indvars.iv120.epil.init = phi i64 [ 0, %scalar.ph187.preheader ], [ %indvars.iv.next121.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv120.epil.init ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !22
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv120.epil.init ; 2 uses
  %i.kx = load i32, ptr %gep.epil, align 4, !tbaa !22
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !22
  store i32 %i.kw, ptr %gep.epil, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body191, %scalar.ph187.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.ky = getelementptr inbounds [4 x i8], ptr %.06892, i64 %i.kb
  %i.kz = add nsw i32 %.093, %i.ka                ; 2 uses
  %i.la = icmp slt i32 %i.kz, %i.d
  br i1 %i.la, label %.preheader, label %.loopexit, !llvm.loop !328

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body141, %.lr.ph83, %.lr.ph83.1, %.lr.ph83.2, %.lr.ph83.4, %vector.body153, %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.4, %vector.body165, %.lr.ph87, %.lr.ph87.1, %.lr.ph87.2, %.lr.ph87.4, %vector.body177, %.lr.ph89, %.lr.ph89.1, %.lr.ph89.2, %.lr.ph89.4, %._crit_edge, %.preheader79, %.preheader77, %.preheader75, %.preheader73, %.preheader71, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 33) i32 @Kit_TruthMinCofSuppOverlap(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %Kit_TruthSupport.exit51.loopexit._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp samesign ult i32 %1, 6
  %i.d = add nsw i32 %1, -5
  %i.e = shl nuw i32 1, %i.d
  %spec.select.i = select i1 %i.c, i32 1, i32 %i.e ; 7 uses
  %i.f = icmp sgt i32 %spec.select.i, 0           ; 14 uses
  %i.g = zext i32 %spec.select.i to i64           ; 18 uses
  %i.h = sub i64 %i.b, ptrtoaddr (ptr @Kit_TruthMinCofSuppOverlap.uCofactor to i64) ; 2 uses
  %min.iters.check233 = icmp ult i32 %spec.select.i, 8
  %i.i = add i64 %i.h, -1
  %diff.check235 = icmp ult i64 %i.i, 31
  %or.cond246 = or i1 %min.iters.check233, %diff.check235
  %n.vec237 = and i64 %i.g, 2147483640
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = icmp ult i32 %spec.select.i, 4
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  %i.k = add i64 %i.h, -1
  %diff.check = icmp ult i64 %i.k, 31
  %or.cond247 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4294967288
  br label %bb.c

bb.b:                                             ; preds = %Kit_TruthSupport.exit51.loopexit
  %i.l = add nuw nsw i32 %.033151, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %Kit_TruthSupport.exit51.loopexit._crit_edge, label %bb.c, !llvm.loop !331

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0153 = phi i32 [ -1, %.lr.ph ], [ %spec.select37, %bb.b ]
  %.030152 = phi i32 [ 32, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %.033151 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 4 uses
  br i1 %i.f, label %select.unfold.i.preheader, label %Kit_TruthCopy.exit

select.unfold.i.preheader:                        ; preds = %bb.c
  br i1 %or.cond246, label %select.unfold.i.preheader270, label %vector.body238

select.unfold.i.preheader270:                     ; preds = %select.unfold.i.preheader
  br i1 %lcmp.mod.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader270, %select.unfold.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %select.unfold.i.prol ], [ %i.g, %select.unfold.i.preheader270 ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.prol ], [ 0, %select.unfold.i.preheader270 ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.prol
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.prol
  store i32 %i.n, ptr %i.o, align 4, !tbaa !22
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol, !llvm.loop !332

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader270
  %indvars.iv.i.unr = phi i64 [ %i.g, %select.unfold.i.preheader270 ], [ %indvars.iv.next.i.prol, %select.unfold.i.prol ]
  br i1 %i.j, label %Kit_TruthCopy.exit, label %select.unfold.i

vector.body238:                                   ; preds = %select.unfold.i.preheader, %vector.body238
  %index239 = phi i64 [ %index.next242, %vector.body238 ], [ 0, %select.unfold.i.preheader ] ; 2 uses
  %i.p = xor i64 %index239, -1
  %i.q = add i64 %i.p, %i.g                       ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load240 = load <4 x i32>, ptr %i.s, align 4, !tbaa !22
  %wide.load241 = load <4 x i32>, ptr %i.t, align 4, !tbaa !22
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  store <4 x i32> %wide.load240, ptr %i.v, align 4, !tbaa !22
  store <4 x i32> %wide.load241, ptr %i.w, align 4, !tbaa !22
  %index.next242 = add nuw i64 %index239, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.x, label %Kit_TruthCopy.exit, label %vector.body238, !llvm.loop !333

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %select.unfold.i ], [ %indvars.iv.i.unr, %select.unfold.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.3
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.3
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !22
  %i.ak = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ak, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !334

Kit_TruthCopy.exit:                               ; preds = %vector.body238, %select.unfold.i.prol.loopexit, %select.unfold.i, %bb.c
  tail call void @Kit_TruthCofactor0(ptr noundef nonnull @Kit_TruthMinCofSuppOverlap.uCofactor, i32 noundef %1, i32 noundef %.033151)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %Kit_TruthCopy.exit
  %.011.i = phi i32 [ 0, %Kit_TruthCopy.exit ], [ %.011.i.be, %.lr.ph.i.backedge ] ; 14 uses
  %.0810.i = phi i32 [ 0, %Kit_TruthCopy.exit ], [ %.0810.i.be, %.lr.ph.i.backedge ] ; 6 uses
  switch i32 %.0810.i, label %bb.i [
    i32 0, label %.preheader63.i
    i32 1, label %.preheader65.i
    i32 2, label %.preheader68.i
    i32 3, label %.preheader71.i
    i32 4, label %.preheader74.i
  ]

.preheader74.i:                                   ; preds = %.lr.ph.i
  br i1 %i.f, label %.lr.ph.i52, label %Kit_TruthVarInSupport.exit.thread

.preheader71.i:                                   ; preds = %.lr.ph.i
  br i1 %i.f, label %.lr.ph81.i, label %Kit_TruthVarInSupport.exit.thread

.preheader68.i:                                   ; preds = %.lr.ph.i
  br i1 %i.f, label %.lr.ph86.i, label %Kit_TruthVarInSupport.exit.thread

.preheader65.i:                                   ; preds = %.lr.ph.i
  br i1 %i.f, label %.lr.ph91.i, label %Kit_TruthVarInSupport.exit.thread
end_hunk_5
