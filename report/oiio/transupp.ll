inline.NumInlined: 31
inline.NumDeleted: 19
begin_hunk_0_@do_crop:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc void @do_flip_h_no_crop(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !103
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.i = load i32, ptr %i.h, align 4, !tbaa !143
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = udiv i32 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.fr = freeze i32 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph93, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next132, %._crit_edge ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %indvars.iv131 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !75
  %.fr98 = freeze i32 %i.q                        ; 2 uses
  %i.r = mul i32 %.fr98, %.fr                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !116
  %.not95 = icmp eq i32 %i.t, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = mul i32 %.fr98, %2                       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv131 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 7 uses
  %.not97 = icmp eq i32 %i.r, 0
  %.not = icmp eq i32 %i.u, 0                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 4 uses
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  br i1 %.not97, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = add i32 %i.r, -1                         ; 5 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add nuw i32 %i.aa, 1                    ; 2 uses
  %.pre = load i32, ptr %i.w, align 4, !tbaa !77
  %wide.trip.count = zext i32 %i.ab to i64
  %wide.trip.count118 = zext i32 %i.ab to i64
  %i.ac = zext i32 %i.z to i64
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = and i64 %i.ad, 274877906816             ; 2 uses
  %i.af = zext i32 %i.z to i64
  %i.ag = shl nuw nsw i64 %i.af, 6
  %i.ah = and i64 %i.ag, 274877906816             ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge77.split.us.us
  %i.ai = phi i32 [ %i.aq, %._crit_edge77.split.us.us ], [ %.pre, %.lr.ph.split.us.preheader ]
  %.05987.us = phi i32 [ %i.ar, %._crit_edge77.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.an = tail call ptr %i.al(ptr noundef %0, ptr noundef %i.am, i32 noundef %.05987.us, i32 noundef %i.ai, i32 noundef 1) #9 ; 2 uses
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !77  ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.preheader68.lr.ph.us, label %._crit_edge77.split.us.us

._crit_edge77.split.us.us:                        ; preds = %.loopexit.us.us, %._crit_edge.us.us.us, %.lr.ph.split.us
  %i.aq = phi i32 [ %i.ao, %.lr.ph.split.us ], [ %i.ao, %._crit_edge.us.us.us ], [ %i.dz, %.loopexit.us.us ] ; 2 uses
  %i.ar = add i32 %i.aq, %.05987.us               ; 2 uses
  %i.as = load i32, ptr %i.s, align 8, !tbaa !116
  %i.at = icmp ult i32 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !227

.preheader68.lr.ph.us:                            ; preds = %.lr.ph.split.us
  br i1 %.not, label %.preheader68.lr.ph.split.us.us.split.us, label %.preheader68.us.us

.preheader68.lr.ph.split.us.us.split.us:          ; preds = %.preheader68.lr.ph.us
  %wide.trip.count123 = zext nneg i32 %i.ao to i64
  br label %.preheader68.us.us.us

.preheader68.us.us.us:                            ; preds = %._crit_edge.us.us.us, %.preheader68.lr.ph.split.us.us.split.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge.us.us.us ], [ 0, %.preheader68.lr.ph.split.us.us.split.us ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18 ; 12 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 126
  %scevgep154 = getelementptr i8, ptr %scevgep, i64 %i.ae ; 3 uses
  %scevgep156 = getelementptr i8, ptr %i.av, i64 126
  %scevgep158 = getelementptr nuw i8, ptr %i.av, i64 2 ; 3 uses
  %scevgep159 = getelementptr i8, ptr %i.av, i64 128
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.ae ; 3 uses
  %scevgep161 = getelementptr i8, ptr %i.av, i64 2
  %scevgep163 = getelementptr i8, ptr %i.av, i64 128
  %bound0165 = icmp ult ptr %i.av, %scevgep160
  %bound1166 = icmp ult ptr %scevgep158, %scevgep154
  %found.conflict167 = and i1 %bound0165, %bound1166
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %middle.block, %.preheader68.us.us.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %middle.block ], [ 0, %.preheader68.us.us.us ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %indvars.iv115 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv115 to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = add i32 %i.r, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = trunc i64 %indvars.iv115 to i32
  %i.bd = sub i32 %i.z, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 7                ; 4 uses
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.bf ; 3 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.bf ; 3 uses
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.bf ; 3 uses
  %scevgep155 = getelementptr i8, ptr %i.av, i64 %i.bf ; 3 uses
  %bound0 = icmp ult ptr %i.av, %scevgep157
  %bound1 = icmp ult ptr %scevgep155, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  %bound0168 = icmp ult ptr %i.av, %scevgep164
  %bound1169 = icmp ult ptr %scevgep162, %scevgep154
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep155, %scevgep160
  %bound1173 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep155, %scevgep164
  %bound1177 = icmp ult ptr %scevgep162, %scevgep157
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %scevgep158, %scevgep164
  %bound1181 = icmp ult ptr %scevgep162, %scevgep160
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  br i1 %conflict.rdx183, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bg ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.aw, i64 %i.bg ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep184, align 2, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec185 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec186 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !21 ; 2 uses
  %strided.vec187 = shufflevector <8 x i16> %wide.vec186, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec188 = shufflevector <8 x i16> %wide.vec186, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bh = sub <4 x i16> zeroinitializer, %strided.vec188
  %interleaved.vec = shufflevector <4 x i16> %strided.vec187, <4 x i16> %i.bh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep184, align 2, !tbaa !21
  %i.bi = sub <4 x i16> zeroinitializer, %strided.vec185
  %interleaved.vec189 = shufflevector <4 x i16> %strided.vec, <4 x i16> %i.bi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec189, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, 32
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge.us.us.us, label %vector.memcheck, !llvm.loop !231

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.06171.us.us.us = phi ptr [ %i.cd, %scalar.ph ], [ %i.bb, %vector.memcheck ] ; 6 uses
  %.06270.us.us.us = phi ptr [ %i.cb, %scalar.ph ], [ %i.aw, %vector.memcheck ] ; 6 uses
  %.06369.us.us.us = phi i32 [ %i.ce, %scalar.ph ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bk = load i16, ptr %.06270.us.us.us, align 2, !tbaa !21
  %i.bl = load i16, ptr %.06171.us.us.us, align 2, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.06270.us.us.us, i64 2 ; 2 uses
  store i16 %i.bl, ptr %.06270.us.us.us, align 2, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.06171.us.us.us, i64 2 ; 2 uses
  store i16 %i.bk, ptr %.06171.us.us.us, align 2, !tbaa !21
  %i.bo = load i16, ptr %i.bm, align 2, !tbaa !21
  %i.bp = load i16, ptr %i.bn, align 2, !tbaa !21
  %i.bq = sub i16 0, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.06270.us.us.us, i64 4 ; 2 uses
  store i16 %i.bq, ptr %i.bm, align 2, !tbaa !21
  %i.bs = sub i16 0, %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %.06171.us.us.us, i64 4 ; 2 uses
  store i16 %i.bs, ptr %i.bn, align 2, !tbaa !21
  %i.bu = load i16, ptr %i.br, align 2, !tbaa !21
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.06270.us.us.us, i64 6 ; 2 uses
  store i16 %i.bv, ptr %i.br, align 2, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.06171.us.us.us, i64 6 ; 2 uses
  store i16 %i.bu, ptr %i.bt, align 2, !tbaa !21
  %i.by = load i16, ptr %i.bw, align 2, !tbaa !21
  %i.bz = load i16, ptr %i.bx, align 2, !tbaa !21
  %i.ca = sub i16 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.06270.us.us.us, i64 8
  store i16 %i.ca, ptr %i.bw, align 2, !tbaa !21
  %i.cc = sub i16 0, %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %.06171.us.us.us, i64 8
  store i16 %i.cc, ptr %i.bx, align 2, !tbaa !21
  %i.ce = add nuw nsw i32 %.06369.us.us.us, 4
  %i.cf = icmp ult i32 %.06369.us.us.us, 60
  br i1 %i.cf, label %scalar.ph, label %middle.block, !llvm.loop !232

._crit_edge.us.us.us:                             ; preds = %middle.block
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge77.split.us.us, label %.preheader68.us.us.us, !llvm.loop !233

.preheader68.us.us:                               ; preds = %.preheader68.lr.ph.us, %.loopexit.us.us
  %i.cg = phi i32 [ %i.dz, %.loopexit.us.us ], [ %i.ao, %.preheader68.lr.ph.us ]
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.loopexit.us.us ], [ 0, %.preheader68.lr.ph.us ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv112 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 12 uses
  %scevgep191 = getelementptr i8, ptr %i.ci, i64 126
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.ah ; 3 uses
  %scevgep194 = getelementptr i8, ptr %i.ci, i64 126
  %scevgep196 = getelementptr nuw i8, ptr %i.ci, i64 2 ; 3 uses
  %scevgep197 = getelementptr i8, ptr %i.ci, i64 128
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.ah ; 3 uses
  %scevgep199 = getelementptr i8, ptr %i.ci, i64 2
  %scevgep201 = getelementptr i8, ptr %i.ci, i64 128
  %bound0206 = icmp ult ptr %i.ci, %scevgep198
  %bound1207 = icmp ult ptr %scevgep196, %scevgep192
  %found.conflict208 = and i1 %bound0206, %bound1207
  br label %vector.memcheck190

.lr.ph74.us.us:                                   ; preds = %._crit_edge.us.us, %.lr.ph74.us.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph74.us.us ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %indvars.iv109 ; 2 uses
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %i.y
  tail call void @jcopy_block_row(ptr noundef nonnull %i.cl, ptr noundef %i.ck, i32 noundef 1) #9
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cm = load i32, ptr %i.x, align 4, !tbaa !119
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next110, %i.cn
  br i1 %i.co, label %.lr.ph74.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !234

vector.memcheck190:                               ; preds = %middle.block241, %.preheader68.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %middle.block241 ], [ 0, %.preheader68.us.us ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv to i32
  %i.cr = xor i32 %i.cq, -1
  %i.cs = add i32 %i.r, %i.cr
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %i.ci, i64 %i.ct ; 2 uses
  %i.cv = trunc i64 %indvars.iv to i32
  %i.cw = sub i32 %i.z, %i.cv
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 7                ; 4 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.cy ; 3 uses
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %i.cy ; 3 uses
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.cy ; 3 uses
  %scevgep193 = getelementptr i8, ptr %i.ci, i64 %i.cy ; 3 uses
  %bound0203 = icmp ult ptr %i.ci, %scevgep195
  %bound1204 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx209 = or i1 %found.conflict205, %found.conflict208
  %bound0210 = icmp ult ptr %i.ci, %scevgep202
  %bound1211 = icmp ult ptr %scevgep200, %scevgep192
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %scevgep193, %scevgep198
  %bound1215 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %scevgep193, %scevgep202
  %bound1219 = icmp ult ptr %scevgep200, %scevgep195
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %scevgep196, %scevgep202
  %bound1223 = icmp ult ptr %scevgep200, %scevgep198
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  br i1 %conflict.rdx225, label %scalar.ph226, label %vector.body228

vector.body228:                                   ; preds = %vector.memcheck190, %vector.body228
  %index229 = phi i64 [ %index.next240, %vector.body228 ], [ 0, %vector.memcheck190 ] ; 2 uses
  %i.cz = shl i64 %index229, 2                    ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.cu, i64 %i.cz ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %wide.vec232 = load <8 x i16>, ptr %next.gep231, align 2, !tbaa !21 ; 2 uses
  %strided.vec233 = shufflevector <8 x i16> %wide.vec232, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec234 = shufflevector <8 x i16> %wide.vec232, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec235 = load <8 x i16>, ptr %next.gep230, align 2, !tbaa !21 ; 2 uses
  %strided.vec236 = shufflevector <8 x i16> %wide.vec235, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec237 = shufflevector <8 x i16> %wide.vec235, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.da = sub <4 x i16> zeroinitializer, %strided.vec237
  %interleaved.vec238 = shufflevector <4 x i16> %strided.vec236, <4 x i16> %i.da, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec238, ptr %next.gep231, align 2, !tbaa !21
  %i.db = sub <4 x i16> zeroinitializer, %strided.vec234
  %interleaved.vec239 = shufflevector <4 x i16> %strided.vec233, <4 x i16> %i.db, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec239, ptr %next.gep230, align 2, !tbaa !21
  %index.next240 = add nuw i64 %index229, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next240, 32
  br i1 %i.dc, label %middle.block241, label %vector.body228, !llvm.loop !235

middle.block241:                                  ; preds = %vector.body228, %scalar.ph226
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %vector.memcheck190, !llvm.loop !231

scalar.ph226:                                     ; preds = %vector.memcheck190, %scalar.ph226
  %.06171.us.us = phi ptr [ %i.dw, %scalar.ph226 ], [ %i.cu, %vector.memcheck190 ] ; 6 uses
  %.06270.us.us = phi ptr [ %i.du, %scalar.ph226 ], [ %i.cp, %vector.memcheck190 ] ; 6 uses
  %.06369.us.us = phi i32 [ %i.dx, %scalar.ph226 ], [ 0, %vector.memcheck190 ] ; 2 uses
  %i.dd = load i16, ptr %.06270.us.us, align 2, !tbaa !21
  %i.de = load i16, ptr %.06171.us.us, align 2, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.06270.us.us, i64 2 ; 2 uses
  store i16 %i.de, ptr %.06270.us.us, align 2, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.06171.us.us, i64 2 ; 2 uses
  store i16 %i.dd, ptr %.06171.us.us, align 2, !tbaa !21
  %i.dh = load i16, ptr %i.df, align 2, !tbaa !21
  %i.di = load i16, ptr %i.dg, align 2, !tbaa !21
  %i.dj = sub i16 0, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.06270.us.us, i64 4 ; 2 uses
  store i16 %i.dj, ptr %i.df, align 2, !tbaa !21
  %i.dl = sub i16 0, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %.06171.us.us, i64 4 ; 2 uses
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !21
  %i.dn = load i16, ptr %i.dk, align 2, !tbaa !21
  %i.do = load i16, ptr %i.dm, align 2, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %.06270.us.us, i64 6 ; 2 uses
  store i16 %i.do, ptr %i.dk, align 2, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %.06171.us.us, i64 6 ; 2 uses
  store i16 %i.dn, ptr %i.dm, align 2, !tbaa !21
  %i.dr = load i16, ptr %i.dp, align 2, !tbaa !21
  %i.ds = load i16, ptr %i.dq, align 2, !tbaa !21
  %i.dt = sub i16 0, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.06270.us.us, i64 8
  store i16 %i.dt, ptr %i.dp, align 2, !tbaa !21
  %i.dv = sub i16 0, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.06171.us.us, i64 8
  store i16 %i.dv, ptr %i.dq, align 2, !tbaa !21
  %i.dx = add nuw nsw i32 %.06369.us.us, 4
  %i.dy = icmp ult i32 %.06369.us.us, 60
  br i1 %i.dy, label %scalar.ph226, label %middle.block241, !llvm.loop !236

.loopexit.us.us.loopexit:                         ; preds = %.lr.ph74.us.us
  %.pre134 = load i32, ptr %i.w, align 4, !tbaa !77
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %._crit_edge.us.us
  %i.dz = phi i32 [ %.pre134, %.loopexit.us.us.loopexit ], [ %i.cg, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next113, %i.ea
  br i1 %i.eb, label %.preheader68.us.us, label %._crit_edge77.split.us.us, !llvm.loop !233

._crit_edge.us.us:                                ; preds = %middle.block241
  %i.ec = load i32, ptr %i.x, align 4, !tbaa !119
  %.not101 = icmp eq i32 %i.ec, 0
  br i1 %.not101, label %.loopexit.us.us, label %.lr.ph74.us.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre137 = load i32, ptr %i.w, align 4, !tbaa !77 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %i.ed = phi i32 [ %i.ej, %.lr.ph.split.split.us ], [ %.pre137, %.lr.ph.split ]
  %.05987.us88 = phi i32 [ %i.ek, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ee = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !117
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.ei = tail call ptr %i.eg(ptr noundef %0, ptr noundef %i.eh, i32 noundef %.05987.us88, i32 noundef %i.ed, i32 noundef 1) #9 ; 0 uses
  %i.ej = load i32, ptr %i.w, align 4, !tbaa !77  ; 2 uses
  %i.ek = add i32 %i.ej, %.05987.us88             ; 2 uses
  %i.el = load i32, ptr %i.s, align 8, !tbaa !116
  %i.em = icmp ult i32 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !227

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %._crit_edge77.split.split
  %i.en = phi i32 [ %i.fj, %._crit_edge77.split.split ], [ %.pre137, %.lr.ph.split ]
  %.05987 = phi i32 [ %i.fk, %._crit_edge77.split.split ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.eo = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !117
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.es = tail call ptr %i.eq(ptr noundef %0, ptr noundef %i.er, i32 noundef %.05987, i32 noundef %i.en, i32 noundef 1) #9
  %i.et = load i32, ptr %i.w, align 4, !tbaa !77  ; 4 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.preheader68.lr.ph, label %._crit_edge77.split.split

.preheader68.lr.ph:                               ; preds = %.lr.ph.split.split
  %i.ev = load i32, ptr %i.x, align 4, !tbaa !119
  %.not99 = icmp eq i32 %i.ev, 0
  br i1 %.not99, label %._crit_edge77.split.split, label %.preheader68

.preheader68:                                     ; preds = %.preheader68.lr.ph, %.loopexit
  %i.ew = phi i32 [ %i.ff, %.loopexit ], [ %i.et, %.preheader68.lr.ph ]
  %i.ex = phi i32 [ %i.fg, %.loopexit ], [ 1, %.preheader68.lr.ph ]
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.loopexit ], [ 0, %.preheader68.lr.ph ] ; 2 uses
  %.not100 = icmp eq i32 %i.ex, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader68
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv128
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph74, %bb.c
  %indvars.iv125 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next126, %bb.c ] ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw [128 x i8], ptr %i.ez, i64 %indvars.iv125 ; 2 uses
  %i.fb = getelementptr inbounds nuw [128 x i8], ptr %i.fa, i64 %i.y
  tail call void @jcopy_block_row(ptr noundef nonnull %i.fb, ptr noundef %i.fa, i32 noundef 1) #9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.fc = load i32, ptr %i.x, align 4, !tbaa !119 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next126, %i.fd
  br i1 %i.fe, label %bb.c, label %.loopexit.loopexit, !llvm.loop !234

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre136 = load i32, ptr %i.w, align 4, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader68
  %i.ff = phi i32 [ %.pre136, %.loopexit.loopexit ], [ %i.ew, %.preheader68 ] ; 3 uses
  %i.fg = phi i32 [ %i.fc, %.loopexit.loopexit ], [ 0, %.preheader68 ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.fh = sext i32 %i.ff to i64
  %i.fi = icmp slt i64 %indvars.iv.next129, %i.fh
  br i1 %i.fi, label %.preheader68, label %._crit_edge77.split.split, !llvm.loop !237

._crit_edge77.split.split:                        ; preds = %.loopexit, %.preheader68.lr.ph, %.lr.ph.split.split
  %i.fj = phi i32 [ %i.et, %.lr.ph.split.split ], [ %i.et, %.preheader68.lr.ph ], [ %i.ff, %.loopexit ] ; 2 uses
  %i.fk = add i32 %i.fj, %.05987                  ; 2 uses
  %i.fl = load i32, ptr %i.s, align 8, !tbaa !116
  %i.fm = icmp ult i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %._crit_edge77.split.us.us, %._crit_edge77.split.split, %.lr.ph.split.split.us, %bb.b
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.fn = load i32, ptr %i.a, align 4, !tbaa !103
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next132, %i.fo
  br i1 %i.fp, label %bb.b, label %._crit_edge94, !llvm.loop !238

._crit_edge94:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_reflect(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !103
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph143, label %._crit_edge

.lr.ph143:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph143, %._crit_edge130
  %indvars.iv164 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next165, %._crit_edge130 ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %indvars.iv164 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !75
  %.fr145 = freeze i32 %i.i                       ; 2 uses
  %i.j = mul i32 %.fr145, %2                      ; 4 uses
  %i.k = mul i32 %.fr145, %4                      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 3 uses
  %i.n = mul i32 %i.m, %5                         ; 4 uses
  %.not144 = icmp eq i32 %i.n, 0
  br i1 %.not144, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv164 ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 3 uses
  %i.r = zext i32 %i.k to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 7                  ; 2 uses
  %.not92115 = icmp eq i32 %i.k, 0                ; 2 uses
  br i1 %.not, label %.lr.ph129.split.us, label %.lr.ph129.split

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %._crit_edge.split.us.us
  %i.t = phi i32 [ %i.ab, %._crit_edge.split.us.us ], [ %i.m, %.lr.ph129 ]
  %.0127.us = phi i32 [ %i.ac, %._crit_edge.split.us.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.y = tail call ptr %i.w(ptr noundef %0, ptr noundef %i.x, i32 noundef %.0127.us, i32 noundef %i.t, i32 noundef 1) #9 ; 3 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !77   ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.us, label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %..loopexit95_crit_edge.split.us.us.us, %.loopexit95.us.us.us136, %.lr.ph.split.us.split.us.us, %.lr.ph129.split.us
  %i.ab = phi i32 [ %i.z, %.lr.ph129.split.us ], [ %i.z, %.lr.ph.split.us.split.us.us ], [ %i.jp, %.loopexit95.us.us.us136 ], [ %i.am, %..loopexit95_crit_edge.split.us.us.us ] ; 2 uses
  %i.ac = add i32 %i.ab, %.0127.us                ; 2 uses
  %i.ad = icmp ult i32 %i.ac, %i.n
  br i1 %i.ad, label %.lr.ph129.split.us, label %._crit_edge130, !llvm.loop !239

.lr.ph.us:                                        ; preds = %.lr.ph129.split.us
  br i1 %.not92115, label %.lr.ph.split.us.split.us.us, label %.lr.ph.split.us.split.us134

.lr.ph.split.us.split.us134:                      ; preds = %.lr.ph.us, %..loopexit95_crit_edge.split.us.us.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %..loopexit95_crit_edge.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !119 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, %i.k
  br i1 %i.af, label %.lr.ph118.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us134
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv158
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ah, i8 0, i64 %i.s, i1 false)
  br label %..loopexit95_crit_edge.split.us.us.us

.lr.ph118.us.us:                                  ; preds = %.lr.ph.split.us.split.us134
  %i.ai = sub nuw i32 %i.ae, %i.k                 ; 3 uses
  %.not146 = icmp eq i32 %i.ai, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph118.us.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv158
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.r ; 2 uses
  br label %.lr.ph.us.us.us

..loopexit95_crit_edge.split.us.us.us:            ; preds = %..loopexit_crit_edge.us.us.us, %bb.c
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.am = load i32, ptr %i.l, align 4, !tbaa !77  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next159, %i.an
  br i1 %i.ao, label %.lr.ph.split.us.split.us134, label %._crit_edge.split.us.us, !llvm.loop !240

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.backedge, %.lr.ph.us.us.us.preheader
  %.3113.us.us.us = phi ptr [ %i.al, %.lr.ph.us.us.us.preheader ], [ %i.ap, %.lr.ph.us.us.us.backedge ] ; 64 uses
  %.178112.us.us.us = phi ptr [ %i.al, %.lr.ph.us.us.us.preheader ], [ %.178112.us.us.us.be, %.lr.ph.us.us.us.backedge ] ; 65 uses
  %.180111.us.us.us = phi i32 [ %i.ai, %.lr.ph.us.us.us.preheader ], [ %.180111.us.us.us.be, %.lr.ph.us.us.us.backedge ]
  %.388110.us.us.us = phi i32 [ %i.k, %.lr.ph.us.us.us.preheader ], [ %i.jg, %.lr.ph.us.us.us.backedge ]
end_hunk_0
