inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@bitrv2:bb.a

.lr.ph223:                                        ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv246
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %indvars.iv246.tr = trunc i64 %indvars.iv246 to i32
  %i.ae = shl i32 %indvars.iv246.tr, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph223, %bb.b
  %indvars.iv241 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next242, %bb.b ] ; 3 uses
  %i.af = shl nuw nsw i64 %indvars.iv241, 1
  %i.ag = add nsw i64 %i.af, %i.ad                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv241
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ai, %i.ae                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al ; 2 uses
  %i.an = load <2 x double>, ptr %i.ak, align 8, !tbaa !8
  %i.ao = load <2 x double>, ptr %i.am, align 8, !tbaa !8
  store <2 x double> %i.ao, ptr %i.ak, align 8, !tbaa !8
  store <2 x double> %i.an, ptr %i.am, align 8, !tbaa !8
  %i.ap = add nsw i64 %i.ag, %i.z                 ; 2 uses
  %i.aq = add nsw i32 %i.aj, %i.y                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = load <2 x double>, ptr %i.ar, align 8, !tbaa !8
  %i.av = load <2 x double>, ptr %i.at, align 8, !tbaa !8
  store <2 x double> %i.av, ptr %i.ar, align 8, !tbaa !8
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !8
  %i.aw = add nsw i64 %i.ap, %i.z                 ; 2 uses
  %i.ax = sub nsw i32 %i.aq, %i.x                 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az ; 2 uses
  %i.bb = load <2 x double>, ptr %i.ay, align 8, !tbaa !8
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !8
  store <2 x double> %i.bc, ptr %i.ay, align 8, !tbaa !8
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !8
  %i.bd = add nsw i32 %i.ax, %i.y
  %gep268 = getelementptr [8 x i8], ptr %invariant.gep267, i64 %i.aw ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bg = load <2 x double>, ptr %gep268, align 8, !tbaa !8
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !8
  store <2 x double> %i.bh, ptr %gep268, align 8, !tbaa !8
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !8
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %indvars.iv246
  br i1 %exitcond245.not, label %._crit_edge224, label %bb.b, !llvm.loop !39

._crit_edge224:                                   ; preds = %bb.b, %.preheader
  %i.bi = phi i32 [ 0, %.preheader ], [ %i.ac, %bb.b ]
  %i.bj = trunc i64 %indvars.iv246 to i32
  %i.bk = add i32 %.0203.lcssa258261, %i.bj
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add nsw i32 %i.bi, %i.bl                ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bo ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bp, align 8, !tbaa !8
  %i.bt = load <2 x double>, ptr %i.br, align 8, !tbaa !8
  store <2 x double> %i.bt, ptr %i.bp, align 8, !tbaa !8
  store <2 x double> %i.bs, ptr %i.br, align 8, !tbaa !8
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %i.aa
  br i1 %exitcond250.not, label %.loopexit, label %.preheader, !llvm.loop !40

.preheader209:                                    ; preds = %.preheader209.preheader, %bb.d
  %indvars.iv236 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next237, %bb.d ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv236
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sext i32 %i.bv to i64
  %indvars.iv236.tr = trunc i64 %indvars.iv236 to i32
  %i.bx = shl i32 %indvars.iv236.tr, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader209, %bb.c
  %indvars.iv231 = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next232, %bb.c ] ; 3 uses
  %i.by = shl nuw nsw i64 %indvars.iv231, 1
  %i.bz = add nsw i64 %i.by, %i.bw                ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = add nsw i32 %i.cb, %i.bx                ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ce ; 2 uses
  %i.cg = load <2 x double>, ptr %i.cd, align 8, !tbaa !8
  %i.ch = load <2 x double>, ptr %i.cf, align 8, !tbaa !8
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !8
  store <2 x double> %i.cg, ptr %i.cf, align 8, !tbaa !8
  %i.ci = add nsw i32 %i.cc, %i.r
  %gep266 = getelementptr [8 x i8], ptr %invariant.gep265, i64 %i.bz ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cj ; 2 uses
  %i.cl = load <2 x double>, ptr %gep266, align 8, !tbaa !8
  %i.cm = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  store <2 x double> %i.cm, ptr %gep266, align 8, !tbaa !8
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !8
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %indvars.iv236
  br i1 %exitcond235.not, label %bb.d, label %bb.c, !llvm.loop !41

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.preheader209, !llvm.loop !42

.loopexit:                                        ; preds = %bb.d, %._crit_edge224, %._crit_edge217.thread, %.preheader210, %.preheader208
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cftfsub(i32 noundef range(i32 4, -2147483648) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 8
  br i1 %i.a, label %bb.b, label %.loopexit118

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @cft1st(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = icmp samesign ugt i32 %0, 32
  br i1 %i.b, label %.lr.ph, label %.loopexit118

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.c = phi i32 [ %i.d, %.lr.ph ], [ 32, %bb.b ] ; 3 uses
  %.0112119 = phi i32 [ %i.c, %.lr.ph ], [ 8, %bb.b ]
  tail call fastcc void @cftmdl(i32 noundef %0, i32 noundef %.0112119, ptr noundef %1, ptr noundef %2)
  %i.d = shl i32 %i.c, 2                          ; 2 uses
  %i.e = icmp slt i32 %i.d, %0
  br i1 %i.e, label %.lr.ph, label %.loopexit118, !llvm.loop !43

.loopexit118:                                     ; preds = %.lr.ph, %bb.b, %bb.a
  %.1113 = phi i32 [ 2, %bb.a ], [ 8, %bb.b ], [ %i.c, %.lr.ph ] ; 6 uses
  %i.f = shl i32 %.1113, 2
  %i.g = icmp eq i32 %i.f, %0
  %i.h = icmp sgt i32 %.1113, 0                   ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader116

.preheader116:                                    ; preds = %.loopexit118
  br i1 %i.h, label %.lr.ph121.preheader, label %.loopexit

.lr.ph121.preheader:                              ; preds = %.preheader116
  %i.i = zext nneg i32 %.1113 to i64
  %i.j = zext nneg i32 %.1113 to i64              ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i ; 5 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %min.iters.check = icmp ult i64 %i.k, 38
  br i1 %min.iters.check, label %.lr.ph121.preheader311, label %vector.memcheck

.lr.ph121.preheader311:                           ; preds = %vector.memcheck, %.lr.ph121.preheader
  br label %.lr.ph121

vector.memcheck:                                  ; preds = %.lr.ph121.preheader
  %i.m = shl nuw nsw i64 %i.j, 3                  ; 3 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 -8   ; 3 uses
  %scevgep133 = getelementptr i8, ptr %1, i64 8   ; 3 uses
  %scevgep134 = getelementptr i8, ptr %1, i64 %i.m ; 3 uses
  %i.o = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep135 = getelementptr i8, ptr %i.q, i64 -8 ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.o
  %scevgep136 = getelementptr i8, ptr %i.r, i64 8 ; 3 uses
  %i.s = shl nuw nsw i64 %i.j, 4
  %scevgep137 = getelementptr i8, ptr %1, i64 %i.s ; 3 uses
  %bound0 = icmp ult ptr %1, %scevgep134
  %bound1 = icmp ult ptr %scevgep133, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0138 = icmp ult ptr %1, %scevgep135
  %bound1139 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx = or i1 %found.conflict, %found.conflict140
  %bound0141 = icmp ult ptr %1, %scevgep137
  %bound1142 = icmp ult ptr %scevgep136, %scevgep
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx, %found.conflict143
  %bound0145 = icmp ult ptr %scevgep133, %scevgep135
  %bound1146 = icmp ult ptr %invariant.gep, %scevgep134
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %scevgep133, %scevgep137
  %bound1150 = icmp ult ptr %scevgep136, %scevgep134
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %invariant.gep, %scevgep137
  %bound1154 = icmp ult ptr %scevgep136, %scevgep135
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph121.preheader311, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.t = shl i64 %index, 1                        ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 2 uses
  %wide.load = load <2 x double>, ptr %i.u, align 8 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.v, align 8 ; 2 uses
  %i.w = fsub <2 x double> %wide.load, %wide.load158
  %i.x = fadd <2 x double> %wide.load, %wide.load158
  store <2 x double> %i.x, ptr %i.u, align 8
  store <2 x double> %i.w, ptr %i.v, align 8
  %index.next = add nuw i64 %index, 1
  %i.y = icmp eq i64 %index, %i.l
  br i1 %i.y, label %.loopexit, label %vector.body, !llvm.loop !44

.preheader:                                       ; preds = %.loopexit118
  br i1 %i.h, label %.lr.ph123.preheader, label %.loopexit

.lr.ph123.preheader:                              ; preds = %.preheader
  %i.z = zext nneg i32 %.1113 to i64              ; 5 uses
  %i.aa = zext nneg i32 %.1113 to i64             ; 9 uses
  %invariant.gep130 = getelementptr [8 x i8], ptr %1, i64 %i.z ; 9 uses
  %i.ab = add nsw i64 %i.aa, -2                   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.ab, 50
  br i1 %min.iters.check287, label %.lr.ph123.preheader310, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph123.preheader
  %i.ae = shl nuw nsw i64 %i.aa, 3                ; 3 uses
  %i.af = add nsw i64 %i.ae, -16                  ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 %i.ae
  %scevgep161 = getelementptr i8, ptr %i.ag, i64 -8 ; 7 uses
  %scevgep162 = getelementptr i8, ptr %1, i64 8   ; 7 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.ae ; 7 uses
  %i.ah = shl nuw nsw i64 %i.aa, 4                ; 3 uses
  %scevgep164 = getelementptr i8, ptr %1, i64 %i.ah ; 7 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep165 = getelementptr i8, ptr %i.aj, i64 8 ; 7 uses
  %i.ak = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep166 = getelementptr i8, ptr %i.ak, i64 8 ; 7 uses
  %i.al = mul nuw nsw i64 %i.aa, 24
  %scevgep167 = getelementptr i8, ptr %1, i64 %i.al ; 7 uses
  %i.am = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.af
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep168 = getelementptr i8, ptr %i.ao, i64 8 ; 7 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %scevgep169 = getelementptr i8, ptr %i.ap, i64 8 ; 7 uses
  %i.aq = shl nuw nsw i64 %i.aa, 4
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.aq ; 7 uses
  %i.ar = mul nuw nsw i64 %i.aa, 24               ; 3 uses
  %scevgep171 = getelementptr i8, ptr %1, i64 %i.ar ; 7 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.af
  %scevgep172 = getelementptr i8, ptr %i.at, i64 8 ; 7 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep173 = getelementptr i8, ptr %i.au, i64 8 ; 7 uses
  %i.av = shl nuw nsw i64 %i.aa, 5
  %scevgep174 = getelementptr i8, ptr %1, i64 %i.av ; 7 uses
  %bound0175 = icmp ult ptr %1, %scevgep163
  %bound1176 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %1, %scevgep165
  %bound1179 = icmp ult ptr %scevgep164, %scevgep161
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %bound0182 = icmp ult ptr %1, %scevgep167
  %bound1183 = icmp ult ptr %scevgep166, %scevgep161
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %1, %scevgep168
  %bound1187 = icmp ult ptr %invariant.gep130, %scevgep161
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %1, %scevgep170
  %bound1191 = icmp ult ptr %scevgep169, %scevgep161
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %1, %scevgep172
  %bound1195 = icmp ult ptr %scevgep171, %scevgep161
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %1, %scevgep174
  %bound1199 = icmp ult ptr %scevgep173, %scevgep161
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %scevgep162, %scevgep165
  %bound1203 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %scevgep162, %scevgep167
  %bound1207 = icmp ult ptr %scevgep166, %scevgep163
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %scevgep162, %scevgep168
  %bound1211 = icmp ult ptr %invariant.gep130, %scevgep163
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %scevgep162, %scevgep170
  %bound1215 = icmp ult ptr %scevgep169, %scevgep163
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %scevgep162, %scevgep172
  %bound1219 = icmp ult ptr %scevgep171, %scevgep163
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %scevgep162, %scevgep174
  %bound1223 = icmp ult ptr %scevgep173, %scevgep163
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %scevgep164, %scevgep167
  %bound1227 = icmp ult ptr %scevgep166, %scevgep165
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %scevgep164, %scevgep168
  %bound1231 = icmp ult ptr %invariant.gep130, %scevgep165
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %scevgep164, %scevgep170
  %bound1235 = icmp ult ptr %scevgep169, %scevgep165
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %scevgep164, %scevgep172
  %bound1239 = icmp ult ptr %scevgep171, %scevgep165
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %scevgep164, %scevgep174
  %bound1243 = icmp ult ptr %scevgep173, %scevgep165
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %scevgep166, %scevgep168
  %bound1247 = icmp ult ptr %invariant.gep130, %scevgep167
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %scevgep166, %scevgep170
  %bound1251 = icmp ult ptr %scevgep169, %scevgep167
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %scevgep166, %scevgep172
  %bound1255 = icmp ult ptr %scevgep171, %scevgep167
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %scevgep166, %scevgep174
  %bound1259 = icmp ult ptr %scevgep173, %scevgep167
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %invariant.gep130, %scevgep170
  %bound1263 = icmp ult ptr %scevgep169, %scevgep168
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %invariant.gep130, %scevgep172
  %bound1267 = icmp ult ptr %scevgep171, %scevgep168
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %invariant.gep130, %scevgep174
  %bound1271 = icmp ult ptr %scevgep173, %scevgep168
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %scevgep169, %scevgep172
  %bound1275 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %scevgep169, %scevgep174
  %bound1279 = icmp ult ptr %scevgep173, %scevgep170
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %scevgep171, %scevgep174
  %bound1283 = icmp ult ptr %scevgep173, %scevgep172
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  br i1 %conflict.rdx285, label %.lr.ph123.preheader310, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck160
  %n.vec290 = and i64 %i.ad, -2                   ; 3 uses
  %i.aw = shl i64 %n.vec290, 1
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next306, %vector.body291 ] ; 2 uses
  %i.ax = shl i64 %index292, 1                    ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, %i.z             ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.z             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.ba, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec293 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay ; 2 uses
  %wide.vec294 = load <4 x double>, ptr %i.bb, align 8, !tbaa !8 ; 2 uses
  %strided.vec295 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bc = fadd <2 x double> %strided.vec, %strided.vec295 ; 2 uses
  %i.bd = fadd <2 x double> %strided.vec293, %strided.vec296 ; 2 uses
  %i.be = fsub <2 x double> %strided.vec, %strided.vec295 ; 2 uses
  %i.bf = fsub <2 x double> %strided.vec293, %strided.vec296 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az ; 2 uses
  %wide.vec297 = load <4 x double>, ptr %i.bg, align 8, !tbaa !8 ; 2 uses
  %strided.vec298 = shufflevector <4 x double> %wide.vec297, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec299 = shufflevector <4 x double> %wide.vec297, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep130, i64 %i.az ; 2 uses
  %wide.vec300 = load <4 x double>, ptr %i.bh, align 8, !tbaa !8 ; 2 uses
  %strided.vec301 = shufflevector <4 x double> %wide.vec300, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec302 = shufflevector <4 x double> %wide.vec300, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bi = fadd <2 x double> %strided.vec298, %strided.vec301 ; 2 uses
  %i.bj = fadd <2 x double> %strided.vec299, %strided.vec302 ; 2 uses
  %i.bk = fsub <2 x double> %strided.vec298, %strided.vec301 ; 2 uses
  %i.bl = fsub <2 x double> %strided.vec299, %strided.vec302 ; 2 uses
  %i.bm = fadd <2 x double> %i.bc, %i.bi
  %i.bn = fadd <2 x double> %i.bd, %i.bj
  %interleaved.vec = shufflevector <2 x double> %i.bm, <2 x double> %i.bn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
end_hunk_0
