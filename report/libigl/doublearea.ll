Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/doublearea?download=true
inline.NumInlined: 5606
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !45, !noalias !48
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !57, !noalias !59
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !60, !noalias !59 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !63, !noalias !59
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !45, !noalias !59
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !66
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !66
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !67
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !70

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !71 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !71 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !74, !noalias !71
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !74, !noalias !71
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !76

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !77
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.i) #23
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !18
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.587, align 1            ; 4 uses
  %4 = alloca %class.anon.588, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.586, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.52", align 8  ; 8 uses
  %4 = alloca %"class.Eigen::Array.69", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
end_hunk_0
begin_hunk_1_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !109, !noalias !112
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !121, !noalias !123
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !124, !noalias !123 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !126, !noalias !123
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !109, !noalias !123
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !129
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !129
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !130
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !133

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !89    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !89    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 2
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 3
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967288           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967280
  %i.cx = and i64 %i.cv, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !tbaa !90, !alias.scope !134 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec294 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec295 = load <8 x float>, ptr %i.da, align 4, !tbaa !90, !alias.scope !134 ; 2 uses
  %strided.vec296 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec297 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <4 x float> %strided.vec, %strided.vec294
  %i.dd = fadd <4 x float> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %i.dc, ptr %i.db, align 4, !tbaa !90, !alias.scope !137, !noalias !134
  store <4 x float> %i.dd, ptr %i.de, align 4, !tbaa !90, !alias.scope !137, !noalias !134
  %index.next298 = add nuw i64 %index293, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !139

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !89
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !90
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !90
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd float %i.do, %i.ds
  store float %i.du, ptr %i.dt, align 4, !tbaa !90
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !140
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.i) #23
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !89
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !87
  ret void
}

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.627, align 1            ; 4 uses
  %4 = alloca %class.anon.629, align 8            ; 4 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %5 = alloca %"class.Eigen::Matrix.52", align 8  ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.626, align 8            ; 7 uses
  store float %1, ptr %i.a, align 4, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS4_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !106
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !106
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.636, align 1            ; 4 uses
  %4 = alloca %class.anon.638, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.100, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e
end_hunk_1
begin_hunk_2_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !153, !noalias !156
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !165, !noalias !167
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !168, !noalias !167 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !170, !noalias !167
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !153, !noalias !167
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !173
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !173
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !174
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !177

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !178 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !178 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !181, !noalias !178
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !181, !noalias !178
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !183

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.645, align 1            ; 4 uses
  %4 = alloca %class.anon.647, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.114, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.Eigen::Array.69", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !187  ; 6 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %.noexc47

.noexc47:                                         ; preds = %.noexc
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !87
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.e = phi i64 [ %i.b, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !89
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !189
  %i.i = load ptr, ptr %0, align 8, !tbaa !106    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !141  ; 4 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %.idx.i = shl i64 %i.l, 3
  %i.m = load ptr, ptr %2, align 8, !tbaa !89
  %i.n = shl nsw i64 %i.k, 1                      ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04071 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.by, %.preheader ] ; 3 uses
  %sext = shl i64 %.04071, 32
  %i.o = ashr exact i64 %sext, 30
  %i.p = getelementptr i8, ptr %i.h, i64 %i.o     ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr %i.i, i64 %i.r ; 4 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %.idx.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.i, i64 %i.v ; 4 uses
  %i.x = getelementptr [4 x i8], ptr %i.p, i64 %i.l
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr %i.i, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.04071 ; 4 uses
  %.promoted = load float, ptr %i.ab, align 4, !tbaa !90
  %i.ac = load float, ptr %i.s, align 4, !tbaa !90
  %i.ad = load float, ptr %i.w, align 4, !tbaa !90 ; 2 uses
  %i.ae = fsub float %i.ac, %i.ad
  %i.af = load float, ptr %i.aa, align 4, !tbaa !90
  %i.ag = fsub float %i.af, %i.ad
  %i.ah = getelementptr [4 x i8], ptr %i.s, i64 %i.k ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !90
  %i.aj = getelementptr [4 x i8], ptr %i.w, i64 %i.k ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !90 ; 2 uses
  %i.al = fsub float %i.ai, %i.ak
  %i.am = getelementptr [4 x i8], ptr %i.aa, i64 %i.k ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !90
  %i.ao = fsub float %i.an, %i.ak
  %i.ap = fneg float %i.ag
  %i.aq = fmul float %i.al, %i.ap
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.aq) ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %.promoted) ; 2 uses
  store float %i.as, ptr %i.ab, align 4, !tbaa !90
  %i.at = load float, ptr %i.ah, align 4, !tbaa !90
  %i.au = load float, ptr %i.aj, align 4, !tbaa !90 ; 2 uses
  %i.av = fsub float %i.at, %i.au
  %i.aw = load float, ptr %i.am, align 4, !tbaa !90
  %i.ax = fsub float %i.aw, %i.au
  %i.ay = getelementptr [4 x i8], ptr %i.s, i64 %i.n ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !220, !noalias !223
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !232, !noalias !234
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !235, !noalias !234 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !237, !noalias !234
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !220, !noalias !234
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !240
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !240
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !241
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !244

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !89    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !89    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 2
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 3
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967288           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967280
  %i.cx = and i64 %i.cv, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !tbaa !90, !alias.scope !245 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec294 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec295 = load <8 x float>, ptr %i.da, align 4, !tbaa !90, !alias.scope !245 ; 2 uses
  %strided.vec296 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec297 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <4 x float> %strided.vec, %strided.vec294
  %i.dd = fadd <4 x float> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %i.dc, ptr %i.db, align 4, !tbaa !90, !alias.scope !248, !noalias !245
  store <4 x float> %i.dd, ptr %i.de, align 4, !tbaa !90, !alias.scope !248, !noalias !245
  %index.next298 = add nuw i64 %index293, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !250

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !89
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !90
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !90
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd float %i.do, %i.ds
  store float %i.du, ptr %i.dt, align 4, !tbaa !90
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !251
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.Eigen::Array.69", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !252  ; 6 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %.noexc47

.noexc47:                                         ; preds = %.noexc
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !87
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.e = phi i64 [ %i.b, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !89
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIfEES3_EEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !254
  %i.i = load ptr, ptr %0, align 8, !tbaa !255    ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !89
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04074 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bu, %.preheader ] ; 3 uses
  %sext = shl i64 %.04074, 32
  %i.k = ashr exact i64 %sext, 32
  %.idx.i.i.i.i = mul nsw i64 %i.k, 12
  %i.l = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64
  %.idx.i.i.i20.i = mul nsw i64 %i.n, 12
  %i.o = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i20.i ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  %i.r = sext i32 %i.q to i64
  %.idx.i.i.i22.i = mul nsw i64 %i.r, 12
  %i.s = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i22.i ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = sext i32 %i.u to i64
  %.idx.i.i.i24.i = mul nsw i64 %i.v, 12
  %i.w = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i24.i ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.04074 ; 4 uses
  %.promoted = load float, ptr %i.x, align 4, !tbaa !90
  %i.y = getelementptr i8, ptr %i.o, i64 4
  %i.z = getelementptr i8, ptr %i.s, i64 4
  %i.aa = getelementptr i8, ptr %i.w, i64 4
  %i.ab = load <2 x float>, ptr %i.o, align 4, !tbaa !90
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !90
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = load <2 x float>, ptr %i.w, align 4, !tbaa !90
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fsub <4 x float> %i.af, %i.ad           ; 4 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 2
  %i.ai = fneg float %i.ah
  %i.aj = extractelement <4 x float> %i.ag, i64 1
  %i.ak = fmul float %i.aj, %i.ai
  %i.al = extractelement <4 x float> %i.ag, i64 0
  %i.am = extractelement <4 x float> %i.ag, i64 3
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.ak) ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %.promoted) ; 2 uses
  store float %i.ao, ptr %i.x, align 4, !tbaa !90
  %i.ap = getelementptr i8, ptr %i.o, i64 8
  %i.aq = getelementptr i8, ptr %i.s, i64 8
  %i.ar = getelementptr i8, ptr %i.w, i64 8
  %i.as = load <2 x float>, ptr %i.y, align 4, !tbaa !90
  %i.at = load <2 x float>, ptr %i.z, align 4, !tbaa !90
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = load <2 x float>, ptr %i.aa, align 4, !tbaa !90
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ax = fsub <4 x float> %i.aw, %i.au           ; 4 uses
  %i.ay = extractelement <4 x float> %i.ax, i64 2
  %i.az = fneg float %i.ay
  %i.ba = extractelement <4 x float> %i.ax, i64 1
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = extractelement <4 x float> %i.ax, i64 0
  %i.bd = extractelement <4 x float> %i.ax, i64 3
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bb) ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.ao) ; 2 uses
  store float %i.bf, ptr %i.x, align 4, !tbaa !90
  %i.bg = load float, ptr %i.ap, align 4, !tbaa !90
  %i.bh = load float, ptr %i.aq, align 4, !tbaa !90 ; 2 uses
  %i.bi = fsub float %i.bg, %i.bh
  %i.bj = load float, ptr %i.ar, align 4, !tbaa !90
  %i.bk = fsub float %i.bj, %i.bh
  %i.bl = load float, ptr %i.o, align 4, !tbaa !90
  %i.bm = load float, ptr %i.s, align 4, !tbaa !90 ; 2 uses
  %i.bn = fsub float %i.bl, %i.bm
  %i.bo = load float, ptr %i.w, align 4, !tbaa !90
  %i.bp = fsub float %i.bo, %i.bm
  %i.bq = fneg float %i.bk
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bp, float %i.br) ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bf)
  store float %i.bt, ptr %i.x, align 4, !tbaa !90
  %i.bu = add nuw i64 %.04074, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !257

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIfEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !258
  %i.bv = load ptr, ptr %2, align 8, !tbaa !89, !noalias !258 ; 8 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !87, !noalias !258 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i48 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i48, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %._crit_edge
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.bx, i64 noundef 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i49 = load i64, ptr %i.by, align 8, !tbaa !87, !alias.scope !258 ; 8 uses
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !258 ; 8 uses
  %.pre.i.i85 = ptrtoaddr ptr %.pre.i.i to i64
  %i.bz = sdiv i64 %.pr.i.i.i.i.i.i.i49, 4
  %i.ca = shl nsw i64 %i.bz, 2                    ; 6 uses
  %i.cb = icmp sgt i64 %.pr.i.i.i.i.i.i.i49, 3
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %i.cc = icmp slt i64 %i.ca, %.pr.i.i.i.i.i.i.i49
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIfEEKNS_12ArrayWrapperINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cd = sub i64 %.pr.i.i.i.i.i.i.i49, %i.ca     ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 4
  %i.ce = sub i64 %i.bw, %.pre.i.i85
  %diff.check = icmp ugt i64 %i.ce, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.cf = and i64 %.pr.i.i.i.i.i.i.i49, 3         ; 2 uses
  %n.vec = sub nuw i64 %i.cd, %i.cf               ; 2 uses
  %i.cg = add i64 %i.ca, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !287, !noalias !290
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !299, !noalias !301
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !302, !noalias !301 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !304, !noalias !301
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !287, !noalias !301
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !307
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !307
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !308
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !311

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !89    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !89    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 2
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 3
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967288           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967280
  %i.cx = and i64 %i.cv, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !tbaa !90, !alias.scope !312 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec294 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec295 = load <8 x float>, ptr %i.da, align 4, !tbaa !90, !alias.scope !312 ; 2 uses
  %strided.vec296 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec297 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <4 x float> %strided.vec, %strided.vec294
  %i.dd = fadd <4 x float> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %i.dc, ptr %i.db, align 4, !tbaa !90, !alias.scope !315, !noalias !312
  store <4 x float> %i.dd, ptr %i.de, align 4, !tbaa !90, !alias.scope !315, !noalias !312
  %index.next298 = add nuw i64 %index293, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !317

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !89
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !90
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !90
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd float %i.do, %i.ds
  store float %i.du, ptr %i.dt, align 4, !tbaa !90
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !318
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %4 = alloca %"class.Eigen::Array", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !319
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  switch i32 %i.f, label %bb.n [
    i32 3, label %bb.d
    i32 2, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc47 unwind label %bb.f

.noexc47:                                         ; preds = %bb.e
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.k = phi i64 [ %i.h, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not75 = icmp eq i64 %i.h, 0
  br i1 %.not75, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = load ptr, ptr %0, align 8, !tbaa !320    ; 3 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !319  ; 3 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.idx.i = shl i64 %i.q, 3
  %i.r = load ptr, ptr %2, align 8, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04074 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.cf, %.preheader ] ; 3 uses
  %sext70 = shl i64 %.04074, 32
  %i.s = ashr exact i64 %sext70, 30
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s     ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.p, %i.v
  %i.x = getelementptr [8 x i8], ptr %i.o, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.t, i64 %.idx.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.p, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %i.ab ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %i.t, i64 %i.q
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.p, %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.o, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.04074 ; 4 uses
  %.promoted = load double, ptr %i.ai, align 8, !tbaa !19
  %i.aj = load double, ptr %i.x, align 8, !tbaa !19
  %i.ak = load double, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.al = fsub double %i.aj, %i.ak
  %i.am = load double, ptr %i.ah, align 8, !tbaa !19
  %i.an = fsub double %i.am, %i.ak
  %i.ao = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.as = fsub double %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !19
  %i.av = fsub double %i.au, %i.ar
  %i.aw = fneg double %i.an
  %i.ax = fmul double %i.as, %i.aw
  %i.ay = tail call noundef double @llvm.fmuladd.f64(double %i.al, double %i.av, double %i.ax) ; 2 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %.promoted) ; 2 uses
  store double %i.az, ptr %i.ai, align 8, !tbaa !19
  %i.ba = load double, ptr %i.ao, align 8, !tbaa !19
  %i.bb = load double, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %i.bc = fsub double %i.ba, %i.bb
  %i.bd = load double, ptr %i.at, align 8, !tbaa !19
  %i.be = fsub double %i.bd, %i.bb
  %i.bf = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bj = fsub double %i.bg, %i.bi
  %i.bk = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = fsub double %i.bl, %i.bi
  %i.bn = fneg double %i.be
  %i.bo = fmul double %i.bj, %i.bn
  %i.bp = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bm, double %i.bo) ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.az) ; 2 uses
  store double %i.bq, ptr %i.ai, align 8, !tbaa !19
  %i.br = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bs = load double, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bv = fsub double %i.bu, %i.bs
  %i.bw = load double, ptr %i.x, align 8, !tbaa !19
  %i.bx = load double, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.by = fsub double %i.bw, %i.bx
  %i.bz = load double, ptr %i.ah, align 8, !tbaa !19
  %i.ca = fsub double %i.bz, %i.bx
  %i.cb = fneg double %i.bv
  %i.cc = fmul double %i.by, %i.cb
  %i.cd = tail call noundef double @llvm.fmuladd.f64(double %i.bt, double %i.ca, double %i.cc) ; 2 uses
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.bq)
  store double %i.ce, ptr %i.ai, align 8, !tbaa !19
  %i.cf = add nuw i64 %.04074, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.cf, %i.h
  br i1 %exitcond78.not, label %._crit_edge, label %.preheader, !llvm.loop !321

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !322
  %i.ch = load ptr, ptr %2, align 8, !tbaa !18, !noalias !322 ; 8 uses
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !15, !noalias !322 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i48 = icmp eq i64 %i.cj, 0
end_hunk_4
begin_hunk_5_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !332, !noalias !335
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !344, !noalias !346
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !347, !noalias !346 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !349, !noalias !346
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !332, !noalias !346
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !352
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !352
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !353
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !356

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !357 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !357 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !360, !noalias !357
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !360, !noalias !357
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !362

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !363
}

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %17 = alloca %"class.Eigen::Block.292", align 8 ; 9 uses
  %18 = alloca %"class.Eigen::Block.292", align 8 ; 10 uses
  %19 = alloca %"class.Eigen::Block.292", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !364
  %cond = icmp eq i64 %i.b, 2
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !147, !noalias !365 ; 4 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef 1)
  %i.e = load ptr, ptr %0, align 8, !tbaa !368    ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = load ptr, ptr %2, align 8, !tbaa !368    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = load i64, ptr %i.c, align 8, !tbaa !147  ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !368    ; 7 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 6 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !18     ; 4 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 3 uses
  %i.q = sdiv i64 %i.n, 2
  %i.r = shl nsw i64 %i.q, 1                      ; 7 uses
  %i.s = icmp sgt i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %i.t = icmp slt i64 %i.r, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS_5BlockIKNS5_IS8_KNS1_IdLin1ELin1ELi0ELin1ELin1EEESE_EELin1ELi1ELb1EEEEESK_EESM_EEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.u = sub i64 %i.n, %i.r                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader155, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.v = sub i64 %i.p, %i.f                       ; 2 uses
  %i.w = shl i64 %i.i, 3                          ; 3 uses
  %i.x = sub i64 %i.w, %i.v
  %diff.check = icmp ugt i64 %i.x, -16
  %i.y = add i64 %i.v, -1
  %diff.check141 = icmp ult i64 %i.y, 15
  %conflict.rdx = or i1 %diff.check, %diff.check141
  %i.z = sub i64 %i.p, %i.h                       ; 2 uses
  %i.aa = sub i64 %i.w, %i.z
  %diff.check142 = icmp ugt i64 %i.aa, -16
  %conflict.rdx143 = or i1 %conflict.rdx, %diff.check142
  %i.ab = add i64 %i.z, -1
  %diff.check144 = icmp ult i64 %i.ab, 15
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.ac = sub i64 %i.p, %i.k                      ; 2 uses
  %i.ad = add i64 %i.ac, -1
  %diff.check146 = icmp ult i64 %i.ad, 15
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.ae = sub i64 %i.w, %i.ac
  %diff.check148 = icmp ugt i64 %i.ae, -16
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  br i1 %conflict.rdx149, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.af = and i64 %i.n, 1                         ; 2 uses
  %n.vec = sub i64 %i.u, %i.af                    ; 2 uses
  %i.ag = add i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %i.r, %index                    ; 5 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ah
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !19
  %wide.load150 = load <2 x double>, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.al = fsub <2 x double> %wide.load, %wide.load150
  %i.am = add nsw i64 %i.ah, %i.i                 ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.am
  %wide.load151 = load <2 x double>, ptr %i.an, align 8, !tbaa !19
  %wide.load152 = load <2 x double>, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.ap = fsub <2 x double> %wide.load151, %wide.load152
  %i.aq = fmul <2 x double> %i.al, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.am
  %wide.load153 = load <2 x double>, ptr %i.ar, align 8, !tbaa !19
  %i.as = fsub <2 x double> %wide.load153, %wide.load152
  %i.at = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ah
  %wide.load154 = load <2 x double>, ptr %i.at, align 8, !tbaa !19
  %i.au = fsub <2 x double> %wide.load154, %wide.load150
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = fsub <2 x double> %i.aq, %i.av
  store <2 x double> %i.aw, ptr %i.ai, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, 0
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS_5BlockIKNS5_IS8_KNS1_IdLin1ELin1ELi0ELin1ELin1EEESE_EELin1ELi1ELb1EEEEESK_EESM_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader155

.lr.ph.i.i.i.i.i.i.i.i.i.preheader155:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader155, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader155 ] ; 6 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bb = load double, ptr %i.az, align 8, !tbaa !19
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bd = fsub double %i.bb, %i.bc
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, %i.i ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.be
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.bj = fsub double %i.bh, %i.bi
  %i.bk = fmul double %i.bd, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.be
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !19
  %i.bn = fsub double %i.bm, %i.bi
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !19
  %i.bq = fsub double %i.bp, %i.bc
  %i.br = fmul double %i.bn, %i.bq
  %i.bs = fsub double %i.bk, %i.br
  store double %i.bs, ptr %i.ay, align 8, !tbaa !19
  %i.bt = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS_5BlockIKNS5_IS8_KNS1_IdLin1ELin1ELi0ELin1ELin1EEESE_EELin1ELi1ELb1EEEEESK_EESM_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !370
end_hunk_5
begin_hunk_6_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %mul.result = shl i64 %i.r, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.s = getelementptr i8, ptr %.sink.i120, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %.sink.i120
  %i.u = shl i64 %i.b, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i120, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep
  %i.x = or i1 %i.w, %mul.overflow
  %scevgep121 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep121, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep121
  %scevgep122 = getelementptr i8, ptr %.sink.i120, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep122, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep122
  %i.ac = getelementptr i8, ptr %.sink.i120, i64 %i.u
  %scevgep123 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep123
  %i.af = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep124 = getelementptr i8, ptr %i.af, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep124, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep124
  %i.ai = or i1 %i.t, %ident.check
  %i.aj = or i1 %i.ai, %i.x
  %i.ak = or i1 %i.z, %i.aj
  %i.al = or i1 %i.ab, %i.ak
  %i.am = or i1 %i.ae, %i.al
  %i.an = or i1 %i.ah, %i.am
  br i1 %i.an, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = shl nuw i64 %i.b, 2
  %i.ap = getelementptr i8, ptr %i.o, i64 %i.ao
  %scevgep125 = getelementptr i8, ptr %i.ap, i64 12 ; 3 uses
  %i.aq = shl i64 %i.b, 3                         ; 3 uses
  %i.ar = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep126 = getelementptr i8, ptr %i.ar, i64 -4 ; 3 uses
  %scevgep127 = getelementptr i8, ptr %.sink.i120, i64 %i.aq ; 9 uses
  %i.as = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep128 = getelementptr i8, ptr %i.as, i64 -4 ; 5 uses
  %scevgep129 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 8 uses
  %i.at = mul i64 %i.b, 24                        ; 2 uses
  %i.au = getelementptr i8, ptr %.sink.i120, i64 %i.at
  %scevgep130 = getelementptr i8, ptr %i.au, i64 -4 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %.sink.i120, i64 4 ; 4 uses
  %i.av = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep132 = getelementptr i8, ptr %i.av, i64 4 ; 4 uses
  %i.aw = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep133 = getelementptr i8, ptr %i.aw, i64 4 ; 5 uses
  %scevgep134 = getelementptr i8, ptr %.sink.i120, i64 %i.at ; 5 uses
  %bound0 = icmp ult ptr %i.o, %scevgep126
  %bound1 = icmp ult ptr %.sink.i120, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %bound0135 = icmp ult ptr %i.o, %scevgep128
  %bound1136 = icmp ult ptr %scevgep127, %scevgep125
  %found.conflict137 = and i1 %bound0135, %bound1136
  %i.ax = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep130, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep127, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep129, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep134, i64 3 ; 2 uses
  %i.bd = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep129, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep131, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep132, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep133, i64 3 ; 2 uses
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bh, %i.bj
  %i.bl = and <4 x i1> %i.bd, %i.bk
  %bound0154 = icmp ult ptr %.sink.i120, %scevgep128
  %bound1155 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict156 = and i1 %bound0154, %bound1155
  %i.bm = insertelement <4 x ptr> poison, ptr %.sink.i120, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = icmp ult <4 x ptr> %i.bn, %i.bc
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep126, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bh, %i.bq
  %i.bs = and <4 x i1> %i.bo, %i.br
  %bound0174 = icmp ult ptr %scevgep127, %scevgep130
  %bound1175 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0179 = icmp ult ptr %scevgep127, %scevgep129
  %bound1180 = icmp ult ptr %scevgep132, %scevgep128
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep127, %scevgep134
  %bound1184 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict185 = and i1 %bound0183, %bound1184
  %bound0187 = icmp ult ptr %scevgep129, %scevgep127
  %bound1188 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict189 = and i1 %bound0187, %bound1188
  %bound0192 = icmp ult ptr %scevgep129, %scevgep134
  %bound1193 = icmp ult ptr %scevgep133, %scevgep130
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %scevgep131, %scevgep129
  %bound1197 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0200 = icmp ult ptr %scevgep131, %scevgep134
  %bound1201 = icmp ult ptr %scevgep133, %scevgep127
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0204 = icmp ult ptr %scevgep132, %scevgep134
  %bound1205 = icmp ult ptr %scevgep133, %scevgep129
  %found.conflict206 = and i1 %bound0204, %bound1205
  %rdx.op = or <4 x i1> %i.bl, %i.bs
  %i.bt = bitcast <4 x i1> %rdx.op to i4
  %i.bu = icmp ne i4 %i.bt, 0
  %op.rdx = or i1 %i.bu, %found.conflict
  %op.rdx239 = or i1 %found.conflict137, %found.conflict156
  %op.rdx240 = or i1 %found.conflict176, %found.conflict181
  %op.rdx241 = or i1 %found.conflict185, %found.conflict189
  %op.rdx242 = or i1 %found.conflict194, %found.conflict198
  %op.rdx243 = or i1 %found.conflict202, %found.conflict206
  %op.rdx244 = or i1 %op.rdx, %op.rdx239
  %op.rdx245 = or i1 %op.rdx240, %op.rdx241
  %op.rdx246 = or i1 %op.rdx242, %op.rdx243
  %op.rdx247 = or i1 %op.rdx244, %op.rdx245
  %op.rdx248 = or i1 %op.rdx247, %op.rdx246
  br i1 %op.rdx248, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 3
  %i.bw = getelementptr i8, ptr %.sink.i120, i64 %i.bv ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %wide.load208 = load <2 x i32>, ptr %i.by, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %wide.load209 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !426, !noalias !429 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load209, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !25, !noalias !62
  %i.cc = getelementptr i8, ptr %i.bx, i64 12
  %wide.load210 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %interleaved.vec211 = shufflevector <2 x i32> %wide.load208, <2 x i32> %wide.load210, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec211, ptr %i.bz, align 4, !tbaa !25
  %wide.load212 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !426, !noalias !429
  %interleaved.vec213 = shufflevector <2 x i32> %wide.load209, <2 x i32> %wide.load212, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec213, ptr %i.cb, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph, %middle.block
  %.041108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66
  %.041108 = phi i64 [ %i.cu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66 ], [ %.041108.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader ] ; 3 uses
  %.idx115 = shl i64 %.041108, 3
  %i.ce = getelementptr i8, ptr %.sink.i120, i64 %.idx115 ; 4 uses
  %i.cf = mul nsw i64 %i.q, %.041108
  %i.cg = getelementptr [4 x i8], ptr %i.o, i64 %i.cf ; 5 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !25
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !25, !noalias !437
  %i.ci = getelementptr i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ce, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = getelementptr i8, ptr %i.cg, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !25 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ce, i64 %.idx
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !25
  %i.co = getelementptr i8, ptr %i.ce, i64 4      ; 3 uses
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !25, !noalias !440
  %i.cp = getelementptr i8, ptr %i.cg, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %i.c
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !25
  %i.cs = load i32, ptr %i.cg, align 4, !tbaa !25
  %i.ct = getelementptr i8, ptr %i.co, i64 %.idx
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !25
  %i.cu = add nuw i64 %.041108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66, !llvm.loop !443

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !414
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.cv, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !414 ; 8 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cx, label %.lr.ph, label %._crit_edge110

.lr.ph:                                           ; preds = %.preheader
  %i.cy = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check226 = icmp ult i64 %i.cw, 20
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.scevcheck214

vector.scevcheck214:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cw, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph225.preheader, label %vector.memcheck219

vector.memcheck219:                               ; preds = %vector.scevcheck214
  %i.cz = shl nuw nsw i64 %i.cw, 3
  %scevgep220 = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.da = shl nuw nsw i64 %i.cw, 4
  %scevgep221 = getelementptr i8, ptr %.pre, i64 %i.da
  %bound0222 = icmp ult ptr %i.cy, %scevgep221
  %bound1223 = icmp ult ptr %.pre, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck219
  %n.vec228 = and i64 %i.cw, 4294967292           ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 4 uses
  %i.db = shl i64 %index230, 1
  %i.dc = shl i64 %index230, 1
  %i.dd = and i64 %i.db, 4294967288
  %i.de = and i64 %i.dc, 4294967288
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dd
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %wide.vec = load <4 x double>, ptr %i.df, align 8, !tbaa !19, !alias.scope !444 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec231 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec232 = load <4 x double>, ptr %i.dh, align 8, !tbaa !19, !alias.scope !444 ; 2 uses
  %strided.vec233 = shufflevector <4 x double> %wide.vec232, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x double> %wide.vec232, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index230 ; 2 uses
  %i.dj = fadd <2 x double> %strided.vec, %strided.vec231
  %i.dk = fadd <2 x double> %strided.vec233, %strided.vec234
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x double> %i.dj, ptr %i.di, align 8, !tbaa !19, !alias.scope !447, !noalias !444
  store <2 x double> %i.dk, ptr %i.dl, align 8, !tbaa !19, !alias.scope !447, !noalias !444
  %index.next235 = add nuw i64 %index230, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.dm, label %middle.block236, label %vector.body229, !llvm.loop !449

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %i.cw, %n.vec228
  br i1 %cmp.n237, label %._crit_edge110, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %vector.memcheck219, %vector.scevcheck214, %.lr.ph, %middle.block236
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck219 ], [ 0, %vector.scevcheck214 ], [ 0, %.lr.ph ], [ %n.vec228, %middle.block236 ]
  br label %scalar.ph225

._crit_edge110:                                   ; preds = %scalar.ph225, %middle.block236, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dn = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.dp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dq = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.do

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph225 ], [ %indvars.iv.ph, %scalar.ph225.preheader ] ; 3 uses
  %i.dr = trunc nuw i64 %indvars.iv to i32
  %i.ds = shl i32 %i.dr, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !19
  %i.dw = or disjoint i32 %i.ds, 1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.eb = fadd double %i.dv, %i.dz
  store double %i.eb, ptr %i.ea, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ec = and i64 %indvars.iv.next, 4294967295
  %i.ed = icmp samesign ugt i64 %i.cw, %i.ec
  br i1 %i.ed, label %scalar.ph225, label %._crit_edge110, !llvm.loop !450
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Array", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !412
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !414  ; 6 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %.noexc47

.noexc47:                                         ; preds = %.noexc
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !15
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.h = phi i64 [ %i.e, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.k = load ptr, ptr %1, align 8, !tbaa !415
  %i.l = load i64, ptr %i.a, align 8, !tbaa !412
  %i.m = load ptr, ptr %0, align 8, !tbaa !451    ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04073 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bz, %.preheader ] ; 3 uses
  %sext = shl i64 %.04073, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = mul nsw i64 %i.l, %i.o
  %i.q = getelementptr [4 x i8], ptr %i.k, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = zext i32 %i.r to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr i8, ptr %i.m, i64 %.idx.i.i.i.i ; 4 uses
  %i.u = getelementptr i8, ptr %i.q, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  %i.w = zext i32 %i.v to i64
  %.idx.i.i.i20.i = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr i8, ptr %i.m, i64 %.idx.i.i.i20.i ; 4 uses
  %i.y = getelementptr i8, ptr %i.q, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i.i21.i = mul nuw nsw i64 %i.aa, 24
  %i.ab = getelementptr i8, ptr %i.m, i64 %.idx.i.i.i21.i ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.04073 ; 4 uses
  %.promoted = load double, ptr %i.ac, align 8, !tbaa !19
  %i.ad = load double, ptr %i.t, align 8, !tbaa !19
  %i.ae = load double, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !19
  %i.ah = fsub double %i.ag, %i.ae
  %i.ai = getelementptr i8, ptr %i.t, i64 8       ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = getelementptr i8, ptr %i.x, i64 8       ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.am = fsub double %i.aj, %i.al
  %i.an = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = fsub double %i.ao, %i.al
  %i.aq = fneg double %i.ah
  %i.ar = fmul double %i.am, %i.aq
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.af, double %i.ap, double %i.ar) ; 2 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %.promoted) ; 2 uses
  store double %i.at, ptr %i.ac, align 8, !tbaa !19
  %i.au = load double, ptr %i.ai, align 8, !tbaa !19
  %i.av = load double, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.aw = fsub double %i.au, %i.av
  %i.ax = load double, ptr %i.an, align 8, !tbaa !19
  %i.ay = fsub double %i.ax, %i.av
  %i.az = getelementptr i8, ptr %i.t, i64 16      ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = getelementptr i8, ptr %i.ab, i64 16     ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19
  %i.bg = fsub double %i.bf, %i.bc
  %i.bh = fneg double %i.ay
  %i.bi = fmul double %i.bd, %i.bh
  %i.bj = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.bg, double %i.bi) ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.at) ; 2 uses
  store double %i.bk, ptr %i.ac, align 8, !tbaa !19
  %i.bl = load double, ptr %i.az, align 8, !tbaa !19
  %i.bm = load double, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %i.bn = fsub double %i.bl, %i.bm
  %i.bo = load double, ptr %i.be, align 8, !tbaa !19
  %i.bp = fsub double %i.bo, %i.bm
  %i.bq = load double, ptr %i.t, align 8, !tbaa !19
  %i.br = load double, ptr %i.x, align 8, !tbaa !19 ; 2 uses
  %i.bs = fsub double %i.bq, %i.br
  %i.bt = load double, ptr %i.ab, align 8, !tbaa !19
  %i.bu = fsub double %i.bt, %i.br
  %i.bv = fneg double %i.bp
  %i.bw = fmul double %i.bs, %i.bv
  %i.bx = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bu, double %i.bw) ; 2 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.bk)
  store double %i.by, ptr %i.ac, align 8, !tbaa !19
  %i.bz = add nuw i64 %.04073, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !453

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !454
  %i.ca = load ptr, ptr %2, align 8, !tbaa !18, !noalias !454 ; 8 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !15, !noalias !454 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i48 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i48, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %._crit_edge
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.cc, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i49 = load i64, ptr %i.cd, align 8, !tbaa !15, !alias.scope !454 ; 8 uses
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !454 ; 8 uses
  %.pre.i.i84 = ptrtoaddr ptr %.pre.i.i to i64
  %i.ce = sdiv i64 %.pr.i.i.i.i.i.i.i49, 2
  %i.cf = shl nsw i64 %i.ce, 1                    ; 6 uses
  %i.cg = icmp sgt i64 %.pr.i.i.i.i.i.i.i49, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %i.ch = icmp slt i64 %i.cf, %.pr.i.i.i.i.i.i.i49
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ci = sub i64 %.pr.i.i.i.i.i.i.i49, %i.cf     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  %i.cj = sub i64 %i.cb, %.pre.i.i84
  %diff.check = icmp ugt i64 %i.cj, -16
end_hunk_6
begin_hunk_7_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %mul.result = shl i64 %i.r, 3                   ; 6 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.s = getelementptr i8, ptr %.sink.i120, i64 %mul.result
  %i.t = icmp ult ptr %i.s, %.sink.i120
  %i.u = shl i64 %i.b, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sink.i120, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep
  %i.x = or i1 %i.w, %mul.overflow
  %scevgep121 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep121, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep121
  %scevgep122 = getelementptr i8, ptr %.sink.i120, i64 4 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep122, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep122
  %i.ac = getelementptr i8, ptr %.sink.i120, i64 %i.u
  %scevgep123 = getelementptr i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %i.ae = icmp ult ptr %i.ad, %scevgep123
  %i.af = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep124 = getelementptr i8, ptr %i.af, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep124, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep124
  %i.ai = or i1 %i.t, %ident.check
  %i.aj = or i1 %i.ai, %i.x
  %i.ak = or i1 %i.z, %i.aj
  %i.al = or i1 %i.ab, %i.ak
  %i.am = or i1 %i.ae, %i.al
  %i.an = or i1 %i.ah, %i.am
  br i1 %i.an, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = shl nuw i64 %i.b, 2
  %i.ap = getelementptr i8, ptr %i.o, i64 %i.ao
  %scevgep125 = getelementptr i8, ptr %i.ap, i64 12 ; 3 uses
  %i.aq = shl i64 %i.b, 3                         ; 3 uses
  %i.ar = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep126 = getelementptr i8, ptr %i.ar, i64 -4 ; 3 uses
  %scevgep127 = getelementptr i8, ptr %.sink.i120, i64 %i.aq ; 9 uses
  %i.as = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep128 = getelementptr i8, ptr %i.as, i64 -4 ; 5 uses
  %scevgep129 = getelementptr i8, ptr %.sink.i120, i64 %.idx ; 8 uses
  %i.at = mul i64 %i.b, 24                        ; 2 uses
  %i.au = getelementptr i8, ptr %.sink.i120, i64 %i.at
  %scevgep130 = getelementptr i8, ptr %i.au, i64 -4 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %.sink.i120, i64 4 ; 4 uses
  %i.av = getelementptr i8, ptr %.sink.i120, i64 %i.aq
  %scevgep132 = getelementptr i8, ptr %i.av, i64 4 ; 4 uses
  %i.aw = getelementptr i8, ptr %.sink.i120, i64 %.idx
  %scevgep133 = getelementptr i8, ptr %i.aw, i64 4 ; 5 uses
  %scevgep134 = getelementptr i8, ptr %.sink.i120, i64 %i.at ; 5 uses
  %bound0 = icmp ult ptr %i.o, %scevgep126
  %bound1 = icmp ult ptr %.sink.i120, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %bound0135 = icmp ult ptr %i.o, %scevgep128
  %bound1136 = icmp ult ptr %scevgep127, %scevgep125
  %found.conflict137 = and i1 %bound0135, %bound1136
  %i.ax = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = insertelement <4 x ptr> poison, ptr %scevgep130, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep127, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep129, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep134, i64 3 ; 2 uses
  %i.bd = icmp ult <4 x ptr> %i.ay, %i.bc
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep129, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep131, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep132, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep133, i64 3 ; 2 uses
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bh, %i.bj
  %i.bl = and <4 x i1> %i.bd, %i.bk
  %bound0154 = icmp ult ptr %.sink.i120, %scevgep128
  %bound1155 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict156 = and i1 %bound0154, %bound1155
  %i.bm = insertelement <4 x ptr> poison, ptr %.sink.i120, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = icmp ult <4 x ptr> %i.bn, %i.bc
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep126, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bh, %i.bq
  %i.bs = and <4 x i1> %i.bo, %i.br
  %bound0174 = icmp ult ptr %scevgep127, %scevgep130
  %bound1175 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0179 = icmp ult ptr %scevgep127, %scevgep129
  %bound1180 = icmp ult ptr %scevgep132, %scevgep128
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep127, %scevgep134
  %bound1184 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict185 = and i1 %bound0183, %bound1184
  %bound0187 = icmp ult ptr %scevgep129, %scevgep127
  %bound1188 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict189 = and i1 %bound0187, %bound1188
  %bound0192 = icmp ult ptr %scevgep129, %scevgep134
  %bound1193 = icmp ult ptr %scevgep133, %scevgep130
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %scevgep131, %scevgep129
  %bound1197 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0200 = icmp ult ptr %scevgep131, %scevgep134
  %bound1201 = icmp ult ptr %scevgep133, %scevgep127
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0204 = icmp ult ptr %scevgep132, %scevgep134
  %bound1205 = icmp ult ptr %scevgep133, %scevgep129
  %found.conflict206 = and i1 %bound0204, %bound1205
  %rdx.op = or <4 x i1> %i.bl, %i.bs
  %i.bt = bitcast <4 x i1> %rdx.op to i4
  %i.bu = icmp ne i4 %i.bt, 0
  %op.rdx = or i1 %i.bu, %found.conflict
  %op.rdx239 = or i1 %found.conflict137, %found.conflict156
  %op.rdx240 = or i1 %found.conflict176, %found.conflict181
  %op.rdx241 = or i1 %found.conflict185, %found.conflict189
  %op.rdx242 = or i1 %found.conflict194, %found.conflict198
  %op.rdx243 = or i1 %found.conflict202, %found.conflict206
  %op.rdx244 = or i1 %op.rdx, %op.rdx239
  %op.rdx245 = or i1 %op.rdx240, %op.rdx241
  %op.rdx246 = or i1 %op.rdx242, %op.rdx243
  %op.rdx247 = or i1 %op.rdx244, %op.rdx245
  %op.rdx248 = or i1 %op.rdx247, %op.rdx246
  br i1 %op.rdx248, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 3
  %i.bw = getelementptr i8, ptr %.sink.i120, i64 %i.bv ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %wide.load208 = load <2 x i32>, ptr %i.by, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %wide.load209 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !463, !noalias !466 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load209, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !25, !noalias !62
  %i.cc = getelementptr i8, ptr %i.bx, i64 12
  %wide.load210 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %interleaved.vec211 = shufflevector <2 x i32> %wide.load208, <2 x i32> %wide.load210, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec211, ptr %i.bz, align 4, !tbaa !25
  %wide.load212 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !25, !alias.scope !463, !noalias !466
  %interleaved.vec213 = shufflevector <2 x i32> %wide.load209, <2 x i32> %wide.load212, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec213, ptr %i.cb, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph, %middle.block
  %.041108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66
  %.041108 = phi i64 [ %i.cu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66 ], [ %.041108.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66.preheader ] ; 3 uses
  %.idx115 = shl i64 %.041108, 3
  %i.ce = getelementptr i8, ptr %.sink.i120, i64 %.idx115 ; 4 uses
  %i.cf = mul nsw i64 %i.q, %.041108
  %i.cg = getelementptr [4 x i8], ptr %i.o, i64 %i.cf ; 5 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !25
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !25, !noalias !474
  %i.ci = getelementptr i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ce, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = getelementptr i8, ptr %i.cg, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !25 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ce, i64 %.idx
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !25
  %i.co = getelementptr i8, ptr %i.ce, i64 4      ; 3 uses
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !25, !noalias !477
  %i.cp = getelementptr i8, ptr %i.cg, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %i.c
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !25
  %i.cs = load i32, ptr %i.cg, align 4, !tbaa !25
  %i.ct = getelementptr i8, ptr %i.co, i64 %.idx
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !25
  %i.cu = add nuw i64 %.041108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66, !llvm.loop !480

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit66, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !414
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.cv, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !414 ; 8 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cx, label %.lr.ph, label %._crit_edge110

.lr.ph:                                           ; preds = %.preheader
  %i.cy = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check226 = icmp ult i64 %i.cw, 20
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.scevcheck214

vector.scevcheck214:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cw, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph225.preheader, label %vector.memcheck219

vector.memcheck219:                               ; preds = %vector.scevcheck214
  %i.cz = shl nuw nsw i64 %i.cw, 3
  %scevgep220 = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.da = shl nuw nsw i64 %i.cw, 4
  %scevgep221 = getelementptr i8, ptr %.pre, i64 %i.da
  %bound0222 = icmp ult ptr %i.cy, %scevgep221
  %bound1223 = icmp ult ptr %.pre, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck219
  %n.vec228 = and i64 %i.cw, 4294967292           ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 4 uses
  %i.db = shl i64 %index230, 1
  %i.dc = shl i64 %index230, 1
  %i.dd = and i64 %i.db, 4294967288
  %i.de = and i64 %i.dc, 4294967288
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dd
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %wide.vec = load <4 x double>, ptr %i.df, align 8, !tbaa !19, !alias.scope !481 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec231 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec232 = load <4 x double>, ptr %i.dh, align 8, !tbaa !19, !alias.scope !481 ; 2 uses
  %strided.vec233 = shufflevector <4 x double> %wide.vec232, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x double> %wide.vec232, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index230 ; 2 uses
  %i.dj = fadd <2 x double> %strided.vec, %strided.vec231
  %i.dk = fadd <2 x double> %strided.vec233, %strided.vec234
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x double> %i.dj, ptr %i.di, align 8, !tbaa !19, !alias.scope !484, !noalias !481
  store <2 x double> %i.dk, ptr %i.dl, align 8, !tbaa !19, !alias.scope !484, !noalias !481
  %index.next235 = add nuw i64 %index230, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.dm, label %middle.block236, label %vector.body229, !llvm.loop !486

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %i.cw, %n.vec228
  br i1 %cmp.n237, label %._crit_edge110, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %vector.memcheck219, %vector.scevcheck214, %.lr.ph, %middle.block236
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck219 ], [ 0, %vector.scevcheck214 ], [ 0, %.lr.ph ], [ %n.vec228, %middle.block236 ]
  br label %scalar.ph225

._crit_edge110:                                   ; preds = %scalar.ph225, %middle.block236, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dn = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.dp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dq = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.do

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph225 ], [ %indvars.iv.ph, %scalar.ph225.preheader ] ; 3 uses
  %i.dr = trunc nuw i64 %indvars.iv to i32
  %i.ds = shl i32 %i.dr, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !19
  %i.dw = or disjoint i32 %i.ds, 1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.eb = fadd double %i.dv, %i.dz
  store double %i.eb, ptr %i.ea, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ec = and i64 %indvars.iv.next, 4294967295
  %i.ed = icmp samesign ugt i64 %i.cw, %i.ec
  br i1 %i.ed, label %scalar.ph225, label %._crit_edge110, !llvm.loop !487
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %4 = alloca %"class.Eigen::Array", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !364
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  switch i32 %i.f, label %bb.n [
    i32 3, label %bb.d
    i32 2, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc47 unwind label %bb.f

.noexc47:                                         ; preds = %bb.e
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.k = phi i64 [ %i.h, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not75 = icmp eq i64 %i.h, 0
  br i1 %.not75, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = load ptr, ptr %0, align 8, !tbaa !368    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !147  ; 4 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.idx.i = shl i64 %i.r, 3
  %i.s = load ptr, ptr %2, align 8, !tbaa !18
  %i.t = shl nsw i64 %i.q, 1                      ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04074 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ce, %.preheader ] ; 3 uses
  %sext70 = shl i64 %.04074, 32
  %i.u = ashr exact i64 %sext70, 30
  %i.v = getelementptr i8, ptr %i.n, i64 %i.u     ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.v, i64 %.idx.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %i.ab ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %i.r
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.o, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.04074 ; 4 uses
  %.promoted = load double, ptr %i.ah, align 8, !tbaa !19
  %i.ai = load double, ptr %i.y, align 8, !tbaa !19
  %i.aj = load double, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = load double, ptr %i.ag, align 8, !tbaa !19
  %i.am = fsub double %i.al, %i.aj
  %i.an = getelementptr [8 x i8], ptr %i.y, i64 %i.q ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr [8 x i8], ptr %i.ac, i64 %i.q ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.ag, i64 %i.q ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = fsub double %i.at, %i.aq
  %i.av = fneg double %i.am
  %i.aw = fmul double %i.ar, %i.av
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.au, double %i.aw) ; 2 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %.promoted) ; 2 uses
  store double %i.ay, ptr %i.ah, align 8, !tbaa !19
  %i.az = load double, ptr %i.an, align 8, !tbaa !19
  %i.ba = load double, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = load double, ptr %i.as, align 8, !tbaa !19
  %i.bd = fsub double %i.bc, %i.ba
  %i.be = getelementptr [8 x i8], ptr %i.y, i64 %i.t ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr [8 x i8], ptr %i.ac, i64 %i.t ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = getelementptr [8 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !19
  %i.bl = fsub double %i.bk, %i.bh
  %i.bm = fneg double %i.bd
  %i.bn = fmul double %i.bi, %i.bm
  %i.bo = tail call noundef double @llvm.fmuladd.f64(double %i.bb, double %i.bl, double %i.bn) ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.ay) ; 2 uses
  store double %i.bp, ptr %i.ah, align 8, !tbaa !19
  %i.bq = load double, ptr %i.be, align 8, !tbaa !19
  %i.br = load double, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.bs = fsub double %i.bq, %i.br
  %i.bt = load double, ptr %i.bj, align 8, !tbaa !19
  %i.bu = fsub double %i.bt, %i.br
  %i.bv = load double, ptr %i.y, align 8, !tbaa !19
  %i.bw = load double, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = load double, ptr %i.ag, align 8, !tbaa !19
  %i.bz = fsub double %i.by, %i.bw
  %i.ca = fneg double %i.bu
  %i.cb = fmul double %i.bx, %i.ca
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.bs, double %i.bz, double %i.cb) ; 2 uses
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.bp)
  store double %i.cd, ptr %i.ah, align 8, !tbaa !19
  %i.ce = add nuw i64 %.04074, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ce, %i.h
  br i1 %exitcond78.not, label %._crit_edge, label %.preheader, !llvm.loop !488

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !489
  %i.cg = load ptr, ptr %2, align 8, !tbaa !18, !noalias !489 ; 8 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !15, !noalias !489 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i48 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i48, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %thread-pre-split.i.i.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !499, !noalias !502
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !511, !noalias !513
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !514, !noalias !513 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !516, !noalias !513
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !499, !noalias !513
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !519
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !519
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !520
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !523

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !524 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !524 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !527, !noalias !524
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !527, !noalias !524
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !529

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !530
}

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef +qnan, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %4 = alloca %"class.Eigen::Array.343", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !364
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  switch i32 %i.f, label %bb.n [
    i32 3, label %bb.d
    i32 2, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !531
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc47 unwind label %bb.f

.noexc47:                                         ; preds = %bb.e
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !531
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.k = phi i64 [ %i.h, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !533
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !25
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %.not70 = icmp eq i64 %i.h, 0
  br i1 %.not70, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = load ptr, ptr %0, align 8, !tbaa !368    ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !147  ; 7 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.idx.i = shl i64 %i.r, 3
  %i.s = load ptr, ptr %2, align 8, !tbaa !533
  %i.t = shl nsw i64 %i.q, 1                      ; 6 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04069 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.dj, %.preheader ] ; 3 uses
  %sext65 = shl i64 %.04069, 32
  %i.u = ashr exact i64 %sext65, 30
  %i.v = getelementptr i8, ptr %i.n, i64 %i.u     ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %.idx.i  ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.r ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.04069 ; 4 uses
  %i.z = load i32, ptr %i.v, align 4, !tbaa !25
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !19
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !25
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.o, i64 %i.ae ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ah = fsub double %i.ac, %i.ag
  %i.ai = load i32, ptr %i.x, align 4, !tbaa !25
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !19
  %i.am = fsub double %i.al, %i.ag
  %i.an = getelementptr [8 x i8], ptr %i.ab, i64 %i.q
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr [8 x i8], ptr %i.af, i64 %i.q
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.ak, i64 %i.q
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = fsub double %i.at, %i.aq
  %i.av = fneg double %i.am
  %i.aw = fmul double %i.ar, %i.av
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.ah, double %i.au, double %i.aw) ; 2 uses
  %i.ay = load i32, ptr %i.y, align 4, !tbaa !25
  %i.az = sitofp i32 %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.az)
  %i.bb = fptosi double %i.ba to i32              ; 2 uses
  store i32 %i.bb, ptr %i.y, align 4, !tbaa !25
  %i.bc = load i32, ptr %i.v, align 4, !tbaa !25
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.o, i64 %i.bd ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.q
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = load i32, ptr %i.w, align 4, !tbaa !25
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %i.o, i64 %i.bi ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.q
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %i.bm = fsub double %i.bg, %i.bl
  %i.bn = load i32, ptr %i.x, align 4, !tbaa !25
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.o, i64 %i.bo ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.q
  %i.br = load double, ptr %i.bq, align 8, !tbaa !19
  %i.bs = fsub double %i.br, %i.bl
  %i.bt = getelementptr [8 x i8], ptr %i.be, i64 %i.t
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !19
  %i.bv = getelementptr [8 x i8], ptr %i.bj, i64 %i.t
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19 ; 2 uses
  %i.bx = fsub double %i.bu, %i.bw
  %i.by = getelementptr [8 x i8], ptr %i.bp, i64 %i.t
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19
  %i.ca = fsub double %i.bz, %i.bw
  %i.cb = fneg double %i.bs
  %i.cc = fmul double %i.bx, %i.cb
  %i.cd = tail call noundef double @llvm.fmuladd.f64(double %i.bm, double %i.ca, double %i.cc) ; 2 uses
  %i.ce = sitofp i32 %i.bb to double
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.ce)
  %i.cg = fptosi double %i.cf to i32              ; 2 uses
  store i32 %i.cg, ptr %i.y, align 4, !tbaa !25
  %i.ch = load i32, ptr %i.v, align 4, !tbaa !25
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %i.o, i64 %i.ci ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.t
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = load i32, ptr %i.w, align 4, !tbaa !25
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %i.o, i64 %i.cn ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.t
end_hunk_8
begin_hunk_9_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !544, !noalias !547
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !556, !noalias !558
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !559, !noalias !558 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !561, !noalias !558
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !544, !noalias !558
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !564
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !564
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !565
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !568

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !533   ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !533   ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 24
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 2
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 3
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967288           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967280
  %i.cx = and i64 %i.cv, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <8 x i32>, ptr %i.cy, align 4, !tbaa !25, !alias.scope !569 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec294 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec295 = load <8 x i32>, ptr %i.da, align 4, !tbaa !25, !alias.scope !569 ; 2 uses
  %strided.vec296 = shufflevector <8 x i32> %wide.vec295, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec297 = shufflevector <8 x i32> %wide.vec295, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = add nsw <4 x i32> %strided.vec294, %strided.vec
  %i.dd = add nsw <4 x i32> %strided.vec297, %strided.vec296
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %i.dc, ptr %i.db, align 4, !tbaa !25, !alias.scope !572, !noalias !569
  store <4 x i32> %i.dd, ptr %i.de, align 4, !tbaa !25, !alias.scope !572, !noalias !569
  %index.next298 = add nuw i64 %index293, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !574

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !533
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = add nsw i32 %i.ds, %i.do
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !25
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !575
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !531
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !533
  tail call void @free(ptr noundef %i.i) #23
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !533
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !531
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.871, align 1            ; 4 uses
  %4 = alloca %class.anon.873, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.870, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.e, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !576
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.Eigen::Array", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !187  ; 6 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %.noexc47

.noexc47:                                         ; preds = %.noexc
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !15
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc47, %.noexc
  %i.e = phi i64 [ %i.b, %.noexc ], [ %.pr.i.i.i.i.i.i.i, %.noexc47 ] ; 2 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0148 = icmp ult ptr %scevgep123, %scevgep116
  %bound1149 = icmp ult ptr %scevgep115, %scevgep112
  %found.conflict150 = and i1 %bound0148, %bound1149
  %bound0152 = icmp ult ptr %scevgep123, %scevgep118
  %bound1153 = icmp ult ptr %scevgep117, %scevgep112
  %found.conflict154 = and i1 %bound0152, %bound1153
  %bound0156 = icmp ult ptr %scevgep123, %scevgep115
  %bound1157 = icmp ult ptr %scevgep119, %scevgep112
  %found.conflict158 = and i1 %bound0156, %bound1157
  %bound0160 = icmp ult ptr %scevgep123, %scevgep117
  %bound1161 = icmp ult ptr %scevgep120, %scevgep112
  %found.conflict162 = and i1 %bound0160, %bound1161
  %bound0164 = icmp ult ptr %scevgep123, %scevgep122
  %bound1165 = icmp ult ptr %scevgep121, %scevgep112
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0168 = icmp ult ptr %scevgep124, %scevgep114
  %bound1169 = icmp ult ptr %.sink.i107, %scevgep123
  %found.conflict170 = and i1 %bound0168, %bound1169
  %bound0172 = icmp ult ptr %scevgep124, %scevgep116
  %bound1173 = icmp ult ptr %scevgep115, %scevgep123
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0176 = icmp ult ptr %scevgep124, %scevgep118
  %bound1177 = icmp ult ptr %scevgep117, %scevgep123
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0180 = icmp ult ptr %scevgep124, %scevgep115
  %bound1181 = icmp ult ptr %scevgep119, %scevgep123
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0184 = icmp ult ptr %scevgep124, %scevgep117
  %bound1185 = icmp ult ptr %scevgep120, %scevgep123
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0188 = icmp ult ptr %scevgep124, %scevgep122
  %bound1189 = icmp ult ptr %scevgep121, %scevgep123
  %found.conflict190 = and i1 %bound0188, %bound1189
  %bound0192 = icmp ult ptr %i.o, %scevgep114
  %bound1193 = icmp ult ptr %.sink.i107, %scevgep124
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0196 = icmp ult ptr %i.o, %scevgep116
  %bound1197 = icmp ult ptr %scevgep115, %scevgep124
  %found.conflict198 = and i1 %bound0196, %bound1197
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep115, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep117, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep122, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep117, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep119, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep120, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep121, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep124, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0216 = icmp ult ptr %.sink.i107, %scevgep116
  %bound1217 = icmp ult ptr %scevgep115, %scevgep114
  %found.conflict218 = and i1 %bound0216, %bound1217
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i107, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep114, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0236 = icmp ult ptr %scevgep115, %scevgep118
  %bound1237 = icmp ult ptr %scevgep117, %scevgep116
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0241 = icmp ult ptr %scevgep115, %scevgep117
  %bound1242 = icmp ult ptr %scevgep120, %scevgep116
  %found.conflict243 = and i1 %bound0241, %bound1242
  %bound0245 = icmp ult ptr %scevgep115, %scevgep122
  %bound1246 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict247 = and i1 %bound0245, %bound1246
  %bound0249 = icmp ult ptr %scevgep117, %scevgep115
  %bound1250 = icmp ult ptr %scevgep119, %scevgep118
  %found.conflict251 = and i1 %bound0249, %bound1250
  %bound0254 = icmp ult ptr %scevgep117, %scevgep122
  %bound1255 = icmp ult ptr %scevgep121, %scevgep118
  %found.conflict256 = and i1 %bound0254, %bound1255
  %bound0258 = icmp ult ptr %scevgep119, %scevgep117
  %bound1259 = icmp ult ptr %scevgep120, %scevgep115
  %found.conflict260 = and i1 %bound0258, %bound1259
  %bound0262 = icmp ult ptr %scevgep119, %scevgep122
  %bound1263 = icmp ult ptr %scevgep121, %scevgep115
  %found.conflict264 = and i1 %bound0262, %bound1263
  %bound0266 = icmp ult ptr %scevgep120, %scevgep122
  %bound1267 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict268 = and i1 %bound0266, %bound1267
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx301 = or i1 %found.conflict127, %found.conflict130
  %op.rdx302 = or i1 %found.conflict134, %found.conflict138
  %op.rdx303 = or i1 %found.conflict142, %found.conflict146
  %op.rdx304 = or i1 %found.conflict150, %found.conflict154
  %op.rdx305 = or i1 %found.conflict158, %found.conflict162
  %op.rdx306 = or i1 %found.conflict166, %found.conflict170
  %op.rdx307 = or i1 %found.conflict174, %found.conflict178
  %op.rdx308 = or i1 %found.conflict182, %found.conflict186
  %op.rdx309 = or i1 %found.conflict190, %found.conflict194
  %op.rdx310 = or i1 %found.conflict198, %found.conflict218
  %op.rdx311 = or i1 %found.conflict238, %found.conflict243
  %op.rdx312 = or i1 %found.conflict247, %found.conflict251
  %op.rdx313 = or i1 %found.conflict256, %found.conflict260
  %op.rdx314 = or i1 %found.conflict264, %found.conflict268
  %op.rdx315 = or i1 %op.rdx, %op.rdx301
  %op.rdx316 = or i1 %op.rdx302, %op.rdx303
  %op.rdx317 = or i1 %op.rdx304, %op.rdx305
  %op.rdx318 = or i1 %op.rdx306, %op.rdx307
  %op.rdx319 = or i1 %op.rdx308, %op.rdx309
  %op.rdx320 = or i1 %op.rdx310, %op.rdx311
  %op.rdx321 = or i1 %op.rdx312, %op.rdx313
  %op.rdx322 = or i1 %op.rdx315, %op.rdx316
  %op.rdx323 = or i1 %op.rdx317, %op.rdx318
  %op.rdx324 = or i1 %op.rdx319, %op.rdx320
  %op.rdx325 = or i1 %op.rdx321, %op.rdx314
  %op.rdx326 = or i1 %op.rdx322, %op.rdx323
  %op.rdx327 = or i1 %op.rdx324, %op.rdx325
  %op.rdx328 = or i1 %op.rdx326, %op.rdx327
  br i1 %op.rdx328, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i107, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !621, !noalias !624
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load270 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !633, !noalias !635
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load271 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !636, !noalias !635 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load271, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load272 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !638, !noalias !635
  %interleaved.vec273 = shufflevector <2 x i32> %wide.load270, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec273, ptr %i.bt, align 4, !tbaa !25
  %wide.load274 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !621, !noalias !635
  %interleaved.vec275 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load274, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec275, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !640

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx102 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i107, i64 %.idx102 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !641
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !641
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !642
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !645

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %common.resume

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.co, i64 noundef %i.co, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !368   ; 4 uses
  %min.iters.check288 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check288, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329, label %vector.scevcheck276

vector.scevcheck276:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329, label %vector.memcheck281

vector.memcheck281:                               ; preds = %vector.scevcheck276
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep282 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep283 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0284 = icmp ult ptr %i.cr, %scevgep283
  %bound1285 = icmp ult ptr %.pre, %scevgep282
  %found.conflict286 = and i1 %bound0284, %bound1285
  br i1 %found.conflict286, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329, label %vector.ph289

vector.ph289:                                     ; preds = %vector.memcheck281
  %n.vec290 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 4 uses
  %i.cu = shl i64 %index292, 1
  %i.cv = shl i64 %index292, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !646 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec293 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec294 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !646 ; 2 uses
  %strided.vec295 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec296 = shufflevector <4 x double> %wide.vec294, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index292 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec293
  %i.dd = fadd <2 x double> %strided.vec295, %strided.vec296
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !649, !noalias !646
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !649, !noalias !646
  %index.next297 = add nuw i64 %index292, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.df, label %middle.block298, label %vector.body291, !llvm.loop !651

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.cp, %n.vec290
  br i1 %cmp.n299, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329: ; preds = %vector.memcheck281, %vector.scevcheck276, %.lr.ph, %middle.block298
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck281 ], [ 0, %vector.scevcheck276 ], [ 0, %.lr.ph ], [ %n.vec290, %middle.block298 ]
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %middle.block298, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ], [ %indvars.iv.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader329 ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, !llvm.loop !652
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.187", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !37 ; 2 uses
  %i.b = load <2 x double>, ptr %2, align 1, !tbaa !37 ; 2 uses
  %i.c = fsub <2 x double> %i.a, %i.b             ; 2 uses
  %i.d = fmul <2 x double> %i.c, %i.c             ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = load double, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.h = load double, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.i = load <2 x double>, ptr %0, align 1, !tbaa !37 ; 2 uses
  %i.j = fsub <2 x double> %i.b, %i.i             ; 2 uses
  %i.k = fmul <2 x double> %i.j, %i.j             ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %i.n = shufflevector <2 x double> %i.d, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.o = shufflevector <2 x double> %i.d, <2 x double> %i.k, <2 x i32> <i32 1, i32 3>
  %i.p = fadd <2 x double> %i.n, %i.o
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.h, i64 1
  %i.s = insertelement <2 x double> poison, double %i.h, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.m, i64 1
  %i.u = fsub <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %i.p, %i.v
  %i.x = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.w)
  store <2 x double> %i.x, ptr %4, align 16, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = fsub <2 x double> %i.i, %i.a             ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z            ; 2 uses
  %shift = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.aa, %shift
  %i.ab = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ac = fsub double %i.m, %i.g                  ; 2 uses
  %i.ad = fmul double %i.ac, %i.ac
  %i.ae = fadd double %i.ad, %i.ab
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i25 = tail call noundef double @llvm.sqrt.f64(double %i.ae)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i25, ptr %i.y, align 16, !tbaa !19
  call void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef +qnan, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EENS5_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef +qnan, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EENS5_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.970, align 1            ; 4 uses
  %4 = alloca %class.anon.972, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  %7 = alloca %class.anon.969, align 8            ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.c

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.e, i64 noundef %i.e, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %5, ptr %7, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !607
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %7, ptr %4, align 8, !tbaa !83
  %i.h = invoke noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_EEvRKNS3_10MatrixBaseIT_EENS7_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS7_RKSD_mEUlmE_ZNS1_IlSG_EEbS7_SI_mEUllmE_SJ_EEbS7_SI_RKT1_RKT2_m(i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1000)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.792", align 8 ; 5 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.802", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.807", align 8 ; 7 uses
  %15 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %16 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %17 = alloca %"class.Eigen::Block.292", align 8 ; 9 uses
  %18 = alloca %"class.Eigen::Block.292", align 8 ; 10 uses
  %19 = alloca %"class.Eigen::Block.292", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !364
  %cond = icmp eq i64 %i.b, 2
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !147, !noalias !653 ; 6 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.d, i64 noundef %i.d, i64 noundef 1)
  %i.e = load ptr, ptr %0, align 8, !tbaa !368    ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = load ptr, ptr %2, align 8, !tbaa !368    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = load i64, ptr %i.c, align 8, !tbaa !147  ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !368    ; 7 uses
end_hunk_10
begin_hunk_11_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !1000, !noalias !1003
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !1012, !noalias !1014
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !1015, !noalias !1014 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !1017, !noalias !1014
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !1000, !noalias !1014
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1019

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !1020
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !1020
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !1021
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !1024

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !1025 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !1025 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !1028, !noalias !1025
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !1028, !noalias !1025
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !1030

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !1031
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.97", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %3, align 8, !tbaa !22     ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.idx.i.i.i = shl i64 %i.d, 4
  %i.e = load double, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.g = load double, ptr %i.f, align 8, !tbaa !19 ; 3 uses
  %i.h = getelementptr i8, ptr %i.c, i64 %.idx.i.i.i
  %i.i = load double, ptr %i.h, align 8, !tbaa !19 ; 4 uses
  %i.j = fadd double %i.g, %i.i
  %i.k = fadd double %i.e, %i.j
  %i.l = fsub double %i.e, %i.g                   ; 2 uses
  %i.m = fsub double %i.i, %i.l
  %i.n = fmul double %i.m, %i.k
  %i.o = fadd double %i.i, %i.l
  %i.p = fmul double %i.o, %i.n
  %i.q = fsub double %i.g, %i.i
  %i.r = fadd double %i.e, %i.q
  %i.s = fmul double %i.r, %i.p
  %i.t = call double @sqrt(double noundef %i.s) #23
  %i.u = fmul double %i.t, 5.000000e-01           ; 2 uses
  %i.v = fcmp uno double %i.u, 0.000000e+00
  %spec.store.select = select i1 %i.v, double %1, double %i.u
  store double %spec.store.select, ptr %2, align 8
  %i.w = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.x = load ptr, ptr %3, align 8, !tbaa !22
  call void @free(ptr noundef %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.y, %bb.c ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ab = load ptr, ptr %3, align 8, !tbaa !22
  call void @free(ptr noundef %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN3igl4sortIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.j) #23
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #25 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !22
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS3_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEEKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS5_IdLin1ELin1ELi0ELin1ELin1EEESJ_EEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSW_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1032, !nonnull !62, !align !681 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !379  ; 7 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !375
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN3igl15doublearea_quadIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0149 = icmp ult ptr %scevgep124, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0153 = icmp ult ptr %scevgep124, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0157 = icmp ult ptr %scevgep124, %scevgep116
  %bound1158 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0161 = icmp ult ptr %scevgep124, %scevgep118
  %bound1162 = icmp ult ptr %scevgep121, %scevgep113
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0165 = icmp ult ptr %scevgep124, %scevgep123
  %bound1166 = icmp ult ptr %scevgep122, %scevgep113
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0169 = icmp ult ptr %scevgep125, %scevgep115
  %bound1170 = icmp ult ptr %.sink.i108, %scevgep124
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0173 = icmp ult ptr %scevgep125, %scevgep117
  %bound1174 = icmp ult ptr %scevgep116, %scevgep124
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep125, %scevgep119
  %bound1178 = icmp ult ptr %scevgep118, %scevgep124
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0181 = icmp ult ptr %scevgep125, %scevgep116
  %bound1182 = icmp ult ptr %scevgep120, %scevgep124
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0185 = icmp ult ptr %scevgep125, %scevgep118
  %bound1186 = icmp ult ptr %scevgep121, %scevgep124
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0189 = icmp ult ptr %scevgep125, %scevgep123
  %bound1190 = icmp ult ptr %scevgep122, %scevgep124
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0193 = icmp ult ptr %i.o, %scevgep115
  %bound1194 = icmp ult ptr %.sink.i108, %scevgep125
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0197 = icmp ult ptr %i.o, %scevgep117
  %bound1198 = icmp ult ptr %scevgep116, %scevgep125
  %found.conflict199 = and i1 %bound0197, %bound1198
  %i.ar = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.as = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep116, i64 1
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep118, i64 2
  %i.aw = insertelement <4 x ptr> %i.av, ptr %scevgep123, i64 3 ; 2 uses
  %i.ax = icmp ult <4 x ptr> %i.as, %i.aw
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep118, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep120, i64 1
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep121, i64 2
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep122, i64 3 ; 2 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep125, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = icmp ult <4 x ptr> %i.bb, %i.bd
  %i.bf = and <4 x i1> %i.ax, %i.be
  %bound0217 = icmp ult ptr %.sink.i108, %scevgep117
  %bound1218 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.bg = insertelement <4 x ptr> poison, ptr %.sink.i108, i64 0
  %i.bh = shufflevector <4 x ptr> %i.bg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bi = icmp ult <4 x ptr> %i.bh, %i.aw
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep115, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bb, %i.bk
  %i.bm = and <4 x i1> %i.bi, %i.bl
  %bound0237 = icmp ult ptr %scevgep116, %scevgep119
  %bound1238 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0242 = icmp ult ptr %scevgep116, %scevgep118
  %bound1243 = icmp ult ptr %scevgep121, %scevgep117
  %found.conflict244 = and i1 %bound0242, %bound1243
  %bound0246 = icmp ult ptr %scevgep116, %scevgep123
  %bound1247 = icmp ult ptr %scevgep122, %scevgep117
  %found.conflict248 = and i1 %bound0246, %bound1247
  %bound0250 = icmp ult ptr %scevgep118, %scevgep116
  %bound1251 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict252 = and i1 %bound0250, %bound1251
  %bound0255 = icmp ult ptr %scevgep118, %scevgep123
  %bound1256 = icmp ult ptr %scevgep122, %scevgep119
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0259 = icmp ult ptr %scevgep120, %scevgep118
  %bound1260 = icmp ult ptr %scevgep121, %scevgep116
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0263 = icmp ult ptr %scevgep120, %scevgep123
  %bound1264 = icmp ult ptr %scevgep122, %scevgep116
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %scevgep121, %scevgep123
  %bound1268 = icmp ult ptr %scevgep122, %scevgep118
  %found.conflict269 = and i1 %bound0267, %bound1268
  %rdx.op = or <4 x i1> %i.bf, %i.bm
  %i.bn = bitcast <4 x i1> %rdx.op to i4
  %i.bo = icmp ne i4 %i.bn, 0
  %op.rdx = or i1 %i.bo, %found.conflict
  %op.rdx302 = or i1 %found.conflict128, %found.conflict131
  %op.rdx303 = or i1 %found.conflict135, %found.conflict139
  %op.rdx304 = or i1 %found.conflict143, %found.conflict147
  %op.rdx305 = or i1 %found.conflict151, %found.conflict155
  %op.rdx306 = or i1 %found.conflict159, %found.conflict163
  %op.rdx307 = or i1 %found.conflict167, %found.conflict171
  %op.rdx308 = or i1 %found.conflict175, %found.conflict179
  %op.rdx309 = or i1 %found.conflict183, %found.conflict187
  %op.rdx310 = or i1 %found.conflict191, %found.conflict195
  %op.rdx311 = or i1 %found.conflict199, %found.conflict219
  %op.rdx312 = or i1 %found.conflict239, %found.conflict244
  %op.rdx313 = or i1 %found.conflict248, %found.conflict252
  %op.rdx314 = or i1 %found.conflict257, %found.conflict261
  %op.rdx315 = or i1 %found.conflict265, %found.conflict269
  %op.rdx316 = or i1 %op.rdx, %op.rdx302
  %op.rdx317 = or i1 %op.rdx303, %op.rdx304
  %op.rdx318 = or i1 %op.rdx305, %op.rdx306
  %op.rdx319 = or i1 %op.rdx307, %op.rdx308
  %op.rdx320 = or i1 %op.rdx309, %op.rdx310
  %op.rdx321 = or i1 %op.rdx311, %op.rdx312
  %op.rdx322 = or i1 %op.rdx313, %op.rdx314
  %op.rdx323 = or i1 %op.rdx316, %op.rdx317
  %op.rdx324 = or i1 %op.rdx318, %op.rdx319
  %op.rdx325 = or i1 %op.rdx320, %op.rdx321
  %op.rdx326 = or i1 %op.rdx322, %op.rdx315
  %op.rdx327 = or i1 %op.rdx323, %op.rdx324
  %op.rdx328 = or i1 %op.rdx325, %op.rdx326
  %op.rdx329 = or i1 %op.rdx327, %op.rdx328
  br i1 %op.rdx329, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4611686018427387902      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr i8, ptr %.sink.i108, i64 %i.bp ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.o, i64 %index ; 5 uses
  %wide.load = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !1061, !noalias !1064
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.b
  %wide.load271 = load <2 x i32>, ptr %i.bs, align 4, !tbaa !25, !alias.scope !1073, !noalias !1075
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.c
  %i.bu = getelementptr i8, ptr %i.br, i64 %.idx
  %wide.load272 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !25, !alias.scope !1076, !noalias !1075 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 %.idx93
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load272, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !25, !noalias !62
  %i.bw = getelementptr i8, ptr %i.br, i64 %.idx94
  %wide.load273 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !25, !alias.scope !1078, !noalias !1075
  %interleaved.vec274 = shufflevector <2 x i32> %wide.load271, <2 x i32> %wide.load273, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec274, ptr %i.bt, align 4, !tbaa !25
  %wide.load275 = load <2 x i32>, ptr %i.br, align 4, !tbaa !25, !alias.scope !1061, !noalias !1075
  %interleaved.vec276 = shufflevector <2 x i32> %wide.load272, <2 x i32> %wide.load275, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec276, ptr %i.bv, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph, %middle.block
  %.03796.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58
  %.03796 = phi i64 [ %i.cn, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58 ], [ %.03796.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58.preheader ] ; 3 uses
  %.idx103 = shl i64 %.03796, 3
  %i.by = getelementptr i8, ptr %.sink.i108, i64 %.idx103 ; 4 uses
  %i.bz = getelementptr [4 x i8], ptr %i.o, i64 %.03796 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25, !noalias !1081
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !25, !noalias !1081
  %i.cb = getelementptr [4 x i8], ptr %i.bz, i64 %i.b
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %i.c
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !25
  %i.ce = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %.idx93
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !25
  %i.ch = getelementptr i8, ptr %i.by, i64 4      ; 3 uses
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25, !noalias !1082
  %i.ci = getelementptr i8, ptr %i.bz, i64 %.idx94
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %i.c
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !25
  %i.cl = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx93
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !25
  %i.cn = add nuw i64 %.03796, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, !llvm.loop !1085

._crit_edge:                                      ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit58, %middle.block, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %common.resume

bb.d:                                             ; preds = %._crit_edge
  %i.co = load i64, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.co, i64 noundef 1)
          to label %.preheader unwind label %common.resume

.preheader:                                       ; preds = %bb.d
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !14  ; 8 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !18    ; 7 uses
  br i1 %i.cq, label %.lr.ph, label %._crit_edge98

.lr.ph:                                           ; preds = %.preheader
  %i.cr = load ptr, ptr %2, align 8, !tbaa !18    ; 4 uses
  %min.iters.check289 = icmp ult i64 %i.cp, 20
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.lr.ph
  %5 = add nsw i64 %i.cp, -1                      ; 2 uses
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 2147483647
  %9 = or i1 %7, %8
  br i1 %9, label %scalar.ph288.preheader, label %vector.memcheck282

vector.memcheck282:                               ; preds = %vector.scevcheck277
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %scevgep283 = getelementptr i8, ptr %i.cr, i64 %i.cs
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %scevgep284 = getelementptr i8, ptr %.pre, i64 %i.ct
  %bound0285 = icmp ult ptr %i.cr, %scevgep284
  %bound1286 = icmp ult ptr %.pre, %scevgep283
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck282
  %n.vec291 = and i64 %i.cp, 4294967292           ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.cu = shl i64 %index293, 1
  %i.cv = shl i64 %index293, 1
  %i.cw = and i64 %i.cu, 4294967288
  %i.cx = and i64 %i.cv, 4294967288
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cw
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %wide.vec = load <4 x double>, ptr %i.cy, align 8, !tbaa !19, !alias.scope !1086 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec295 = load <4 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !1086 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index293 ; 2 uses
  %i.dc = fadd <2 x double> %strided.vec, %strided.vec294
  %i.dd = fadd <2 x double> %strided.vec296, %strided.vec297
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %i.dc, ptr %i.db, align 8, !tbaa !19, !alias.scope !1089, !noalias !1086
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !19, !alias.scope !1089, !noalias !1086
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.df, label %middle.block299, label %vector.body292, !llvm.loop !1091

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cp, %n.vec291
  br i1 %cmp.n300, label %._crit_edge98, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck282, %vector.scevcheck277, %.lr.ph, %middle.block299
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck282 ], [ 0, %vector.scevcheck277 ], [ 0, %.lr.ph ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

._crit_edge98:                                    ; preds = %scalar.ph288, %middle.block299, %.preheader
  call void @free(ptr noundef %.pre) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dg = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

common.resume:                                    ; preds = %bb.d, %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !18
  call void @free(ptr noundef %i.di) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !21
  call void @free(ptr noundef %i.dj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.dh

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph288 ], [ %indvars.iv.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.dk = trunc nuw i64 %indvars.iv to i32
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.du = fadd double %i.do, %i.ds
  store double %i.du, ptr %i.dt, align 8, !tbaa !19
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dv = and i64 %indvars.iv.next, 4294967295
  %i.dw = icmp samesign ugt i64 %i.cp, %i.dv
  br i1 %i.dw, label %scalar.ph288, label %._crit_edge98, !llvm.loop !1092
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !531
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !533
  tail call void @free(ptr noundef %i.i) #23
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !533
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !531
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EENS8_6ScalarERNS3_15PlainObjectBaseIT0_EEEUliE_EEbS8_RKSE_mEUlmE_ZNS1_IlSH_EEbS8_SJ_mEUllmE_SK_EEbS8_SJ_RKT1_RKT2_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.874, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !678
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
  %i.i = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.i, %i.h
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.j = icmp sgt i64 %0, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.k = load ptr, ptr %2, align 8, !tbaa !1093, !nonnull !62, !align !681 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1095, !nonnull !62, !align !681 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.idx.i.i = shl i64 %i.o, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1097, !nonnull !62, !align !681
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !533
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03360 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.c ] ; 2 uses
  %sext.i = shl i64 %.03360, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.s ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.o
  %i.w = load double, ptr %i.v, align 8, !tbaa !19 ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !19 ; 4 uses
  %i.z = fadd double %i.w, %i.y
  %i.aa = fadd double %i.u, %i.z
  %i.ab = fsub double %i.u, %i.w                  ; 2 uses
  %i.ac = fsub double %i.y, %i.ab
  %i.ad = fmul double %i.ac, %i.aa
  %i.ae = fadd double %i.y, %i.ab
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = fsub double %i.w, %i.y
  %i.ah = fadd double %i.u, %i.ag
  %i.ai = fmul double %i.ah, %i.af
  %i.aj = tail call double @sqrt(double noundef %i.ai) #23
  %i.ak = fmul double %i.aj, 5.000000e-01
  %i.al = fptosi double %i.ak to i32
  %i.am = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 %i.al, ptr %i.am, align 4, !tbaa !25
  %i.an = add nuw nsw i64 %.03360, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %0
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !1098

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ao = add nsw i64 %0, 1
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = uitofp i32 %i.f to double
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = tail call double @llvm.round.f64(double %i.ar)
  %i.at = fptosi double %i.as to i64
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %2, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aw = shl nuw nsw i64 %i.g, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #27
          to label %.noexc unwind label %bb.f     ; 9 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.ay = load ptr, ptr %6, align 8, !tbaa !687   ; 11 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !690 ; 3 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bc = add i64 %i.bb, -8
  %i.bd = sub i64 %i.bc, %i.az                    ; 2 uses
end_hunk_12
