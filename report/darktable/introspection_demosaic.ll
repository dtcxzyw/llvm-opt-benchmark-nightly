Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %bound13169 = icmp ult ptr %scevgep3090, %scevgep3052
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %conflict.rdx3171 = or i1 %conflict.rdx3167, %found.conflict3170
  %bound03172 = icmp ult ptr %scevgep3050, %scevgep3096
  %bound13173 = icmp ult ptr %scevgep3094, %scevgep3052
  %found.conflict3174 = and i1 %bound03172, %bound13173
  %conflict.rdx3175 = or i1 %conflict.rdx3171, %found.conflict3174
  %bound03176 = icmp ult ptr %scevgep3050, %scevgep3100
  %bound13177 = icmp ult ptr %scevgep3098, %scevgep3052
  %found.conflict3178 = and i1 %bound03176, %bound13177
  %conflict.rdx3179 = or i1 %conflict.rdx3175, %found.conflict3178
  %bound03180 = icmp ult ptr %scevgep3050, %scevgep3104
  %bound13181 = icmp ult ptr %scevgep3102, %scevgep3052
  %found.conflict3182 = and i1 %bound03180, %bound13181
  %conflict.rdx3183 = or i1 %conflict.rdx3179, %found.conflict3182
  %bound03184 = icmp ult ptr %scevgep3050, %scevgep3108
  %bound13185 = icmp ult ptr %scevgep3106, %scevgep3052
  %found.conflict3186 = and i1 %bound03184, %bound13185
  %conflict.rdx3187 = or i1 %conflict.rdx3183, %found.conflict3186
  %bound03188 = icmp ult ptr %scevgep3050, %scevgep3112
  %bound13189 = icmp ult ptr %scevgep3110, %scevgep3052
  %found.conflict3190 = and i1 %bound03188, %bound13189
  %conflict.rdx3191 = or i1 %conflict.rdx3187, %found.conflict3190
  %bound03192 = icmp ult ptr %scevgep3050, %scevgep3116
  %bound13193 = icmp ult ptr %scevgep3114, %scevgep3052
  %found.conflict3194 = and i1 %bound03192, %bound13193
  %conflict.rdx3195 = or i1 %conflict.rdx3191, %found.conflict3194
  %bound03196 = icmp ult ptr %scevgep3050, %scevgep3120
  %bound13197 = icmp ult ptr %scevgep3118, %scevgep3052
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %conflict.rdx3195, %found.conflict3198
  %bound03200 = icmp ult ptr %scevgep3050, %scevgep3124
  %bound13201 = icmp ult ptr %scevgep3122, %scevgep3052
  %found.conflict3202 = and i1 %bound03200, %bound13201
  %conflict.rdx3203 = or i1 %conflict.rdx3199, %found.conflict3202
  %bound03204 = icmp ult ptr %scevgep3050, %scevgep3128
  %bound13205 = icmp ult ptr %scevgep3126, %scevgep3052
  %found.conflict3206 = and i1 %bound03204, %bound13205
  %conflict.rdx3207 = or i1 %conflict.rdx3203, %found.conflict3206
  %bound03208 = icmp ult ptr %scevgep3050, %scevgep3132
  %bound13209 = icmp ult ptr %scevgep3130, %scevgep3052
  %found.conflict3210 = and i1 %bound03208, %bound13209
  %conflict.rdx3211 = or i1 %conflict.rdx3207, %found.conflict3210
  br i1 %conflict.rdx3211, label %scalar.ph3212.preheader, label %vector.ph3214

vector.ph3214:                                    ; preds = %vector.memcheck3048
  %i.kvr = and i64 %i.kux, 7                      ; 2 uses
  %i.kvs = icmp eq i64 %i.kvr, 0
  %i.kvt = select i1 %i.kvs, i64 8, i64 %i.kvr
  %n.vec3215 = sub nsw i64 %i.kux, %i.kvt         ; 6 uses
  %i.kvu = shl nsw i64 %n.vec3215, 1
  %i.kvv = add nsw i64 %i.kvu, %i.kuu
  %i.kvw = add nsw i64 %n.vec3215, %i.kut
  %i.kvx = add nsw i64 %n.vec3215, %i.kuq
  %i.kvy = add nsw i64 %n.vec3215, %i.kun
  %i.kvz = trunc i64 %n.vec3215 to i32
  %i.kwa = shl i32 %i.kvz, 1
  %i.kwb = add i32 %i.kuc, %i.kwa
  %broadcast.splatinsert3216 = insertelement <8 x i64> poison, i64 %i.kuu, i64 0
  %broadcast.splat3217 = shufflevector <8 x i64> %broadcast.splatinsert3216, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3218 = add nuw nsw <8 x i64> %broadcast.splat3217, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4857 = getelementptr [4 x i8], ptr %i.jfa, i64 %i.kut
  br label %vector.body3219

vector.body3219:                                  ; preds = %vector.body3219, %vector.ph3214
  %index3220 = phi i64 [ 0, %vector.ph3214 ], [ %index.next3262, %vector.body3219 ] ; 5 uses
  %vec.ind3221 = phi <8 x i64> [ %induction3218, %vector.ph3214 ], [ %vec.ind.next3263, %vector.body3219 ] ; 2 uses
  %i.kwc = shl nuw i64 %index3220, 1
  %i.kwd = add nuw i64 %i.kwc, %i.kuu             ; 5 uses
  %i.kwe = add nuw i64 %index3220, %i.kuq         ; 2 uses
  %i.kwf = add nuw i64 %index3220, %i.kun         ; 2 uses
  %gep4858 = getelementptr [4 x i8], ptr %invariant.gep4857, i64 %index3220
  %wide.load3222 = load <8 x float>, ptr %gep4858, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kwg = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %i.kwe
  %wide.load3223 = load <8 x float>, ptr %i.kwg, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwh = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %i.kwe
  %i.kwi = getelementptr inbounds nuw i8, ptr %i.kwh, i64 4
  %wide.load3224 = load <8 x float>, ptr %i.kwi, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3224, %wide.load3223
  %i.kwk = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %i.kwf
  %wide.load3225 = load <8 x float>, ptr %i.kwk, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwl = fadd reassoc nsz arcp contract afn <8 x float> %i.kwj, %wide.load3225
  %i.kwm = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %i.kwf
  %i.kwn = getelementptr inbounds nuw i8, ptr %i.kwm, i64 4
  %wide.load3226 = load <8 x float>, ptr %i.kwn, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwo = fadd reassoc nsz arcp contract afn <8 x float> %i.kwl, %wide.load3226
  %i.kwp = fmul reassoc nsz arcp contract afn <8 x float> %i.kwo, splat (float 2.500000e-01) ; 2 uses
  %i.kwq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3222
  %i.kwr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwq)
  %i.kws = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kwp
  %i.kwt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kws)
  %i.kwu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kwr, %i.kwt
  %i.kwv = select reassoc nsz arcp contract afn <8 x i1> %i.kwu, <8 x float> %i.kwp, <8 x float> %wide.load3222 ; 3 uses
  %i.kww = add nsw i64 %i.kwd, -113               ; 2 uses
  %i.kwx = getelementptr inbounds [4 x i8], ptr %i.kuk, i64 %i.kww
  %wide.vec3227 = load <16 x float>, ptr %i.kwx, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3228 = shufflevector <16 x float> %wide.vec3227, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kwy = add nuw nsw i64 %i.kwd, 113            ; 2 uses
  %i.kwz = getelementptr inbounds nuw [4 x i8], ptr %i.kuk, i64 %i.kwy
  %wide.vec3229 = load <16 x float>, ptr %i.kwz, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3230 = shufflevector <16 x float> %wide.vec3229, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3228, %strided.vec3230
  %i.kxb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxa)
  %i.kxc = fadd reassoc nsz arcp contract afn <8 x float> %i.kxb, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3231 = getelementptr [4 x i8], ptr %i.kuk, <8 x i64> %vec.ind3221 ; 2 uses
  %i.kxd = extractelement <8 x ptr> %wide.gep3231, i64 0 ; 4 uses
  %i.kxe = getelementptr i8, ptr %i.kxd, i64 -1356
  %wide.vec3232 = load <16 x float>, ptr %i.kxe, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3233 = shufflevector <16 x float> %wide.vec3232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3228, %strided.vec3233
  %i.kxg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxf)
  %i.kxh = fadd reassoc nsz arcp contract afn <8 x float> %i.kxc, %i.kxg
  %i.kxi = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.kwd ; 5 uses
  %wide.vec3234 = load <16 x float>, ptr %i.kxi, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3235 = shufflevector <16 x float> %wide.vec3234, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kxj = getelementptr i8, ptr %i.kxi, i64 -904
  %wide.vec3236 = load <16 x float>, ptr %i.kxj, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3237 = shufflevector <16 x float> %wide.vec3236, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3235, %strided.vec3237
  %i.kxl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxk)
  %i.kxm = fadd reassoc nsz arcp contract afn <8 x float> %i.kxh, %i.kxl ; 2 uses
  %i.kxn = add nsw i64 %i.kwd, -111               ; 2 uses
  %i.kxo = getelementptr inbounds [4 x i8], ptr %i.kuk, i64 %i.kxn
  %wide.vec3238 = load <16 x float>, ptr %i.kxo, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3239 = shufflevector <16 x float> %wide.vec3238, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxp = add nuw nsw i64 %i.kwd, 111            ; 2 uses
  %i.kxq = getelementptr inbounds nuw [4 x i8], ptr %i.kuk, i64 %i.kxp
  %wide.vec3240 = load <16 x float>, ptr %i.kxq, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3241 = shufflevector <16 x float> %wide.vec3240, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3239, %strided.vec3241
  %i.kxs = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxr)
  %i.kxt = fadd reassoc nsz arcp contract afn <8 x float> %i.kxs, splat (float f0x3727C5AC) ; 2 uses
  %i.kxu = getelementptr i8, ptr %i.kxd, i64 -1332
  %wide.vec3242 = load <16 x float>, ptr %i.kxu, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3243 = shufflevector <16 x float> %wide.vec3242, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3239, %strided.vec3243
  %i.kxw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxv)
  %i.kxx = fadd reassoc nsz arcp contract afn <8 x float> %i.kxt, %i.kxw
  %i.kxy = getelementptr i8, ptr %i.kxi, i64 -888
  %wide.vec3244 = load <16 x float>, ptr %i.kxy, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3245 = shufflevector <16 x float> %wide.vec3244, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3235, %strided.vec3245
  %i.kya = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxz)
  %i.kyb = fadd reassoc nsz arcp contract afn <8 x float> %i.kxx, %i.kya ; 2 uses
  %i.kyc = getelementptr inbounds nuw i8, ptr %i.kxd, i64 1332
  %wide.vec3246 = load <16 x float>, ptr %i.kyc, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3247 = shufflevector <16 x float> %wide.vec3246, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3241, %strided.vec3247
  %i.kye = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyd)
  %i.kyf = fadd reassoc nsz arcp contract afn <8 x float> %i.kye, %i.kxt
  %i.kyg = getelementptr inbounds nuw i8, ptr %i.kxi, i64 888
  %wide.vec3248 = load <16 x float>, ptr %i.kyg, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3249 = shufflevector <16 x float> %wide.vec3248, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3235, %strided.vec3249
  %i.kyi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyh)
  %i.kyj = fadd reassoc nsz arcp contract afn <8 x float> %i.kyf, %i.kyi ; 2 uses
  %i.kyk = getelementptr inbounds nuw i8, ptr %i.kxd, i64 1356
  %wide.vec3250 = load <16 x float>, ptr %i.kyk, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3251 = shufflevector <16 x float> %wide.vec3250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3230, %strided.vec3251
  %i.kym = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyl)
  %i.kyn = fadd reassoc nsz arcp contract afn <8 x float> %i.kym, %i.kxc
  %i.kyo = getelementptr inbounds nuw i8, ptr %i.kxi, i64 904
  %wide.vec3252 = load <16 x float>, ptr %i.kyo, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3235, %strided.vec3253
  %i.kyq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyp)
  %i.kyr = fadd reassoc nsz arcp contract afn <8 x float> %i.kyn, %i.kyq ; 2 uses
  %i.kys = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.kww
  %wide.vec3254 = load <16 x float>, ptr %i.kys, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3255 = shufflevector <16 x float> %wide.vec3254, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3228, %strided.vec3255
  %i.kyu = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.kxn
  %wide.vec3256 = load <16 x float>, ptr %i.kyu, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3257 = shufflevector <16 x float> %wide.vec3256, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3239, %strided.vec3257
  %i.kyw = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.kxp
  %wide.vec3258 = load <16 x float>, ptr %i.kyw, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3259 = shufflevector <16 x float> %wide.vec3258, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3241, %strided.vec3259
  %i.kyy = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.kwy
  %wide.vec3260 = load <16 x float>, ptr %i.kyy, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3261 = shufflevector <16 x float> %wide.vec3260, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3230, %strided.vec3261
  %i.kza = fmul reassoc nsz arcp contract afn <8 x float> %i.kyz, %i.kxm
  %i.kzb = fmul reassoc nsz arcp contract afn <8 x float> %i.kyr, %i.kyt
  %i.kzc = fadd reassoc nsz arcp contract afn <8 x float> %i.kza, %i.kzb
  %i.kzd = fadd reassoc nsz arcp contract afn <8 x float> %i.kyr, %i.kxm
  %i.kze = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzc, %i.kzd ; 2 uses
  %i.kzf = fmul reassoc nsz arcp contract afn <8 x float> %i.kyx, %i.kyb
  %i.kzg = fmul reassoc nsz arcp contract afn <8 x float> %i.kyv, %i.kyj
  %i.kzh = fadd reassoc nsz arcp contract afn <8 x float> %i.kzf, %i.kzg
  %i.kzi = fadd reassoc nsz arcp contract afn <8 x float> %i.kyj, %i.kyb
  %i.kzj = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzh, %i.kzi
  %i.kzk = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kwv, zeroinitializer
  %i.kzl = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kwv, splat (float 1.000000e+00)
  %i.kzm = select reassoc nsz arcp contract afn <8 x i1> %i.kzl, <8 x float> %i.kwv, <8 x float> splat (float 1.000000e+00)
  %i.kzn = select reassoc nsz arcp contract afn <8 x i1> %i.kzk, <8 x float> %i.kzm, <8 x float> zeroinitializer
  %i.kzo = fsub reassoc nsz arcp contract afn <8 x float> %i.kzj, %i.kze
  %i.kzp = fmul reassoc nsz arcp contract afn <8 x float> %i.kzo, %i.kzn
  %i.kzq = fadd reassoc nsz arcp contract afn <8 x float> %i.kze, %i.kzp
  %i.kzr = fadd reassoc nsz arcp contract afn <8 x float> %i.kzq, %strided.vec3235
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kzr, <8 x ptr> align 4 %wide.gep3231, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3262 = add nuw i64 %index3220, 8     ; 2 uses
  %vec.ind.next3263 = add nuw nsw <8 x i64> %vec.ind3221, splat (i64 16)
  %i.kzs = icmp eq i64 %index.next3262, %n.vec3215
  br i1 %i.kzs, label %scalar.ph3212.preheader, label %vector.body3219, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3212, %.preheader828.i
  %i.kzt = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.kzu = icmp slt i32 %i.kzt, %i.jga
  %indvars.iv.next1034.i = add i32 %indvars.iv1033.i, 112
  %indvars.iv.next1038.i = add i32 %indvars.iv1037.i, 112
  %indvars.iv.next1042.i = add i32 %indvars.iv1041.i, 112
  %indvar.next3061 = add i32 %indvar3060, 1
  br i1 %i.kzu, label %.preheader828.i, label %.preheader.i543.preheader

.preheader.i543.preheader:                        ; preds = %._crit_edge914.i
  %i.kzv = add i32 %smin1175, -9
  %i.kzw = add i32 %smin1175, -9
  br label %.preheader.i543

scalar.ph3212:                                    ; preds = %scalar.ph3212.preheader, %scalar.ph3212
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i, %scalar.ph3212 ], [ %indvars.iv1045.i.ph, %scalar.ph3212.preheader ] ; 7 uses
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %scalar.ph3212 ], [ %indvars.iv1043.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %indvars.iv1039.i = phi i64 [ %indvars.iv.next1040.i, %scalar.ph3212 ], [ %indvars.iv1039.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %indvars.iv1035.i = phi i64 [ %indvars.iv.next1036.i, %scalar.ph3212 ], [ %indvars.iv1035.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.ldz, %scalar.ph3212 ], [ %.0754907.i.ph, %scalar.ph3212.preheader ]
  %i.kzx = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1043.i
  %i.kzy = load float, ptr %i.kzx, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kzz = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1039.i
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1
  %i.laa = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1035.i
  %indvars.iv.next1036.i = add nuw nsw i64 %indvars.iv1035.i, 1
  %i.lab = load <2 x float>, ptr %i.kzz, align 4, !tbaa !12, !noalias !499
  %i.lac = load <2 x float>, ptr %i.laa, align 4, !tbaa !12, !noalias !499
  %i.lad = shufflevector <2 x float> %i.lac, <2 x float> %i.lab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lae = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lad)
  %i.laf = fmul reassoc nsz arcp contract afn float %i.lae, 2.500000e-01 ; 2 uses
  %i.lag = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzy
  %i.lah = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lag)
  %i.lai = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.laf
  %i.laj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lai)
  %i.lak = fcmp reassoc nsz arcp contract afn olt float %i.lah, %i.laj
  %i.lal = select reassoc nsz arcp contract afn i1 %i.lak, float %i.laf, float %i.kzy ; 3 uses
  %i.lam = add nsw i64 %indvars.iv1045.i, -113    ; 2 uses
  %i.lan = getelementptr inbounds [4 x i8], ptr %i.kuk, i64 %i.lam
  %i.lao = load float, ptr %i.lan, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lap = add nuw nsw i64 %indvars.iv1045.i, 113 ; 2 uses
  %i.laq = getelementptr inbounds nuw [4 x i8], ptr %i.kuk, i64 %i.lap
  %i.lar = load float, ptr %i.laq, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.las = fsub reassoc nsz arcp contract afn float %i.lao, %i.lar
  %i.lat = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.las)
  %i.lau = fadd reassoc nsz arcp contract afn float %i.lat, f0x3727C5AC ; 2 uses
  %i.lav = getelementptr [4 x i8], ptr %i.kuk, i64 %indvars.iv1045.i ; 5 uses
  %i.law = getelementptr i8, ptr %i.lav, i64 -1356
  %i.lax = load float, ptr %i.law, align 4, !tbaa !12, !noalias !499
  %i.lay = fsub reassoc nsz arcp contract afn float %i.lao, %i.lax
  %i.laz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lay)
  %i.lba = fadd reassoc nsz arcp contract afn float %i.lau, %i.laz
  %i.lbb = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %indvars.iv1045.i ; 5 uses
  %i.lbc = load float, ptr %i.lbb, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lbd = getelementptr i8, ptr %i.lbb, i64 -904
  %i.lbe = load float, ptr %i.lbd, align 4, !tbaa !12, !noalias !499
  %i.lbf = fsub reassoc nsz arcp contract afn float %i.lbc, %i.lbe
  %i.lbg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbf)
  %i.lbh = fadd reassoc nsz arcp contract afn float %i.lba, %i.lbg ; 2 uses
  %i.lbi = add nsw i64 %indvars.iv1045.i, -111    ; 2 uses
  %i.lbj = getelementptr inbounds [4 x i8], ptr %i.kuk, i64 %i.lbi
  %i.lbk = load float, ptr %i.lbj, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbl = add nuw nsw i64 %indvars.iv1045.i, 111 ; 2 uses
  %i.lbm = getelementptr inbounds nuw [4 x i8], ptr %i.kuk, i64 %i.lbl
  %i.lbn = load float, ptr %i.lbm, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbo = fsub reassoc nsz arcp contract afn float %i.lbk, %i.lbn
  %i.lbp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbo)
  %i.lbq = fadd reassoc nsz arcp contract afn float %i.lbp, f0x3727C5AC ; 2 uses
  %i.lbr = getelementptr i8, ptr %i.lav, i64 -1332
  %i.lbs = load float, ptr %i.lbr, align 4, !tbaa !12, !noalias !499
  %i.lbt = fsub reassoc nsz arcp contract afn float %i.lbk, %i.lbs
  %i.lbu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbt)
  %i.lbv = fadd reassoc nsz arcp contract afn float %i.lbq, %i.lbu
  %i.lbw = getelementptr i8, ptr %i.lbb, i64 -888
  %i.lbx = load float, ptr %i.lbw, align 4, !tbaa !12, !noalias !499
  %i.lby = fsub reassoc nsz arcp contract afn float %i.lbc, %i.lbx
  %i.lbz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lby)
  %i.lca = fadd reassoc nsz arcp contract afn float %i.lbv, %i.lbz ; 2 uses
  %i.lcb = getelementptr inbounds nuw i8, ptr %i.lav, i64 1332
  %i.lcc = load float, ptr %i.lcb, align 4, !tbaa !12, !noalias !499
  %i.lcd = fsub reassoc nsz arcp contract afn float %i.lbn, %i.lcc
  %i.lce = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcd)
  %i.lcf = fadd reassoc nsz arcp contract afn float %i.lce, %i.lbq
  %i.lcg = getelementptr inbounds nuw i8, ptr %i.lbb, i64 888
  %i.lch = load float, ptr %i.lcg, align 4, !tbaa !12, !noalias !499
  %i.lci = fsub reassoc nsz arcp contract afn float %i.lbc, %i.lch
  %i.lcj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lci)
  %i.lck = fadd reassoc nsz arcp contract afn float %i.lcf, %i.lcj ; 2 uses
  %i.lcl = getelementptr inbounds nuw i8, ptr %i.lav, i64 1356
  %i.lcm = load float, ptr %i.lcl, align 4, !tbaa !12, !noalias !499
  %i.lcn = fsub reassoc nsz arcp contract afn float %i.lar, %i.lcm
  %i.lco = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcn)
  %i.lcp = fadd reassoc nsz arcp contract afn float %i.lco, %i.lau
  %i.lcq = getelementptr inbounds nuw i8, ptr %i.lbb, i64 904
  %i.lcr = load float, ptr %i.lcq, align 4, !tbaa !12, !noalias !499
  %i.lcs = fsub reassoc nsz arcp contract afn float %i.lbc, %i.lcr
  %i.lct = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcs)
  %i.lcu = fadd reassoc nsz arcp contract afn float %i.lcp, %i.lct ; 2 uses
  %i.lcv = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lam
  %i.lcw = load float, ptr %i.lcv, align 4, !tbaa !12, !noalias !499
  %i.lcx = fsub reassoc nsz arcp contract afn float %i.lao, %i.lcw
  %i.lcy = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lbi
  %i.lcz = load float, ptr %i.lcy, align 4, !tbaa !12, !noalias !499
  %i.lda = fsub reassoc nsz arcp contract afn float %i.lbk, %i.lcz
  %i.ldb = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lbl
  %i.ldc = load float, ptr %i.ldb, align 4, !tbaa !12, !noalias !499
  %i.ldd = fsub reassoc nsz arcp contract afn float %i.lbn, %i.ldc
  %i.lde = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lap
  %i.ldf = load float, ptr %i.lde, align 4, !tbaa !12, !noalias !499
  %i.ldg = fsub reassoc nsz arcp contract afn float %i.lar, %i.ldf
  %i.ldh = fmul reassoc nsz arcp contract afn float %i.ldg, %i.lbh
  %i.ldi = fmul reassoc nsz arcp contract afn float %i.lcu, %i.lcx
  %i.ldj = fadd reassoc nsz arcp contract afn float %i.ldh, %i.ldi
  %i.ldk = fadd reassoc nsz arcp contract afn float %i.lcu, %i.lbh
  %i.ldl = fdiv reassoc nsz arcp contract afn float %i.ldj, %i.ldk ; 2 uses
  %i.ldm = fmul reassoc nsz arcp contract afn float %i.ldd, %i.lca
  %i.ldn = fmul reassoc nsz arcp contract afn float %i.lda, %i.lck
  %i.ldo = fadd reassoc nsz arcp contract afn float %i.ldm, %i.ldn
  %i.ldp = fadd reassoc nsz arcp contract afn float %i.lck, %i.lca
  %i.ldq = fdiv reassoc nsz arcp contract afn float %i.ldo, %i.ldp
  %i.ldr = fcmp reassoc nsz arcp contract afn oge float %i.lal, 0.000000e+00
  %i.lds = fcmp reassoc nsz arcp contract afn ole float %i.lal, 1.000000e+00
  %i.ldt = select reassoc nsz arcp contract afn i1 %i.lds, float %i.lal, float 1.000000e+00
  %i.ldu = select reassoc nsz arcp contract afn i1 %i.ldr, float %i.ldt, float 0.000000e+00
  %i.ldv = fsub reassoc nsz arcp contract afn float %i.ldq, %i.ldl
  %i.ldw = fmul reassoc nsz arcp contract afn float %i.ldv, %i.ldu
  %i.ldx = fadd reassoc nsz arcp contract afn float %i.ldl, %i.ldw
  %i.ldy = fadd reassoc nsz arcp contract afn float %i.ldx, %i.lbc
  store float %i.ldy, ptr %i.lav, align 4, !tbaa !12, !noalias !499
  %i.ldz = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1046.i = add nuw nsw i64 %indvars.iv1045.i, 2
  %indvars.iv.next1044.i = add nuw nsw i64 %indvars.iv1043.i, 1
  %i.lea = icmp slt i32 %i.ldz, %i.kla
  br i1 %i.lea, label %scalar.ph3212, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.leb = icmp eq i32 %.0745937.i, 0
  %i.lec = select i1 %i.leb, i32 9, i32 10        ; 4 uses
  %i.led = add nuw nsw i32 %i.lec, %i.jhm         ; 3 uses
  %i.lee = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.lee, i32 -9, i32 -10  ; 2 uses
  %i.lef = add nsw i32 %i.jho, %.neg793.i         ; 2 uses
  %i.leg = icmp slt i32 %i.led, %i.lef
  %or.cond944.i = select i1 %i.jgj, i1 %i.leg, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.leh = add i32 %i.lec, %indvars.iv1058.i
  %i.lei = shl i32 %i.leh, 2
  %i.lej = or disjoint i32 %i.lec, %i.jgn
  %i.lek = add i32 %.neg793.i, %i.jho
  %i.lel = add i32 %i.lek, %i.jhd
  %i.lem = sub i32 %i.lel, %i.lec                 ; 2 uses
  %i.len = zext i32 %i.lem to i64
  %i.leo = add nuw nsw i64 %i.len, 1              ; 2 uses
  %min.iters.check2944 = icmp ult i32 %i.lem, 7
  %n.vec2946 = and i64 %i.leo, 8589934584         ; 5 uses
  %i.lep = shl nuw nsw i64 %n.vec2946, 2
  %i.leq = trunc i64 %n.vec2946 to i32
  %i.ler = add i32 %i.led, %i.leq
  %cmp.n2957 = icmp eq i64 %i.leo, %n.vec2946
  br label %.lr.ph930.i

.preheader.i543:                                  ; preds = %.preheader.i543.preheader, %._crit_edge922.i
  %indvars.iv1051.i = phi i32 [ %indvars.iv.next1052.i, %._crit_edge922.i ], [ 452, %.preheader.i543.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lle, %._crit_edge922.i ], [ 4, %.preheader.i543.preheader ] ; 2 uses
  %i.les = shl i32 %.0744923.i, 2
  %i.let = and i32 %i.les, 28
  %i.leu = or disjoint i32 %i.let, 2
  %i.lev = lshr i32 %.fr1070, %i.leu
  %i.lew = and i32 %i.lev, 1                      ; 5 uses
  %i.lex = or disjoint i32 %i.lew, 4              ; 4 uses
  %i.ley = icmp slt i32 %i.lex, %i.kla
  br i1 %i.ley, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i543
  %i.lez = or disjoint i32 %i.lew, %indvars.iv1051.i
  %i.lfa = sext i32 %i.lez to i64                 ; 5 uses
  %i.lfb = sub i32 %i.kzw, %i.lew                 ; 2 uses
  %i.lfc = lshr i32 %i.lfb, 1
  %narrow4568 = add nuw i32 %i.lfc, 1
  %i.lfd = zext i32 %narrow4568 to i64            ; 2 uses
  %min.iters.check2974 = icmp ult i32 %i.lfb, 16
  br i1 %min.iters.check2974, label %.lr.ph921.i.preheader, label %vector.memcheck2961

.lr.ph921.i.preheader:                            ; preds = %vector.body2980, %vector.memcheck2961, %.lr.ph921.preheader.i
  %indvars.iv1053.i.ph = phi i64 [ %i.lfa, %vector.memcheck2961 ], [ %i.lfa, %.lr.ph921.preheader.i ], [ %i.lfq, %vector.body2980 ]
  %.0743918.i.ph = phi i32 [ %i.lex, %vector.memcheck2961 ], [ %i.lex, %.lr.ph921.preheader.i ], [ %i.lft, %vector.body2980 ]
  br label %.lr.ph921.i

vector.memcheck2961:                              ; preds = %.lr.ph921.preheader.i
  %i.lfe = or disjoint i32 %indvars.iv1051.i, %i.lew
  %i.lff = sext i32 %i.lfe to i64
  %i.lfg = shl nsw i64 %i.lff, 2                  ; 3 uses
  %scevgep2963 = getelementptr i8, ptr %scevgep2962, i64 %i.lfg
  %i.lfh = sub i32 %i.kzv, %i.lew
  %i.lfi = lshr i32 %i.lfh, 1
  %i.lfj = zext nneg i32 %i.lfi to i64
  %i.lfk = shl nuw nsw i64 %i.lfj, 3
  %i.lfl = add nsw i64 %i.lfk, %i.lfg             ; 2 uses
  %scevgep2965 = getelementptr i8, ptr %scevgep2964, i64 %i.lfl
  %scevgep2967 = getelementptr i8, ptr %scevgep2966, i64 %i.lfg
  %scevgep2969 = getelementptr i8, ptr %scevgep2968, i64 %i.lfl
  %bound02970 = icmp ult ptr %scevgep2963, %scevgep2969
  %bound12971 = icmp ult ptr %scevgep2967, %scevgep2965
  %found.conflict2972 = and i1 %bound02970, %bound12971
  br i1 %found.conflict2972, label %.lr.ph921.i.preheader, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.memcheck2961
  %i.lfm = and i64 %i.lfd, 7                      ; 2 uses
  %i.lfn = icmp eq i64 %i.lfm, 0
  %i.lfo = select i1 %i.lfn, i64 8, i64 %i.lfm
  %n.vec2976 = sub nsw i64 %i.lfd, %i.lfo         ; 3 uses
  %i.lfp = shl nsw i64 %n.vec2976, 1
  %i.lfq = add nsw i64 %i.lfp, %i.lfa
  %i.lfr = trunc i64 %n.vec2976 to i32
  %i.lfs = shl i32 %i.lfr, 1
  %i.lft = add i32 %i.lex, %i.lfs
  %broadcast.splatinsert2977 = insertelement <8 x i64> poison, i64 %i.lfa, i64 0
  %broadcast.splat2978 = shufflevector <8 x i64> %broadcast.splatinsert2977, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2979 = add nuw nsw <8 x i64> %broadcast.splat2978, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2980

vector.body2980:                                  ; preds = %vector.body2980, %vector.ph2975
  %index2981 = phi i64 [ 0, %vector.ph2975 ], [ %index.next3043, %vector.body2980 ] ; 2 uses
  %vec.ind2982 = phi <8 x i64> [ %induction2979, %vector.ph2975 ], [ %vec.ind.next3044, %vector.body2980 ] ; 3 uses
  %i.lfu = shl nuw i64 %index2981, 1
  %i.lfv = add nuw i64 %i.lfu, %i.lfa             ; 7 uses
  %i.lfw = getelementptr inbounds nuw [4 x i8], ptr %i.jez, i64 %i.lfv ; 5 uses
  %wide.vec2983 = load <16 x float>, ptr %i.lfw, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2984 = shufflevector <16 x float> %wide.vec2983, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lfx = add nsw i64 %i.lfv, -112               ; 3 uses
  %i.lfy = getelementptr i8, ptr %i.lfw, i64 -452
  %wide.vec2985 = load <16 x float>, ptr %i.lfy, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2986 = shufflevector <16 x float> %wide.vec2985, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfz = getelementptr i8, ptr %i.lfw, i64 -444
  %wide.vec2987 = load <16 x float>, ptr %i.lfz, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2988 = shufflevector <16 x float> %wide.vec2987, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lga = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec2988, %strided.vec2986
  %i.lgb = add nuw nsw i64 %i.lfv, 112            ; 3 uses
  %i.lgc = getelementptr inbounds nuw i8, ptr %i.lfw, i64 444
  %wide.vec2989 = load <16 x float>, ptr %i.lgc, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2990 = shufflevector <16 x float> %wide.vec2989, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgd = fadd reassoc nsz arcp contract afn <8 x float> %i.lga, %strided.vec2990
  %i.lge = getelementptr inbounds nuw i8, ptr %i.lfw, i64 452
  %wide.vec2991 = load <16 x float>, ptr %i.lge, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2992 = shufflevector <16 x float> %wide.vec2991, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgf = fadd reassoc nsz arcp contract afn <8 x float> %i.lgd, %strided.vec2992
  %i.lgg = fmul reassoc nsz arcp contract afn <8 x float> %i.lgf, splat (float 2.500000e-01) ; 2 uses
  %i.lgh = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec2984
  %i.lgi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgh)
  %i.lgj = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.lgg
  %i.lgk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgj)
  %i.lgl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lgi, %i.lgk
  %i.lgm = select reassoc nsz arcp contract afn <8 x i1> %i.lgl, <8 x float> %i.lgg, <8 x float> %strided.vec2984 ; 3 uses
  %i.lgn = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lfv ; 4 uses
  %wide.vec2993 = load <16 x float>, ptr %i.lgn, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2994 = shufflevector <16 x float> %wide.vec2993, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 6 uses
  %i.lgo = getelementptr i8, ptr %i.lgn, i64 -896
  %wide.vec2995 = load <16 x float>, ptr %i.lgo, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2996 = shufflevector <16 x float> %wide.vec2995, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec2996
  %i.lgq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgp)
  %i.lgr = fadd reassoc nsz arcp contract afn <8 x float> %i.lgq, splat (float f0x3727C5AC) ; 2 uses
  %i.lgs = getelementptr inbounds nuw i8, ptr %i.lgn, i64 896
  %wide.vec2997 = load <16 x float>, ptr %i.lgs, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2998 = shufflevector <16 x float> %wide.vec2997, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec2998
  %i.lgu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgt)
  %i.lgv = fadd reassoc nsz arcp contract afn <8 x float> %i.lgu, splat (float f0x3727C5AC) ; 2 uses
  %i.lgw = getelementptr i8, ptr %i.lgn, i64 -8
  %wide.vec2999 = load <16 x float>, ptr %i.lgw, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3000 = shufflevector <16 x float> %wide.vec2999, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3001 = shufflevector <16 x float> %wide.vec2999, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.lgx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec3000
  %i.lgy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgx)
  %i.lgz = fadd reassoc nsz arcp contract afn <8 x float> %i.lgy, splat (float f0x3727C5AC) ; 2 uses
  %i.lha = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lfv
  %i.lhb = getelementptr inbounds nuw i8, ptr %i.lha, i64 4
  %wide.vec3002 = load <16 x float>, ptr %i.lhb, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3003 = shufflevector <16 x float> %wide.vec3002, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3004 = shufflevector <16 x float> %wide.vec3002, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lhc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec3004
  %i.lhd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhc)
  %i.lhe = fadd reassoc nsz arcp contract afn <8 x float> %i.lhd, splat (float f0x3727C5AC) ; 2 uses
  %i.lhf = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lfx
  %wide.vec3005 = load <16 x float>, ptr %i.lhf, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3006 = shufflevector <16 x float> %wide.vec3005, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lhg = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lgb
  %wide.vec3007 = load <16 x float>, ptr %i.lhg, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3008 = shufflevector <16 x float> %wide.vec3007, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lhh = add nsw i64 %i.lfv, -1                 ; 2 uses
  %i.lhi = add nuw nsw i64 %i.lfv, 1              ; 2 uses
  %i.lhj = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.lgm, zeroinitializer
  %i.lhk = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.lgm, splat (float 1.000000e+00)
  %i.lhl = select reassoc nsz arcp contract afn <8 x i1> %i.lhk, <8 x float> %i.lgm, <8 x float> splat (float 1.000000e+00)
  %i.lhm = select reassoc nsz arcp contract afn <8 x i1> %i.lhj, <8 x float> %i.lhl, <8 x float> zeroinitializer ; 2 uses
  %i.lhn = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lfx
  %wide.vec3009 = load <16 x float>, ptr %i.lhn, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3010 = shufflevector <16 x float> %wide.vec3009, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lho = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lgb
  %wide.vec3011 = load <16 x float>, ptr %i.lho, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3012 = shufflevector <16 x float> %wide.vec3011, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3012
  %i.lhq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhp) ; 2 uses
  %i.lhr = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lhh
  %wide.vec3013 = load <16 x float>, ptr %i.lhr, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3014 = shufflevector <16 x float> %wide.vec3013, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhs = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lhi
  %wide.vec3015 = load <16 x float>, ptr %i.lhs, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3016 = shufflevector <16 x float> %wide.vec3015, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lht = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3016
  %i.lhu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lht) ; 2 uses
  %i.lhv = fadd reassoc nsz arcp contract afn <8 x float> %i.lhq, %i.lgr
  %wide.gep3017 = getelementptr [4 x i8], ptr %i.jfk, <8 x i64> %vec.ind2982 ; 2 uses
  %i.lhw = extractelement <8 x ptr> %wide.gep3017, i64 0 ; 4 uses
  %i.lhx = getelementptr i8, ptr %i.lhw, i64 -1344
  %wide.vec3018 = load <16 x float>, ptr %i.lhx, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3019 = shufflevector <16 x float> %wide.vec3018, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lhy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3019
  %i.lhz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhy)
  %i.lia = fadd reassoc nsz arcp contract afn <8 x float> %i.lhv, %i.lhz ; 2 uses
  %i.lib = fadd reassoc nsz arcp contract afn <8 x float> %i.lhq, %i.lgv
  %i.lic = getelementptr inbounds nuw i8, ptr %i.lhw, i64 1344
  %wide.vec3020 = load <16 x float>, ptr %i.lic, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3021 = shufflevector <16 x float> %wide.vec3020, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lid = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3012, %strided.vec3021
  %i.lie = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lid)
  %i.lif = fadd reassoc nsz arcp contract afn <8 x float> %i.lib, %i.lie ; 2 uses
  %i.lig = fadd reassoc nsz arcp contract afn <8 x float> %i.lhu, %i.lgz
  %i.lih = getelementptr i8, ptr %i.lhw, i64 -12
  %wide.vec3022 = load <16 x float>, ptr %i.lih, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3023 = shufflevector <16 x float> %wide.vec3022, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lii = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3023
  %i.lij = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lii)
  %i.lik = fadd reassoc nsz arcp contract afn <8 x float> %i.lig, %i.lij ; 2 uses
  %i.lil = fadd reassoc nsz arcp contract afn <8 x float> %i.lhu, %i.lhe
  %i.lim = getelementptr inbounds nuw i8, ptr %i.lhw, i64 12
  %wide.vec3024 = load <16 x float>, ptr %i.lim, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3025 = shufflevector <16 x float> %wide.vec3024, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lin = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3016, %strided.vec3025
  %i.lio = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lin)
  %i.lip = fadd reassoc nsz arcp contract afn <8 x float> %i.lil, %i.lio ; 2 uses
  %i.liq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3006
  %i.lir = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3012, %strided.vec3008
  %i.lis = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3001
  %i.lit = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3016, %strided.vec3003
  %i.liu = fmul reassoc nsz arcp contract afn <8 x float> %i.lia, %i.lir
  %i.liv = fmul reassoc nsz arcp contract afn <8 x float> %i.lif, %i.liq
  %i.liw = fadd reassoc nsz arcp contract afn <8 x float> %i.liv, %i.liu
  %i.lix = fadd reassoc nsz arcp contract afn <8 x float> %i.lif, %i.lia
  %i.liy = fdiv reassoc nsz arcp contract afn <8 x float> %i.liw, %i.lix ; 2 uses
  %i.liz = fmul reassoc nsz arcp contract afn <8 x float> %i.lip, %i.lis
  %i.lja = fmul reassoc nsz arcp contract afn <8 x float> %i.lik, %i.lit
  %i.ljb = fadd reassoc nsz arcp contract afn <8 x float> %i.liz, %i.lja
  %i.ljc = fadd reassoc nsz arcp contract afn <8 x float> %i.lip, %i.lik
  %i.ljd = fdiv reassoc nsz arcp contract afn <8 x float> %i.ljb, %i.ljc
  %i.lje = fsub reassoc nsz arcp contract afn <8 x float> %i.ljd, %i.liy
  %i.ljf = fmul reassoc nsz arcp contract afn <8 x float> %i.lje, %i.lhm
  %i.ljg = fadd reassoc nsz arcp contract afn <8 x float> %i.liy, %i.ljf
  %i.ljh = fadd reassoc nsz arcp contract afn <8 x float> %i.ljg, %strided.vec2994
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ljh, <8 x ptr> align 4 %wide.gep3017, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !547, !noalias !548
  %i.lji = getelementptr inbounds [4 x i8], ptr %i.jfn, i64 %i.lfx
  %wide.vec3026 = load <16 x float>, ptr %i.lji, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3027 = shufflevector <16 x float> %wide.vec3026, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.ljj = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %i.lgb
  %wide.vec3028 = load <16 x float>, ptr %i.ljj, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3029 = shufflevector <16 x float> %wide.vec3028, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.ljk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3027, %strided.vec3029
  %i.ljl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljk) ; 2 uses
  %i.ljm = getelementptr inbounds [4 x i8], ptr %i.jfn, i64 %i.lhh
  %wide.vec3030 = load <16 x float>, ptr %i.ljm, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3031 = shufflevector <16 x float> %wide.vec3030, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.ljn = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %i.lhi
  %wide.vec3032 = load <16 x float>, ptr %i.ljn, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3033 = shufflevector <16 x float> %wide.vec3032, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.ljo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3031, %strided.vec3033
  %i.ljp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljo) ; 2 uses
  %i.ljq = fadd reassoc nsz arcp contract afn <8 x float> %i.ljl, %i.lgr
  %wide.gep3034 = getelementptr [4 x i8], ptr %i.jfn, <8 x i64> %vec.ind2982 ; 2 uses
  %i.ljr = extractelement <8 x ptr> %wide.gep3034, i64 0 ; 4 uses
  %i.ljs = getelementptr i8, ptr %i.ljr, i64 -1344
  %wide.vec3035 = load <16 x float>, ptr %i.ljs, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3036 = shufflevector <16 x float> %wide.vec3035, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ljt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3027, %strided.vec3036
  %i.lju = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljt)
  %i.ljv = fadd reassoc nsz arcp contract afn <8 x float> %i.ljq, %i.lju ; 2 uses
  %i.ljw = fadd reassoc nsz arcp contract afn <8 x float> %i.ljl, %i.lgv
  %i.ljx = getelementptr inbounds nuw i8, ptr %i.ljr, i64 1344
  %wide.vec3037 = load <16 x float>, ptr %i.ljx, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3038 = shufflevector <16 x float> %wide.vec3037, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ljy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3029, %strided.vec3038
  %i.ljz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ljy)
  %i.lka = fadd reassoc nsz arcp contract afn <8 x float> %i.ljw, %i.ljz ; 2 uses
  %i.lkb = fadd reassoc nsz arcp contract afn <8 x float> %i.ljp, %i.lgz
  %i.lkc = getelementptr i8, ptr %i.ljr, i64 -12
  %wide.vec3039 = load <16 x float>, ptr %i.lkc, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3040 = shufflevector <16 x float> %wide.vec3039, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lkd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3031, %strided.vec3040
  %i.lke = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lkd)
  %i.lkf = fadd reassoc nsz arcp contract afn <8 x float> %i.lkb, %i.lke ; 2 uses
  %i.lkg = fadd reassoc nsz arcp contract afn <8 x float> %i.ljp, %i.lhe
  %i.lkh = getelementptr inbounds nuw i8, ptr %i.ljr, i64 12
  %wide.vec3041 = load <16 x float>, ptr %i.lkh, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3042 = shufflevector <16 x float> %wide.vec3041, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lki = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3033, %strided.vec3042
  %i.lkj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lki)
  %i.lkk = fadd reassoc nsz arcp contract afn <8 x float> %i.lkg, %i.lkj ; 2 uses
  %i.lkl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3027, %strided.vec3006
  %i.lkm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3029, %strided.vec3008
  %i.lkn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3031, %strided.vec3001
  %i.lko = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3033, %strided.vec3003
  %i.lkp = fmul reassoc nsz arcp contract afn <8 x float> %i.ljv, %i.lkm
  %i.lkq = fmul reassoc nsz arcp contract afn <8 x float> %i.lka, %i.lkl
  %i.lkr = fadd reassoc nsz arcp contract afn <8 x float> %i.lkq, %i.lkp
  %i.lks = fadd reassoc nsz arcp contract afn <8 x float> %i.lka, %i.ljv
  %i.lkt = fdiv reassoc nsz arcp contract afn <8 x float> %i.lkr, %i.lks ; 2 uses
  %i.lku = fmul reassoc nsz arcp contract afn <8 x float> %i.lkk, %i.lkn
  %i.lkv = fmul reassoc nsz arcp contract afn <8 x float> %i.lkf, %i.lko
  %i.lkw = fadd reassoc nsz arcp contract afn <8 x float> %i.lku, %i.lkv
  %i.lkx = fadd reassoc nsz arcp contract afn <8 x float> %i.lkk, %i.lkf
  %i.lky = fdiv reassoc nsz arcp contract afn <8 x float> %i.lkw, %i.lkx
  %i.lkz = fsub reassoc nsz arcp contract afn <8 x float> %i.lky, %i.lkt
  %i.lla = fmul reassoc nsz arcp contract afn <8 x float> %i.lkz, %i.lhm
  %i.llb = fadd reassoc nsz arcp contract afn <8 x float> %i.lkt, %i.lla
  %i.llc = fadd reassoc nsz arcp contract afn <8 x float> %i.llb, %strided.vec2994
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.llc, <8 x ptr> align 4 %wide.gep3034, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !547, !noalias !548
  %index.next3043 = add nuw i64 %index2981, 8     ; 2 uses
  %vec.ind.next3044 = add nuw nsw <8 x i64> %vec.ind2982, splat (i64 16)
  %i.lld = icmp eq i64 %index.next3043, %n.vec2976
  br i1 %i.lld, label %.lr.ph921.i.preheader, label %vector.body2980, !llvm.loop !326

._crit_edge922.i:                                 ; preds = %.lr.ph921.i, %.preheader.i543
  %i.lle = add nuw nsw i32 %.0744923.i, 1         ; 2 uses
  %i.llf = icmp slt i32 %i.lle, %i.jga
  %indvars.iv.next1052.i = add i32 %indvars.iv1051.i, 112
  br i1 %i.llf, label %.preheader.i543, label %._crit_edge925.i

.lr.ph921.i:                                      ; preds = %.lr.ph921.i.preheader, %.lr.ph921.i
  %indvars.iv1053.i = phi i64 [ %indvars.iv.next1054.i, %.lr.ph921.i ], [ %indvars.iv1053.i.ph, %.lr.ph921.i.preheader ] ; 9 uses
  %.0743918.i = phi i32 [ %i.lsb, %.lr.ph921.i ], [ %.0743918.i.ph, %.lr.ph921.i.preheader ]
  %i.llg = getelementptr inbounds nuw [4 x i8], ptr %i.jez, i64 %indvars.iv1053.i ; 5 uses
  %i.llh = load float, ptr %i.llg, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lli = add nsw i64 %indvars.iv1053.i, -112    ; 3 uses
  %i.llj = getelementptr i8, ptr %i.llg, i64 -452
  %i.llk = load float, ptr %i.llj, align 4, !tbaa !12, !noalias !499
  %i.lll = getelementptr i8, ptr %i.llg, i64 -444
  %i.llm = load float, ptr %i.lll, align 4, !tbaa !12, !noalias !499
  %i.lln = fadd reassoc nsz arcp contract afn float %i.llm, %i.llk
  %i.llo = add nuw nsw i64 %indvars.iv1053.i, 112 ; 3 uses
  %i.llp = getelementptr inbounds nuw i8, ptr %i.llg, i64 444
  %i.llq = load float, ptr %i.llp, align 4, !tbaa !12, !noalias !499
  %i.llr = fadd reassoc nsz arcp contract afn float %i.lln, %i.llq
  %i.lls = getelementptr inbounds nuw i8, ptr %i.llg, i64 452
  %i.llt = load float, ptr %i.lls, align 4, !tbaa !12, !noalias !499
  %i.llu = fadd reassoc nsz arcp contract afn float %i.llr, %i.llt
  %i.llv = fmul reassoc nsz arcp contract afn float %i.llu, 2.500000e-01 ; 2 uses
  %i.llw = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.llh
  %i.llx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.llw)
  %i.lly = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.llv
  %i.llz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lly)
  %i.lma = fcmp reassoc nsz arcp contract afn olt float %i.llx, %i.llz
  %i.lmb = select reassoc nsz arcp contract afn i1 %i.lma, float %i.llv, float %i.llh ; 3 uses
  %i.lmc = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %indvars.iv1053.i ; 4 uses
  %i.lmd = load float, ptr %i.lmc, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lme = getelementptr i8, ptr %i.lmc, i64 -896
  %i.lmf = getelementptr inbounds nuw i8, ptr %i.lmc, i64 896
  %i.lmg = getelementptr i8, ptr %i.lmc, i64 -8
  %indvars.iv.next1054.i = add nuw nsw i64 %indvars.iv1053.i, 2 ; 2 uses
  %i.lmh = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %indvars.iv.next1054.i
  %i.lmi = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lli
  %i.lmj = load float, ptr %i.lmi, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmk = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.llo
  %i.lml = load float, ptr %i.lmk, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lmm = add nsw i64 %indvars.iv1053.i, -1      ; 3 uses
  %i.lmn = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lmm
  %i.lmo = load float, ptr %i.lmn, align 4, !tbaa !12, !noalias !499
  %i.lmp = add nuw nsw i64 %indvars.iv1053.i, 1   ; 3 uses
  %i.lmq = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lmp
  %i.lmr = load float, ptr %i.lmq, align 4, !tbaa !12, !noalias !499
  %i.lms = fcmp reassoc nsz arcp contract afn oge float %i.lmb, 0.000000e+00
  %i.lmt = fcmp reassoc nsz arcp contract afn ole float %i.lmb, 1.000000e+00
  %i.lmu = select reassoc nsz arcp contract afn i1 %i.lmt, float %i.lmb, float 1.000000e+00
  %i.lmv = select reassoc nsz arcp contract afn i1 %i.lms, float %i.lmu, float 0.000000e+00
  %i.lmw = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lli
  %i.lmx = load float, ptr %i.lmw, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lmy = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.llo
  %i.lmz = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lmm
  %i.lna = load float, ptr %i.lmz, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lnb = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lmp
  %i.lnc = load float, ptr %i.lnb, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lnd = getelementptr [4 x i8], ptr %i.jfk, i64 %indvars.iv1053.i ; 5 uses
  %i.lne = getelementptr i8, ptr %i.lnd, i64 -1344
  %i.lnf = load float, ptr %i.lne, align 4, !tbaa !12, !noalias !499
  %i.lng = getelementptr inbounds nuw i8, ptr %i.lnd, i64 1344
  %i.lnh = getelementptr i8, ptr %i.lnd, i64 -12
  %i.lni = load float, ptr %i.lnh, align 4, !tbaa !12, !noalias !499
  %i.lnj = getelementptr inbounds nuw i8, ptr %i.lnd, i64 12
  %i.lnk = load float, ptr %i.lnj, align 4, !tbaa !12, !noalias !499
  %i.lnl = getelementptr inbounds [4 x i8], ptr %i.jfn, i64 %i.lli
  %i.lnm = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %i.llo
  %i.lnn = load float, ptr %i.lnm, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lno = getelementptr inbounds [4 x i8], ptr %i.jfn, i64 %i.lmm
  %i.lnp = load float, ptr %i.lno, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lnq = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %i.lmp
  %i.lnr = load float, ptr %i.lnq, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lns = getelementptr [4 x i8], ptr %i.jfn, i64 %indvars.iv1053.i ; 5 uses
  %i.lnt = getelementptr i8, ptr %i.lns, i64 -1344
  %i.lnu = getelementptr inbounds nuw i8, ptr %i.lns, i64 1344
  %i.lnv = load float, ptr %i.lnu, align 4, !tbaa !12, !noalias !499
  %i.lnw = getelementptr i8, ptr %i.lns, i64 -12
  %i.lnx = load float, ptr %i.lnw, align 4, !tbaa !12, !noalias !499
  %i.lny = getelementptr inbounds nuw i8, ptr %i.lns, i64 12
  %i.lnz = load float, ptr %i.lny, align 4, !tbaa !12, !noalias !499
  %i.loa = load float, ptr %i.lme, align 4, !tbaa !12, !noalias !499
  %i.lob = fsub reassoc nsz arcp contract afn float %i.lmd, %i.loa
  %i.loc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lob)
  %i.lod = fadd reassoc nsz arcp contract afn float %i.loc, f0x3727C5AC ; 2 uses
  %i.loe = load float, ptr %i.lmf, align 4, !tbaa !12, !noalias !499
  %i.lof = fsub reassoc nsz arcp contract afn float %i.lmd, %i.loe
  %i.log = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lof)
  %i.loh = fadd reassoc nsz arcp contract afn float %i.log, f0x3727C5AC
  %i.loi = load float, ptr %i.lmg, align 4, !tbaa !12, !noalias !499
  %i.loj = fsub reassoc nsz arcp contract afn float %i.lmd, %i.loi
  %i.lok = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.loj)
  %i.lol = fadd reassoc nsz arcp contract afn float %i.lok, f0x3727C5AC
  %i.lom = load float, ptr %i.lmh, align 4, !tbaa !12, !noalias !499
  %i.lon = fsub reassoc nsz arcp contract afn float %i.lmd, %i.lom
  %i.loo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lon)
  %i.lop = fadd reassoc nsz arcp contract afn float %i.loo, f0x3727C5AC
  %i.loq = load float, ptr %i.lmy, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lor = fsub reassoc nsz arcp contract afn float %i.lmx, %i.loq
  %i.los = fsub reassoc nsz arcp contract afn float %i.lna, %i.lnc
  %i.lot = load float, ptr %i.lnl, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lou = fsub reassoc nsz arcp contract afn float %i.lot, %i.lnn
  %i.lov = insertelement <2 x float> poison, float %i.lor, i64 0
  %i.low = insertelement <2 x float> %i.lov, float %i.lou, i64 1
  %i.lox = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.low) ; 3 uses
  %i.loy = extractelement <2 x float> %i.lox, i64 0
  %i.loz = fadd reassoc nsz arcp contract afn float %i.loy, %i.lod
  %i.lpa = fsub reassoc nsz arcp contract afn float %i.lmx, %i.lnf
  %i.lpb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lpa)
  %i.lpc = fadd reassoc nsz arcp contract afn float %i.loz, %i.lpb ; 2 uses
  %i.lpd = load float, ptr %i.lng, align 4, !tbaa !12, !noalias !499
  %i.lpe = fsub reassoc nsz arcp contract afn float %i.loq, %i.lpd
  %i.lpf = fsub reassoc nsz arcp contract afn float %i.lna, %i.lni
  %i.lpg = fsub reassoc nsz arcp contract afn float %i.lnc, %i.lnk
  %i.lph = fsub reassoc nsz arcp contract afn float %i.lmx, %i.lmj
  %i.lpi = fsub reassoc nsz arcp contract afn float %i.loq, %i.lml
  %i.lpj = fmul reassoc nsz arcp contract afn float %i.lpc, %i.lpi
  %i.lpk = fsub reassoc nsz arcp contract afn float %i.lnp, %i.lnr
  %i.lpl = insertelement <2 x float> poison, float %i.los, i64 0
  %i.lpm = insertelement <2 x float> %i.lpl, float %i.lpk, i64 1
  %i.lpn = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lpm) ; 2 uses
  %i.lpo = extractelement <2 x float> %i.lox, i64 1
  %i.lpp = fadd reassoc nsz arcp contract afn float %i.lpo, %i.lod
  %i.lpq = load float, ptr %i.lnt, align 4, !tbaa !12, !noalias !499
  %i.lpr = fsub reassoc nsz arcp contract afn float %i.lot, %i.lpq
  %i.lps = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lpr)
  %i.lpt = fadd reassoc nsz arcp contract afn float %i.lpp, %i.lps ; 2 uses
  %i.lpu = insertelement <2 x float> poison, float %i.loh, i64 0
  %i.lpv = shufflevector <2 x float> %i.lpu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lpw = fadd reassoc nsz arcp contract afn <2 x float> %i.lox, %i.lpv
  %i.lpx = fsub reassoc nsz arcp contract afn float %i.lnn, %i.lnv
  %i.lpy = insertelement <2 x float> poison, float %i.lpe, i64 0
  %i.lpz = insertelement <2 x float> %i.lpy, float %i.lpx, i64 1
  %i.lqa = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lpz)
  %i.lqb = fadd reassoc nsz arcp contract afn <2 x float> %i.lpw, %i.lqa ; 2 uses
  %i.lqc = insertelement <2 x float> poison, float %i.lol, i64 0
  %i.lqd = shufflevector <2 x float> %i.lqc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lqe = fadd reassoc nsz arcp contract afn <2 x float> %i.lpn, %i.lqd
  %i.lqf = fsub reassoc nsz arcp contract afn float %i.lnp, %i.lnx
  %i.lqg = insertelement <2 x float> poison, float %i.lpf, i64 0
  %i.lqh = insertelement <2 x float> %i.lqg, float %i.lqf, i64 1
  %i.lqi = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lqh)
  %i.lqj = fadd reassoc nsz arcp contract afn <2 x float> %i.lqe, %i.lqi ; 2 uses
  %i.lqk = insertelement <2 x float> poison, float %i.lop, i64 0
  %i.lql = shufflevector <2 x float> %i.lqk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lqm = fadd reassoc nsz arcp contract afn <2 x float> %i.lpn, %i.lql
  %i.lqn = fsub reassoc nsz arcp contract afn float %i.lnr, %i.lnz
  %i.lqo = insertelement <2 x float> poison, float %i.lpg, i64 0
  %i.lqp = insertelement <2 x float> %i.lqo, float %i.lqn, i64 1
  %i.lqq = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lqp)
  %i.lqr = fadd reassoc nsz arcp contract afn <2 x float> %i.lqm, %i.lqq ; 2 uses
  %i.lqs = fsub reassoc nsz arcp contract afn float %i.lot, %i.lmj
  %i.lqt = fsub reassoc nsz arcp contract afn float %i.lnn, %i.lml
  %i.lqu = insertelement <2 x float> poison, float %i.lna, i64 0
  %i.lqv = insertelement <2 x float> %i.lqu, float %i.lnp, i64 1
  %i.lqw = insertelement <2 x float> poison, float %i.lmo, i64 0
  %i.lqx = shufflevector <2 x float> %i.lqw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lqy = fsub reassoc nsz arcp contract afn <2 x float> %i.lqv, %i.lqx
  %i.lqz = insertelement <2 x float> poison, float %i.lnc, i64 0
  %i.lra = insertelement <2 x float> %i.lqz, float %i.lnr, i64 1
  %i.lrb = insertelement <2 x float> poison, float %i.lmr, i64 0
  %i.lrc = shufflevector <2 x float> %i.lrb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lrd = fsub reassoc nsz arcp contract afn <2 x float> %i.lra, %i.lrc
  %i.lre = fmul reassoc nsz arcp contract afn float %i.lpt, %i.lqt
  %i.lrf = insertelement <2 x float> poison, float %i.lph, i64 0
  %i.lrg = insertelement <2 x float> %i.lrf, float %i.lqs, i64 1
  %i.lrh = fmul reassoc nsz arcp contract afn <2 x float> %i.lqb, %i.lrg
  %i.lri = insertelement <2 x float> poison, float %i.lpj, i64 0
  %i.lrj = insertelement <2 x float> %i.lri, float %i.lre, i64 1
  %i.lrk = fadd reassoc nsz arcp contract afn <2 x float> %i.lrh, %i.lrj
  %i.lrl = insertelement <2 x float> poison, float %i.lpc, i64 0
  %i.lrm = insertelement <2 x float> %i.lrl, float %i.lpt, i64 1
  %i.lrn = fadd reassoc nsz arcp contract afn <2 x float> %i.lqb, %i.lrm
  %i.lro = fdiv reassoc nsz arcp contract afn <2 x float> %i.lrk, %i.lrn ; 2 uses
  %i.lrp = fmul reassoc nsz arcp contract afn <2 x float> %i.lqr, %i.lqy
  %i.lrq = fmul reassoc nsz arcp contract afn <2 x float> %i.lqj, %i.lrd
  %i.lrr = fadd reassoc nsz arcp contract afn <2 x float> %i.lrp, %i.lrq
  %i.lrs = fadd reassoc nsz arcp contract afn <2 x float> %i.lqr, %i.lqj
  %i.lrt = fdiv reassoc nsz arcp contract afn <2 x float> %i.lrr, %i.lrs
  %i.lru = fsub reassoc nsz arcp contract afn <2 x float> %i.lrt, %i.lro
  %i.lrv = insertelement <2 x float> poison, float %i.lmv, i64 0
  %i.lrw = shufflevector <2 x float> %i.lrv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lrx = fmul reassoc nsz arcp contract afn <2 x float> %i.lru, %i.lrw
  %6 = fadd reassoc nsz arcp contract afn <2 x float> %i.lro, %i.lrx
  %7 = insertelement <2 x float> poison, float %i.lmd, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lry = fadd reassoc nsz arcp contract afn <2 x float> %6, %8 ; 2 uses
  %i.lrz = extractelement <2 x float> %i.lry, i64 0
  store float %i.lrz, ptr %i.lnd, align 4, !tbaa !12, !noalias !499
  %i.lsa = extractelement <2 x float> %i.lry, i64 1
  store float %i.lsa, ptr %i.lns, align 4, !tbaa !12, !noalias !499
  %i.lsb = add nuw nsw i32 %.0743918.i, 2         ; 2 uses
  %i.lsc = icmp slt i32 %i.lsb, %i.kla
  br i1 %i.lsc, label %.lr.ph921.i, label %._crit_edge922.i, !llvm.loop !327

._crit_edge935.split.i:                           ; preds = %._crit_edge931.i, %._crit_edge925.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !501
  %i.lsd = add nuw i32 %.0745937.i, 1
  %indvars.iv.next950.i = add i32 %indvars.iv949.i, 92
  %indvars.iv.next1017.i = add i32 %indvars.iv1016.i, 92
  %indvars.iv.next1019.i = add i32 %indvars.iv1018.i, -92
  %indvars.iv.next1059.i = add i32 %indvars.iv1058.i, 92
  br i1 %i.lee, label %._crit_edge939.i, label %bb.ob

.lr.ph930.i:                                      ; preds = %._crit_edge931.i, %.lr.ph930.preheader.i
  %indvars.iv1064.i = phi i32 [ %i.lej, %.lr.ph930.preheader.i ], [ %indvars.iv.next1065.i, %._crit_edge931.i ] ; 2 uses
  %indvars.iv1060.i = phi i32 [ %i.lei, %.lr.ph930.preheader.i ], [ %indvars.iv.next1061.i, %._crit_edge931.i ] ; 2 uses
  %.0739932.i = phi i32 [ %i.jgg, %.lr.ph930.preheader.i ], [ %i.lst, %._crit_edge931.i ]
  %i.lse = sext i32 %indvars.iv1060.i to i64      ; 3 uses
  %i.lsf = zext i32 %indvars.iv1064.i to i64      ; 3 uses
  br i1 %min.iters.check2944, label %scalar.ph2943.preheader, label %vector.ph2945

vector.ph2945:                                    ; preds = %.lr.ph930.i
  %i.lsg = add nuw nsw i64 %n.vec2946, %i.lsf
  %i.lsh = add nsw i64 %i.lep, %i.lse
  %invariant.gep4859 = getelementptr [4 x i8], ptr %i.anw, i64 %i.lse
  br label %vector.body2949

vector.body2949:                                  ; preds = %vector.body2949, %vector.ph2945
  %index2950 = phi i64 [ 0, %vector.ph2945 ], [ %index.next2955, %vector.body2949 ] ; 3 uses
  %i.lsi = add nuw i64 %index2950, %i.lsf         ; 3 uses
  %i.lsj = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lsi
  %wide.load2951 = load <8 x float>, ptr %i.lsj, align 4, !tbaa !12, !noalias !499
  %.idx4569 = shl i64 %index2950, 4
  %gep4860 = getelementptr i8, ptr %invariant.gep4859, i64 %.idx4569
  %i.lsk = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lsi
  %wide.load2952 = load <8 x float>, ptr %i.lsk, align 4, !tbaa !12, !noalias !499
  %i.lsl = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %i.lsi
  %wide.load2953 = load <8 x float>, ptr %i.lsl, align 4, !tbaa !12, !noalias !499
  %i.lsm = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2953, <8 x float> zeroinitializer)
  %i.lsn = fmul reassoc nsz arcp contract afn <8 x float> %i.lsm, %broadcast.splat2948
  %i.lso = shufflevector <8 x float> %wide.load2951, <8 x float> %wide.load2952, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lsp = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lso, <16 x float> zeroinitializer)
  %i.lsq = fmul reassoc nsz arcp contract afn <16 x float> %i.lsp, %i.awh
  %i.lsr = shufflevector <8 x float> %i.lsn, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2954 = shufflevector <16 x float> %i.lsq, <16 x float> %i.lsr, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2954, ptr %gep4860, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %index.next2955 = add nuw i64 %index2950, 8     ; 2 uses
  %i.lss = icmp eq i64 %index.next2955, %n.vec2946
  br i1 %i.lss, label %middle.block2956, label %vector.body2949, !llvm.loop !328

middle.block2956:                                 ; preds = %vector.body2949
  br i1 %cmp.n2957, label %._crit_edge931.i, label %scalar.ph2943.preheader

scalar.ph2943.preheader:                          ; preds = %.lr.ph930.i, %middle.block2956
  %indvars.iv1066.i.ph = phi i64 [ %i.lsf, %.lr.ph930.i ], [ %i.lsg, %middle.block2956 ]
  %indvars.iv1062.i.ph = phi i64 [ %i.lse, %.lr.ph930.i ], [ %i.lsh, %middle.block2956 ]
  %.0738926.i.ph = phi i32 [ %i.led, %.lr.ph930.i ], [ %i.ler, %middle.block2956 ]
  br label %scalar.ph2943

._crit_edge931.i:                                 ; preds = %scalar.ph2943, %middle.block2956
  %i.lst = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.lsu = icmp slt i32 %i.lst, %i.jgi
  %indvars.iv.next1061.i = add i32 %indvars.iv1060.i, %i.aow
  %indvars.iv.next1065.i = add i32 %indvars.iv1064.i, 112
  br i1 %i.lsu, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2943:                                    ; preds = %scalar.ph2943.preheader, %scalar.ph2943
  %indvars.iv1066.i = phi i64 [ %indvars.iv.next1067.i, %scalar.ph2943 ], [ %indvars.iv1066.i.ph, %scalar.ph2943.preheader ] ; 4 uses
  %indvars.iv1062.i = phi i64 [ %indvars.iv.next1063.i, %scalar.ph2943 ], [ %indvars.iv1062.i.ph, %scalar.ph2943.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.ltj, %scalar.ph2943 ], [ %.0738926.i.ph, %scalar.ph2943.preheader ]
  %i.lsv = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %indvars.iv1066.i
  %i.lsw = load float, ptr %i.lsv, align 4, !tbaa !12, !noalias !499
  %i.lsx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lsw, float 0.000000e+00)
  %i.lsy = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %indvars.iv1062.i
  %i.lsz = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %indvars.iv1066.i
  %i.lta = load float, ptr %i.lsz, align 4, !tbaa !12, !noalias !499
  %i.ltb = getelementptr inbounds nuw [4 x i8], ptr %i.jfn, i64 %indvars.iv1066.i
  %i.ltc = load float, ptr %i.ltb, align 4, !tbaa !12, !noalias !499
  %i.ltd = insertelement <4 x float> poison, float %i.lta, i64 0
  %i.lte = insertelement <4 x float> %i.ltd, float %i.ltc, i64 1
  %i.ltf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lsx, i64 0
  %i.ltg = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lte, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>)
  %i.lth = shufflevector <4 x float> %i.ltf, <4 x float> %i.ltg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lti = fmul reassoc nsz arcp contract afn <4 x float> %i.lth, %i.awj
  store <4 x float> %i.lti, ptr %i.lsy, align 4, !tbaa !12, !alias.scope !499, !noalias !500
  %i.ltj = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1063.i = add nsw i64 %indvars.iv1062.i, 4
  %indvars.iv.next1067.i = add nuw nsw i64 %indvars.iv1066.i, 1
  %i.ltk = icmp slt i32 %i.ltj, %i.lef
  br i1 %i.ltk, label %scalar.ph2943, label %._crit_edge931.i, !llvm.loop !329

bb.oh:                                            ; preds = %bb.nx
  %i.ltl = load i32, ptr %i.aog, align 4, !tbaa !139 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 4)
  %i.ltm = icmp slt i32 %i.axe, 8
  %or.cond.i551 = or i1 %i.aoh, %i.ltm
  br i1 %or.cond.i551, label %demosaic_box3.exit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ltn = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %.not.i552 = icmp eq ptr %i.ltn, null
  br i1 %.not.i552, label %bb.oj, label %.preheader1027.preheader.i

bb.oj:                                            ; preds = %bb.oi
  %i.lto = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lto, i64 64) ]
  store ptr %i.lto, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  %i.ltp = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !549 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ltp, i64 64) ]
  store ptr %i.ltp, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  %i.ltq = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.ltr = icmp ne ptr %i.ltq, null
  %i.lts = icmp ne ptr %i.ltp, null
  %or.cond.i.i571 = select i1 %i.ltr, i1 %i.lts, i1 false
  br i1 %or.cond.i.i571, label %.preheader.i.i572, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.ltq) #27, !noalias !549
  tail call void @free(ptr noundef %i.ltp) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i572:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i573 = phi i64 [ %indvars.iv.next.i.i574, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.ltt = trunc nuw nsw i64 %indvars.iv.i.i573 to i32
  %i.ltu = uitofp nsz nneg i32 %i.ltt to double   ; 4 uses
  %i.ltv = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EF0001000100010 ; 3 uses
  %i.ltw = fcmp reassoc nsz arcp contract afn ugt double %i.ltv, 1.867000e-03
  br i1 %i.ltw, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i572
  %i.ltx = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i572
  %i.lty = tail call fast double @llvm.log.f64(double %i.ltv)
  %i.ltz = fmul reassoc nnan nsz arcp contract afn double %i.lty, f0x3FDAAAAAAAAAAAAB
  %i.lua = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.ltz)
  %i.lub = fmul reassoc nnan nsz arcp contract afn double %i.lua, f0x3FF0B60BF5D78812
  %i.luc = fadd reassoc nsz arcp contract afn double %i.lub, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.lud = phi reassoc nsz arcp contract afn double [ %i.ltx, %bb.ol ], [ %i.luc, %bb.om ]
  %i.lue = fptrunc reassoc nsz arcp contract afn double %i.lud to float
  %i.luf = getelementptr inbounds nuw [4 x i8], ptr %i.ltq, i64 %indvars.iv.i.i573
  store float %i.lue, ptr %i.luf, align 4, !tbaa !12, !noalias !549
  %i.lug = fcmp reassoc nsz arcp contract afn ugt double %i.ltv, 3.174600e-02
  br i1 %i.lug, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.luh = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.lui = fmul reassoc nnan nsz arcp contract afn double %i.ltu, f0x3EEEA3850F60F739
  %i.luj = fadd reassoc nnan nsz arcp contract afn double %i.lui, f0x3FA5C99942418271
  %i.luk = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.luj)
  %i.lul = fmul reassoc nnan nsz arcp contract afn double %i.luk, 2.400000e+00
  %i.lum = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lul)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.lun = phi reassoc nsz arcp contract afn double [ %i.luh, %bb.oo ], [ %i.lum, %bb.op ]
  %i.luo = fptrunc reassoc nsz arcp contract afn double %i.lun to float
  %i.lup = getelementptr inbounds nuw [4 x i8], ptr %i.ltp, i64 %indvars.iv.i.i573
  store float %i.luo, ptr %i.lup, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i574 = add nuw nsw i64 %indvars.iv.i.i573, 1 ; 2 uses
  %exitcond.not.i.i575 = icmp eq i64 %indvars.iv.next.i.i574, 65536
  br i1 %exitcond.not.i.i575, label %.preheader1027.preheader.i, label %.preheader.i.i572

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.luq = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.lur = ptrtoaddr ptr %i.luq to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.luq, i64 64) ]
  store ptr %i.luq, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.lus = getelementptr inbounds nuw i8, ptr %i.luq, i64 73984 ; 14 uses
  store ptr %i.lus, ptr %i.aoi, align 8, !tbaa !140, !noalias !551
  %i.lut = getelementptr inbounds nuw i8, ptr %i.luq, i64 147968 ; 6 uses
  store ptr %i.lut, ptr %i.aoj, align 16, !tbaa !140, !noalias !551
  %i.luu = getelementptr inbounds nuw i8, ptr %i.luq, i64 221952 ; 5 uses
  store ptr %i.luu, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.luv = getelementptr inbounds nuw i8, ptr %i.luq, i64 295936 ; 5 uses
  store ptr %i.luv, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.luw = getelementptr inbounds nuw i8, ptr %i.luq, i64 369920 ; 10 uses
  store ptr %i.luw, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.lux = icmp ult i32 %i.ltl, 2
  %i.luy = select i1 %i.lux, i32 %i.ltl, i32 3    ; 2 uses
  %i.luz = tail call i32 @llvm.usub.sat.i32(i32 %i.ltl, i32 2) ; 2 uses
  %i.lva = add nsw i32 %i.axe, -17
end_hunk_0
