Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasdt?download=true
begin_hunk_0_@dlasdt_:bb.a
  %i.s = xor i32 %i.p, -1
  %i.t = add i32 %i.r, %i.s
  store i32 %i.t, ptr %5, align 4, !tbaa !21
  %i.u = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %.not.not75 = icmp sgt i32 %i.u, 1
  br i1 %.not.not75, label %.preheader.preheader, label %._crit_edge80

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %4, i64 4
  %scevgep97 = getelementptr i8, ptr %5, i64 4
  %scevgep100 = getelementptr i8, ptr %3, i64 4
  %scevgep103 = getelementptr i8, ptr %4, i64 4
  %scevgep106 = getelementptr i8, ptr %5, i64 4
  %scevgep109 = getelementptr i8, ptr %3, i64 4
  %scevgep112 = getelementptr i8, ptr %4, i64 -4
  %scevgep114 = getelementptr i8, ptr %4, i64 -4
  %scevgep116 = getelementptr i8, ptr %3, i64 -4
  %scevgep118 = getelementptr i8, ptr %3, i64 -4
  %scevgep120 = getelementptr i8, ptr %5, i64 -4
  %scevgep122 = getelementptr i8, ptr %5, i64 -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.079 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 1, %.preheader.preheader ] ; 2 uses
  %.06378 = phi i32 [ %.164.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.06677 = phi i32 [ %i.cc, %._crit_edge ], [ 1, %.preheader.preheader ] ; 5 uses
  %.06776 = phi i32 [ %i.cd, %._crit_edge ], [ 1, %.preheader.preheader ]
  %.not.not6970 = icmp sgt i32 %.06677, 0
  br i1 %.not.not6970, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = sext i32 %.079 to i64                    ; 5 uses
  %i.w = sext i32 %.06378 to i64                  ; 5 uses
  %i.x = zext nneg i32 %.06677 to i64             ; 7 uses
  %min.iters.check = icmp ult i32 %.06677, 25
  br i1 %min.iters.check, label %.lr.ph.preheader268, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl nsw i64 %i.w, 2                      ; 4 uses
  %scevgep95 = getelementptr i8, ptr %scevgep, i64 %i.y ; 8 uses
  %i.z = shl nuw nsw i64 %i.x, 3                  ; 5 uses
  %i.aa = add nsw i64 %i.z, %i.y                  ; 3 uses
  %scevgep96 = getelementptr i8, ptr %4, i64 %i.aa ; 8 uses
  %scevgep98 = getelementptr i8, ptr %scevgep97, i64 %i.y ; 8 uses
  %scevgep99 = getelementptr i8, ptr %5, i64 %i.aa ; 8 uses
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.y ; 8 uses
  %scevgep102 = getelementptr i8, ptr %3, i64 %i.aa ; 8 uses
  %i.ab = shl nsw i64 %i.v, 2                     ; 4 uses
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.ab ; 8 uses
  %i.ac = add nsw i64 %i.z, %i.ab                 ; 3 uses
  %scevgep105 = getelementptr i8, ptr %4, i64 %i.ac ; 8 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.ab ; 8 uses
  %scevgep108 = getelementptr i8, ptr %5, i64 %i.ac ; 8 uses
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ab ; 8 uses
  %scevgep111 = getelementptr i8, ptr %3, i64 %i.ac ; 8 uses
  %i.ad = shl nuw nsw i64 %i.x, 2                 ; 3 uses
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.ad ; 6 uses
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.z ; 6 uses
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.ad ; 6 uses
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.z ; 6 uses
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.ad ; 6 uses
  %scevgep123 = getelementptr i8, ptr %scevgep122, i64 %i.z ; 6 uses
  %bound0 = icmp ult ptr %scevgep95, %scevgep99
  %bound1 = icmp ult ptr %scevgep98, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  %bound0124 = icmp ult ptr %scevgep95, %scevgep102
  %bound1125 = icmp ult ptr %scevgep101, %scevgep96
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx = or i1 %found.conflict, %found.conflict126
  %bound0127 = icmp ult ptr %scevgep95, %scevgep105
  %bound1128 = icmp ult ptr %scevgep104, %scevgep96
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep95, %scevgep108
  %bound1132 = icmp ult ptr %scevgep107, %scevgep96
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep95, %scevgep111
  %bound1136 = icmp ult ptr %scevgep110, %scevgep96
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep95, %scevgep115
  %bound1140 = icmp ult ptr %scevgep113, %scevgep96
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep95, %scevgep119
  %bound1144 = icmp ult ptr %scevgep117, %scevgep96
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %scevgep95, %scevgep123
  %bound1148 = icmp ult ptr %scevgep121, %scevgep96
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  %bound0151 = icmp ult ptr %scevgep98, %scevgep102
  %bound1152 = icmp ult ptr %scevgep101, %scevgep99
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  %bound0155 = icmp ult ptr %scevgep98, %scevgep105
  %bound1156 = icmp ult ptr %scevgep104, %scevgep99
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx154, %found.conflict157
  %bound0159 = icmp ult ptr %scevgep98, %scevgep108
  %bound1160 = icmp ult ptr %scevgep107, %scevgep99
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  %bound0163 = icmp ult ptr %scevgep98, %scevgep111
  %bound1164 = icmp ult ptr %scevgep110, %scevgep99
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx162, %found.conflict165
  %bound0167 = icmp ult ptr %scevgep98, %scevgep115
  %bound1168 = icmp ult ptr %scevgep113, %scevgep99
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  %bound0171 = icmp ult ptr %scevgep98, %scevgep119
  %bound1172 = icmp ult ptr %scevgep117, %scevgep99
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep98, %scevgep123
  %bound1176 = icmp ult ptr %scevgep121, %scevgep99
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep101, %scevgep105
  %bound1180 = icmp ult ptr %scevgep104, %scevgep102
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %scevgep101, %scevgep108
  %bound1184 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep101, %scevgep111
  %bound1188 = icmp ult ptr %scevgep110, %scevgep102
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep101, %scevgep115
  %bound1192 = icmp ult ptr %scevgep113, %scevgep102
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep101, %scevgep119
  %bound1196 = icmp ult ptr %scevgep117, %scevgep102
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep101, %scevgep123
  %bound1200 = icmp ult ptr %scevgep121, %scevgep102
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep104, %scevgep108
  %bound1204 = icmp ult ptr %scevgep107, %scevgep105
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep104, %scevgep111
  %bound1208 = icmp ult ptr %scevgep110, %scevgep105
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %scevgep104, %scevgep115
  %bound1212 = icmp ult ptr %scevgep113, %scevgep105
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  %bound0215 = icmp ult ptr %scevgep104, %scevgep119
  %bound1216 = icmp ult ptr %scevgep117, %scevgep105
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep104, %scevgep123
  %bound1220 = icmp ult ptr %scevgep121, %scevgep105
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep107, %scevgep111
  %bound1224 = icmp ult ptr %scevgep110, %scevgep108
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep107, %scevgep115
  %bound1228 = icmp ult ptr %scevgep113, %scevgep108
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %scevgep107, %scevgep119
  %bound1232 = icmp ult ptr %scevgep117, %scevgep108
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep107, %scevgep123
  %bound1236 = icmp ult ptr %scevgep121, %scevgep108
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %scevgep110, %scevgep115
  %bound1240 = icmp ult ptr %scevgep113, %scevgep111
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %scevgep110, %scevgep119
  %bound1244 = icmp ult ptr %scevgep117, %scevgep111
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %scevgep110, %scevgep123
  %bound1248 = icmp ult ptr %scevgep121, %scevgep111
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  br i1 %conflict.rdx250, label %.lr.ph.preheader268, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ae = and i64 %i.x, 7                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 8, i64 %i.ae
  %n.vec = sub nsw i64 %i.x, %i.ag                ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %broadcast.splatinsert251 = insertelement <8 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat252 = shufflevector <8 x i64> %broadcast.splatinsert251, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction253 = add nsw <8 x i64> %broadcast.splat252, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind254 = phi <8 x i64> [ %induction253, %vector.ph ], [ %vec.ind.next265, %vector.body ] ; 2 uses
  %i.ah = add nsw <8 x i64> %vec.ind, splat (i64 2) ; 3 uses
  %i.ai = add nsw <8 x i64> %vec.ind254, splat (i64 2) ; 3 uses
  %i.aj = add nuw nsw i64 %index, %i.x            ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %wide.load = load <8 x i32>, ptr %i.ak, align 4, !tbaa !21, !alias.scope !22 ; 3 uses
  %i.al = sdiv <8 x i32> %wide.load, splat (i32 2) ; 3 uses
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.b, <8 x i64> %i.ah
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.al, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !23, !noalias !24
  %i.am = xor <8 x i32> %i.al, splat (i32 -1)
  %i.an = add <8 x i32> %wide.load, %i.am
  %wide.gep256 = getelementptr inbounds [4 x i8], ptr %i.a, <8 x i64> %i.ah
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.an, <8 x ptr> align 4 %wide.gep256, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !25, !noalias !26
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj ; 2 uses
  %wide.load257 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !21, !alias.scope !27
  %i.ap = sub <8 x i32> %i.al, %wide.load
  %i.aq = add <8 x i32> %i.ap, %wide.load257
  %wide.gep258 = getelementptr inbounds [4 x i8], ptr %i.c, <8 x i64> %i.ah
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.aq, <8 x ptr> align 4 %wide.gep258, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !28, !noalias !29
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj
  %wide.load259 = load <8 x i32>, ptr %i.ar, align 4, !tbaa !21, !alias.scope !30 ; 2 uses
  %i.as = sdiv <8 x i32> %wide.load259, splat (i32 2) ; 2 uses
  %wide.gep260 = getelementptr inbounds [4 x i8], ptr %i.b, <8 x i64> %i.ai ; 2 uses
  %i.at = extractelement <8 x ptr> %wide.gep260, i64 0
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.as, <8 x ptr> align 4 %wide.gep260, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !31, !noalias !32
  %i.au = xor <8 x i32> %i.as, splat (i32 -1)
  %i.av = add <8 x i32> %wide.load259, %i.au
  %wide.gep262 = getelementptr inbounds [4 x i8], ptr %i.a, <8 x i64> %i.ai
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.av, <8 x ptr> align 4 %wide.gep262, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !33, !noalias !34
  %wide.load263 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !21, !alias.scope !27
  %wide.vec = load <16 x i32>, ptr %i.at, align 4, !tbaa !21, !alias.scope !31, !noalias !32
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.aw = add <8 x i32> %wide.load263, splat (i32 1)
  %i.ax = add <8 x i32> %i.aw, %strided.vec
  %wide.gep264 = getelementptr inbounds [4 x i8], ptr %i.c, <8 x i64> %i.ai
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.ax, <8 x ptr> align 4 %wide.gep264, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !35, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next265 = add nsw <8 x i64> %vec.ind254, splat (i64 16)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %.lr.ph.preheader268.loopexit, label %vector.body, !llvm.loop !18

.lr.ph.preheader268.loopexit:                     ; preds = %vector.body
  %7 = shl nsw i64 %n.vec, 1                      ; 2 uses
  %8 = add nsw i64 %7, %i.w
  %9 = add nsw i64 %7, %i.v
  br label %.lr.ph.preheader268

.lr.ph.preheader268:                              ; preds = %.lr.ph.preheader268.loopexit, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader268.loopexit ]
  %indvars.iv84.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.preheader ], [ %8, %.lr.ph.preheader268.loopexit ]
  %indvars.iv.ph = phi i64 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.preheader ], [ %9, %.lr.ph.preheader268.loopexit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader268, %.lr.ph
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph ], [ %indvars.iv86.ph, %.lr.ph.preheader268 ] ; 2 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph ], [ %indvars.iv84.ph, %.lr.ph.preheader268 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader268 ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 2 ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 5 uses
  %i.az = add nuw nsw i64 %indvars.iv86, %i.x     ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = sdiv i32 %i.bb, 2                       ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next85
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !21
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !21 ; 2 uses
  %i.bf = xor i32 %i.bc, -1
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next85
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.az ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !21
  %i.bk = sub i32 %i.bc, %i.be
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next85
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = sdiv i32 %i.bo, 2                       ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !21
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bs = xor i32 %i.bp, -1
  %i.bt = add i32 %i.br, %i.bs
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !21
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !21
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !21
  %i.bx = add i32 %i.bv, 1
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !21
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next87, %i.x
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ca = trunc nsw i64 %indvars.iv.next85 to i32
  %i.cb = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.164.lcssa = phi i32 [ %.06378, %.preheader ], [ %i.ca, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.079, %.preheader ], [ %i.cb, %._crit_edge.loopexit ]
  %i.cc = shl i32 %.06677, 1
  %i.cd = add nuw nsw i32 %.06776, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.cd, %i.u
  br i1 %exitcond93.not, label %._crit_edge80.loopexit, label %.preheader, !llvm.loop !20

._crit_edge80.loopexit:                           ; preds = %._crit_edge
  %i.ce = shl i32 %.06677, 2
  %i.cf = add nsw i32 %i.ce, -1
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %bb.a
  %.066.lcssa = phi i32 [ 1, %bb.a ], [ %i.cf, %._crit_edge80.loopexit ]
  store i32 %.066.lcssa, ptr %2, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !37, !38, !39}
!19 = distinct !{!19, !37, !38}
!20 = distinct !{!20, !37}
!21 = !{!5, !5, i64 0}
!22 = !{!9}
!23 = !{!10}
!24 = !{!17, !16, !15, !14, !13, !9, !12, !11}
!25 = !{!17}
!26 = !{!16, !15, !14, !13, !9, !12, !11}
!27 = !{!12}
!28 = !{!16}
!29 = !{!15, !14, !13, !9, !12, !11}
!30 = !{!11}
!31 = !{!15}
!32 = !{!14, !13, !9, !12, !11}
!33 = !{!14}
!34 = !{!13, !9, !12, !11}
!35 = !{!13}
!36 = !{!9, !12, !11}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
