Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_filters:bb.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader246

.lr.ph.preheader246:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.ia, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hq, %.lr.ph.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader246 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader246 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !36
  %i.if = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.if, align 4, !tbaa !39
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ig = icmp ult ptr %.0133, %.0138171
  br i1 %i.ig, label %.lr.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.ih, align 4, !tbaa !39
  store float %i.hh, ptr %.0135174, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hm
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ii = icmp slt i32 %.0139181, %i.hk
  br i1 %i.ii, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ij = sub nsw i32 %i.hm, %.0139181
  %.not60.not.i = icmp slt i32 %i.ij, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ik = sub nsw i32 %i.hk, %.0139181            ; 2 uses
  %i.il = sub i32 %i.hm, %i.hk                    ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 4 uses
  %i.in = sext i32 %i.ik to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.in ; 6 uses
  %i.io = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check213 = icmp ult i32 %i.il, 7
  %i.ip = shl nsw i64 %i.in, 2
  %diff.check = icmp ugt i64 %i.ip, -32
  %or.cond237 = select i1 %min.iters.check213, i1 true, i1 %diff.check
  br i1 %or.cond237, label %.lr.ph.i164.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.preheader.i
  %n.vec215 = and i64 %i.io, 8589934584           ; 3 uses
  %i.iq = sub nsw i64 %i.im, %n.vec215
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.ir = sub i64 %i.im, %index217                ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -12
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 -28
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %wide.load218 = load <4 x float>, ptr %i.iu, align 4, !tbaa !54
  %i.iv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ir ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -12
  %i.ix = getelementptr i8, ptr %i.iv, i64 -28
  store <4 x float> %wide.load, ptr %i.iw, align 4, !tbaa !54
  store <4 x float> %wide.load218, ptr %i.ix, align 4, !tbaa !54
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.iy, label %middle.block220, label %vector.body216, !llvm.loop !160

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.io, %n.vec215
  br i1 %cmp.n221, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block220
  %indvars.iv.i165.ph = phi i64 [ %i.im, %.lr.ph.preheader.i ], [ %i.iq, %middle.block220 ] ; 4 uses
  %i.iz = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.iz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !54
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.jb, ptr %gep.i.prol, align 4, !tbaa !54
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !161

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.jc = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.jc, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block220
  %i.jd = icmp sgt i32 %i.ik, 1
  br i1 %i.jd, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.je = add i32 %i.hk, %i.hb
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jg, i1 false), !tbaa !54
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !54
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ji, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jk, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !54
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jm, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !54
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jo, ptr %gep.i.3, align 4, !tbaa !54
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !162

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hh, ptr %.0135174, align 4, !tbaa !54
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.jp = sub nsw i32 %.0139181, %i.hk
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !54
  %i.jt = fadd float %i.hh, %i.js
  store float %i.jt, ptr %i.jr, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ju = sub nsw i32 %.0139181, %i.hk            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.ju, %i.gn
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jv = sub nsw i32 %i.hm, %i.hk
  %.064.i = add nsw i32 %i.jv, 1                  ; 2 uses
  %i.jw = icmp slt i32 %.064.i, %i.ju
  br i1 %i.jw, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jx = sext i32 %.064.i to i64
  %i.jy = shl nsw i64 %i.jx, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jy
  %i.jz = sub i32 %i.hc, %i.hm
  %i.ka = zext i32 %i.jz to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.kc, i1 false), !tbaa !54
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.kd = sext i32 %i.ju to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.kd
  store float %i.hh, ptr %i.ke, align 4, !tbaa !54
  store i32 %.0139181, ptr %i.hl, align 4, !tbaa !39
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.kg = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.gp
  %i.kh = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gu
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa, !llvm.loop !163

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.kj = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gq
  %i.kk = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.kk, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z, !llvm.loop !164

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gl, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.kl = add nsw i32 %.0137.lcssa, %i.co
  %i.km = sext i32 %i.kl to i64                   ; 3 uses
  %i.kn = getelementptr [8 x i8], ptr %.pre, i64 %i.km ; 3 uses
  %i.ko = load i32, ptr %i.j, align 8, !tbaa !147
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.kp ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kn, i64 8     ; 5 uses
  %i.kr = icmp ult ptr %.0187, %i.kq
  br i1 %i.kr, label %.lr.ph191.preheader, label %.loopexit

.lr.ph191.preheader:                              ; preds = %._crit_edge185
  %i.ks = shl nsw i64 %i.km, 3
  %i.kt = add i64 %i.ks, %.pre209
  %i.ku = add i64 %i.kt, 16
  %i.kv = shl nsw i64 %i.kp, 3
  %i.kw = add i64 %i.kv, %.pre209
  %i.kx = tail call i64 @llvm.umax.i64(i64 %i.ku, i64 %i.kw)
  %i.ky = add i64 %i.kx, -9
  %3 = shl nsw i64 %i.km, 3
  %i.kz = add i64 %3, %.pre209
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = lshr i64 %i.la, 3
  %i.lc = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.la, 24
  br i1 %min.iters.check224, label %.lr.ph191.preheader245, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph191.preheader
  %n.vec226 = and i64 %i.lc, 4611686018427387900  ; 3 uses
  %i.ld = shl i64 %n.vec226, 3                    ; 2 uses
  %i.le = getelementptr i8, ptr %.0187, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.kn, i64 %i.ld
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.lg = shl i64 %index228, 3                    ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.0187, i64 %i.lg
  %i.lh = getelementptr i8, ptr %.0187, i64 %i.lg
  %next.gep230 = getelementptr i8, ptr %i.lh, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep229, align 4, !tbaa !21
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep230, align 4, !tbaa !21
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.li, label %middle.block232, label %vector.body227, !llvm.loop !165

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %i.lc, %n.vec226
  br i1 %cmp.n233, label %.loopexit, label %.lr.ph191.preheader245

.lr.ph191.preheader245:                           ; preds = %.lr.ph191.preheader, %middle.block232
  %.0189.ph = phi ptr [ %.0187, %.lr.ph191.preheader ], [ %i.le, %middle.block232 ]
  %.pn188.ph = phi ptr [ %i.kn, %.lr.ph191.preheader ], [ %i.lf, %middle.block232 ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader245, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0189.ph, %.lr.ph191.preheader245 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %.pn188.ph, %.lr.ph191.preheader245 ]
  store i32 0, ptr %.0189, align 4, !tbaa !36
  %i.lj = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.lj, align 4, !tbaa !39
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.lk = icmp ult ptr %.0, %i.kq
  br i1 %i.lk, label %.lr.ph191, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %.lr.ph191, %middle.block232, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear_scaled(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader85

.preheader85:                                     ; preds = %bb.a
  %.not87 = icmp slt i32 %1, 4
  br i1 %.not87, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader85
  %.27586 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.073 = phi ptr [ %0, %bb.b ], [ %.174, %bb.c ] ; 6 uses
  %.072 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !167
  %i.g = load <16 x i8>, ptr %.072, align 1, !tbaa !9 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  %i.x = fmul nnan <4 x float> %i.q, splat (float f0x3B808081)
  %i.y = fmul nnan <4 x float> %i.s, splat (float f0x3B808081)
  %i.z = fmul nnan <4 x float> %i.u, splat (float f0x3B808081)
  %i.aa = fmul nnan <4 x float> %i.w, splat (float f0x3B808081)
  store <4 x float> %i.x, ptr %.073, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store <4 x float> %i.y, ptr %i.ab, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 32
  store <4 x float> %i.z, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.073, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.073, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.072, i64 16
  %.not81 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not81, %i.ag                   ; 2 uses
  %.174 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27590, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %i.bb, %.lr.ph ]
  %i.ai = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ai, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27590 = phi ptr [ %.275, %.lr.ph ], [ %.27586, %.lr.ph.preheader ] ; 4 uses
  %.289 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn88 = phi ptr [ %.27590, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !168
  %i.aj = load i8, ptr %.289, align 1, !tbaa !9
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x3B808081
  store float %i.al, ptr %.pn88, align 4, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3B808081
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn88, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.289, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081
  %i.av = getelementptr inbounds nuw i8, ptr %.pn88, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.289, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn88, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %.289, i64 4 ; 2 uses
  %.275 = getelementptr inbounds nuw i8, ptr %.27590, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.275, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !169

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.bg, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37692 = phi ptr [ %i.bf, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37692) #24, !srcloc !170
  %i.bc = load i8, ptr %.393, align 1, !tbaa !9
  %i.bd = uitofp i8 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x3B808081
  store float %i.be, ptr %.37692, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.37692, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.393, i64 1
  %i.bh = icmp ult ptr %i.bf, %i.b
  br i1 %i.bh, label %.lr.ph94, label %.loopexit, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph94, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_scaled(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %bb.b, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %.not74 = icmp slt i32 %1, 4
  br i1 %.not74, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %.26173 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %0, %bb.b ], [ %.160, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !172
  %i.h = load <4 x float>, ptr %.0, align 1, !tbaa !9
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !9
  %i.m = fmul <4 x float> %i.l, splat (float 2.550000e+02)
end_hunk_0
