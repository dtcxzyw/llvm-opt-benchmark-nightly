Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@encode_residual_fixed_with_residual_limit_33bps:bb.a
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x i64>, ptr %i.b, align 8, !tbaa !77
  %wide.load211 = load <2 x i64>, ptr %i.c, align 8, !tbaa !77
  %i.d = trunc <2 x i64> %wide.load to <2 x i32>
  %i.e = trunc <2 x i64> %wide.load211 to <2 x i32>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x i32> %i.d, ptr %i.f, align 4, !tbaa !47
  store <2 x i32> %i.e, ptr %i.g, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader220

.lr.ph.preheader220:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  switch i32 %3, label %.preheader [
    i32 0, label %.preheader137.preheader
    i32 1, label %.preheader140.preheader
    i32 2, label %.preheader143.preheader
    i32 3, label %.preheader146.preheader
  ]

.preheader146.preheader:                          ; preds = %._crit_edge
  %wide.trip.count171 = zext nneg i32 %2 to i64
  br label %.preheader146

.preheader143.preheader:                          ; preds = %._crit_edge
  %wide.trip.count176 = zext nneg i32 %2 to i64
  br label %.preheader143

.preheader140.preheader:                          ; preds = %._crit_edge
  %wide.trip.count181 = zext nneg i32 %2 to i64
  br label %.preheader140

.preheader137.preheader:                          ; preds = %._crit_edge
  %wide.trip.count186 = zext nneg i32 %2 to i64
  br label %.preheader137

.preheader:                                       ; preds = %._crit_edge
  %i.i = icmp slt i32 %3, %2
  br i1 %i.i, label %.lr.ph155.preheader, label %.critedge

.lr.ph155.preheader:                              ; preds = %.preheader
  %i.j = sext i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %2 to i64
  br label %.lr.ph155

.lr.ph:                                           ; preds = %.lr.ph.preheader220, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader220 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

.preheader137:                                    ; preds = %.preheader137.preheader, %bb.b
  %indvars.iv183 = phi i64 [ 0, %.preheader137.preheader ], [ %indvars.iv.next184, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv183
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = icmp eq i64 %i.p, -2147483648
  br i1 %i.q, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader137
  %i.r = trunc i64 %i.p to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv183
  store i32 %i.r, ptr %i.s, align 4, !tbaa !47
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.critedge, label %.preheader137, !llvm.loop !205

.preheader140:                                    ; preds = %.preheader140.preheader, %bb.c
  %indvars.iv178 = phi i64 [ 1, %.preheader140.preheader ], [ %indvars.iv.next179, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv178 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = getelementptr i8, ptr %i.t, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = sub nsw i64 %i.u, %i.w                   ; 2 uses
  %i.y = add i64 %i.x, 2147483647
  %or.cond = icmp ult i64 %i.y, 4294967295
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader140
  %i.z = trunc nsw i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv178
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !47
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %.critedge, label %.preheader140, !llvm.loop !206

.preheader143:                                    ; preds = %.preheader143.preheader, %bb.d
  %indvars.iv173 = phi i64 [ 2, %.preheader143.preheader ], [ %indvars.iv.next174, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv173 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.ad = getelementptr i8, ptr %i.ab, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = sub nsw i64 %i.ac, %i.af
  %i.ah = getelementptr i8, ptr %i.ab, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.aj = add nsw i64 %i.ag, %i.ai                ; 2 uses
  %i.ak = add i64 %i.aj, 2147483647
  %or.cond6 = icmp ult i64 %i.ak, 4294967295
  br i1 %or.cond6, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader143
  %i.al = trunc nsw i64 %i.aj to i32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv173
  store i32 %i.al, ptr %i.am, align 4, !tbaa !47
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %.critedge, label %.preheader143, !llvm.loop !207

.preheader146:                                    ; preds = %.preheader146.preheader, %bb.e
  %indvars.iv168 = phi i64 [ 3, %.preheader146.preheader ], [ %indvars.iv.next169, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv168 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr i8, ptr %i.an, i64 -16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !77
  %reass.add = sub i64 %i.as, %i.aq
  %reass.mul = mul i64 %reass.add, 3
  %i.av = sub i64 %i.ao, %i.au
  %i.aw = add i64 %i.av, %reass.mul               ; 2 uses
  %i.ax = add i64 %i.aw, 2147483647
  %or.cond8 = icmp ult i64 %i.ax, 4294967295
  br i1 %or.cond8, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader146
  %i.ay = trunc nsw i64 %i.aw to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv168
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !47
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %.critedge, label %.preheader146, !llvm.loop !208

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.f
  %indvars.iv188 = phi i64 [ %i.j, %.lr.ph155.preheader ], [ %indvars.iv.next189, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv188 ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !77
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !77
  %i.be = getelementptr i8, ptr %i.ba, i64 -16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !77
  %i.bg = mul nsw i64 %i.bf, 6
  %i.bh = getelementptr i8, ptr %i.ba, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !77
  %i.bj = add i64 %i.bg, %i.bb
  %i.bk = add i64 %i.bi, %i.bd
  %i.bl = getelementptr i8, ptr %i.ba, i64 -32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = add i64 %i.bj, %i.bm
  %i.bo = shl i64 %i.bk, 2
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = add i64 %i.bp, 2147483647
  %or.cond10 = icmp ult i64 %i.bq, 4294967295
  br i1 %or.cond10, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph155
  %i.br = trunc nsw i64 %i.bp to i32
  %i.bs = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv188
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !47
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.critedge, label %.lr.ph155, !llvm.loop !209

.critedge:                                        ; preds = %bb.e, %.preheader146, %bb.d, %.preheader143, %bb.c, %.preheader140, %bb.b, %.preheader137, %.lr.ph155, %bb.f, %.preheader
  %.13 = phi i32 [ 1, %.preheader143 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph155 ], [ 1, %.preheader137 ], [ 1, %.preheader140 ], [ 0, %bb.d ], [ 1, %.preheader146 ], [ 0, %bb.e ]
  ret i32 %.13
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @encode_residual_fixed_with_residual_limit(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 5, -2147483648) %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.b = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.b, -32
  %or.cond212 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond212, label %.lr.ph.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !47
  %wide.load211 = load <4 x i32>, ptr %i.d, align 4, !tbaa !47
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %wide.load, ptr %i.e, align 4, !tbaa !47
  store <4 x i32> %wide.load211, ptr %i.f, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader221

.lr.ph.preheader221:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader221, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader221 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader221 ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !211

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader221
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader221 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.k = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  switch i32 %3, label %.preheader [
    i32 0, label %.preheader137.preheader
    i32 1, label %.preheader140.preheader
    i32 2, label %.preheader143.preheader
    i32 3, label %.preheader146.preheader
  ]

.preheader146.preheader:                          ; preds = %._crit_edge
  %wide.trip.count171 = zext nneg i32 %2 to i64
  br label %.preheader146

.preheader143.preheader:                          ; preds = %._crit_edge
  %wide.trip.count176 = zext nneg i32 %2 to i64
  br label %.preheader143

.preheader140.preheader:                          ; preds = %._crit_edge
  %wide.trip.count181 = zext nneg i32 %2 to i64
  br label %.preheader140

.preheader137.preheader:                          ; preds = %._crit_edge
  %wide.trip.count186 = zext nneg i32 %2 to i64
  br label %.preheader137

.preheader:                                       ; preds = %._crit_edge
  %i.m = icmp slt i32 %3, %2
  br i1 %i.m, label %.lr.ph155.preheader, label %.critedge

.lr.ph155.preheader:                              ; preds = %.preheader
  %i.n = sext i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %2 to i64
  br label %.lr.ph155

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.s, ptr %i.t, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.v, ptr %i.w, align 4, !tbaa !47
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.y, ptr %i.z, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !212

.preheader137:                                    ; preds = %.preheader137.preheader, %bb.b
  %indvars.iv183 = phi i64 [ 0, %.preheader137.preheader ], [ %indvars.iv.next184, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv183
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -2147483648
  br i1 %i.ac, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader137
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv183
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !47
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.critedge, label %.preheader137, !llvm.loop !213

.preheader140:                                    ; preds = %.preheader140.preheader, %bb.c
  %indvars.iv178 = phi i64 [ 1, %.preheader140.preheader ], [ %indvars.iv.next179, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv178 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !47
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sub nsw i64 %i.ag, %i.aj                ; 2 uses
  %i.al = add nsw i64 %i.ak, 2147483647
  %or.cond = icmp ult i64 %i.al, 4294967295
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader140
  %i.am = trunc nsw i64 %i.ak to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv178
  store i32 %i.am, ptr %i.an, align 4, !tbaa !47
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %.critedge, label %.preheader140, !llvm.loop !214

.preheader143:                                    ; preds = %.preheader143.preheader, %bb.d
  %indvars.iv173 = phi i64 [ 2, %.preheader143.preheader ], [ %indvars.iv.next174, %bb.d ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv173 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.ao, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 1
  %i.av = sub nsw i64 %i.aq, %i.au
  %i.aw = getelementptr i8, ptr %i.ao, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay                ; 2 uses
  %i.ba = add nsw i64 %i.az, 2147483647
  %or.cond6 = icmp ult i64 %i.ba, 4294967295
  br i1 %or.cond6, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader143
  %i.bb = trunc nsw i64 %i.az to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv173
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !47
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %.critedge, label %.preheader143, !llvm.loop !215

.preheader146:                                    ; preds = %.preheader146.preheader, %bb.e
  %indvars.iv168 = phi i64 [ 3, %.preheader146.preheader ], [ %indvars.iv.next169, %bb.e ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv168 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.bd, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !47
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %i.bd, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bd, i64 -12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !47
  %i.bo = sext i32 %i.bn to i64
  %reass.add = sub nsw i64 %i.bl, %i.bi
  %reass.mul = mul nsw i64 %reass.add, 3
  %i.bp = sub nsw i64 %i.bf, %i.bo
  %i.bq = add nsw i64 %i.bp, %reass.mul           ; 2 uses
  %i.br = add nsw i64 %i.bq, 2147483647
  %or.cond8 = icmp ult i64 %i.br, 4294967295
  br i1 %or.cond8, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader146
  %i.bs = trunc nsw i64 %i.bq to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv168
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !47
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %.critedge, label %.preheader146, !llvm.loop !216

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.f
  %indvars.iv188 = phi i64 [ %i.n, %.lr.ph155.preheader ], [ %indvars.iv.next189, %bb.f ] ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv188 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr %i.bu, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr i8, ptr %i.bu, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !47
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 6
  %i.ce = getelementptr i8, ptr %i.bu, i64 -12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.cd, %i.bw
  %i.ci = add nsw i64 %i.cg, %i.bz
  %i.cj = getelementptr i8, ptr %i.bu, i64 -16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.ch, %i.cl
  %i.cn = shl nsw i64 %i.ci, 2
  %i.co = sub nsw i64 %i.cm, %i.cn                ; 2 uses
  %i.cp = add nsw i64 %i.co, 2147483647
  %or.cond10 = icmp ult i64 %i.cp, 4294967295
  br i1 %or.cond10, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph155
  %i.cq = trunc nsw i64 %i.co to i32
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv188
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !47
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.critedge, label %.lr.ph155, !llvm.loop !217

.critedge:                                        ; preds = %bb.e, %.preheader146, %bb.d, %.preheader143, %bb.c, %.preheader140, %bb.b, %.preheader137, %.lr.ph155, %bb.f, %.preheader
  %.13 = phi i32 [ 1, %.preheader143 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph155 ], [ 1, %.preheader137 ], [ 1, %.preheader140 ], [ 0, %bb.d ], [ 1, %.preheader146 ], [ 0, %bb.e ]
  ret i32 %.13
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @encode_residual_fixed(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 5, -2147483648) %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.b = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.b, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader250, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !47
  %wide.load208 = load <4 x i32>, ptr %i.d, align 4, !tbaa !47
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %wide.load, ptr %i.e, align 4, !tbaa !47
  store <4 x i32> %wide.load208, ptr %i.f, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader250

.lr.ph.preheader250:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader250, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader250 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader250 ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !219

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader250
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader250 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.k = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.n, ptr %i.o, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.q, ptr %i.r, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  store i32 %i.t, ptr %i.u, align 4, !tbaa !47
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  store i32 %i.w, ptr %i.x, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  switch i32 %3, label %bb.f [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader155.preheader
    i32 2, label %bb.b
    i32 3, label %bb.d
  ]

.preheader155.preheader:                          ; preds = %._crit_edge
  %wide.trip.count187 = zext nneg i32 %2 to i64   ; 5 uses
  %i.y = add nsw i64 %wide.trip.count187, -1      ; 2 uses
  %min.iters.check213 = icmp samesign ult i32 %2, 9
  br i1 %min.iters.check213, label %.preheader155.preheader246, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.preheader155.preheader
  %i.z = getelementptr i8, ptr %0, i64 4
  %i.aa = shl nuw nsw i64 %wide.trip.count187, 2  ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa
  %bound0 = icmp ult ptr %i.z, %i.ac
  %bound1 = icmp ult ptr %1, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader155.preheader246, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck214
  %n.vec216 = and i64 %i.y, -8                    ; 3 uses
  %i.ad = or disjoint i64 %n.vec216, 1
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.ae = or disjoint i64 %index218, 1            ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load219 = load <4 x i32>, ptr %i.af, align 4, !tbaa !47, !alias.scope !233
  %wide.load220 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !47, !alias.scope !233
  %i.ah = getelementptr i8, ptr %i.af, i64 -4
  %i.ai = getelementptr i8, ptr %i.af, i64 12
  %wide.load221 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !47, !alias.scope !233
  %wide.load222 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !47, !alias.scope !233
  %i.aj = sub nsw <4 x i32> %wide.load219, %wide.load221
  %i.ak = sub nsw <4 x i32> %wide.load220, %wide.load222
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %i.aj, ptr %i.al, align 4, !tbaa !47, !alias.scope !234, !noalias !233
  store <4 x i32> %i.ak, ptr %i.am, align 4, !tbaa !47, !alias.scope !234, !noalias !233
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.an, label %middle.block224, label %vector.body217, !llvm.loop !224

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.y, %n.vec216
  br i1 %cmp.n225, label %.loopexit, label %.preheader155.preheader246

.preheader155.preheader246:                       ; preds = %vector.memcheck214, %.preheader155.preheader, %middle.block224
  %indvars.iv184.ph = phi i64 [ 1, %vector.memcheck214 ], [ 1, %.preheader155.preheader ], [ %i.ad, %middle.block224 ] ; 4 uses
  %i.ao = sub nsw i64 %wide.trip.count187, %indvars.iv184.ph
  %xtraiter251 = and i64 %i.ao, 3                 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.preheader155.prol.loopexit, label %.preheader155.prol

.preheader155.prol:                               ; preds = %.preheader155.preheader246, %.preheader155.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %.preheader155.prol ], [ %indvars.iv184.ph, %.preheader155.preheader246 ] ; 3 uses
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.preheader155.prol ], [ 0, %.preheader155.preheader246 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv184.prol ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %i.ar = getelementptr i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.at = sub nsw i32 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv184.prol
  store i32 %i.at, ptr %i.au, align 4, !tbaa !47
  %indvars.iv.next185.prol = add nuw nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.preheader155.prol.loopexit, label %.preheader155.prol, !llvm.loop !225

.preheader155.prol.loopexit:                      ; preds = %.preheader155.prol, %.preheader155.preheader246
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %.preheader155.preheader246 ], [ %indvars.iv.next185.prol, %.preheader155.prol ]
  %i.av = sub nsw i64 %indvars.iv184.ph, %wide.trip.count187
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.preheader155

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count192 = zext nneg i32 %2 to i64   ; 5 uses
  %min.iters.check230 = icmp samesign ult i32 %2, 8
  %i.ax = sub i64 %4, %5
  %diff.check228 = icmp ugt i64 %i.ax, -32
  %or.cond242 = or i1 %min.iters.check230, %diff.check228
  br i1 %or.cond242, label %.preheader.preheader244, label %vector.ph231

vector.ph231:                                     ; preds = %.preheader.preheader
  %n.vec232 = and i64 %wide.trip.count192, 2147483640 ; 3 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index234 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !47
  %wide.load236 = load <4 x i32>, ptr %i.az, align 4, !tbaa !47
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index234 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %wide.load235, ptr %i.ba, align 4, !tbaa !47
  store <4 x i32> %wide.load236, ptr %i.bb, align 4, !tbaa !47
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.bc, label %middle.block238, label %vector.body233, !llvm.loop !226

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %n.vec232, %wide.trip.count192
  br i1 %cmp.n239, label %.loopexit, label %.preheader.preheader244

.preheader.preheader244:                          ; preds = %.preheader.preheader, %middle.block238
  %indvars.iv189.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec232, %middle.block238 ] ; 3 uses
  %xtraiter254 = and i64 %wide.trip.count192, 3   ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader244, %.preheader.prol
  %indvars.iv189.prol = phi i64 [ %indvars.iv.next190.prol, %.preheader.prol ], [ %indvars.iv189.ph, %.preheader.preheader244 ] ; 3 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.preheader.prol ], [ 0, %.preheader.preheader244 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv189.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv189.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !47
  %indvars.iv.next190.prol = add nuw nsw i64 %indvars.iv189.prol, 1 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !227

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader244
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %.preheader.preheader244 ], [ %indvars.iv.next190.prol, %.preheader.prol ]
  %i.bg = sub nsw i64 %indvars.iv189.ph, %wide.trip.count192
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.3, %.preheader ], [ %indvars.iv189.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv189
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv189
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !47
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !47
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190.1
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !47
  %indvars.iv.next190.2 = add nuw nsw i64 %indvars.iv189, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190.2
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !47
  %indvars.iv.next190.3 = add nuw nsw i64 %indvars.iv189, 4 ; 2 uses
  %exitcond193.not.3 = icmp eq i64 %indvars.iv.next190.3, %wide.trip.count192
  br i1 %exitcond193.not.3, label %.loopexit, label %.preheader, !llvm.loop !228

.preheader155:                                    ; preds = %.preheader155.prol.loopexit, %.preheader155
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %.preheader155 ], [ %indvars.iv184.unr, %.preheader155.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv184 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = getelementptr i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = sub nsw i32 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv184
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !47
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !47
  %i.cc = getelementptr i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.ce = sub nsw i32 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !47
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185.1 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47
  %i.ci = getelementptr i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !47
  %i.ck = sub nsw i32 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185.1
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !47
  %indvars.iv.next185.2 = add nuw nsw i64 %indvars.iv184, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185.2 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.co = getelementptr i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !47
  %i.cq = sub nsw i32 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185.2
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !47
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %exitcond188.not.3 = icmp eq i64 %indvars.iv.next185.3, %wide.trip.count187
  br i1 %exitcond188.not.3, label %.loopexit, label %.preheader155, !llvm.loop !229

bb.b:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !47
  %i.cu = load i32, ptr %1, align 4, !tbaa !47
  %i.cv = sub nsw i32 %i.ct, %i.cu
  %i.cw = zext nneg i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv181 = phi i64 [ 2, %bb.b ], [ %indvars.iv.next182, %bb.c ] ; 4 uses
  %.0132163 = phi i32 [ %i.cv, %bb.b ], [ %i.di, %bb.c ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv181 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !47
  %i.cz = getelementptr i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !47
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = sub nsw i32 %i.db, %.0132163
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv181
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !47
  %i.de = or disjoint i64 %indvars.iv181, 1       ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47
  %i.dh = load i32, ptr %i.cx, align 4, !tbaa !47
  %i.di = sub nsw i32 %i.dg, %i.dh                ; 2 uses
  %i.dj = sub nsw i32 %i.di, %i.db
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !47
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %i.dl = icmp samesign ult i64 %indvars.iv.next182, %i.cw
  br i1 %i.dl, label %bb.c, label %.loopexit, !llvm.loop !230

bb.d:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !47 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !47 ; 2 uses
  %i.dq = sub nsw i32 %i.dn, %i.dp
  %i.dr = shl i32 %i.dp, 1
  %i.ds = sub i32 %i.dn, %i.dr
  %i.dt = load i32, ptr %1, align 4, !tbaa !47
  %i.du = add nsw i32 %i.ds, %i.dt
  %i.dv = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv178 = phi i64 [ 3, %bb.d ], [ %indvars.iv.next179, %bb.e ] ; 4 uses
  %.0133161 = phi i32 [ %i.dq, %bb.d ], [ %i.ei, %bb.e ]
  %.0137160 = phi i32 [ %i.du, %bb.d ], [ %i.ej, %bb.e ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv178 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.dy = getelementptr i8, ptr %i.dw, i64 -4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !47
  %i.ea = sub nsw i32 %i.dx, %i.dz                ; 2 uses
  %i.eb = sub nsw i32 %i.ea, %.0133161            ; 2 uses
  %i.ec = sub nsw i32 %i.eb, %.0137160
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv178
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !47
  %i.ee = add nuw nsw i64 %indvars.iv178, 1       ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  %i.eh = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.ei = sub nsw i32 %i.eg, %i.eh                ; 2 uses
  %i.ej = sub nsw i32 %i.ei, %i.ea                ; 2 uses
  %i.ek = sub nsw i32 %i.ej, %i.eb
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ee
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !47
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next179, %i.dv
  br i1 %i.em, label %bb.e, label %.loopexit, !llvm.loop !231

bb.f:                                             ; preds = %._crit_edge
  %i.en = icmp slt i32 %3, %2
  br i1 %i.en, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %bb.f
  %i.eo = sext i32 %3 to i64                      ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %1, i64 %i.eo ; 4 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !47 ; 3 uses
  %i.es = getelementptr i8, ptr %i.ep, i64 -16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !47
  %i.eu = sub i32 %i.er, %i.et
  %i.ev = getelementptr i8, ptr %i.ep, i64 -12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !47 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ep, i64 -8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !47 ; 3 uses
  %reass.add = sub i32 %i.ew, %i.ey
  %reass.mul = mul i32 %reass.add, 3
end_hunk_0
begin_hunk_1_@find_subframe_rice_params:bb.a
find_optimal_param_exact.exit.us.i.preheader.i:   ; preds = %.lr.ph.split.i.i
  %i.ge = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dv, i8 0, i64 %i.ge, i1 false), !tbaa !47
  %min.iters.check78 = icmp ult i64 %indvars.iv68.i, 2
  br i1 %min.iters.check78, label %find_optimal_param_exact.exit.us.i.i, label %vector.ph79

vector.ph79:                                      ; preds = %find_optimal_param_exact.exit.us.i.preheader.i
  %n.vec80 = and i64 %wide.trip.count60.i.i, 2147483644
  %i.gf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ec, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.gf, %vector.ph79 ], [ %i.gi, %vector.body81 ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph79 ], [ %i.gj, %vector.body81 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index82 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load84 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !77
  %wide.load85 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !77
  %i.gi = add <2 x i64> %wide.load84, %vec.phi    ; 2 uses
  %i.gj = add <2 x i64> %wide.load85, %vec.phi83  ; 2 uses
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.gk = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.gk, label %middle.block87, label %vector.body81, !llvm.loop !242

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx = add <2 x i64> %i.gj, %i.gi
  %i.gl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %calc_optimal_rice_params.exit.i

find_optimal_param_exact.exit.us.i.i:             ; preds = %find_optimal_param_exact.exit.us.i.preheader.i, %find_optimal_param_exact.exit.us.i.i
  %indvars.iv50.i.i = phi i64 [ %indvars.iv.next51.i.i, %find_optimal_param_exact.exit.us.i.i ], [ 0, %find_optimal_param_exact.exit.us.i.preheader.i ] ; 2 uses
  %.040.us41.i.i = phi i64 [ %.1.us43.i.i, %find_optimal_param_exact.exit.us.i.i ], [ %i.ec, %find_optimal_param_exact.exit.us.i.preheader.i ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv50.i.i
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !77
  %.1.us43.i.i = add i64 %i.gn, %.040.us41.i.i    ; 2 uses
  %indvars.iv.next51.i.i = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond55.not.i.i = icmp eq i64 %indvars.iv.next51.i.i, %wide.trip.count60.i.i
  br i1 %exitcond55.not.i.i, label %calc_optimal_rice_params.exit.i, label %find_optimal_param_exact.exit.us.i.i, !llvm.loop !243

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i.i, %find_optimal_param_exact.exit.loopexit.i.i
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i46.i, %find_optimal_param_exact.exit.loopexit.i.i ], [ 0, %.lr.ph.split.i.i ] ; 4 uses
  %.040.i.i = phi i64 [ %.1.i.i40, %find_optimal_param_exact.exit.loopexit.i.i ], [ %i.ec, %.lr.ph.split.i.i ]
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i45.i ; 3 uses
  br i1 %i.dy, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.01017.i.i.i = phi i64 [ %spec.select14.i.i.i.1, %.lr.ph.i.i.i.new ], [ 9223372036854775807, %.lr.ph.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi i32 [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %niter104 = phi i64 [ %niter104.next.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %gep.i.i.i = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.go = load i64, ptr %gep.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.gp = icmp slt i64 %i.go, %.01017.i.i.i
  %i.gq = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %spec.select.i.i.i = select i1 %i.gp, i32 %i.gq, i32 %.01116.i.i.i
  %spec.select14.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.go, i64 %.01017.i.i.i) ; 2 uses
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.gr = load i64, ptr %gep.i.i.i.1, align 8, !tbaa !77 ; 2 uses
  %i.gs = icmp slt i64 %i.gr, %spec.select14.i.i.i
  %i.gt = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %spec.select.i.i.i.1 = select i1 %i.gs, i32 %i.gt, i32 %spec.select.i.i.i ; 3 uses
  %spec.select14.i.i.i.1 = tail call i64 @llvm.smin.i64(i64 %i.gr, i64 %spec.select14.i.i.i) ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !244

find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.new
  br i1 %lcmp.mod100.not, label %find_optimal_param_exact.exit.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.01017.i.i.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i.i.i ], [ %spec.select14.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ]
  %.01116.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %gep.i.i.i.epil = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.gu = load i64, ptr %gep.i.i.i.epil, align 8, !tbaa !77
  %i.gv = icmp slt i64 %i.gu, %.01017.i.i.i.epil.init
  %i.gw = trunc nuw nsw i64 %indvars.iv.i.i.i.epil.init to i32
  %spec.select.i.i.i.epil = select i1 %i.gv, i32 %i.gw, i32 %.01116.i.i.i.epil.init
  br label %find_optimal_param_exact.exit.loopexit.i.i

find_optimal_param_exact.exit.loopexit.i.i:       ; preds = %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, %.epil.preheader
  %spec.select.i.i.i.lcssa = phi i32 [ %spec.select.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ], [ %spec.select.i.i.i.epil, %.epil.preheader ] ; 2 uses
  %i.gx = sext i32 %spec.select.i.i.i.lcssa to i64
  %i.gy = getelementptr inbounds [2048 x i8], ptr %i.au, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.i45.i
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !77
  %.1.i.i40 = add i64 %i.ha, %.040.i.i            ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i45.i
  store i32 %spec.select.i.i.i.lcssa, ptr %i.hb, align 4, !tbaa !47
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count60.i.i
  br i1 %exitcond.not.i47.i, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i.i.i, !llvm.loop !245

calc_optimal_rice_params.exit.i:                  ; preds = %find_optimal_param_exact.exit.loopexit.i.i, %find_optimal_param_exact.exit.us.i.i, %find_optimal_param.exit.us.i.i, %middle.block87, %find_optimal_param.exit.us.peel.i.i, %calc_sum_next.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.ec, %calc_sum_next.exit.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ], [ %.1.us43.i.i, %find_optimal_param_exact.exit.us.i.i ], [ %.1.us.peel.i.i, %find_optimal_param.exit.us.peel.i.i ], [ %i.gl, %middle.block87 ], [ %.1.i.i40, %find_optimal_param_exact.exit.loopexit.i.i ] ; 2 uses
  store i32 %i.ea, ptr %i.ds, align 4, !tbaa !251
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv68.i
  store i64 %.0.lcssa.i.i, ptr %i.hc, align 8, !tbaa !77
  %i.hd = sext i32 %.0.i39 to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !77
  %i.hg = icmp ult i64 %.0.lcssa.i.i, %i.hf
  %or.cond.i = or i1 %i.dt, %i.hg
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %calc_optimal_rice_params.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ah, ptr noundef nonnull align 4 dereferenceable(1032) %3, i64 1032, i1 false), !tbaa.struct !252
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %calc_optimal_rice_params.exit.i
  %.1.i = phi i32 [ %i.ea, %bb.h ], [ %.0.i39, %calc_optimal_rice_params.exit.i ] ; 2 uses
  %i.hh = icmp eq i64 %indvars.iv68.i, %i.dq
  br i1 %i.hh, label %calc_rice_params.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, -1 ; 3 uses
  %i.hi = icmp eq i64 %indvars.iv.next69.i, 31
  %or.cond.i.i = or i1 %.not58.i.i, %i.hi
  br i1 %or.cond.i.i, label %calc_sum_next.exit.i.backedge, label %.preheader.preheader.i.i

calc_sum_next.exit.i.backedge:                    ; preds = %._crit_edge.i53.i, %bb.j
  br label %calc_sum_next.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.hj = trunc nsw i64 %indvars.iv.next69.i to i32
  %i.hk = shl nuw i32 1, %i.hj
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.hk, i32 1)
  %wide.trip.count24.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i53.i, %.preheader.preheader.i.i
  %indvars.iv21.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next22.i.i, %._crit_edge.i53.i ] ; 5 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv21.i.i, 4 ; 3 uses
  br i1 %i.dz, label %.epil.preheader105, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i51.i.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 3 uses
  %niter110 = phi i64 [ %niter110.next.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.hl = getelementptr inbounds nuw [2048 x i8], ptr %i.au, i64 %indvars.iv.i50.i ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx.i.i ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !77
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !77
  %i.hq = add i64 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv21.i.i
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !77
  %i.hs = getelementptr inbounds nuw [2048 x i8], ptr %i.au, i64 %indvars.iv.i50.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2048 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx.i.i ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !77
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !77
  %i.hy = add i64 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv21.i.i
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !77
  %indvars.iv.next.i51.i.1 = add nuw nsw i64 %indvars.iv.i50.i, 2 ; 2 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge.i53.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !246

._crit_edge.i53.i.unr-lcssa:                      ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod107.not, label %._crit_edge.i53.i, label %.epil.preheader105

.epil.preheader105:                               ; preds = %._crit_edge.i53.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i50.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i51.i.1, %._crit_edge.i53.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ia = getelementptr inbounds nuw [2048 x i8], ptr %i.au, i64 %indvars.iv.i50.i.epil.init ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx.i.i ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !77
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !77
  %i.if = add i64 %i.ie, %i.ic
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv21.i.i
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !77
  br label %._crit_edge.i53.i

._crit_edge.i53.i:                                ; preds = %._crit_edge.i53.i.unr-lcssa, %.epil.preheader105
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next22.i.i, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i, label %calc_sum_next.exit.i.backedge, label %.preheader.i.i, !llvm.loop !247

calc_rice_params.exit:                            ; preds = %bb.i
  %i.ih = sext i32 %.1.i to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ik = add i64 %i.ij, %.0
  ret i64 %i.ik
}

declare i32 @ff_lpc_calc_coefs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @lpc_encode_choose_datapath(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 5, -2147483648) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #1 {
bb.a:
  %9 = ptrtoaddr ptr %3 to i64
  %10 = ptrtoaddr ptr %2 to i64
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = shl nuw i64 1, %i.b
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 13 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi129 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i32>, ptr %i.e, align 4, !tbaa !47
  %wide.load130 = load <2 x i32>, ptr %i.f, align 4, !tbaa !47
  %i.g = sext <2 x i32> %wide.load to <2 x i64>
  %i.h = sext <2 x i32> %wide.load130 to <2 x i64>
  %i.i = shl <2 x i64> %i.g, %broadcast.splat
  %i.j = shl <2 x i64> %i.h, %broadcast.splat
  %i.k = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.i, i1 true)
  %i.l = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.j, i1 true)
  %i.m = add <2 x i64> %i.k, %vec.phi             ; 2 uses
  %i.n = add <2 x i64> %i.l, %vec.phi129          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04992.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa128 = phi i64 [ %i.p, %middle.block ], [ %i.x, %.lr.ph ]
  %i.q = icmp sgt i32 %1, 32
  br i1 %i.q, label %.lr.ph.preheader.i, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a
  %i.r = icmp sgt i32 %1, 32
  br i1 %i.r, label %.preheader.preheader.i, label %.thread109

.lr.ph:                                           ; preds = %.lr.ph.preheader208, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader208 ] ; 2 uses
  %.04992 = phi i64 [ %i.x, %.lr.ph ], [ %.04992.ph, %.lr.ph.preheader208 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = sext i32 %i.t to i64
  %i.v = shl i64 %i.u, %i.b
  %i.w = tail call i64 @llvm.abs.i64(i64 %i.v, i1 true)
  %i.x = add i64 %i.w, %.04992                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 5 uses
  %min.iters.check163 = icmp ult i32 %6, 4
  br i1 %min.iters.check163, label %.lr.ph.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader.i
  %n.vec165 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next170, %vector.body166 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index167 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load168 = load <2 x i64>, ptr %i.y, align 8, !tbaa !77
  %wide.load169 = load <2 x i64>, ptr %i.z, align 8, !tbaa !77
  %i.aa = trunc <2 x i64> %wide.load168 to <2 x i32>
  %i.ab = trunc <2 x i64> %wide.load169 to <2 x i32>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index167 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store <2 x i32> %i.aa, ptr %i.ac, align 4, !tbaa !47
  store <2 x i32> %i.ab, ptr %i.ad, align 4, !tbaa !47
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.ae, label %middle.block171, label %vector.body166, !llvm.loop !255

middle.block171:                                  ; preds = %vector.body166
  %cmp.n172 = icmp eq i64 %n.vec165, %wide.trip.count
  br i1 %cmp.n172, label %.preheader42.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block171
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec165, %middle.block171 ]
  br label %.lr.ph.i

.preheader42.i:                                   ; preds = %.lr.ph.i, %middle.block171
  %i.af = zext nneg i32 %8 to i64
  %i.ag = icmp samesign ult i32 %6, %5
  br i1 %i.ag, label %.preheader.lr.ph.i, label %lpc_encode_with_residual_limit_33bps.exit

.preheader.lr.ph.i:                               ; preds = %.preheader42.i
  %wide.trip.count68.i = zext nneg i32 %5 to i64
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = zext nneg i32 %6 to i35
  %min.iters.check181 = icmp ult i32 %6, 12
  %i.aj = trunc nsw i64 %i.ah to i35
  %mul.result178 = shl nsw i35 %i.aj, 3
  %mul.overflow179 = icmp ugt i64 %i.ah, 4294967295
  %n.vec183 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n197 = icmp eq i64 %n.vec183, %wide.trip.count
  %xtraiter219 = and i64 %wide.trip.count.i, 1
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %i.ak = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader.us.i

.preheader.preheader.i:                           ; preds = %._crit_edge.thread
  %i.al = sext i32 %6 to i64
  %wide.trip.count58.i = zext nneg i32 %5 to i64
  br label %.preheader.i

.preheader.us.i:                                  ; preds = %bb.b, %.preheader.lr.ph.i
  %indvar175 = phi i35 [ %indvar.next176, %bb.b ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %bb.b ], [ %wide.trip.count.i, %.preheader.lr.ph.i ] ; 7 uses
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.scevcheck174

vector.scevcheck174:                              ; preds = %.preheader.us.i
  %i.am = add i35 %indvar175, %i.ai
  %i.an = shl i35 %i.am, 3
  %i.ao = add i35 %i.an, -8                       ; 2 uses
  %i.ap = sub i35 %i.ao, %mul.result178
  %i.aq = icmp sgt i35 %i.ap, %i.ao
  %i.ar = or i1 %i.aq, %mul.overflow179
  br i1 %i.ar, label %scalar.ph180.preheader, label %vector.body184

vector.body184:                                   ; preds = %vector.scevcheck174, %vector.body184
  %index185 = phi i64 [ %index.next194, %vector.body184 ], [ 0, %vector.scevcheck174 ] ; 3 uses
  %vec.phi186 = phi <2 x i64> [ %i.bf, %vector.body184 ], [ zeroinitializer, %vector.scevcheck174 ]
  %vec.phi187 = phi <2 x i64> [ %i.bg, %vector.body184 ], [ zeroinitializer, %vector.scevcheck174 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index185 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %wide.load188 = load <2 x i32>, ptr %i.as, align 4, !tbaa !47
  %wide.load189 = load <2 x i32>, ptr %i.at, align 4, !tbaa !47
  %i.au = sext <2 x i32> %wide.load188 to <2 x i64>
  %i.av = sext <2 x i32> %wide.load189 to <2 x i64>
  %i.aw = xor i64 %index185, -1
  %i.ax = add nsw i64 %indvars.iv65.i, %i.aw
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 29
  %i.ba = getelementptr inbounds i8, ptr %4, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -24
  %wide.load190 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !77
  %wide.load191 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !77
  %reverse192 = shufflevector <2 x i64> %wide.load190, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse193 = shufflevector <2 x i64> %wide.load191, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = mul nsw <2 x i64> %reverse192, %i.au
  %i.be = mul nsw <2 x i64> %reverse193, %i.av
  %i.bf = add <2 x i64> %i.bd, %vec.phi186        ; 2 uses
  %i.bg = add <2 x i64> %i.be, %vec.phi187        ; 2 uses
  %index.next194 = add nuw i64 %index185, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next194, %n.vec183
  br i1 %i.bh, label %middle.block195, label %vector.body184, !llvm.loop !256

middle.block195:                                  ; preds = %vector.body184
  %bin.rdx196 = add <2 x i64> %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx196) ; 2 uses
  br i1 %cmp.n197, label %._crit_edge.us.i, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.scevcheck174, %.preheader.us.i, %middle.block195
  %indvars.iv60.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %n.vec183, %middle.block195 ] ; 5 uses
  %.03344.us.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %i.bi, %middle.block195 ] ; 2 uses
  br i1 %lcmp.mod220.not, label %scalar.ph180.prol.loopexit, label %scalar.ph180.prol

scalar.ph180.prol:                                ; preds = %scalar.ph180.preheader
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i.ph
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.bl = sext i32 %i.bk to i64
  %i.bm = xor i64 %indvars.iv60.i.ph, -1
  %i.bn = add nsw i64 %indvars.iv65.i, %i.bm
  %sext.i.prol = shl i64 %i.bn, 32
  %i.bo = ashr exact i64 %sext.i.prol, 29
  %i.bp = getelementptr inbounds i8, ptr %4, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !77
  %i.br = mul nsw i64 %i.bq, %i.bl
  %i.bs = add nsw i64 %i.br, %.03344.us.i.ph      ; 2 uses
  %indvars.iv.next61.i.prol = or disjoint i64 %indvars.iv60.i.ph, 1
  br label %scalar.ph180.prol.loopexit

scalar.ph180.prol.loopexit:                       ; preds = %scalar.ph180.prol, %scalar.ph180.preheader
  %.lcssa202.unr = phi i64 [ poison, %scalar.ph180.preheader ], [ %i.bs, %scalar.ph180.prol ]
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %scalar.ph180.preheader ], [ %indvars.iv.next61.i.prol, %scalar.ph180.prol ]
  %.03344.us.i.unr = phi i64 [ %.03344.us.i.ph, %scalar.ph180.preheader ], [ %i.bs, %scalar.ph180.prol ]
  %i.bt = icmp eq i64 %indvars.iv60.i.ph, %i.ak
  br i1 %i.bt, label %._crit_edge.us.i, label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.1, %scalar.ph180 ], [ %indvars.iv60.i.unr, %scalar.ph180.prol.loopexit ] ; 5 uses
  %.03344.us.i = phi i64 [ %i.cn, %scalar.ph180 ], [ %.03344.us.i.unr, %scalar.ph180.prol.loopexit ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = sext i32 %i.bv to i64
  %i.bx = xor i64 %indvars.iv60.i, -1
  %i.by = add nsw i64 %indvars.iv65.i, %i.bx
  %sext.i = shl i64 %i.by, 32
  %i.bz = ashr exact i64 %sext.i, 29
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !77
  %i.cc = mul nsw i64 %i.cb, %i.bw
  %i.cd = add nsw i64 %i.cc, %.03344.us.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = sext i32 %i.cg to i64
  %reass.sub222 = sub i64 %indvars.iv65.i, %indvars.iv60.i
  %i.ci = shl i64 %reass.sub222, 32
  %sext.i.1 = add i64 %i.ci, -8589934592
  %i.cj = ashr exact i64 %sext.i.1, 29
  %i.ck = getelementptr inbounds i8, ptr %4, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !77
  %i.cm = mul nsw i64 %i.cl, %i.ch
  %i.cn = add nsw i64 %i.cm, %i.cd                ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, %wide.trip.count.i
  br i1 %exitcond64.not.i.1, label %._crit_edge.us.i, label %scalar.ph180, !llvm.loop !257

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.co = trunc nsw i64 %i.ct to i32
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !47
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  %indvar.next176 = add i35 %indvar175, 1
  br i1 %exitcond69.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i, !llvm.loop !0

._crit_edge.us.i:                                 ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180, %middle.block195
  %.lcssa = phi i64 [ %i.bi, %middle.block195 ], [ %.lcssa202.unr, %scalar.ph180.prol.loopexit ], [ %i.cn, %scalar.ph180 ]
  %i.cq = ashr i64 %.lcssa, %i.af
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv65.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !77
  %i.ct = sub nsw i64 %i.cs, %i.cq                ; 2 uses
  %i.cu = add i64 %i.ct, 2147483647
  %or.cond.us.i = icmp ult i64 %i.cu, 4294967295
  br i1 %or.cond.us.i, label %bb.b, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !77
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader42.i, label %.lr.ph.i, !llvm.loop !258

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ %i.al, %.preheader.preheader.i ], [ %indvars.iv.next56.i, %bb.c ] ; 3 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv55.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !77 ; 2 uses
  %i.db = add i64 %i.da, 2147483647
  %or.cond.i = icmp ult i64 %i.db, 4294967295
  br i1 %or.cond.i, label %bb.c, label %lpc_encode_with_residual_limit_33bps.exit

bb.c:                                             ; preds = %.preheader.i
  %i.dc = trunc nsw i64 %i.da to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !47
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge
  %i.de = zext nneg i32 %8 to i64                 ; 2 uses
  %i.df = lshr i64 %.lcssa128, %i.de
  %i.dg = add i64 %i.df, %i.c
  %i.dh = icmp ugt i64 %i.dg, 2147483647
  br i1 %i.dh, label %.lr.ph.preheader.i62, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.thread109:                                       ; preds = %._crit_edge.thread
  %i.di = icmp ugt i32 %i.a, 30
  br i1 %i.di, label %.preheader.preheader.i55, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.lr.ph.preheader.i62:                             ; preds = %bb.d
  %wide.trip.count.i63 = zext nneg i32 %6 to i64  ; 7 uses
  %min.iters.check132 = icmp ult i32 %6, 8
  %i.dj = sub i64 %9, %10
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond = or i1 %min.iters.check132, %diff.check
  br i1 %or.cond, label %.lr.ph.i64.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i62
  %n.vec134 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !47
  %wide.load138 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !47
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index136 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %wide.load137, ptr %i.dm, align 4, !tbaa !47
  store <4 x i32> %wide.load138, ptr %i.dn, align 4, !tbaa !47
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.do, label %middle.block140, label %vector.body135, !llvm.loop !259

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count
  br i1 %cmp.n141, label %.preheader42.i68, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.lr.ph.preheader.i62, %middle.block140
  %indvars.iv.i65.ph = phi i64 [ 0, %.lr.ph.preheader.i62 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i63, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64.prol
  %indvars.iv.i65.prol = phi i64 [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ], [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65.prol
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !47
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65.prol
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !47
  %indvars.iv.next.i66.prol = add nuw nsw i64 %indvars.iv.i65.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !260

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %indvars.iv.i65.unr = phi i64 [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ], [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i65.ph, %wide.trip.count.i63
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %.preheader42.i68, label %.lr.ph.i64

.preheader42.i68:                                 ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block140
  %i.du = icmp samesign ult i32 %6, %5
  br i1 %i.du, label %.preheader.lr.ph.i69, label %lpc_encode_with_residual_limit_33bps.exit

.preheader.lr.ph.i69:                             ; preds = %.preheader42.i68
  %wide.trip.count68.i70 = zext nneg i32 %5 to i64
  %i.dv = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dw = zext nneg i32 %6 to i34
  %min.iters.check144 = icmp ult i32 %6, 28
  %i.dx = trunc nsw i64 %i.dv to i34
  %mul.result = shl nsw i34 %i.dx, 2
  %mul.overflow = icmp ugt i64 %i.dv, 4294967295
  %n.vec146 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n159 = icmp eq i64 %n.vec146, %wide.trip.count
  %xtraiter216 = and i64 %wide.trip.count.i63, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %i.dy = add nsw i64 %wide.trip.count.i63, -1
  br label %.preheader.us.i72

.preheader.preheader.i55:                         ; preds = %.thread109
  %i.dz = sext i32 %6 to i64
  %wide.trip.count58.i56 = zext nneg i32 %5 to i64
  br label %.preheader.i57

.preheader.us.i72:                                ; preds = %bb.e, %.preheader.lr.ph.i69
  %indvar = phi i34 [ %indvar.next, %bb.e ], [ 0, %.preheader.lr.ph.i69 ] ; 2 uses
  %indvars.iv65.i73 = phi i64 [ %indvars.iv.next66.i81, %bb.e ], [ %wide.trip.count.i63, %.preheader.lr.ph.i69 ] ; 7 uses
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i72
  %i.ea = add i34 %indvar, %i.dw
  %i.eb = shl i34 %i.ea, 2
  %i.ec = add i34 %i.eb, -4                       ; 2 uses
  %i.ed = sub i34 %i.ec, %mul.result
  %i.ee = icmp sgt i34 %i.ed, %i.ec
  %i.ef = or i1 %i.ee, %mul.overflow
  br i1 %i.ef, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.scevcheck, %vector.body147
  %index148 = phi i64 [ %index.next156, %vector.body147 ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi149 = phi <2 x i64> [ %i.ev, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi150 = phi <2 x i64> [ %i.ew, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index148 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %wide.load151 = load <2 x i32>, ptr %i.eg, align 4, !tbaa !47
  %wide.load152 = load <2 x i32>, ptr %i.eh, align 4, !tbaa !47
  %i.ei = sext <2 x i32> %wide.load151 to <2 x i64>
  %i.ej = sext <2 x i32> %wide.load152 to <2 x i64>
  %i.ek = xor i64 %index148, -1
  %i.el = add nsw i64 %indvars.iv65.i73, %i.ek
  %i.em = shl i64 %i.el, 32
  %i.en = ashr exact i64 %i.em, 30
  %i.eo = getelementptr inbounds i8, ptr %3, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -12
  %wide.load153 = load <2 x i32>, ptr %i.ep, align 4, !tbaa !47
  %wide.load154 = load <2 x i32>, ptr %i.eq, align 4, !tbaa !47
  %reverse = shufflevector <2 x i32> %wide.load153, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse155 = shufflevector <2 x i32> %wide.load154, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.er = sext <2 x i32> %reverse to <2 x i64>
  %i.es = sext <2 x i32> %reverse155 to <2 x i64>
  %i.et = mul nsw <2 x i64> %i.er, %i.ei
  %i.eu = mul nsw <2 x i64> %i.es, %i.ej
  %i.ev = add <2 x i64> %i.et, %vec.phi149        ; 2 uses
  %i.ew = add <2 x i64> %i.eu, %vec.phi150        ; 2 uses
  %index.next156 = add nuw i64 %index148, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next156, %n.vec146
  br i1 %i.ex, label %middle.block157, label %vector.body147, !llvm.loop !261

middle.block157:                                  ; preds = %vector.body147
  %bin.rdx158 = add <2 x i64> %i.ew, %i.ev
  %i.ey = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx158) ; 2 uses
  br i1 %cmp.n159, label %._crit_edge.us.i79, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.scevcheck, %.preheader.us.i72, %middle.block157
  %indvars.iv60.i74.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %n.vec146, %middle.block157 ] ; 5 uses
  %.03344.us.i75.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %i.ey, %middle.block157 ] ; 2 uses
  br i1 %lcmp.mod217.not, label %scalar.ph143.prol.loopexit, label %scalar.ph143.prol

scalar.ph143.prol:                                ; preds = %scalar.ph143.preheader
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74.ph
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !47
  %i.fb = sext i32 %i.fa to i64
  %i.fc = xor i64 %indvars.iv60.i74.ph, -1
  %i.fd = add nsw i64 %indvars.iv65.i73, %i.fc
  %sext.i76.prol = shl i64 %i.fd, 32
  %i.fe = ashr exact i64 %sext.i76.prol, 30
  %i.ff = getelementptr inbounds i8, ptr %3, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %i.fh, %i.fb
  %i.fj = add nsw i64 %i.fi, %.03344.us.i75.ph    ; 2 uses
  %indvars.iv.next61.i77.prol = or disjoint i64 %indvars.iv60.i74.ph, 1
  br label %scalar.ph143.prol.loopexit

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %.lcssa207.unr = phi i64 [ poison, %scalar.ph143.preheader ], [ %i.fj, %scalar.ph143.prol ]
  %indvars.iv60.i74.unr = phi i64 [ %indvars.iv60.i74.ph, %scalar.ph143.preheader ], [ %indvars.iv.next61.i77.prol, %scalar.ph143.prol ]
  %.03344.us.i75.unr = phi i64 [ %.03344.us.i75.ph, %scalar.ph143.preheader ], [ %i.fj, %scalar.ph143.prol ]
  %i.fk = icmp eq i64 %indvars.iv60.i74.ph, %i.dy
  br i1 %i.fk, label %._crit_edge.us.i79, label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv60.i74 = phi i64 [ %indvars.iv.next61.i77.1, %scalar.ph143 ], [ %indvars.iv60.i74.unr, %scalar.ph143.prol.loopexit ] ; 5 uses
  %.03344.us.i75 = phi i64 [ %i.gg, %scalar.ph143 ], [ %.03344.us.i75.unr, %scalar.ph143.prol.loopexit ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !47
  %i.fn = sext i32 %i.fm to i64
  %i.fo = xor i64 %indvars.iv60.i74, -1
  %i.fp = add nsw i64 %indvars.iv65.i73, %i.fo
  %sext.i76 = shl i64 %i.fp, 32
  %i.fq = ashr exact i64 %sext.i76, 30
  %i.fr = getelementptr inbounds i8, ptr %3, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !47
  %i.ft = sext i32 %i.fs to i64
  %i.fu = mul nsw i64 %i.ft, %i.fn
  %i.fv = add nsw i64 %i.fu, %.03344.us.i75
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !47
  %i.fz = sext i32 %i.fy to i64
  %reass.sub = sub i64 %indvars.iv65.i73, %indvars.iv60.i74
  %i.ga = shl i64 %reass.sub, 32
  %sext.i76.1 = add i64 %i.ga, -8589934592
  %i.gb = ashr exact i64 %sext.i76.1, 30
  %i.gc = getelementptr inbounds i8, ptr %3, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !47
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul nsw i64 %i.ge, %i.fz
  %i.gg = add nsw i64 %i.gf, %i.fv                ; 2 uses
  %indvars.iv.next61.i77.1 = add nuw nsw i64 %indvars.iv60.i74, 2 ; 2 uses
  %exitcond64.not.i78.1 = icmp eq i64 %indvars.iv.next61.i77.1, %wide.trip.count.i63
  br i1 %exitcond64.not.i78.1, label %._crit_edge.us.i79, label %scalar.ph143, !llvm.loop !262

bb.e:                                             ; preds = %._crit_edge.us.i79
  %i.gh = trunc nsw i64 %i.gn to i32
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i73
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !47
  %indvars.iv.next66.i81 = add nuw nsw i64 %indvars.iv65.i73, 1 ; 2 uses
  %exitcond69.not.i82 = icmp eq i64 %indvars.iv.next66.i81, %wide.trip.count68.i70
  %indvar.next = add i34 %indvar, 1
  br i1 %exitcond69.not.i82, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i72, !llvm.loop !1

._crit_edge.us.i79:                               ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block157
  %.lcssa127 = phi i64 [ %i.ey, %middle.block157 ], [ %.lcssa207.unr, %scalar.ph143.prol.loopexit ], [ %i.gg, %scalar.ph143 ]
  %i.gj = ashr i64 %.lcssa127, %i.de
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv65.i73
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !47
  %i.gm = sext i32 %i.gl to i64
  %i.gn = sub nsw i64 %i.gm, %i.gj                ; 2 uses
end_hunk_1
