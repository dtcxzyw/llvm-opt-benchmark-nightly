Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiotypecvt?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SDL_ChooseAudioConverters.converters_chosen = internal unnamed_addr global i1 false, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ConvertAudioToFloat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %5 = ptrtoaddr ptr %0 to i64                    ; 4 uses
  switch i32 %3, label %SDL_Convert_S8_to_F32_Scalar.exit [
    i32 32776, label %bb.b
    i32 8, label %bb.c
    i32 32784, label %bb.d
    i32 36880, label %bb.e
    i32 32800, label %bb.f
    i32 36896, label %bb.g
    i32 37152, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.b = zext nneg i32 %2 to i64                  ; 8 uses
  %min.iters.check233 = icmp ult i32 %2, 8
  br i1 %min.iters.check233, label %.lr.ph.i.preheader, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.b
  %bound0235 = icmp ult ptr %0, %i.e
  %bound1236 = icmp ult ptr %1, %i.d
  %found.conflict237 = and i1 %bound0235, %bound1236
  br i1 %found.conflict237, label %.lr.ph.i.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %vector.memcheck234
  %n.vec239 = and i64 %i.b, 2147483640            ; 2 uses
  %i.f = and i64 %i.b, 7
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next248, %vector.body240 ] ; 2 uses
  %i.g = xor i64 %index241, -1
  %i.h = add i64 %i.g, %i.b                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -3
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -7
  %wide.load242 = load <4 x i8>, ptr %i.j, align 1, !alias.scope !42
  %wide.load243 = load <4 x i8>, ptr %i.k, align 1, !alias.scope !42
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -12
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -28
  %i.o = zext <4 x i8> %wide.load242 to <4 x i32>
  %i.p = xor <4 x i32> %i.o, splat (i32 1199571072)
  %i.q = bitcast <4 x i32> %i.p to <4 x float>
  %reverse246 = fadd <4 x float> %i.q, splat (float -6.553700e+04)
  %i.r = zext <4 x i8> %wide.load243 to <4 x i32>
  %i.s = xor <4 x i32> %i.r, splat (i32 1199571072)
  %i.t = bitcast <4 x i32> %i.s to <4 x float>
  %reverse247 = fadd <4 x float> %i.t, splat (float -6.553700e+04)
  store <4 x float> %reverse246, ptr %i.m, align 4, !alias.scope !43, !noalias !42
  store <4 x float> %reverse247, ptr %i.n, align 4, !alias.scope !43, !noalias !42
  %index.next248 = add nuw i64 %index241, 8       ; 2 uses
  %i.u = icmp eq i64 %index.next248, %n.vec239
  br i1 %i.u, label %middle.block249, label %vector.body240, !llvm.loop !11

middle.block249:                                  ; preds = %vector.body240
  %cmp.n250 = icmp eq i64 %n.vec239, %i.b
  br i1 %cmp.n250, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck234, %.lr.ph.preheader.i, %middle.block249
  %indvars.iv.i.ph = phi i64 [ %i.b, %vector.memcheck234 ], [ %i.b, %.lr.ph.preheader.i ], [ %i.f, %middle.block249 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = xor i32 %i.x, 1199571072
  %i.z = bitcast i32 %i.y to float
  %i.aa = fadd float %i.z, -6.553700e+04
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store float %i.aa, ptr %i.ab, align 4
  %i.ac = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ac, label %.lr.ph.i, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !12

bb.c:                                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph.preheader.i27, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i27:                             ; preds = %bb.c
  %i.ae = zext nneg i32 %2 to i64                 ; 8 uses
  %min.iters.check208 = icmp ult i32 %2, 8
  br i1 %min.iters.check208, label %.lr.ph.i28.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %.lr.ph.preheader.i27
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr i8, ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %1, i64 %i.ae
  %bound0210 = icmp ult ptr %0, %i.ah
  %bound1211 = icmp ult ptr %1, %i.ag
  %found.conflict212 = and i1 %bound0210, %bound1211
  br i1 %found.conflict212, label %.lr.ph.i28.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck209
  %n.vec214 = and i64 %i.ae, 2147483640           ; 2 uses
  %i.ai = and i64 %i.ae, 7
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next223, %vector.body215 ] ; 2 uses
  %i.aj = xor i64 %index216, -1
  %i.ak = add i64 %i.aj, %i.ae                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -3
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -7
  %wide.load217 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !44
  %wide.load218 = load <4 x i8>, ptr %i.an, align 1, !alias.scope !44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -12
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -28
  %i.ar = zext <4 x i8> %wide.load217 to <4 x i32>
  %i.as = or disjoint <4 x i32> %i.ar, splat (i32 1199570944)
  %i.at = bitcast <4 x i32> %i.as to <4 x float>
  %reverse221 = fadd <4 x float> %i.at, splat (float -6.553700e+04)
  %i.au = zext <4 x i8> %wide.load218 to <4 x i32>
  %i.av = or disjoint <4 x i32> %i.au, splat (i32 1199570944)
  %i.aw = bitcast <4 x i32> %i.av to <4 x float>
  %reverse222 = fadd <4 x float> %i.aw, splat (float -6.553700e+04)
  store <4 x float> %reverse221, ptr %i.ap, align 4, !alias.scope !45, !noalias !44
  store <4 x float> %reverse222, ptr %i.aq, align 4, !alias.scope !45, !noalias !44
  %index.next223 = add nuw i64 %index216, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next223, %n.vec214
  br i1 %i.ax, label %middle.block224, label %vector.body215, !llvm.loop !16

middle.block224:                                  ; preds = %vector.body215
  %cmp.n225 = icmp eq i64 %n.vec214, %i.ae
  br i1 %cmp.n225, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %vector.memcheck209, %.lr.ph.preheader.i27, %middle.block224
  %indvars.iv.i29.ph = phi i64 [ %i.ae, %vector.memcheck209 ], [ %i.ae, %.lr.ph.preheader.i27 ], [ %i.ai, %middle.block224 ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.lr.ph.i28 ], [ %indvars.iv.i29.ph, %.lr.ph.i28.preheader ] ; 2 uses
  %indvars.iv.next.i30 = add nsw i64 %indvars.iv.i29, -1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i30
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ba, 1199570944
  %i.bc = bitcast i32 %i.bb to float
  %i.bd = fadd float %i.bc, -6.553700e+04
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i30
  store float %i.bd, ptr %i.be, align 4
  %i.bf = icmp samesign ugt i64 %indvars.iv.i29, 1
  br i1 %i.bf, label %.lr.ph.i28, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !17

bb.d:                                             ; preds = %bb.a
  %i.bg = icmp sgt i32 %2, 0
  br i1 %i.bg, label %.lr.ph.preheader.i31, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i31:                             ; preds = %bb.d
  %i.bh = zext nneg i32 %2 to i64                 ; 8 uses
  %min.iters.check183 = icmp ult i32 %2, 8
  br i1 %min.iters.check183, label %.lr.ph.i32.preheader, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph.preheader.i31
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %i.bk = shl nuw nsw i64 %i.bh, 1
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %bound0185 = icmp ult ptr %0, %i.bl
  %bound1186 = icmp ult ptr %1, %i.bj
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i32.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck184
  %n.vec189 = and i64 %i.bh, 2147483640           ; 2 uses
  %i.bm = and i64 %i.bh, 7
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.bn = xor i64 %index191, -1
  %i.bo = add i64 %i.bn, %i.bh                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -6
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -14
  %wide.load192 = load <4 x i16>, ptr %i.bq, align 2, !alias.scope !46
  %wide.load193 = load <4 x i16>, ptr %i.br, align 2, !alias.scope !46
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -12
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -28
  %i.bv = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.bw = xor <4 x i32> %i.bv, splat (i32 1132494848)
  %i.bx = bitcast <4 x i32> %i.bw to <4 x float>
  %reverse196 = fadd <4 x float> %i.bx, splat (float -2.570000e+02)
  %i.by = zext <4 x i16> %wide.load193 to <4 x i32>
  %i.bz = xor <4 x i32> %i.by, splat (i32 1132494848)
  %i.ca = bitcast <4 x i32> %i.bz to <4 x float>
  %reverse197 = fadd <4 x float> %i.ca, splat (float -2.570000e+02)
  store <4 x float> %reverse196, ptr %i.bt, align 4, !alias.scope !47, !noalias !46
  store <4 x float> %reverse197, ptr %i.bu, align 4, !alias.scope !47, !noalias !46
  %index.next198 = add nuw i64 %index191, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.cb, label %middle.block199, label %vector.body190, !llvm.loop !21

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %n.vec189, %i.bh
  br i1 %cmp.n200, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i32.preheader

.lr.ph.i32.preheader:                             ; preds = %vector.memcheck184, %.lr.ph.preheader.i31, %middle.block199
  %indvars.iv.i33.ph = phi i64 [ %i.bh, %vector.memcheck184 ], [ %i.bh, %.lr.ph.preheader.i31 ], [ %i.bm, %middle.block199 ]
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i34, %.lr.ph.i32 ], [ %indvars.iv.i33.ph, %.lr.ph.i32.preheader ] ; 2 uses
  %indvars.iv.next.i34 = add nsw i64 %indvars.iv.i33, -1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i34
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = xor i32 %i.ce, 1132494848
  %i.cg = bitcast i32 %i.cf to float
  %i.ch = fadd float %i.cg, -2.570000e+02
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i34
  store float %i.ch, ptr %i.ci, align 4
  %i.cj = icmp samesign ugt i64 %indvars.iv.i33, 1
  br i1 %i.cj, label %.lr.ph.i32, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !22

bb.e:                                             ; preds = %bb.a
  %i.ck = icmp sgt i32 %2, 0
  br i1 %i.ck, label %iter.check, label %SDL_Convert_S8_to_F32_Scalar.exit

iter.check:                                       ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 16 uses
  %min.iters.check141 = icmp ult i32 %2, 4
  %i.cl = sub i64 %4, %5
  %diff.check139 = icmp ugt i64 %i.cl, -32
  %or.cond = or i1 %min.iters.check141, %diff.check139
  br i1 %or.cond, label %.lr.ph.i36.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i32 %2, 16
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph143

vector.ph143:                                     ; preds = %vector.main.loop.iter.check
  %i.cm = and i64 %wide.trip.count.i, 12
  %n.vec144 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.ph143, %vector.body145
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next149, %vector.body145 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index146 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load147 = load <8 x i16>, ptr %i.cn, align 2
  %wide.load148 = load <8 x i16>, ptr %i.co, align 2
  %i.cp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load147)
  %i.cq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load148)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index146 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <8 x i16> %i.cp, ptr %i.cr, align 2
  store <8 x i16> %i.cq, ptr %i.cs, align 2
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.ct = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.ct, label %middle.block150, label %vector.body145, !llvm.loop !23

middle.block150:                                  ; preds = %vector.body145
  %cmp.n151 = icmp eq i64 %n.vec144, %wide.trip.count.i
  br i1 %cmp.n151, label %.lr.ph.i40.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block150
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i36.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec144, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec152 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index153 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index153
  %wide.load154 = load <4 x i16>, ptr %i.cu, align 2
  %i.cv = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load154)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index153
  store <4 x i16> %i.cv, ptr %i.cw, align 2
  %index.next155 = add nuw i64 %index153, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next155, %n.vec152
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %n.vec152, %wide.trip.count.i
  br i1 %cmp.n156, label %.lr.ph.i40.preheader, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i37.ph = phi i64 [ 0, %iter.check ], [ %n.vec144, %vec.epilog.iter.check ], [ %n.vec152, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter266 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36.prol
  %indvars.iv.i37.prol = phi i64 [ %indvars.iv.next.i38.prol, %.lr.ph.i36.prol ], [ %indvars.iv.i37.ph, %.lr.ph.i36.preheader ] ; 3 uses
  %prol.iter268 = phi i64 [ %prol.iter268.next, %.lr.ph.i36.prol ], [ 0, %.lr.ph.i36.preheader ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i37.prol
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = tail call i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i37.prol
  store i16 %i.da, ptr %i.db, align 2
  %indvars.iv.next.i38.prol = add nuw nsw i64 %indvars.iv.i37.prol, 1 ; 2 uses
  %prol.iter268.next = add i64 %prol.iter268, 1   ; 2 uses
  %prol.iter268.cmp.not = icmp eq i64 %prol.iter268.next, %xtraiter266
  br i1 %prol.iter268.cmp.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol, !llvm.loop !25

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.i36.preheader
  %indvars.iv.i37.unr = phi i64 [ %indvars.iv.i37.ph, %.lr.ph.i36.preheader ], [ %indvars.iv.next.i38.prol, %.lr.ph.i36.prol ]
  %i.dc = sub nsw i64 %indvars.iv.i37.ph, %wide.trip.count.i
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %.lr.ph.i40.preheader, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38.3, %.lr.ph.i36 ], [ %indvars.iv.i37.unr, %.lr.ph.i36.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i37
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i37
  store i16 %i.dg, ptr %i.dh, align 2
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i38
  %i.dj = load i16, ptr %i.di, align 2
  %i.dk = tail call i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i38
  store i16 %i.dk, ptr %i.dl, align 2
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i38.1
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = tail call i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i38.1
  store i16 %i.do, ptr %i.dp, align 2
  %indvars.iv.next.i38.2 = add nuw nsw i64 %indvars.iv.i37, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i38.2
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = tail call i16 @llvm.bswap.i16(i16 %i.dr)
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i38.2
  store i16 %i.ds, ptr %i.dt, align 2
  %indvars.iv.next.i38.3 = add nuw nsw i64 %indvars.iv.i37, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i38.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph.i40.preheader, label %.lr.ph.i36, !llvm.loop !26

.lr.ph.i40.preheader:                             ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %vec.epilog.middle.block, %middle.block150
  %min.iters.check161 = icmp ult i32 %2, 8
  br i1 %min.iters.check161, label %.lr.ph.i40.preheader257, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i40.preheader
  %i.du = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.dv = getelementptr i8, ptr %0, i64 %i.du
  %i.dw = shl nuw nsw i64 %wide.trip.count.i, 1
  %i.dx = getelementptr i8, ptr %0, i64 %i.dw
  %bound0 = icmp ult ptr %0, %i.dx
  %bound1 = icmp ult ptr %0, %i.dv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.preheader257, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck162
  %n.vec164 = and i64 %wide.trip.count.i, 2147483640 ; 2 uses
  %i.dy = and i64 %wide.trip.count.i, 7
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body165 ] ; 2 uses
  %i.dz = xor i64 %index166, -1
  %i.ea = add i64 %i.dz, %wide.trip.count.i       ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -6
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -14
  %wide.load167 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !48
  %wide.load168 = load <4 x i16>, ptr %i.ed, align 2, !alias.scope !48
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ea ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -12
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -28
  %i.eh = zext <4 x i16> %wide.load167 to <4 x i32>
  %i.ei = xor <4 x i32> %i.eh, splat (i32 1132494848)
  %i.ej = bitcast <4 x i32> %i.ei to <4 x float>
  %reverse171 = fadd <4 x float> %i.ej, splat (float -2.570000e+02)
  %i.ek = zext <4 x i16> %wide.load168 to <4 x i32>
  %i.el = xor <4 x i32> %i.ek, splat (i32 1132494848)
  %i.em = bitcast <4 x i32> %i.el to <4 x float>
  %reverse172 = fadd <4 x float> %i.em, splat (float -2.570000e+02)
  store <4 x float> %reverse171, ptr %i.ef, align 4, !alias.scope !49, !noalias !48
  store <4 x float> %reverse172, ptr %i.eg, align 4, !alias.scope !49, !noalias !48
  %index.next173 = add nuw i64 %index166, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next173, %n.vec164
  br i1 %i.en, label %middle.block174, label %vector.body165, !llvm.loop !30

middle.block174:                                  ; preds = %vector.body165
  %cmp.n175 = icmp eq i64 %n.vec164, %wide.trip.count.i
  br i1 %cmp.n175, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i40.preheader257

.lr.ph.i40.preheader257:                          ; preds = %vector.memcheck162, %.lr.ph.i40.preheader, %middle.block174
  %indvars.iv.i41.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck162 ], [ %wide.trip.count.i, %.lr.ph.i40.preheader ], [ %i.dy, %middle.block174 ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader257, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42, %.lr.ph.i40 ], [ %indvars.iv.i41.ph, %.lr.ph.i40.preheader257 ] ; 2 uses
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i41, -1 ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i42
  %i.ep = load i16, ptr %i.eo, align 2
  %i.eq = zext i16 %i.ep to i32
  %i.er = xor i32 %i.eq, 1132494848
  %i.es = bitcast i32 %i.er to float
  %i.et = fadd float %i.es, -2.570000e+02
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i42
  store float %i.et, ptr %i.eu, align 4
  %i.ev = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.ev, label %.lr.ph.i40, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !31

bb.f:                                             ; preds = %bb.a
  %i.ew = icmp sgt i32 %2, 0
  br i1 %i.ew, label %.lr.ph.preheader.i44, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i44:                             ; preds = %bb.f
  %i.ex = zext nneg i32 %2 to i64                 ; 5 uses
  %min.iters.check123 = icmp ult i32 %2, 8
  %i.ey = sub i64 %5, %4
  %diff.check121 = icmp ugt i64 %i.ey, -32
  %or.cond252 = or i1 %min.iters.check123, %diff.check121
  br i1 %or.cond252, label %.lr.ph.i45.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.preheader.i44
  %n.vec125 = and i64 %i.ex, 2147483640           ; 2 uses
  %i.ez = and i64 %i.ex, 7
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next134, %vector.body126 ] ; 2 uses
  %i.fa = xor i64 %index127, -1
  %i.fb = add i64 %i.fa, %i.ex                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -12
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -28
  %wide.load128 = load <4 x i32>, ptr %i.fd, align 4
  %wide.load129 = load <4 x i32>, ptr %i.fe, align 4
  %i.ff = sitofp <4 x i32> %wide.load128 to <4 x float>
  %i.fg = sitofp <4 x i32> %wide.load129 to <4 x float>
  %i.fh = fmul nnan <4 x float> %i.ff, splat (float f0x30000000)
  %i.fi = fmul nnan <4 x float> %i.fg, splat (float f0x30000000)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -12
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -28
  store <4 x float> %i.fh, ptr %i.fk, align 4
  store <4 x float> %i.fi, ptr %i.fl, align 4
  %index.next134 = add nuw i64 %index127, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next134, %n.vec125
  br i1 %i.fm, label %middle.block135, label %vector.body126, !llvm.loop !32

middle.block135:                                  ; preds = %vector.body126
  %cmp.n136 = icmp eq i64 %n.vec125, %i.ex
  br i1 %cmp.n136, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block135
  %indvars.iv.i46.ph = phi i64 [ %i.ex, %.lr.ph.preheader.i44 ], [ %i.ez, %middle.block135 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %.lr.ph.i45 ], [ %indvars.iv.i46.ph, %.lr.ph.i45.preheader ] ; 2 uses
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i47
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = sitofp i32 %i.fo to float
  %i.fq = fmul nnan float %i.fp, f0x30000000
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i47
  store float %i.fq, ptr %i.fr, align 4
  %i.fs = icmp samesign ugt i64 %indvars.iv.i46, 1
  br i1 %i.fs, label %.lr.ph.i45, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !33

bb.g:                                             ; preds = %bb.a
  %i.ft = icmp sgt i32 %2, 0
  br i1 %i.ft, label %.lr.ph.preheader.i48, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i48:                             ; preds = %bb.g
  %wide.trip.count.i49 = zext nneg i32 %2 to i64  ; 10 uses
  %min.iters.check94 = icmp ult i32 %2, 8
  %i.fu = sub i64 %4, %5
  %diff.check92 = icmp ugt i64 %i.fu, -32
  %or.cond253 = or i1 %min.iters.check94, %diff.check92
  br i1 %or.cond253, label %.lr.ph.i50.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.preheader.i48
  %n.vec96 = and i64 %wide.trip.count.i49, 2147483640 ; 3 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next101, %vector.body97 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index98 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.fv, align 4
  %wide.load100 = load <4 x i32>, ptr %i.fw, align 4
  %i.fx = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load99)
  %i.fy = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load100)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index98 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %i.fx, ptr %i.fz, align 4
  store <4 x i32> %i.fy, ptr %i.ga, align 4
  %index.next101 = add nuw i64 %index98, 8        ; 2 uses
  %i.gb = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.gb, label %middle.block102, label %vector.body97, !llvm.loop !34

middle.block102:                                  ; preds = %vector.body97
  %cmp.n103 = icmp eq i64 %n.vec96, %wide.trip.count.i49
  br i1 %cmp.n103, label %.lr.ph.i55.preheader, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %.lr.ph.preheader.i48, %middle.block102
  %indvars.iv.i51.ph = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %n.vec96, %middle.block102 ] ; 3 uses
  %xtraiter263 = and i64 %wide.trip.count.i49, 3  ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %.lr.ph.i50.prol.loopexit, label %.lr.ph.i50.prol

.lr.ph.i50.prol:                                  ; preds = %.lr.ph.i50.preheader, %.lr.ph.i50.prol
  %indvars.iv.i51.prol = phi i64 [ %indvars.iv.next.i52.prol, %.lr.ph.i50.prol ], [ %indvars.iv.i51.ph, %.lr.ph.i50.preheader ] ; 3 uses
  %prol.iter265 = phi i64 [ %prol.iter265.next, %.lr.ph.i50.prol ], [ 0, %.lr.ph.i50.preheader ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i51.prol
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = tail call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i51.prol
  store i32 %i.ge, ptr %i.gf, align 4
  %indvars.iv.next.i52.prol = add nuw nsw i64 %indvars.iv.i51.prol, 1 ; 2 uses
  %prol.iter265.next = add i64 %prol.iter265, 1   ; 2 uses
  %prol.iter265.cmp.not = icmp eq i64 %prol.iter265.next, %xtraiter263
  br i1 %prol.iter265.cmp.not, label %.lr.ph.i50.prol.loopexit, label %.lr.ph.i50.prol, !llvm.loop !35

.lr.ph.i50.prol.loopexit:                         ; preds = %.lr.ph.i50.prol, %.lr.ph.i50.preheader
  %indvars.iv.i51.unr = phi i64 [ %indvars.iv.i51.ph, %.lr.ph.i50.preheader ], [ %indvars.iv.next.i52.prol, %.lr.ph.i50.prol ]
  %i.gg = sub nsw i64 %indvars.iv.i51.ph, %wide.trip.count.i49
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %.lr.ph.i55.preheader, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i52.3, %.lr.ph.i50 ], [ %indvars.iv.i51.unr, %.lr.ph.i50.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i51
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gj)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i51
  store i32 %i.gk, ptr %i.gl, align 4
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52
  store i32 %i.go, ptr %i.gp, align 4
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52.1
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52.1
  store i32 %i.gs, ptr %i.gt, align 4
  %indvars.iv.next.i52.2 = add nuw nsw i64 %indvars.iv.i51, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52.2
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = tail call i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52.2
  store i32 %i.gw, ptr %i.gx, align 4
  %indvars.iv.next.i52.3 = add nuw nsw i64 %indvars.iv.i51, 4 ; 2 uses
  %exitcond.not.i53.3 = icmp eq i64 %indvars.iv.next.i52.3, %wide.trip.count.i49
  br i1 %exitcond.not.i53.3, label %.lr.ph.i55.preheader, label %.lr.ph.i50, !llvm.loop !36

.lr.ph.i55.preheader:                             ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50, %middle.block102
  %min.iters.check106 = icmp ult i32 %2, 8
  br i1 %min.iters.check106, label %.lr.ph.i55.preheader260, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec108 = and i64 %wide.trip.count.i49, 2147483640 ; 2 uses
  %i.gy = and i64 %wide.trip.count.i49, 7
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %wide.trip.count.i49
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next116, %vector.body109 ] ; 2 uses
  %i.gz = xor i64 %index110, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gz ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.hb = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load111 = load <4 x i32>, ptr %i.ha, align 4
  %wide.load112 = load <4 x i32>, ptr %i.hb, align 4
  %i.hc = sitofp <4 x i32> %wide.load111 to <4 x float>
  %i.hd = sitofp <4 x i32> %wide.load112 to <4 x float>
  %i.he = fmul nnan <4 x float> %i.hc, splat (float f0x30000000)
  %i.hf = fmul nnan <4 x float> %i.hd, splat (float f0x30000000)
  %i.hg = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.hh = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x float> %i.he, ptr %i.hg, align 4
  store <4 x float> %i.hf, ptr %i.hh, align 4
  %index.next116 = add nuw i64 %index110, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next116, %n.vec108
  br i1 %i.hi, label %middle.block117, label %vector.body109, !llvm.loop !37

middle.block117:                                  ; preds = %vector.body109
  %cmp.n118 = icmp eq i64 %n.vec108, %wide.trip.count.i49
  br i1 %cmp.n118, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i55.preheader260

.lr.ph.i55.preheader260:                          ; preds = %.lr.ph.i55.preheader, %middle.block117
  %indvars.iv.i56.ph = phi i64 [ %wide.trip.count.i49, %.lr.ph.i55.preheader ], [ %i.gy, %middle.block117 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader260, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader260 ] ; 2 uses
  %indvars.iv.next.i57 = add nsw i64 %indvars.iv.i56, -1 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i57 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = sitofp i32 %i.hk to float
  %i.hm = fmul nnan float %i.hl, f0x30000000
  store float %i.hm, ptr %i.hj, align 4
  %i.hn = icmp samesign ugt i64 %indvars.iv.i56, 1
  br i1 %i.hn, label %.lr.ph.i55, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !38

bb.h:                                             ; preds = %bb.a
  %i.ho = icmp sgt i32 %2, 0
  br i1 %i.ho, label %.lr.ph.preheader.i59, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i59:                             ; preds = %bb.h
  %wide.trip.count.i60 = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.hp = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.hp, -32
  %or.cond254 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond254, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i59
  %n.vec = and i64 %wide.trip.count.i60, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load = load <4 x i32>, ptr %i.hq, align 4
  %wide.load90 = load <4 x i32>, ptr %i.hr, align 4
  %i.hs = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ht = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load90)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %i.hs, ptr %i.hu, align 4
  store <4 x i32> %i.ht, ptr %i.hv, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i60
  br i1 %cmp.n, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i59, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i60, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol

.lr.ph.i61.prol:                                  ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61.prol
  %indvars.iv.i62.prol = phi i64 [ %indvars.iv.next.i63.prol, %.lr.ph.i61.prol ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i61.prol ], [ 0, %.lr.ph.i61.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i62.prol
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i62.prol
  store i32 %i.hz, ptr %i.ia, align 4
  %indvars.iv.next.i63.prol = add nuw nsw i64 %indvars.iv.i62.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol, !llvm.loop !40

.lr.ph.i61.prol.loopexit:                         ; preds = %.lr.ph.i61.prol, %.lr.ph.i61.preheader
  %indvars.iv.i62.unr = phi i64 [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ], [ %indvars.iv.next.i63.prol, %.lr.ph.i61.prol ]
  %i.ib = sub nsw i64 %indvars.iv.i62.ph, %wide.trip.count.i60
  %i.ic = icmp ugt i64 %i.ib, -4
  br i1 %i.ic, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.prol.loopexit, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63.3, %.lr.ph.i61 ], [ %indvars.iv.i62.unr, %.lr.ph.i61.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i62
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = tail call i32 @llvm.bswap.i32(i32 %i.ie)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i62
  store i32 %i.if, ptr %i.ig, align 4
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = tail call i32 @llvm.bswap.i32(i32 %i.ii)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63
  store i32 %i.ij, ptr %i.ik, align 4
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i62, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63.1
  %i.im = load i32, ptr %i.il, align 4
  %i.in = tail call i32 @llvm.bswap.i32(i32 %i.im)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63.1
  store i32 %i.in, ptr %i.io, align 4
  %indvars.iv.next.i63.2 = add nuw nsw i64 %indvars.iv.i62, 3 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63.2
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = tail call i32 @llvm.bswap.i32(i32 %i.iq)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63.2
  store i32 %i.ir, ptr %i.is, align 4
  %indvars.iv.next.i63.3 = add nuw nsw i64 %indvars.iv.i62, 4 ; 2 uses
  %exitcond.not.i64.3 = icmp eq i64 %indvars.iv.next.i63.3, %wide.trip.count.i60
  br i1 %exitcond.not.i64.3, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61, !llvm.loop !41

SDL_Convert_S8_to_F32_Scalar.exit:                ; preds = %.lr.ph.i61.prol.loopexit, %.lr.ph.i61, %.lr.ph.i55, %.lr.ph.i45, %.lr.ph.i40, %.lr.ph.i32, %.lr.ph.i28, %.lr.ph.i, %middle.block, %middle.block117, %middle.block135, %middle.block174, %middle.block199, %middle.block224, %middle.block249, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ConvertAudioFromFloat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %5 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  switch i32 %3, label %SDL_Convert_F32_to_S8_Scalar.exit [
    i32 32776, label %bb.b
    i32 8, label %bb.c
    i32 32784, label %bb.d
    i32 36880, label %bb.e
    i32 32800, label %bb.f
    i32 36896, label %bb.g
    i32 37152, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 7 uses
  %min.iters.check230 = icmp ult i32 %2, 8
  br i1 %min.iters.check230, label %.lr.ph.i.preheader, label %vector.memcheck231

vector.memcheck231:                               ; preds = %.lr.ph.preheader.i
  %i.b = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %i.c = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %bound0232 = icmp ult ptr %0, %i.d
  %bound1233 = icmp ult ptr %1, %i.b
  %found.conflict234 = and i1 %bound0232, %bound1233
  br i1 %found.conflict234, label %.lr.ph.i.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck231
  %n.vec236 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body237 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index238 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load239 = load <4 x float>, ptr %i.e, align 4, !alias.scope !82
  %wide.load240 = load <4 x float>, ptr %i.f, align 4, !alias.scope !82
  %i.g = fadd <4 x float> %wide.load239, splat (float 9.830400e+04)
  %i.h = fadd <4 x float> %wide.load240, splat (float 9.830400e+04)
  %i.i = bitcast <4 x float> %i.g to <4 x i32>    ; 2 uses
  %i.j = bitcast <4 x float> %i.h to <4 x i32>    ; 2 uses
  %i.k = add <4 x i32> %i.i, splat (i32 -1203765248) ; 2 uses
  %i.l = add <4 x i32> %i.j, splat (i32 -1203765248) ; 2 uses
  %i.m = ashr <4 x i32> %i.k, splat (i32 31)
  %i.n = ashr <4 x i32> %i.l, splat (i32 31)
  %i.o = xor <4 x i32> %i.m, %i.k
  %i.p = xor <4 x i32> %i.n, %i.l
  %i.q = sub <4 x i32> splat (i32 127), %i.o
  %i.r = sub <4 x i32> splat (i32 127), %i.p
  %i.s = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.q, <4 x i32> zeroinitializer)
  %i.t = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.r, <4 x i32> zeroinitializer)
  %i.u = xor <4 x i32> %i.s, %i.i
  %i.v = xor <4 x i32> %i.t, %i.j
  %i.w = trunc <4 x i32> %i.u to <4 x i8>
  %i.x = trunc <4 x i32> %i.v to <4 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index238 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store <4 x i8> %i.w, ptr %i.y, align 1, !alias.scope !83, !noalias !82
  store <4 x i8> %i.x, ptr %i.z, align 1, !alias.scope !83, !noalias !82
  %index.next241 = add nuw i64 %index238, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.aa, label %middle.block242, label %vector.body237, !llvm.loop !53

middle.block242:                                  ; preds = %vector.body237
  %cmp.n243 = icmp eq i64 %n.vec236, %wide.trip.count.i
  br i1 %cmp.n243, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck231, %.lr.ph.preheader.i, %middle.block242
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck231 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec236, %middle.block242 ] ; 5 uses
  %xtraiter261 = and i64 %wide.trip.count.i, 1
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.ph
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fadd float %i.ac, 9.830400e+04
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = add i32 %i.ae, -1203765248              ; 2 uses
  %.neg.i.prol = ashr i32 %i.af, 31
  %i.ag = xor i32 %.neg.i.prol, %i.af
  %i.ah = sub i32 127, %i.ag
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 0)
  %i.aj = xor i32 %i.ai, %i.ae
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.ph
  store i8 %i.ak, ptr %i.al, align 1
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.am = add nsw i64 %wide.trip.count.i, -1
  %i.an = icmp eq i64 %indvars.iv.i.ph, %i.am
  br i1 %i.an, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fadd float %i.ap, 9.830400e+04
  %i.ar = bitcast float %i.aq to i32              ; 2 uses
  %i.as = add i32 %i.ar, -1203765248              ; 2 uses
  %.neg.i = ashr i32 %i.as, 31
  %i.at = xor i32 %.neg.i, %i.as
  %i.au = sub i32 127, %i.at
  %i.av = tail call i32 @llvm.smin.i32(i32 %i.au, i32 0)
  %i.aw = xor i32 %i.av, %i.ar
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.ax, ptr %i.ay, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.ba, 9.830400e+04
  %i.bc = bitcast float %i.bb to i32              ; 2 uses
  %i.bd = add i32 %i.bc, -1203765248              ; 2 uses
  %.neg.i.1 = ashr i32 %i.bd, 31
  %i.be = xor i32 %.neg.i.1, %i.bd
  %i.bf = sub i32 127, %i.be
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 0)
  %i.bh = xor i32 %i.bg, %i.bc
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i, !llvm.loop !54

bb.c:                                             ; preds = %bb.a
  %i.bk = icmp sgt i32 %2, 0
  br i1 %i.bk, label %.lr.ph.preheader.i27, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i27:                             ; preds = %bb.c
  %wide.trip.count.i28 = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check209 = icmp ult i32 %2, 8
  br i1 %min.iters.check209, label %.lr.ph.i29.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.preheader.i27
  %i.bl = getelementptr i8, ptr %0, i64 %wide.trip.count.i28
  %i.bm = shl nuw nsw i64 %wide.trip.count.i28, 2
  %i.bn = getelementptr i8, ptr %1, i64 %i.bm
  %bound0211 = icmp ult ptr %0, %i.bn
  %bound1212 = icmp ult ptr %1, %i.bl
  %found.conflict213 = and i1 %bound0211, %bound1212
  br i1 %found.conflict213, label %.lr.ph.i29.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck210
  %n.vec215 = and i64 %wide.trip.count.i28, 2147483640 ; 3 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body216 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index217 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load218 = load <4 x float>, ptr %i.bo, align 4, !alias.scope !84
  %wide.load219 = load <4 x float>, ptr %i.bp, align 4, !alias.scope !84
  %i.bq = fadd <4 x float> %wide.load218, splat (float 9.830400e+04)
  %i.br = fadd <4 x float> %wide.load219, splat (float 9.830400e+04)
  %i.bs = bitcast <4 x float> %i.bq to <4 x i32>  ; 2 uses
  %i.bt = bitcast <4 x float> %i.br to <4 x i32>  ; 2 uses
  %i.bu = add <4 x i32> %i.bs, splat (i32 -1203765248) ; 2 uses
  %i.bv = add <4 x i32> %i.bt, splat (i32 -1203765248) ; 2 uses
  %i.bw = ashr <4 x i32> %i.bu, splat (i32 31)
  %i.bx = ashr <4 x i32> %i.bv, splat (i32 31)
  %i.by = xor <4 x i32> %i.bw, %i.bu
  %i.bz = xor <4 x i32> %i.bx, %i.bv
  %i.ca = sub <4 x i32> splat (i32 127), %i.by
  %i.cb = sub <4 x i32> splat (i32 127), %i.bz
  %i.cc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ca, <4 x i32> zeroinitializer)
  %i.cd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cb, <4 x i32> zeroinitializer)
  %i.ce = xor <4 x i32> %i.cc, %i.bs
  %i.cf = xor <4 x i32> %i.cd, %i.bt
  %i.cg = trunc <4 x i32> %i.ce to <4 x i8>
  %i.ch = xor <4 x i8> %i.cg, splat (i8 -128)
  %i.ci = trunc <4 x i32> %i.cf to <4 x i8>
  %i.cj = xor <4 x i8> %i.ci, splat (i8 -128)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %index217 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store <4 x i8> %i.ch, ptr %i.ck, align 1, !alias.scope !85, !noalias !84
  store <4 x i8> %i.cj, ptr %i.cl, align 1, !alias.scope !85, !noalias !84
  %index.next220 = add nuw i64 %index217, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.cm, label %middle.block221, label %vector.body216, !llvm.loop !58

middle.block221:                                  ; preds = %vector.body216
  %cmp.n222 = icmp eq i64 %n.vec215, %wide.trip.count.i28
  br i1 %cmp.n222, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %vector.memcheck210, %.lr.ph.preheader.i27, %middle.block221
  %indvars.iv.i30.ph = phi i64 [ 0, %vector.memcheck210 ], [ 0, %.lr.ph.preheader.i27 ], [ %n.vec215, %middle.block221 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader, %.lr.ph.i29
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i32, %.lr.ph.i29 ], [ %indvars.iv.i30.ph, %.lr.ph.i29.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i30
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fadd float %i.co, 9.830400e+04
  %i.cq = bitcast float %i.cp to i32              ; 2 uses
end_hunk_0
begin_hunk_1_@ConvertAudioFromFloat:bb.a
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %exitcond.not.i40.1 = icmp eq i64 %indvars.iv.next.i39.1, %wide.trip.count.i35
  br i1 %exitcond.not.i40.1, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i36, !llvm.loop !64

bb.e:                                             ; preds = %bb.a
  %i.fk = icmp sgt i32 %2, 0
  br i1 %i.fk, label %.lr.ph.preheader.i41, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i41:                             ; preds = %bb.e
  %wide.trip.count.i42 = zext nneg i32 %2 to i64  ; 13 uses
  %min.iters.check152 = icmp ult i32 %2, 8
  br i1 %min.iters.check152, label %.lr.ph.i43.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph.preheader.i41
  %i.fl = shl nuw nsw i64 %wide.trip.count.i42, 1
  %i.fm = getelementptr i8, ptr %0, i64 %i.fl
  %i.fn = shl nuw nsw i64 %wide.trip.count.i42, 2
  %i.fo = getelementptr i8, ptr %1, i64 %i.fn
  %bound0 = icmp ult ptr %0, %i.fo
  %bound1 = icmp ult ptr %1, %i.fm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i43.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck153
  %n.vec155 = and i64 %wide.trip.count.i42, 2147483640 ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index157 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load158 = load <4 x float>, ptr %i.fp, align 4, !alias.scope !88
  %wide.load159 = load <4 x float>, ptr %i.fq, align 4, !alias.scope !88
  %i.fr = fadd <4 x float> %wide.load158, splat (float 3.840000e+02)
  %i.fs = fadd <4 x float> %wide.load159, splat (float 3.840000e+02)
  %i.ft = bitcast <4 x float> %i.fr to <4 x i32>  ; 2 uses
  %i.fu = bitcast <4 x float> %i.fs to <4 x i32>  ; 2 uses
  %i.fv = add <4 x i32> %i.ft, splat (i32 -1136656384) ; 2 uses
  %i.fw = add <4 x i32> %i.fu, splat (i32 -1136656384) ; 2 uses
  %i.fx = ashr <4 x i32> %i.fv, splat (i32 31)
  %i.fy = ashr <4 x i32> %i.fw, splat (i32 31)
  %i.fz = xor <4 x i32> %i.fx, %i.fv
  %i.ga = xor <4 x i32> %i.fy, %i.fw
  %i.gb = sub <4 x i32> splat (i32 32767), %i.fz
  %i.gc = sub <4 x i32> splat (i32 32767), %i.ga
  %i.gd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gb, <4 x i32> zeroinitializer)
  %i.ge = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gc, <4 x i32> zeroinitializer)
  %i.gf = xor <4 x i32> %i.gd, %i.ft
  %i.gg = xor <4 x i32> %i.ge, %i.fu
  %i.gh = trunc <4 x i32> %i.gf to <4 x i16>
  %i.gi = trunc <4 x i32> %i.gg to <4 x i16>
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index157 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store <4 x i16> %i.gh, ptr %i.gj, align 2, !alias.scope !89, !noalias !88
  store <4 x i16> %i.gi, ptr %i.gk, align 2, !alias.scope !89, !noalias !88
  %index.next160 = add nuw i64 %index157, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.gl, label %middle.block161, label %vector.body156, !llvm.loop !68

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %n.vec155, %wide.trip.count.i42
  br i1 %cmp.n162, label %iter.check, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %vector.memcheck153, %.lr.ph.preheader.i41, %middle.block161
  %indvars.iv.i44.ph = phi i64 [ 0, %vector.memcheck153 ], [ 0, %.lr.ph.preheader.i41 ], [ %n.vec155, %middle.block161 ] ; 5 uses
  %xtraiter255 = and i64 %wide.trip.count.i42, 1
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph.i43.prol.loopexit, label %.lr.ph.i43.prol

.lr.ph.i43.prol:                                  ; preds = %.lr.ph.i43.preheader
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i44.ph
  %i.gn = load float, ptr %i.gm, align 4
  %i.go = fadd float %i.gn, 3.840000e+02
  %i.gp = bitcast float %i.go to i32              ; 2 uses
  %i.gq = add i32 %i.gp, -1136656384              ; 2 uses
  %.neg.i45.prol = ashr i32 %i.gq, 31
  %i.gr = xor i32 %.neg.i45.prol, %i.gq
  %i.gs = sub i32 32767, %i.gr
  %i.gt = tail call i32 @llvm.smin.i32(i32 %i.gs, i32 0)
  %i.gu = xor i32 %i.gt, %i.gp
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i44.ph
  store i16 %i.gv, ptr %i.gw, align 2
  %indvars.iv.next.i46.prol = or disjoint i64 %indvars.iv.i44.ph, 1
  br label %.lr.ph.i43.prol.loopexit

.lr.ph.i43.prol.loopexit:                         ; preds = %.lr.ph.i43.prol, %.lr.ph.i43.preheader
  %indvars.iv.i44.unr = phi i64 [ %indvars.iv.i44.ph, %.lr.ph.i43.preheader ], [ %indvars.iv.next.i46.prol, %.lr.ph.i43.prol ]
  %i.gx = add nsw i64 %wide.trip.count.i42, -1
  %i.gy = icmp eq i64 %indvars.iv.i44.ph, %i.gx
  br i1 %i.gy, label %iter.check, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i46.1, %.lr.ph.i43 ], [ %indvars.iv.i44.unr, %.lr.ph.i43.prol.loopexit ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i44
  %i.ha = load float, ptr %i.gz, align 4
  %i.hb = fadd float %i.ha, 3.840000e+02
  %i.hc = bitcast float %i.hb to i32              ; 2 uses
  %i.hd = add i32 %i.hc, -1136656384              ; 2 uses
  %.neg.i45 = ashr i32 %i.hd, 31
  %i.he = xor i32 %.neg.i45, %i.hd
  %i.hf = sub i32 32767, %i.he
  %i.hg = tail call i32 @llvm.smin.i32(i32 %i.hf, i32 0)
  %i.hh = xor i32 %i.hg, %i.hc
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i44
  store i16 %i.hi, ptr %i.hj, align 2
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i46
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = fadd float %i.hl, 3.840000e+02
  %i.hn = bitcast float %i.hm to i32              ; 2 uses
  %i.ho = add i32 %i.hn, -1136656384              ; 2 uses
  %.neg.i45.1 = ashr i32 %i.ho, 31
  %i.hp = xor i32 %.neg.i45.1, %i.ho
  %i.hq = sub i32 32767, %i.hp
  %i.hr = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 0)
  %i.hs = xor i32 %i.hr, %i.hn
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i46
  store i16 %i.ht, ptr %i.hu, align 2
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i64 %indvars.iv.next.i46.1, %wide.trip.count.i42
  br i1 %exitcond.not.i47.1, label %iter.check, label %.lr.ph.i43, !llvm.loop !69

iter.check:                                       ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43, %middle.block161
  %min.iters.check165 = icmp ult i32 %2, 4
  br i1 %min.iters.check165, label %.lr.ph.i51.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check166 = icmp ult i32 %2, 16
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check
  %i.hv = and i64 %wide.trip.count.i42, 12
  %n.vec168 = and i64 %wide.trip.count.i42, 2147483632 ; 4 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.ph167, %vector.body169
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next173, %vector.body169 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index170 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %wide.load171 = load <8 x i16>, ptr %i.hw, align 2
  %wide.load172 = load <8 x i16>, ptr %i.hx, align 2
  %i.hy = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load171)
  %i.hz = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load172)
  store <8 x i16> %i.hy, ptr %i.hw, align 2
  store <8 x i16> %i.hz, ptr %i.hx, align 2
  %index.next173 = add nuw i64 %index170, 16      ; 2 uses
  %i.ia = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.ia, label %middle.block174, label %vector.body169, !llvm.loop !70

middle.block174:                                  ; preds = %vector.body169
  %cmp.n175 = icmp eq i64 %n.vec168, %wide.trip.count.i42
  br i1 %cmp.n175, label %SDL_Convert_F32_to_S8_Scalar.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block174
  %min.epilog.iters.check = icmp eq i64 %i.hv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i51.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec168, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %wide.trip.count.i42, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index177 ; 2 uses
  %wide.load178 = load <4 x i16>, ptr %i.ib, align 2
  %i.ic = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load178)
  store <4 x i16> %i.ic, ptr %i.ib, align 2
  %index.next179 = add nuw i64 %index177, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next179, %n.vec176
  br i1 %i.id, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %n.vec176, %wide.trip.count.i42
  br i1 %cmp.n180, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i52.ph = phi i64 [ 0, %iter.check ], [ %n.vec168, %vec.epilog.iter.check ], [ %n.vec176, %vec.epilog.middle.block ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i53, %.lr.ph.i51 ], [ %indvars.iv.i52.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i52 ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2
  %i.ig = tail call i16 @llvm.bswap.i16(i16 %i.if)
  store i16 %i.ig, ptr %i.ie, align 2
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i42
  br i1 %exitcond.not.i54, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i51, !llvm.loop !72

bb.f:                                             ; preds = %bb.a
  %i.ih = icmp sgt i32 %2, 0
  br i1 %i.ih, label %.lr.ph.preheader.i55, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i55:                             ; preds = %bb.f
  %wide.trip.count.i56 = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check138 = icmp ult i32 %2, 8
  %i.ii = sub i64 %4, %5
  %diff.check136 = icmp ugt i64 %i.ii, -32
  %or.cond = or i1 %min.iters.check138, %diff.check136
  br i1 %or.cond, label %.lr.ph.i57.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph.preheader.i55
  %n.vec140 = and i64 %wide.trip.count.i56, 2147483640 ; 3 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next145, %vector.body141 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index142 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load143 = load <4 x i32>, ptr %i.ij, align 4 ; 2 uses
  %wide.load144 = load <4 x i32>, ptr %i.ik, align 4 ; 2 uses
  %i.il = add <4 x i32> %wide.load143, splat (i32 260046848) ; 2 uses
  %i.im = add <4 x i32> %wide.load144, splat (i32 260046848) ; 2 uses
  %i.in = add <4 x i32> %wide.load143, splat (i32 1082130432) ; 2 uses
  %i.io = add <4 x i32> %wide.load144, splat (i32 1082130432) ; 2 uses
  %i.ip = xor <4 x i32> %i.il, %i.in
  %i.iq = xor <4 x i32> %i.im, %i.io
  %i.ir = icmp slt <4 x i32> %i.ip, zeroinitializer
  %i.is = icmp slt <4 x i32> %i.iq, zeroinitializer
  %i.it = select <4 x i1> %i.ir, <4 x i32> %i.in, <4 x i32> zeroinitializer ; 2 uses
  %i.iu = select <4 x i1> %i.is, <4 x i32> %i.io, <4 x i32> zeroinitializer ; 2 uses
  %i.iv = sub <4 x i32> %i.il, %i.it
  %i.iw = sub <4 x i32> %i.im, %i.iu
  %i.ix = bitcast <4 x i32> %i.iv to <4 x float>
  %i.iy = bitcast <4 x i32> %i.iw to <4 x float>
  %i.iz = fptosi <4 x float> %i.ix to <4 x i32>
  %i.ja = fptosi <4 x float> %i.iy to <4 x i32>
  %i.jb = ashr <4 x i32> %i.it, splat (i32 31)
  %i.jc = ashr <4 x i32> %i.iu, splat (i32 31)
  %i.jd = xor <4 x i32> %i.jb, %i.iz
  %i.je = xor <4 x i32> %i.jc, %i.ja
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index142 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jd, ptr %i.jf, align 4
  store <4 x i32> %i.je, ptr %i.jg, align 4
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.jh = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.jh, label %middle.block146, label %vector.body141, !llvm.loop !73

middle.block146:                                  ; preds = %vector.body141
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count.i56
  br i1 %cmp.n147, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %.lr.ph.preheader.i55, %middle.block146
  %indvars.iv.i58.ph = phi i64 [ 0, %.lr.ph.preheader.i55 ], [ %n.vec140, %middle.block146 ]
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %.lr.ph.i57
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i57 ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i58
  %i.jj = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jk = add i32 %i.jj, 260046848                ; 2 uses
  %i.jl = add i32 %i.jj, 1082130432               ; 2 uses
  %i.jm = xor i32 %i.jk, %i.jl
  %isneg.i = icmp slt i32 %i.jm, 0
  %i.jn = select i1 %isneg.i, i32 %i.jl, i32 0    ; 2 uses
  %i.jo = sub i32 %i.jk, %i.jn
  %i.jp = bitcast i32 %i.jo to float
  %i.jq = fptosi float %i.jp to i32
  %.neg.i59 = ashr i32 %i.jn, 31
  %i.jr = xor i32 %.neg.i59, %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i58
  store i32 %i.jr, ptr %i.js, align 4
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i56
  br i1 %exitcond.not.i61, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i57, !llvm.loop !74

bb.g:                                             ; preds = %bb.a
  %i.jt = icmp sgt i32 %2, 0
  br i1 %i.jt, label %.lr.ph.preheader.i62, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i62:                             ; preds = %bb.g
  %wide.trip.count.i63 = zext nneg i32 %2 to i64  ; 6 uses
  %min.iters.check112 = icmp ult i32 %2, 8
  %i.ju = sub i64 %4, %5
  %diff.check110 = icmp ugt i64 %i.ju, -32
  %or.cond245 = or i1 %min.iters.check112, %diff.check110
  br i1 %or.cond245, label %.lr.ph.i64.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.preheader.i62
  %n.vec114 = and i64 %wide.trip.count.i63, 2147483640 ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index116 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load117 = load <4 x i32>, ptr %i.jv, align 4 ; 2 uses
  %wide.load118 = load <4 x i32>, ptr %i.jw, align 4 ; 2 uses
  %i.jx = add <4 x i32> %wide.load117, splat (i32 260046848) ; 2 uses
  %i.jy = add <4 x i32> %wide.load118, splat (i32 260046848) ; 2 uses
  %i.jz = add <4 x i32> %wide.load117, splat (i32 1082130432) ; 2 uses
  %i.ka = add <4 x i32> %wide.load118, splat (i32 1082130432) ; 2 uses
  %i.kb = xor <4 x i32> %i.jx, %i.jz
  %i.kc = xor <4 x i32> %i.jy, %i.ka
  %i.kd = icmp slt <4 x i32> %i.kb, zeroinitializer
  %i.ke = icmp slt <4 x i32> %i.kc, zeroinitializer
  %i.kf = select <4 x i1> %i.kd, <4 x i32> %i.jz, <4 x i32> zeroinitializer ; 2 uses
  %i.kg = select <4 x i1> %i.ke, <4 x i32> %i.ka, <4 x i32> zeroinitializer ; 2 uses
  %i.kh = sub <4 x i32> %i.jx, %i.kf
  %i.ki = sub <4 x i32> %i.jy, %i.kg
  %i.kj = bitcast <4 x i32> %i.kh to <4 x float>
  %i.kk = bitcast <4 x i32> %i.ki to <4 x float>
  %i.kl = fptosi <4 x float> %i.kj to <4 x i32>
  %i.km = fptosi <4 x float> %i.kk to <4 x i32>
  %i.kn = ashr <4 x i32> %i.kf, splat (i32 31)
  %i.ko = ashr <4 x i32> %i.kg, splat (i32 31)
  %i.kp = xor <4 x i32> %i.kn, %i.kl
  %i.kq = xor <4 x i32> %i.ko, %i.km
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index116 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <4 x i32> %i.kp, ptr %i.kr, align 4
  store <4 x i32> %i.kq, ptr %i.ks, align 4
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.kt, label %middle.block120, label %vector.body115, !llvm.loop !75

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %wide.trip.count.i63
  br i1 %cmp.n121, label %.lr.ph.i73.preheader, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.lr.ph.preheader.i62, %middle.block120
  %indvars.iv.i65.ph = phi i64 [ 0, %.lr.ph.preheader.i62 ], [ %n.vec114, %middle.block120 ]
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i68, %.lr.ph.i64 ], [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i65
  %i.kv = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.kw = add i32 %i.kv, 260046848                ; 2 uses
  %i.kx = add i32 %i.kv, 1082130432               ; 2 uses
  %i.ky = xor i32 %i.kw, %i.kx
  %isneg.i66 = icmp slt i32 %i.ky, 0
  %i.kz = select i1 %isneg.i66, i32 %i.kx, i32 0  ; 2 uses
  %i.la = sub i32 %i.kw, %i.kz
  %i.lb = bitcast i32 %i.la to float
  %i.lc = fptosi float %i.lb to i32
  %.neg.i67 = ashr i32 %i.kz, 31
  %i.ld = xor i32 %.neg.i67, %i.lc
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i65
  store i32 %i.ld, ptr %i.le, align 4
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.next.i68, %wide.trip.count.i63
  br i1 %exitcond.not.i69, label %.lr.ph.i73.preheader, label %.lr.ph.i64, !llvm.loop !76

.lr.ph.i73.preheader:                             ; preds = %.lr.ph.i64, %middle.block120
  %min.iters.check124 = icmp ult i32 %2, 8
  br i1 %min.iters.check124, label %.lr.ph.i73.preheader252, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i73.preheader
  %n.vec126 = and i64 %wide.trip.count.i63, 2147483640 ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body127 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index128 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %wide.load129 = load <4 x i32>, ptr %i.lf, align 4
  %wide.load130 = load <4 x i32>, ptr %i.lg, align 4
  %i.lh = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load129)
  %i.li = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load130)
  store <4 x i32> %i.lh, ptr %i.lf, align 4
  store <4 x i32> %i.li, ptr %i.lg, align 4
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.lj, label %middle.block132, label %vector.body127, !llvm.loop !77

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %n.vec126, %wide.trip.count.i63
  br i1 %cmp.n133, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i73.preheader252

.lr.ph.i73.preheader252:                          ; preds = %.lr.ph.i73.preheader, %middle.block132
  %indvars.iv.i74.ph = phi i64 [ 0, %.lr.ph.i73.preheader ], [ %n.vec126, %middle.block132 ]
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader252, %.lr.ph.i73
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %.lr.ph.i73 ], [ %indvars.iv.i74.ph, %.lr.ph.i73.preheader252 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i74 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = tail call i32 @llvm.bswap.i32(i32 %i.ll)
  store i32 %i.lm, ptr %i.lk, align 4
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %wide.trip.count.i63
  br i1 %exitcond.not.i76, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i73, !llvm.loop !78

bb.h:                                             ; preds = %bb.a
  %i.ln = icmp sgt i32 %2, 0
  br i1 %i.ln, label %.lr.ph.preheader.i77, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i77:                             ; preds = %bb.h
  %wide.trip.count.i78 = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.lo = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.lo, -32
  %or.cond246 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond246, label %.lr.ph.i79.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i77
  %n.vec = and i64 %wide.trip.count.i78, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load = load <4 x i32>, ptr %i.lp, align 4
  %wide.load108 = load <4 x i32>, ptr %i.lq, align 4
  %i.lr = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ls = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load108)
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x i32> %i.lr, ptr %i.lt, align 4
  store <4 x i32> %i.ls, ptr %i.lu, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i78
  br i1 %cmp.n, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %.lr.ph.preheader.i77, %middle.block
  %indvars.iv.i80.ph = phi i64 [ 0, %.lr.ph.preheader.i77 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i78, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i79.prol.loopexit, label %.lr.ph.i79.prol

.lr.ph.i79.prol:                                  ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79.prol
  %indvars.iv.i80.prol = phi i64 [ %indvars.iv.next.i81.prol, %.lr.ph.i79.prol ], [ %indvars.iv.i80.ph, %.lr.ph.i79.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i79.prol ], [ 0, %.lr.ph.i79.preheader ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i80.prol
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = tail call i32 @llvm.bswap.i32(i32 %i.lx)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i80.prol
  store i32 %i.ly, ptr %i.lz, align 4
  %indvars.iv.next.i81.prol = add nuw nsw i64 %indvars.iv.i80.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i79.prol.loopexit, label %.lr.ph.i79.prol, !llvm.loop !80

.lr.ph.i79.prol.loopexit:                         ; preds = %.lr.ph.i79.prol, %.lr.ph.i79.preheader
  %indvars.iv.i80.unr = phi i64 [ %indvars.iv.i80.ph, %.lr.ph.i79.preheader ], [ %indvars.iv.next.i81.prol, %.lr.ph.i79.prol ]
  %i.ma = sub nsw i64 %indvars.iv.i80.ph, %wide.trip.count.i78
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.prol.loopexit, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i81.3, %.lr.ph.i79 ], [ %indvars.iv.i80.unr, %.lr.ph.i79.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i80
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = tail call i32 @llvm.bswap.i32(i32 %i.md)
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i80
  store i32 %i.me, ptr %i.mf, align 4
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i81
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = tail call i32 @llvm.bswap.i32(i32 %i.mh)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i81
  store i32 %i.mi, ptr %i.mj, align 4
  %indvars.iv.next.i81.1 = add nuw nsw i64 %indvars.iv.i80, 2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i81.1
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = tail call i32 @llvm.bswap.i32(i32 %i.ml)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i81.1
  store i32 %i.mm, ptr %i.mn, align 4
  %indvars.iv.next.i81.2 = add nuw nsw i64 %indvars.iv.i80, 3 ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i81.2
  %i.mp = load i32, ptr %i.mo, align 4
  %i.mq = tail call i32 @llvm.bswap.i32(i32 %i.mp)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i81.2
  store i32 %i.mq, ptr %i.mr, align 4
  %indvars.iv.next.i81.3 = add nuw nsw i64 %indvars.iv.i80, 4 ; 2 uses
  %exitcond.not.i82.3 = icmp eq i64 %indvars.iv.next.i81.3, %wide.trip.count.i78
  br i1 %exitcond.not.i82.3, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i79, !llvm.loop !81

SDL_Convert_F32_to_S8_Scalar.exit:                ; preds = %.lr.ph.i79.prol.loopexit, %.lr.ph.i79, %.lr.ph.i73, %.lr.ph.i57, %.lr.ph.i51, %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %.lr.ph.i29, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block132, %middle.block146, %middle.block174, %vec.epilog.middle.block, %middle.block200, %middle.block221, %middle.block242, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ConvertAudioSwapEndian(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  switch i32 %3, label %SDL_Convert_Swap16_Scalar.exit [
    i32 16, label %bb.b
    i32 32, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %iter.check, label %SDL_Convert_Swap16_Scalar.exit

iter.check:                                       ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 8 uses
  %min.iters.check20 = icmp ult i32 %2, 4
  %i.b = sub i64 %4, %5
  %diff.check18 = icmp ugt i64 %i.b, -32
  %or.cond = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i32 %2, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %wide.trip.count.i, 12
  %n.vec23 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.ph22, %vector.body24
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next28, %vector.body24 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load26 = load <8 x i16>, ptr %i.d, align 2
  %wide.load27 = load <8 x i16>, ptr %i.e, align 2
  %i.f = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load26)
  %i.g = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load27)
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index25 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <8 x i16> %i.f, ptr %i.h, align 2
  store <8 x i16> %i.g, ptr %i.i, align 2
  %index.next28 = add nuw i64 %index25, 16        ; 2 uses
  %i.j = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.j, label %middle.block29, label %vector.body24, !llvm.loop !90

middle.block29:                                   ; preds = %vector.body24
  %cmp.n30 = icmp eq i64 %n.vec23, %wide.trip.count.i
  br i1 %cmp.n30, label %SDL_Convert_Swap16_Scalar.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block29
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec23, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index32
  %wide.load33 = load <4 x i16>, ptr %i.k, align 2
  %i.l = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load33)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index32
  store <4 x i16> %i.l, ptr %i.m, align 2
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec31, %wide.trip.count.i
  br i1 %cmp.n35, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec23, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter39 = and i64 %wide.trip.count.i, 3     ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.p = load i16, ptr %i.o, align 2
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.prol
  store i16 %i.q, ptr %i.r, align 2
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !92

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.s = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.w, ptr %i.x, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  store i16 %i.aa, ptr %i.ab, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i16 %i.ae, ptr %i.af, align 2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i16 %i.ai, ptr %i.aj, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i, !llvm.loop !93

bb.c:                                             ; preds = %bb.a
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph.preheader.i6, label %SDL_Convert_Swap16_Scalar.exit

.lr.ph.preheader.i6:                              ; preds = %bb.c
  %wide.trip.count.i7 = zext nneg i32 %2 to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.al = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond37 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond37, label %.lr.ph.i8.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i6
  %n.vec = and i64 %wide.trip.count.i7, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4
  %wide.load16 = load <4 x i32>, ptr %i.an, align 4
  %i.ao = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ap = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load16)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %i.ao, ptr %i.aq, align 4
  store <4 x i32> %i.ap, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i7
  br i1 %cmp.n, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %.lr.ph.preheader.i6, %middle.block
  %indvars.iv.i9.ph = phi i64 [ 0, %.lr.ph.preheader.i6 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i7, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol

.lr.ph.i8.prol:                                   ; preds = %.lr.ph.i8.preheader, %.lr.ph.i8.prol
  %indvars.iv.i9.prol = phi i64 [ %indvars.iv.next.i10.prol, %.lr.ph.i8.prol ], [ %indvars.iv.i9.ph, %.lr.ph.i8.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.prol ], [ 0, %.lr.ph.i8.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i9.prol
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i9.prol
  store i32 %i.av, ptr %i.aw, align 4
  %indvars.iv.next.i10.prol = add nuw nsw i64 %indvars.iv.i9.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.prol.loopexit, label %.lr.ph.i8.prol, !llvm.loop !95

.lr.ph.i8.prol.loopexit:                          ; preds = %.lr.ph.i8.prol, %.lr.ph.i8.preheader
  %indvars.iv.i9.unr = phi i64 [ %indvars.iv.i9.ph, %.lr.ph.i8.preheader ], [ %indvars.iv.next.i10.prol, %.lr.ph.i8.prol ]
  %i.ax = sub nsw i64 %indvars.iv.i9.ph, %wide.trip.count.i7
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10.3, %.lr.ph.i8 ], [ %indvars.iv.i9.unr, %.lr.ph.i8.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i9
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i9
  store i32 %i.bb, ptr %i.bc, align 4
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i10
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i10
  store i32 %i.bf, ptr %i.bg, align 4
  %indvars.iv.next.i10.1 = add nuw nsw i64 %indvars.iv.i9, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i10.1
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i10.1
  store i32 %i.bj, ptr %i.bk, align 4
  %indvars.iv.next.i10.2 = add nuw nsw i64 %indvars.iv.i9, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i10.2
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i10.2
  store i32 %i.bn, ptr %i.bo, align 4
  %indvars.iv.next.i10.3 = add nuw nsw i64 %indvars.iv.i9, 4 ; 2 uses
  %exitcond.not.i11.3 = icmp eq i64 %indvars.iv.next.i10.3, %wide.trip.count.i7
  br i1 %exitcond.not.i11.3, label %SDL_Convert_Swap16_Scalar.exit, label %.lr.ph.i8, !llvm.loop !96

SDL_Convert_Swap16_Scalar.exit:                   ; preds = %.lr.ph.i8.prol.loopexit, %.lr.ph.i8, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block29, %vec.epilog.middle.block, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_ChooseAudioConverters() local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @SDL_ChooseAudioConverters.converters_chosen, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @SDL_ChooseAudioConverters.converters_chosen, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = !{!"branch_weights", i32 4, i32 12}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !3, !4, !5}
!12 = distinct !{!12, !3, !4}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !3, !4, !5}
!17 = distinct !{!17, !3, !4}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !3, !4, !5}
!22 = distinct !{!22, !3, !4}
!23 = distinct !{!23, !3, !4, !5}
!24 = distinct !{!24, !3, !4, !5}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !3, !4}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !3, !4, !5}
!31 = distinct !{!31, !3, !4}
!32 = distinct !{!32, !3, !4, !5}
!33 = distinct !{!33, !3, !4}
!34 = distinct !{!34, !3, !4, !5}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !3, !4}
!37 = distinct !{!37, !3, !4, !5}
!38 = distinct !{!38, !3, !5, !4}
!39 = distinct !{!39, !3, !4, !5}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !3, !4}
!42 = !{!9}
!43 = !{!10}
!44 = !{!14}
!45 = !{!15}
!46 = !{!19}
!47 = !{!20}
!48 = !{!28}
!49 = !{!29}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !3, !4, !5}
!54 = distinct !{!54, !3, !4}
!55 = distinct !{!55, i1 false, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !3, !4, !5}
!59 = distinct !{!59, !3, !4}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !3, !4, !5}
!64 = distinct !{!64, !3, !4}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !3, !4, !5}
!69 = distinct !{!69, !3, !4}
!70 = distinct !{!70, !3, !4, !5}
!71 = distinct !{!71, !3, !4, !5}
end_hunk_1
