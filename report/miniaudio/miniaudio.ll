Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_wav_read_pcm_frames:bb.a
  store i64 %.0, ptr %3, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %ma_wav_get_data_format.exit, %bb.i, %bb.h, %bb.c
  %.1 = phi i32 [ -2, %bb.c ], [ -3, %ma_wav_get_data_format.exit ], [ %spec.select, %bb.i ], [ %spec.select, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -3, 1) i32 @ma_wav_get_data_format(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not32 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not33 = icmp ne ptr %4, null                  ; 2 uses
  %i.a = icmp ne i64 %5, 0
  %or.cond = and i1 %.not33, %i.a
  br i1 %or.cond, label %bb.h, label %ma_zero_memory_default.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %5, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.h, %bb.g
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_channel_map_init_standard.exit, label %bb.i

bb.i:                                             ; preds = %ma_zero_memory_default.exit
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1595
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1630
  %i.g = zext i16 %i.f to i32
  store i32 %i.g, ptr %2, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1631
  store i32 %i.i, ptr %3, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not33, label %bb.p, label %ma_channel_map_init_standard.exit

bb.p:                                             ; preds = %bb.o
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1630 ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = icmp eq i16 %i.k, 0
  %or.cond3.i = or i1 %i.m, %i.n
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.024.i = phi i32 [ %i.r, %.preheader.i ], [ 0, %bb.p ] ; 2 uses
  %.01723.i = phi ptr [ %i.p, %.preheader.i ], [ %4, %bb.p ] ; 2 uses
  %.01822.i = phi i64 [ %i.q, %.preheader.i ], [ %5, %bb.p ]
  %i.o = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.l, i32 noundef %.024.i)
  store i8 %i.o, ptr %.01723.i, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.q = add i64 %.01822.i, -1                    ; 2 uses
  %i.r = add nuw nsw i32 %.024.i, 1               ; 2 uses
  %i.s = icmp samesign uge i32 %i.r, %i.l
  %i.t = icmp eq i64 %i.q, 0
  %or.cond5.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i, !llvm.loop !147

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.p, %bb.o, %ma_zero_memory_default.exit
  %.0 = phi i32 [ -3, %ma_zero_memory_default.exit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1632 ; 11 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul i64 %1, %i.l
  %i.n = and i64 %i.m, 4611686017353646080
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc93 = zext i16 %i.k to i32
  %i.o = udiv i32 1073741823, %.rhs.trunc93
  %.zext94 = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.030 = phi i64 [ %.zext94, %bb.e ], [ %1, %bb.d ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !1633
  switch i16 %i.q, label %bb.ax [
    i16 1, label %bb.g
    i16 2, label %bb.u
    i16 17, label %bb.u
    i16 3, label %bb.x
    i16 6, label %bb.ah
    i16 7, label %bb.ap
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.s = load i16, ptr %i.r, align 2, !tbaa !1634
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.x = load i16, ptr %i.w, align 2, !tbaa !1635
  %i.y = zext i16 %i.x to i32
  %i.z = mul nuw nsw i32 %i.y, %i.t
  %i.aa = lshr exact i32 %i.z, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !1636
  %i.ad = zext i16 %i.ac to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ad, %bb.i ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.j

bb.j:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.ae = zext i16 %i.k to i32                    ; 3 uses
  %i.af = udiv i32 %.0.i.i, %i.ae                 ; 5 uses
  %i.ag = urem i32 %.0.i.i, %i.ae
  %i.ah = icmp samesign uge i32 %.0.i.i, %i.ae
  %.not.i = icmp eq i32 %i.ag, 0
  %or.cond278 = and i1 %i.ah, %.not.i
  br i1 %or.cond278, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit

.preheader.i:                                     ; preds = %bb.j
  %i.ai = udiv i32 4096, %.0.i.i
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = zext nneg i32 %i.af to i64              ; 4 uses
  %i.al = icmp samesign ugt i32 %i.af, 8
  %i.am = shl nuw nsw i32 %i.af, 3
  %i.an = sub nuw nsw i32 64, %i.am               ; 2 uses
  %xtraiter264 = and i64 %i.ak, 3                 ; 3 uses
  %i.ao = add nsw i32 %i.af, -1
  %i.ap = icmp ult i32 %i.ao, 3
  %unroll_iter269 = and i64 %i.ak, 12
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03053.i = phi i64 [ 0, %.preheader.i ], [ %i.gq, %.loopexit.i ] ; 3 uses
  %.03152.i = phi ptr [ %2, %.preheader.i ], [ %i.go, %.loopexit.i ] ; 15 uses
  %.03351.i = phi i64 [ %.030, %.preheader.i ], [ %i.gp, %.loopexit.i ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03351.i, i64 %i.aj)
  %i.aq = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i16, ptr %i.j, align 8, !tbaa !1632
  %i.at = zext i16 %i.as to i64
  %i.au = mul i64 %i.aq, %i.at                    ; 25 uses
  %i.av = mul i64 %i.au, %i.ak
  %i.aw = icmp ugt i64 %i.av, 4096
  br i1 %i.aw, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.af, label %bb.r [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.not50.i.i = icmp eq i64 %i.au, 0
  br i1 %.not50.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %min.iters.check190 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader242, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.au, -8                   ; 4 uses
  %i.ax = shl i64 %n.vec192, 2
  %i.ay = getelementptr i8, ptr %.03152.i, i64 %i.ax
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.az = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03152.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.ba, align 8, !tbaa !9
  %wide.load197 = load <4 x i8>, ptr %i.bb, align 4, !tbaa !9
  %i.bc = uitofp <4 x i8> %wide.load196 to <4 x float>
  %i.bd = uitofp <4 x i8> %wide.load197 to <4 x float>
  %i.be = fmul nnan <4 x float> %i.bc, splat (float f0x3C008081)
  %i.bf = fmul nnan <4 x float> %i.bd, splat (float f0x3C008081)
  %i.bg = fadd <4 x float> %i.be, splat (float -1.000000e+00)
  %i.bh = fadd <4 x float> %i.bf, splat (float -1.000000e+00)
  %i.bi = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x float> %i.bg, ptr %next.gep195, align 4, !tbaa !336
  store <4 x float> %i.bh, ptr %i.bi, align 4, !tbaa !336
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bj, label %middle.block199, label %vector.body193, !llvm.loop !1637

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.au, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader242

.lr.ph.i.i.i.preheader242:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.015.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i.i.i.preheader ], [ %i.ay, %middle.block199 ]
  %.01114.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader242, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %.01114.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %.01114.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01114.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fmul nnan float %i.bm, f0x3C008081
  %i.bo = fadd float %i.bn, -1.000000e+00
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  store float %i.bo, ptr %.015.i.i.i, align 4, !tbaa !336
  %i.bq = add nuw i64 %.01114.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.au
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1638

bb.o:                                             ; preds = %bb.m
  %.not49.i.i = icmp eq i64 %i.au, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader

.lr.ph.i40.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check204 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check204, label %.lr.ph.i40.i.i.preheader244, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i40.i.i.preheader
  %n.vec206 = and i64 %i.au, -8                   ; 4 uses
  %i.br = shl i64 %n.vec206, 2
  %i.bs = getelementptr i8, ptr %.03152.i, i64 %i.br
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.bt = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03152.i, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.bu, align 16, !tbaa !20
  %wide.load211 = load <4 x i16>, ptr %i.bv, align 8, !tbaa !20
  %i.bw = sitofp <4 x i16> %wide.load210 to <4 x float>
  %i.bx = sitofp <4 x i16> %wide.load211 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x38000000)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x38000000)
  %i.ca = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x float> %i.by, ptr %next.gep209, align 4, !tbaa !336
  store <4 x float> %i.bz, ptr %i.ca, align 4, !tbaa !336
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cb, label %middle.block213, label %vector.body207, !llvm.loop !1639

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.au, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bs, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.ch, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !20
  %i.ce = sitofp i16 %i.cd to float
  %i.cf = fmul nnan float %i.ce, f0x38000000
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cf, ptr %.0811.i.i.i, align 4, !tbaa !336
  %i.ch = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.ch, %i.au
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !1640

bb.p:                                             ; preds = %bb.m
  %.not48.i.i = icmp eq i64 %i.au, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check218 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.au, -4                   ; 4 uses
  %i.ci = shl i64 %n.vec220, 2
  %i.cj = getelementptr i8, ptr %.03152.i, i64 %i.ci
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.ck = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.ck
  %i.cl = mul i64 %index222, 3
  %i.cm = mul i64 %index222, 3
  %i.cn = mul i64 %index222, 3
  %i.co = mul i64 %index222, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.cs = getelementptr i8, ptr %i.e, i64 %i.cn   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 6
  %i.cu = getelementptr i8, ptr %i.e, i64 %i.co   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 9
  %i.cw = load i16, ptr %i.cp, align 4
  %i.cx = load i16, ptr %i.cr, align 1
  %i.cy = load i16, ptr %i.ct, align 2
  %i.cz = load i16, ptr %i.cv, align 1
  %i.da = insertelement <4 x i16> poison, i16 %i.cw, i64 0
  %i.db = insertelement <4 x i16> %i.da, i16 %i.cx, i64 1
  %i.dc = insertelement <4 x i16> %i.db, i16 %i.cy, i64 2
  %i.dd = insertelement <4 x i16> %i.dc, i16 %i.cz, i64 3
  %i.de = zext <4 x i16> %i.dd to <4 x i32>
  %i.df = shl nuw nsw <4 x i32> %i.de, splat (i32 8)
  %i.dg = getelementptr i8, ptr %i.cp, i64 2
  %i.dh = getelementptr i8, ptr %i.cq, i64 5
  %i.di = getelementptr i8, ptr %i.cs, i64 8
  %i.dj = getelementptr i8, ptr %i.cu, i64 11
  %i.dk = load i8, ptr %i.dg, align 2, !tbaa !9
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dm = load i8, ptr %i.di, align 4, !tbaa !9
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.do = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dl, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dm, i64 2
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 3
  %i.ds = zext <4 x i8> %i.dr to <4 x i32>
  %i.dt = shl nuw <4 x i32> %i.ds, splat (i32 24)
  %i.du = or disjoint <4 x i32> %i.dt, %i.df
  %i.dv = ashr exact <4 x i32> %i.du, splat (i32 8)
  %i.dw = sitofp <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul nnan <4 x float> %i.dw, splat (float f0x34000000)
  store <4 x float> %i.dx, ptr %next.gep223, align 4, !tbaa !336
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.dy, label %middle.block225, label %vector.body221, !llvm.loop !1641

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.au, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cj, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.em, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.en, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dz = mul i64 %.01619.i.i.i, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dz ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = getelementptr i8, ptr %i.ea, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw i32 %i.eg, 24
  %i.ei = or disjoint i32 %i.eh, %i.ed
  %i.ej = ashr exact i32 %i.ei, 8
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fmul nnan float %i.ek, f0x34000000
  %i.em = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.el, ptr %.020.i.i.i, align 4, !tbaa !336
  %i.en = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.en, %i.au
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !1642

bb.q:                                             ; preds = %bb.m
  %.not.i41.i = icmp eq i64 %i.au, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check230 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.au, -4                   ; 4 uses
  %i.eo = shl i64 %n.vec232, 2
  %i.ep = getelementptr i8, ptr %.03152.i, i64 %i.eo
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.eq = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.eq
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.er, align 16, !tbaa !8
  %i.es = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.et = fmul nnan <4 x double> %i.es, splat (double f0x3E00000000000000)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float>
  store <4 x float> %i.eu, ptr %next.gep235, align 4, !tbaa !336
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.ev, label %middle.block238, label %vector.body233, !llvm.loop !1643

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.au, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.ep, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.fc, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.fb, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x3E00000000000000
  %i.fa = fptrunc double %i.ez to float
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.fa, ptr %.0811.i46.i.i, align 4, !tbaa !336
  %i.fc = add nuw i64 %.012.i45.i.i, 1            ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.fc, %i.au
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !1644

bb.r:                                             ; preds = %bb.m
  br i1 %i.al, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not61.i.i = icmp eq i64 %i.au, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.r
  %i.fd = shl i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.fd, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gl, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gk, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03456.i.i = phi i32 [ %10, %.lr.ph.i.i.new ], [ %i.an, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.ga, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9
  %3 = zext i8 %i.ff to i64
  %i.fg = zext nneg i32 %.03456.i.i to i64
  %i.fh = shl i64 %3, %i.fg
  %i.fi = or i64 %i.fh, %.03555.i.i
  %4 = add i32 %.03456.i.i, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9
  %5 = zext i8 %i.fl to i64
  %i.fm = zext nneg i32 %4 to i64
  %i.fn = shl i64 %5, %i.fm
  %i.fo = or i64 %i.fn, %i.fi
  %6 = add i32 %.03456.i.i, 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !9
  %7 = zext i8 %i.fr to i64
  %i.fs = zext nneg i32 %6 to i64
  %i.ft = shl i64 %7, %i.fs
  %i.fu = or i64 %i.ft, %i.fo
  %8 = add i32 %.03456.i.i, 24
  %i.fv = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !9
  %9 = zext i8 %i.fx to i64
  %i.fy = zext nneg i32 %8 to i64
  %i.fz = shl i64 %9, %i.fy
  %i.ga = or i64 %i.fz, %i.fu                     ; 3 uses
  %10 = add i32 %.03456.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !1645

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03456.i.i.epil.init = phi i32 [ %i.an, %.lr.ph.i.i ], [ %10, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ga, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.t ] ; 2 uses
  %.03456.i.i.epil = phi i32 [ %.03456.i.i.epil.init, %.epil.preheader ], [ %12, %bb.t ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %.03555.i.i.epil.init, %.epil.preheader ], [ %i.gf, %bb.t ]
  %epil.iter265 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter265.next, %bb.t ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil.a
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !9
  %11 = zext i8 %i.gc to i64
  %i.gd = zext nneg i32 %.03456.i.i.epil to i64
  %i.ge = shl i64 %11, %i.gd
  %i.gf = or i64 %i.ge, %.03555.i.i.epil          ; 2 uses
  %12 = add i32 %.03456.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !1646

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ga, %.unr-lcssa ], [ %i.gf, %bb.t ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ak
  %i.gh = sitofp i64 %.lcssa to double
  %i.gi = fmul nnan double %i.gh, f0x3C00000000000000
  %i.gj = fptrunc double %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gj, ptr %.03759.i.i, align 4, !tbaa !336
  %i.gl = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = icmp ugt i64 %i.au, %i.gm
  br i1 %i.gn, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !1647

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %bb.n
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.au
  %i.gp = sub i64 %.03351.i, %i.aq                ; 2 uses
  %i.gq = add i64 %i.aq, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gp, 0
  br i1 %.not40.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_f32__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.035.i = phi i64 [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.k ], [ %i.gq, %.loopexit.i ], [ %.03053.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.gr = phi i16 [ %i.k, %bb.u ], [ %i.gw, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.hs, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.hq, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.hr, %.loopexit.i37 ] ; 2 uses
  %i.gs = udiv i16 2048, %i.gr
  %i.gt = zext nneg i16 %i.gs to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gt)
  %i.gu = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gw = load i16, ptr %i.j, align 8, !tbaa !1632 ; 2 uses
  %i.gx = zext i16 %i.gw to i64
  %i.gy = mul i64 %i.gu, %i.gx                    ; 6 uses
  %.not35.i = icmp eq i64 %i.gy, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.gy, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gy, -8                   ; 4 uses
  %i.gz = shl i64 %n.vec178, 2
  %i.ha = getelementptr i8, ptr %.02031.i, i64 %i.gz
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.hb = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.hc, align 16, !tbaa !20
  %wide.load183 = load <4 x i16>, ptr %i.hd, align 8, !tbaa !20
  %i.he = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hf = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hg = fmul nnan <4 x float> %i.he, splat (float f0x38000000)
  %i.hh = fmul nnan <4 x float> %i.hf, splat (float f0x38000000)
  %i.hi = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hg, ptr %next.gep181, align 4, !tbaa !336
  store <4 x float> %i.hh, ptr %i.hi, align 4, !tbaa !336
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hj, label %middle.block185, label %vector.body179, !llvm.loop !1648

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gy, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.ha, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hp, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ho, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !20
  %i.hm = sitofp i16 %i.hl to float
  %i.hn = fmul nnan float %i.hm, f0x38000000
  %i.ho = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hn, ptr %.0811.i.i, align 4, !tbaa !336
  %i.hp = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hp, %i.gy
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !1649

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.gy
  %i.hr = sub i64 %.02230.i, %i.gu                ; 2 uses
  %i.hs = add i64 %i.gu, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hr, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.hs, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !1634 ; 2 uses
  %i.hv = icmp eq i16 %i.hu, 32
  br i1 %i.hv, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %bb.x
  %i.hw = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.030, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.x
  %i.hx = zext i16 %i.hu to i32                   ; 2 uses
  %i.hy = and i32 %i.hx, 7
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !1635
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, %i.hx
  %i.ie = lshr exact i32 %i.id, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.aa:                                            ; preds = %._crit_edge.i
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ig = load i16, ptr %i.if, align 8, !tbaa !1636
  %i.ih = zext i16 %i.ig to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi i32 [ %i.ie, %bb.z ], [ %i.ih, %bb.aa ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.ii = zext i16 %i.k to i32                    ; 3 uses
  %i.ij = udiv i32 %.0.i.i39, %i.ii
  %i.ik = urem i32 %.0.i.i39, %i.ii
  %.fr.i = freeze i32 %i.ij                       ; 2 uses
  %i.il = icmp samesign uge i32 %.0.i.i39, %i.ii
  %.not.i43 = icmp eq i32 %i.ik, 0
  %or.cond279 = and i1 %i.il, %.not.i43
  br i1 %or.cond279, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.ab
  %i.im = udiv i32 4096, %.0.i.i39
  %i.in = zext nneg i32 %i.im to i64              ; 3 uses
  %i.io = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03555.us.i = phi i64 [ %i.jp, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us.i = phi ptr [ %i.jn, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 5 uses
  %.03853.us.i = phi i64 [ %i.jo, %.loopexit.us.i ], [ %.030, %.preheader.i44 ] ; 2 uses
  %.038..us.i = call i64 @llvm.umin.i64(i64 %.03853.us.i, i64 %i.in)
  %i.ip = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %.preheader.split.us.i
  %i.ir = load i16, ptr %i.j, align 8, !tbaa !1632
  %i.is = zext i16 %i.ir to i64
  %i.it = mul i64 %i.ip, %i.is                    ; 8 uses
  %i.iu = mul i64 %i.it, %i.io
  %i.iv = icmp ugt i64 %i.iu, 4096
  br i1 %i.iv, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %bb.ac
  %.not18.i.us.i = icmp eq i64 %i.it, 0
  br i1 %.not18.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %.preheader.i.us.i
  %min.iters.check162 = icmp ult i64 %i.it, 12
  br i1 %min.iters.check162, label %.lr.ph.i.us.i.preheader251, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.us.i.preheader
  %i.iw = add i64 %i.it, -1                       ; 2 uses
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = icmp eq i64 %i.ix, 4294967295
end_hunk_0
begin_hunk_1_@ma_dr_wav_read_pcm_frames_f32:bb.a
  br i1 %i.pa, label %.lr.ph.i.i72.epil.preheader, label %.lr.ph.i.i72.preheader.new

.lr.ph.i.i72.preheader.new:                       ; preds = %.lr.ph.i.i72.preheader
  %unroll_iter = and i64 %i.ox, -4
  br label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.lr.ph.i.i72, %.lr.ph.i.i72.preheader.new
  %.012.i.i73 = phi i64 [ 0, %.lr.ph.i.i72.preheader.new ], [ %i.qk, %.lr.ph.i.i72 ] ; 5 uses
  %.0811.i.i74 = phi ptr [ %.03046.i68, %.lr.ph.i.i72.preheader.new ], [ %i.qj, %.lr.ph.i.i72 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i72.preheader.new ], [ %niter.next.3, %.lr.ph.i.i72 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pc = load i8, ptr %i.pb, align 4, !tbaa !9
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !20
  %i.pg = sitofp i16 %i.pf to float
  %i.ph = fmul nnan float %i.pg, f0x38000000
  %i.pi = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 4
  store float %i.ph, ptr %.0811.i.i74, align 4, !tbaa !336
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !9
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !20
  %i.pp = sitofp i16 %i.po to float
  %i.pq = fmul nnan float %i.pp, f0x38000000
  %i.pr = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 8
  store float %i.pq, ptr %i.pi, align 4, !tbaa !336
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.pu = load i8, ptr %i.pt, align 2, !tbaa !9
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pv
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !20
  %i.py = sitofp i16 %i.px to float
  %i.pz = fmul nnan float %i.py, f0x38000000
  %i.qa = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 12
  store float %i.pz, ptr %i.pr, align 4, !tbaa !336
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 3
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !9
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !20
  %i.qh = sitofp i16 %i.qg to float
  %i.qi = fmul nnan float %i.qh, f0x38000000
  %i.qj = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 16 ; 2 uses
  store float %i.qi, ptr %i.qa, align 4, !tbaa !336
  %i.qk = add nuw i64 %.012.i.i73, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i76.loopexit.unr-lcssa, label %.lr.ph.i.i72, !llvm.loop !1656

.loopexit.i76.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i76, label %.lr.ph.i.i72.epil.preheader

.lr.ph.i.i72.epil.preheader:                      ; preds = %.loopexit.i76.loopexit.unr-lcssa, %.lr.ph.i.i72.preheader
  %.012.i.i73.epil.init = phi i64 [ 0, %.lr.ph.i.i72.preheader ], [ %i.qk, %.loopexit.i76.loopexit.unr-lcssa ]
  %.0811.i.i74.epil.init = phi ptr [ %.03046.i68, %.lr.ph.i.i72.preheader ], [ %i.qj, %.loopexit.i76.loopexit.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph.i.i72.epil

.lr.ph.i.i72.epil:                                ; preds = %.lr.ph.i.i72.epil, %.lr.ph.i.i72.epil.preheader
  %.012.i.i73.epil = phi i64 [ %i.qt, %.lr.ph.i.i72.epil ], [ %.012.i.i73.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %.0811.i.i74.epil = phi ptr [ %i.qs, %.lr.ph.i.i72.epil ], [ %.0811.i.i74.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i72.epil ], [ 0, %.lr.ph.i.i72.epil.preheader ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73.epil
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !9
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !20
  %i.qq = sitofp i16 %i.qp to float
  %i.qr = fmul nnan float %i.qq, f0x38000000
  %i.qs = getelementptr inbounds nuw i8, ptr %.0811.i.i74.epil, i64 4
  store float %i.qr, ptr %.0811.i.i74.epil, align 4, !tbaa !336
  %i.qt = add nuw i64 %.012.i.i73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i76, label %.lr.ph.i.i72.epil, !llvm.loop !1657

.loopexit.i76:                                    ; preds = %.loopexit.i76.loopexit.unr-lcssa, %.lr.ph.i.i72.epil, %bb.aw
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.03046.i68, i64 %i.ox
  %i.qv = sub i64 %.03245.i69, %i.ot              ; 2 uses
  %i.qw = add i64 %i.ot, %.02947.i67              ; 2 uses
  %.not39.i77 = icmp eq i64 %i.qv, 0
  br i1 %.not39.i77, label %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, label %bb.au

ma_dr_wav_read_pcm_frames_f32__mulaw.exit:        ; preds = %bb.au, %bb.av, %.loopexit.i76, %bb.as, %bb.at
  %.034.i65 = phi i64 [ 0, %bb.at ], [ 0, %bb.as ], [ %.02947.i67, %bb.au ], [ %i.qw, %.loopexit.i76 ], [ %.02947.i67, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.f, %bb.a, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, %ma_dr_wav_read_pcm_frames_f32__alaw.exit, %ma_dr_wav_read_pcm_frames_f32__ieee.exit, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, %ma_dr_wav_read_pcm_frames_f32__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %.035.i, %ma_dr_wav_read_pcm_frames_f32__pcm.exit ], [ %.019.lcssa.i, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit ], [ %.040.i, %ma_dr_wav_read_pcm_frames_f32__ieee.exit ], [ %.034.i, %ma_dr_wav_read_pcm_frames_f32__alaw.exit ], [ %.034.i65, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 9 uses
  %i.d = alloca [4096 x i8], align 16             ; 20 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !1632 ; 10 uses
  %i.k = zext i16 %i.j to i64
  %i.l = mul i64 %1, %i.k
  %i.m = and i64 %i.l, 9223372034707292160
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc87 = zext i16 %i.j to i32
  %i.n = udiv i32 2147483647, %.rhs.trunc87
  %.zext88 = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i64 [ %.zext88, %bb.e ], [ %1, %bb.d ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = load i16, ptr %i.o, align 4, !tbaa !1633
  switch i16 %i.p, label %bb.az [
    i16 1, label %bb.g
    i16 3, label %bb.t
    i16 6, label %bb.ah
    i16 7, label %bb.ap
    i16 2, label %bb.ax
    i16 17, label %bb.ay
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.r = load i16, ptr %i.q, align 2, !tbaa !1634 ; 2 uses
  %i.s = icmp eq i16 %i.r, 16
  br i1 %i.s, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.g
  %i.t = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.033, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.g
  %i.u = zext i16 %i.r to i32                     ; 2 uses
  %i.v = and i32 %i.u, 7
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.y = load i16, ptr %i.x, align 2, !tbaa !1635
  %i.z = zext i16 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, %i.u
  %i.ab = lshr exact i32 %i.aa, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !1636
  %i.ae = zext i16 %i.ad to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.af = zext i16 %i.j to i32                    ; 3 uses
  %i.ag = udiv i32 %.0.i.i, %i.af                 ; 5 uses
  %i.ah = urem i32 %.0.i.i, %i.af
  %i.ai = icmp samesign uge i32 %.0.i.i, %i.af
  %.not.i = icmp eq i32 %i.ah, 0
  %or.cond220 = and i1 %i.ai, %.not.i
  br i1 %or.cond220, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.j
  %i.aj = udiv i32 4096, %.0.i.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.am = icmp samesign ugt i32 %i.ag, 8
  %i.an = shl nuw nsw i32 %i.ag, 3
  %i.ao = sub nuw nsw i32 64, %i.an               ; 2 uses
  %xtraiter208 = and i64 %i.al, 3                 ; 3 uses
  %i.ap = add nsw i32 %i.ag, -1
  %i.aq = icmp ult i32 %i.ap, 3
  %unroll_iter213 = and i64 %i.al, 12
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod212 = icmp ne i64 %xtraiter208, 0
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.fu, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.fs, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %.033, %.preheader.i ], [ %i.ft, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ak)
  %i.ar = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i16, ptr %i.i, align 8, !tbaa !1632
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = mul i64 %i.ar, %i.au                    ; 25 uses
  %i.aw = mul i64 %i.av, %i.al
  %i.ax = icmp ugt i64 %i.aw, 4096
  br i1 %i.ax, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.ag, label %bb.q [
    i32 1, label %bb.n
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.o
    i32 4, label %bb.p
  ]

.preheader51.i.i:                                 ; preds = %bb.m
  %.not.i49.i = icmp eq i64 %i.av, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.ay = shl i64 %i.ar, 1
  %i.az = mul i64 %i.ay, %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.az, i1 false), !tbaa !20
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check152 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check152, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.av, 12
  %n.vec155 = and i64 %i.av, -16                  ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %index157 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load158 = load <8 x i8>, ptr %i.bb, align 16, !tbaa !9
  %wide.load159 = load <8 x i8>, ptr %i.bc, align 8, !tbaa !9
  %i.bd = zext <8 x i8> %wide.load158 to <8 x i16>
  %i.be = zext <8 x i8> %wide.load159 to <8 x i16>
  %i.bf = shl nuw <8 x i16> %i.bd, splat (i16 8)
  %i.bg = shl nuw <8 x i16> %i.be, splat (i16 8)
  %i.bh = xor <8 x i16> %i.bf, splat (i16 -32768)
  %i.bi = xor <8 x i16> %i.bg, splat (i16 -32768)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index157 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <8 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !20
  store <8 x i16> %i.bi, ptr %i.bk, align 2, !tbaa !20
  %index.next160 = add nuw i64 %index157, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.bl, label %middle.block161, label %vector.body156, !llvm.loop !1658

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.av, %n.vec155
  br i1 %cmp.n162, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !328

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec155, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.av, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %index164
  %wide.load165 = load <4 x i8>, ptr %i.bm, align 4, !tbaa !9
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  %i.bo = shl nuw <4 x i16> %i.bn, splat (i16 8)
  %i.bp = xor <4 x i16> %i.bo, splat (i16 -32768)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index164
  store <4 x i16> %i.bp, ptr %i.bq, align 2, !tbaa !20
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1659

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.av, %n.vec163
  br i1 %cmp.n167, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.iter.check ], [ %n.vec163, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i16
  %i.bv = shl nuw i16 %i.bu, 8
  %i.bw = xor i16 %i.bv, -32768
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !20
  %i.by = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.av
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1660

bb.o:                                             ; preds = %bb.m
  %.not.i44.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check170 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check170, label %.lr.ph.i45.i.i.preheader192, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec172 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next175, %vector.body173 ] ; 10 uses
  %i.bz = mul i64 %index174, 3
  %i.ca = mul i64 %index174, 3
  %i.cb = mul i64 %index174, 3
  %i.cc = mul i64 %index174, 3
  %i.cd = mul i64 %index174, 3
  %i.ce = mul i64 %index174, 3
  %i.cf = mul i64 %index174, 3
  %i.cg = mul i64 %index174, 3
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.ch, i64 1
  %i.cq = getelementptr i8, ptr %i.ci, i64 4
  %i.cr = getelementptr i8, ptr %i.cj, i64 7
  %i.cs = getelementptr i8, ptr %i.ck, i64 10
  %i.ct = getelementptr i8, ptr %i.cl, i64 13
  %i.cu = getelementptr i8, ptr %i.cm, i64 16
  %i.cv = getelementptr i8, ptr %i.cn, i64 19
  %i.cw = getelementptr i8, ptr %i.co, i64 22
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 4
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = load i16, ptr %i.ct, align 1
  %i.dc = load i16, ptr %i.cu, align 8
  %i.dd = load i16, ptr %i.cv, align 1
  %i.de = load i16, ptr %i.cw, align 2
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index174
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !20
  %index.next175 = add nuw i64 %index174, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next175, %n.vec172
  br i1 %i.do, label %middle.block176, label %vector.body173, !llvm.loop !1661

middle.block176:                                  ; preds = %vector.body173
  %cmp.n177 = icmp eq i64 %i.av, %n.vec172
  br i1 %cmp.n177, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader192

.lr.ph.i45.i.i.preheader192:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block176
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec172, %middle.block176 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader192, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.du, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader192 ] ; 3 uses
  %i.dp = mul i64 %.012.i.i.i, 3
  %i.dq = getelementptr i8, ptr %i.d, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !20
  %i.du = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.du, %i.av
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !1662

bb.p:                                             ; preds = %bb.m
  %.not.i47.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check180 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check180, label %.lr.ph.i48.i.i.preheader194, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec182 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index184 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load185 = load <4 x i32>, ptr %i.dv, align 16, !tbaa !8
  %wide.load186 = load <4 x i32>, ptr %i.dw, align 16, !tbaa !8
  %i.dx = lshr <4 x i32> %wide.load185, splat (i32 16)
  %i.dy = lshr <4 x i32> %wide.load186, splat (i32 16)
  %i.dz = trunc nuw <4 x i32> %i.dx to <4 x i16>
  %i.ea = trunc nuw <4 x i32> %i.dy to <4 x i16>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index184 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <4 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !20
  store <4 x i16> %i.ea, ptr %i.ec, align 2, !tbaa !20
  %index.next187 = add nuw i64 %index184, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.ed, label %middle.block188, label %vector.body183, !llvm.loop !1663

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec182
  br i1 %cmp.n189, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader194

.lr.ph.i48.i.i.preheader194:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block188
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec182, %middle.block188 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader194, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ej, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader194 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !20
  %i.ej = add nuw i64 %.08.i.i.i, 1               ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ej, %i.av
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !1664

bb.q:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %.not64.i.i = icmp eq i64 %i.av, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.r:                                             ; preds = %bb.q
  %i.ek = shl i64 %i.av, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.ek, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.fr, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.fq, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.fn, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03758.i.i = phi i32 [ %10, %.lr.ph63.i.i.new ], [ %i.ao, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fh, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter214 = phi i64 [ %niter214.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.em = load i8, ptr %i.el, align 1, !tbaa !9
  %3 = zext i8 %i.em to i64
  %i.en = zext nneg i32 %.03758.i.i to i64
  %i.eo = shl i64 %3, %i.en
  %i.ep = or i64 %i.eo, %.03857.i.i
  %4 = add i32 %.03758.i.i, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9
  %5 = zext i8 %i.es to i64
  %i.et = zext nneg i32 %4 to i64
  %i.eu = shl i64 %5, %i.et
  %i.ev = or i64 %i.eu, %i.ep
  %6 = add i32 %.03758.i.i, 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %7 = zext i8 %i.ey to i64
  %i.ez = zext nneg i32 %6 to i64
  %i.fa = shl i64 %7, %i.ez
  %i.fb = or i64 %i.fa, %i.ev
  %8 = add i32 %.03758.i.i, 24
  %i.fc = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9
  %9 = zext i8 %i.fe to i64
  %i.ff = zext nneg i32 %8 to i64
  %i.fg = shl i64 %9, %i.ff
  %i.fh = or i64 %i.fg, %i.fb                     ; 3 uses
  %10 = add i32 %.03758.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter214.next.3 = add i64 %niter214, 4         ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new, !llvm.loop !1665

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod210.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03758.i.i.epil.init = phi i32 [ %i.ao, %.lr.ph63.i.i ], [ %10, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fh, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.s ] ; 2 uses
  %.03758.i.i.epil = phi i32 [ %.03758.i.i.epil.init, %.epil.preheader ], [ %12, %bb.s ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %.03857.i.i.epil.init, %.epil.preheader ], [ %i.fm, %bb.s ]
  %epil.iter209 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter209.next, %bb.s ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil.a
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %11 = zext i8 %i.fj to i64
  %i.fk = zext nneg i32 %.03758.i.i.epil to i64
  %i.fl = shl i64 %11, %i.fk
  %i.fm = or i64 %i.fl, %.03857.i.i.epil          ; 2 uses
  %12 = add i32 %.03758.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !1666

.epilog-lcssa:                                    ; preds = %bb.s, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fh, %.unr-lcssa ], [ %i.fm, %bb.s ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.al
  %i.fo = lshr i64 %.lcssa, 48
  %i.fp = trunc nuw i64 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fp, ptr %.14161.i.i, align 2, !tbaa !20
  %i.fr = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.fr, %i.av
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i, !llvm.loop !1667

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block188, %middle.block176, %middle.block161, %vec.epilog.middle.block, %bb.r, %.preheader.i.i, %bb.p, %bb.o, %bb.n, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.av
  %i.ft = sub i64 %.04059.i, %i.ar                ; 2 uses
  %i.fu = add i64 %i.ar, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.ft, 0
  br i1 %.not48.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_s16__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %.split.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.042.i = phi i64 [ %i.t, %.split.i ], [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.k ], [ %i.fu, %.loopexit.i ], [ %.03761.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.az

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !1634
  %i.fx = zext i16 %i.fw to i32                   ; 2 uses
  %i.fy = and i32 %i.fx, 7
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !1635
  %i.gc = zext i16 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.gc, %i.fx
  %i.ge = lshr exact i32 %i.gd, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

bb.v:                                             ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gg = load i16, ptr %i.gf, align 8, !tbaa !1636
  %i.gh = zext i16 %i.gg to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

ma_dr_wav_get_bytes_per_pcm_frame.exit.i40:       ; preds = %bb.u, %bb.v
  %.0.i.i38 = phi i32 [ %i.ge, %bb.u ], [ %i.gh, %bb.v ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40
  %i.gi = zext i16 %i.j to i32                    ; 3 uses
  %i.gj = udiv i32 %.0.i.i38, %i.gi
  %i.gk = urem i32 %.0.i.i38, %i.gi
  %.fr.i = freeze i32 %i.gj                       ; 2 uses
  %i.gl = icmp samesign uge i32 %.0.i.i38, %i.gi
  %.not.i42 = icmp eq i32 %i.gk, 0
  %or.cond221 = and i1 %i.gl, %.not.i42
  br i1 %or.cond221, label %.preheader.i43, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.w
  %i.gm = udiv i32 4096, %.0.i.i38
  %i.gn = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.go = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.hw, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.hu, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.hv, %.loopexit.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gn)
  %i.gp = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.split.us.i
  %i.gr = load i16, ptr %i.i, align 8, !tbaa !1632
  %i.gs = zext i16 %i.gr to i64
  %i.gt = mul i64 %i.gp, %i.gs                    ; 7 uses
  %i.gu = mul i64 %i.gt, %i.go
  %i.gv = icmp ugt i64 %i.gu, 4096
  br i1 %i.gv, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i.us.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.y
  %min.iters.check = icmp ult i64 %i.gt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.gt, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.gw, align 16, !tbaa !336 ; 3 uses
  %i.gx = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.gy = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.gz = select <4 x i1> %i.gy, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.ha = fadd <4 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fmul <4 x float> %i.ha, splat (float 3.276750e+04)
  %i.hc = fptosi <4 x float> %i.hb to <4 x i32>
  %i.hd = trunc <4 x i32> %i.hc to <4 x i16>
  %i.he = xor <4 x i16> %i.hd, splat (i16 -32768)
  %predphi = select <4 x i1> %i.gx, <4 x i16> splat (i16 -32768), <4 x i16> %i.he
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hf, align 2, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !1668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gt, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader196

.lr.ph.i.i.us.i.preheader196:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader196, %bb.aa
  %.014.i.i.us.i = phi i64 [ %i.ht, %bb.aa ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader196 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !336 ; 3 uses
  %i.hj = fcmp olt float %i.hi, -1.000000e+00
  br i1 %i.hj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hk = fcmp ogt float %i.hi, 1.000000e+00
  %i.hl = select i1 %i.hk, float 1.000000e+00, float %i.hi
  %i.hm = fadd float %i.hl, 1.000000e+00
  %i.hn = fmul float %i.hm, 3.276750e+04
  %i.ho = fptosi float %i.hn to i32
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = xor i16 %i.hp, -32768
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.us.i
  %i.hr = phi i16 [ %i.hq, %bb.z ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !20
  %i.ht = add nuw i64 %.014.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ht, %i.gt
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !1669

.loopexit.us.i:                                   ; preds = %bb.aa, %middle.block, %bb.y
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.gt
  %i.hv = sub i64 %.03651.us.i, %i.gp             ; 2 uses
  %i.hw = add i64 %i.gp, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.hv, 0
  br i1 %.not44.us.i, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.it, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.ir, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.is, %.loopexit50.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gn)
  %i.hx = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us54.i
  %i.hz = load i16, ptr %i.i, align 8, !tbaa !1632
  %i.ia = zext i16 %i.hz to i64
  %i.ib = mul i64 %i.hx, %i.ia                    ; 4 uses
  %i.ic = mul i64 %i.ib, %i.go
  %i.id = icmp ugt i64 %i.ic, 4096
  br i1 %i.id, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i9.i.us.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i9.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.lr.ph.i10.i.us.i:                                ; preds = %bb.ac, %bb.ae
  %.014.i11.i.us.i = phi i64 [ %i.iq, %bb.ae ], [ 0, %bb.ac ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.014.i11.i.us.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !774 ; 3 uses
  %i.ig = fcmp olt double %i.if, -1.000000e+00
  br i1 %i.ig, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i10.i.us.i
  %i.ih = fcmp ogt double %i.if, 1.000000e+00
  %i.ii = select i1 %i.ih, double 1.000000e+00, double %i.if
  %i.ij = fadd double %i.ii, 1.000000e+00
  %i.ik = fmul double %i.ij, 3.276750e+04
  %i.il = fptosi double %i.ik to i32
  %i.im = trunc i32 %i.il to i16
  %i.in = xor i16 %i.im, -32768
  br label %bb.ae
end_hunk_1
begin_hunk_2_@ma_dr_wav_read_pcm_frames_s16:bb.a

.lr.ph.i.i67.preheader:                           ; preds = %bb.aw
  %xtraiter = and i64 %i.mt, 3                    ; 3 uses
  %i.mw = icmp ult i64 %i.mt, 4
  br i1 %i.mw, label %.lr.ph.i.i67.epil.preheader, label %.lr.ph.i.i67.preheader.new

.lr.ph.i.i67.preheader.new:                       ; preds = %.lr.ph.i.i67.preheader
  %unroll_iter = and i64 %i.mt, -4
  br label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67, %.lr.ph.i.i67.preheader.new
  %.06.i.i68 = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %i.ny, %.lr.ph.i.i67 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %niter.next.3, %.lr.ph.i.i67 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !9
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !20
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !20
  %i.nd = or disjoint i64 %.06.i.i68, 1           ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !9
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.ng
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !20
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nd
  store i16 %i.ni, ptr %i.nj, align 2, !tbaa !20
  %i.nk = or disjoint i64 %.06.i.i68, 2           ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 2, !tbaa !9
  %i.nn = zext i8 %i.nm to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2, !tbaa !20
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nk
  store i16 %i.np, ptr %i.nq, align 2, !tbaa !20
  %i.nr = or disjoint i64 %.06.i.i68, 3           ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !9
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !20
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nr
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !20
  %i.ny = add nuw i64 %.06.i.i68, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i70.loopexit.unr-lcssa, label %.lr.ph.i.i67, !llvm.loop !1673

.loopexit.i70.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i67
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil.preheader

.lr.ph.i.i67.epil.preheader:                      ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.preheader
  %.06.i.i68.epil.init = phi i64 [ 0, %.lr.ph.i.i67.preheader ], [ %i.ny, %.loopexit.i70.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.i.i67.epil

.lr.ph.i.i67.epil:                                ; preds = %.lr.ph.i.i67.epil, %.lr.ph.i.i67.epil.preheader
  %.06.i.i68.epil = phi i64 [ %i.of, %.lr.ph.i.i67.epil ], [ %.06.i.i68.epil.init, %.lr.ph.i.i67.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i67.epil ], [ 0, %.lr.ph.i.i67.epil.preheader ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68.epil
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !9
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !20
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68.epil
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !20
  %i.of = add nuw i64 %.06.i.i68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil, !llvm.loop !1674

.loopexit.i70:                                    ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.epil, %bb.aw
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.mt
  %i.oh = sub i64 %.03550.i64, %i.mp              ; 2 uses
  %i.oi = add i64 %i.mp, %.03252.i62              ; 2 uses
  %.not43.i71 = icmp eq i64 %i.oh, 0
  br i1 %.not43.i71, label %ma_dr_wav_read_pcm_frames_s16__mulaw.exit, label %bb.au

ma_dr_wav_read_pcm_frames_s16__mulaw.exit:        ; preds = %bb.au, %bb.av, %.loopexit.i70, %bb.as, %bb.at
  %.037.i60 = phi i64 [ 0, %bb.at ], [ 0, %bb.as ], [ %.03252.i62, %bb.au ], [ %i.oi, %.loopexit.i70 ], [ %.03252.i62, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.az

bb.ax:                                            ; preds = %bb.f
  %i.oj = tail call fastcc i64 @ma_dr_wav_read_pcm_frames_s16__msadpcm(ptr noundef %0, i64 noundef %.033, ptr noundef %2)
  br label %bb.az

bb.ay:                                            ; preds = %bb.f
  %i.ok = tail call fastcc i64 @ma_dr_wav_read_pcm_frames_s16__ima(ptr noundef %0, i64 noundef %.033, ptr noundef %2)
  br label %bb.az

bb.az:                                            ; preds = %bb.f, %bb.a, %bb.ay, %bb.ax, %ma_dr_wav_read_pcm_frames_s16__mulaw.exit, %ma_dr_wav_read_pcm_frames_s16__alaw.exit, %ma_dr_wav_read_pcm_frames_s16__ieee.exit, %ma_dr_wav_read_pcm_frames_s16__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %.042.i, %ma_dr_wav_read_pcm_frames_s16__pcm.exit ], [ %.038.i, %ma_dr_wav_read_pcm_frames_s16__ieee.exit ], [ %.037.i, %ma_dr_wav_read_pcm_frames_s16__alaw.exit ], [ %.037.i60, %ma_dr_wav_read_pcm_frames_s16__mulaw.exit ], [ %i.oj, %bb.ax ], [ %i.ok, %bb.ay ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1632 ; 11 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul i64 %1, %i.l
  %i.n = and i64 %i.m, 4611686017353646080
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc93 = zext i16 %i.k to i32
  %i.o = udiv i32 1073741823, %.rhs.trunc93
  %.zext94 = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.030 = phi i64 [ %.zext94, %bb.e ], [ %1, %bb.d ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !1633
  switch i16 %i.q, label %bb.ax [
    i16 1, label %bb.g
    i16 2, label %bb.u
    i16 17, label %bb.u
    i16 3, label %bb.x
    i16 6, label %bb.ah
    i16 7, label %bb.ap
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.s = load i16, ptr %i.r, align 2, !tbaa !1634 ; 2 uses
  %i.t = icmp eq i16 %i.s, 32
  br i1 %i.t, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.030, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_s32__pcm.exit

._crit_edge.i:                                    ; preds = %bb.g
  %i.v = zext i16 %i.s to i32                     ; 2 uses
  %i.w = and i32 %i.v, 7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.z = load i16, ptr %i.y, align 2, !tbaa !1635
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, %i.v
  %i.ac = lshr exact i32 %i.ab, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !1636
  %i.af = zext i16 %i.ae to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.af, %bb.j ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.ag = zext i16 %i.k to i32                    ; 3 uses
  %i.ah = udiv i32 %.0.i.i, %i.ag                 ; 5 uses
  %i.ai = urem i32 %.0.i.i, %i.ag
  %i.aj = icmp samesign uge i32 %.0.i.i, %i.ag
  %.not.i = icmp eq i32 %i.ai, 0
  %or.cond279 = and i1 %i.aj, %.not.i
  br i1 %or.cond279, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit

.preheader.i:                                     ; preds = %bb.k
  %i.ak = udiv i32 4096, %.0.i.i
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.an = icmp samesign ugt i32 %i.ah, 8
  %i.ao = shl nuw nsw i32 %i.ah, 3
  %i.ap = sub nuw nsw i32 64, %i.ao               ; 2 uses
  %xtraiter265 = and i64 %i.am, 3                 ; 3 uses
  %i.aq = add nsw i32 %i.ah, -1
  %i.ar = icmp ult i32 %i.aq, 3
  %unroll_iter270 = and i64 %i.am, 12
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod269 = icmp ne i64 %xtraiter265, 0
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03558.i = phi i64 [ 0, %.preheader.i ], [ %i.gn, %.loopexit.i ] ; 3 uses
  %.03657.i = phi ptr [ %2, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 16 uses
  %.03856.i = phi i64 [ %.030, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03856.i, i64 %i.al)
  %i.as = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i16, ptr %i.j, align 8, !tbaa !1632
  %i.av = zext i16 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av                    ; 26 uses
  %i.ax = mul i64 %i.aw, %i.am
  %i.ay = icmp ugt i64 %i.ax, 4096
  br i1 %i.ay, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ah, label %bb.r [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %.preheader56.i.i
  ]

.preheader56.i.i:                                 ; preds = %bb.n
  %.not67.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not67.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader56.i.i
  %min.iters.check230 = icmp ult i64 %i.aw, 12
  br i1 %min.iters.check230, label %.lr.ph.i.i.preheader249, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.az = add i64 %i.aw, -1                       ; 2 uses
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp eq i64 %i.ba, 4294967295
  %i.bc = icmp ugt i64 %i.az, 4294967295
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i.preheader249, label %vector.ph231

vector.ph231:                                     ; preds = %vector.scevcheck
  %n.vec232 = and i64 %i.aw, 8589934584           ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec232, 2
  %i.bf = getelementptr i8, ptr %.03657.i, i64 %i.be
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body233 ] ; 3 uses
  %i.bg = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03657.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load236 = load <4 x i32>, ptr %i.bh, align 16, !tbaa !8
  %wide.load237 = load <4 x i32>, ptr %i.bi, align 16, !tbaa !8
  %i.bj = getelementptr i8, ptr %next.gep235, i64 16
  store <4 x i32> %wide.load236, ptr %next.gep235, align 4, !tbaa !8
  store <4 x i32> %wide.load237, ptr %i.bj, align 4, !tbaa !8
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.bk, label %middle.block239, label %vector.body233, !llvm.loop !1675

middle.block239:                                  ; preds = %vector.body233
  %cmp.n240 = icmp eq i64 %i.aw, %n.vec232
  br i1 %cmp.n240, label %.loopexit.i, label %.lr.ph.i.i.preheader249

.lr.ph.i.i.preheader249:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block239
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec232, %middle.block239 ]
  %.04058.i.i.ph = phi ptr [ %.03657.i, %vector.scevcheck ], [ %.03657.i, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block239 ]
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  %.not52.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not52.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.o
  %min.iters.check190 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader243, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.aw, -8                   ; 4 uses
  %i.bl = shl i64 %n.vec192, 2
  %i.bm = getelementptr i8, ptr %.03657.i, i64 %i.bl
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.bn = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03657.i, i64 %i.bn ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.bo, align 8, !tbaa !9
  %wide.load197 = load <4 x i8>, ptr %i.bp, align 4, !tbaa !9
  %i.bq = zext <4 x i8> %wide.load196 to <4 x i32>
  %i.br = zext <4 x i8> %wide.load197 to <4 x i32>
  %i.bs = shl nuw <4 x i32> %i.bq, splat (i32 24)
  %i.bt = shl nuw <4 x i32> %i.br, splat (i32 24)
  %i.bu = xor <4 x i32> %i.bs, splat (i32 -2147483648)
  %i.bv = xor <4 x i32> %i.bt, splat (i32 -2147483648)
  %i.bw = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x i32> %i.bu, ptr %next.gep195, align 4, !tbaa !8
  store <4 x i32> %i.bv, ptr %i.bw, align 4, !tbaa !8
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bx, label %middle.block199, label %vector.body193, !llvm.loop !1676

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.aw, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader243

.lr.ph.i.i.i.preheader243:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bm, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = xor i32 %i.cb, -2147483648
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.cc, ptr %.0811.i.i.i, align 4, !tbaa !8
  %i.ce = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ce, %i.aw
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1677

bb.p:                                             ; preds = %bb.n
  %.not51.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check204 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check204, label %.lr.ph.i45.i.i.preheader245, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec206 = and i64 %i.aw, -8                   ; 4 uses
  %i.cf = shl i64 %n.vec206, 2
  %i.cg = getelementptr i8, ptr %.03657.i, i64 %i.cf
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.ch = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03657.i, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.ci, align 16, !tbaa !20
  %wide.load211 = load <4 x i16>, ptr %i.cj, align 8, !tbaa !20
  %i.ck = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cl = sext <4 x i16> %wide.load211 to <4 x i32>
  %i.cm = shl nsw <4 x i32> %i.ck, splat (i32 16)
  %i.cn = shl nsw <4 x i32> %i.cl, splat (i32 16)
  %i.co = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %i.cm, ptr %next.gep209, align 4, !tbaa !8
  store <4 x i32> %i.cn, ptr %i.co, align 4, !tbaa !8
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cp, label %middle.block213, label %vector.body207, !llvm.loop !1678

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aw, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block213
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cg, %middle.block213 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cv, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cu, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !20
  %i.cs = sext i16 %i.cr to i32
  %i.ct = shl nsw i32 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.ct, ptr %.0811.i47.i.i, align 4, !tbaa !8
  %i.cv = add nuw i64 %.012.i46.i.i, 1            ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cv, %i.aw
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !1679

bb.q:                                             ; preds = %bb.n
  %.not.i46.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check218 = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check218, label %.lr.ph.i49.i.i.preheader247, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec220 = and i64 %i.aw, -4                   ; 4 uses
  %i.cw = shl i64 %n.vec220, 2
  %i.cx = getelementptr i8, ptr %.03657.i, i64 %i.cw
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cy = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03657.i, i64 %i.cy
  %i.cz = mul i64 %index222, 3
  %i.da = mul i64 %index222, 3
  %i.db = mul i64 %index222, 3
  %i.dc = mul i64 %index222, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cz ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %i.dg = getelementptr i8, ptr %i.e, i64 %i.db   ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 6
  %i.di = getelementptr i8, ptr %i.e, i64 %i.dc   ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 9
  %i.dk = load i16, ptr %i.dd, align 4
  %i.dl = load i16, ptr %i.df, align 1
  %i.dm = load i16, ptr %i.dh, align 2
  %i.dn = load i16, ptr %i.dj, align 1
  %i.do = insertelement <4 x i16> poison, i16 %i.dk, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.dn, i64 3
  %i.ds = zext <4 x i16> %i.dr to <4 x i32>
  %i.dt = shl nuw nsw <4 x i32> %i.ds, splat (i32 8)
  %i.du = getelementptr i8, ptr %i.dd, i64 2
  %i.dv = getelementptr i8, ptr %i.de, i64 5
  %i.dw = getelementptr i8, ptr %i.dg, i64 8
  %i.dx = getelementptr i8, ptr %i.di, i64 11
  %i.dy = load i8, ptr %i.du, align 2, !tbaa !9
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.ea = load i8, ptr %i.dw, align 4, !tbaa !9
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.ec = insertelement <4 x i8> poison, i8 %i.dy, i64 0
  %i.ed = insertelement <4 x i8> %i.ec, i8 %i.dz, i64 1
  %i.ee = insertelement <4 x i8> %i.ed, i8 %i.ea, i64 2
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.eb, i64 3
  %i.eg = zext <4 x i8> %i.ef to <4 x i32>
  %i.eh = shl nuw <4 x i32> %i.eg, splat (i32 24)
  %i.ei = or disjoint <4 x i32> %i.eh, %i.dt
  store <4 x i32> %i.ei, ptr %next.gep223, align 4, !tbaa !8
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.ej, label %middle.block225, label %vector.body221, !llvm.loop !1680

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aw, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cx, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.eu, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ev, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.ek = mul i64 %.01619.i.i.i, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 1
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr i8, ptr %i.el, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 24
  %i.et = or disjoint i32 %i.es, %i.eo
  %i.eu = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.et, ptr %.020.i.i.i, align 4, !tbaa !8
  %i.ev = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.ev, %i.aw
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !1681

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %.04058.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ex, ptr %.04058.i.i, align 4, !tbaa !8
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = and i64 %indvars.iv.next.i.i, 4294967295
  %i.fa = icmp ugt i64 %i.aw, %i.ez
  br i1 %i.fa, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !1682

bb.r:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not68.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.s:                                             ; preds = %bb.r
  %i.fb = shl i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fb, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gi, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gh, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.ge, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv75.i.i.a = phi i64 [ %indvars.iv.next76.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03761.i.i = phi i32 [ %10, %.lr.ph66.i.i.new ], [ %i.ap, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.fy, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.a
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %3 = zext i8 %i.fd to i64
  %i.fe = zext nneg i32 %.03761.i.i to i64
  %i.ff = shl i64 %3, %i.fe
  %i.fg = or i64 %i.ff, %.03860.i.i
  %4 = add i32 %.03761.i.i, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %5 = zext i8 %i.fj to i64
  %i.fk = zext nneg i32 %4 to i64
  %i.fl = shl i64 %5, %i.fk
  %i.fm = or i64 %i.fl, %i.fg
  %6 = add i32 %.03761.i.i, 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  %7 = zext i8 %i.fp to i64
  %i.fq = zext nneg i32 %6 to i64
  %i.fr = shl i64 %7, %i.fq
  %i.fs = or i64 %i.fr, %i.fm
  %8 = add i32 %.03761.i.i, 24
  %i.ft = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  %9 = zext i8 %i.fv to i64
  %i.fw = zext nneg i32 %8 to i64
  %i.fx = shl i64 %9, %i.fw
  %i.fy = or i64 %i.fx, %i.fs                     ; 3 uses
  %10 = add i32 %.03761.i.i, 32                   ; 2 uses
  %indvars.iv.next76.i.i.3 = add nuw nsw i64 %indvars.iv75.i.i.a, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new, !llvm.loop !1683

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv75.i.i.epil.init.a = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next76.i.i.3, %.unr-lcssa ]
  %.03761.i.i.epil.init = phi i32 [ %i.ap, %.lr.ph66.i.i ], [ %10, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.fy, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv75.i.i.epil.a = phi i64 [ %indvars.iv75.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next76.i.i.epil, %bb.t ] ; 2 uses
  %.03761.i.i.epil = phi i32 [ %.03761.i.i.epil.init, %.epil.preheader ], [ %12, %bb.t ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %.03860.i.i.epil.init, %.epil.preheader ], [ %i.gd, %bb.t ]
  %epil.iter266 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter266.next, %bb.t ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.epil.a
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !9
  %11 = zext i8 %i.ga to i64
  %i.gb = zext nneg i32 %.03761.i.i.epil to i64
  %i.gc = shl i64 %11, %i.gb
  %i.gd = or i64 %i.gc, %.03860.i.i.epil          ; 2 uses
  %12 = add i32 %.03761.i.i.epil, 8
  %indvars.iv.next76.i.i.epil = add nuw nsw i64 %indvars.iv75.i.i.epil.a, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !1684

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fy, %.unr-lcssa ], [ %i.gd, %bb.t ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.am
  %i.gf = lshr i64 %.lcssa, 32
  %i.gg = trunc nuw i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gg, ptr %.14164.i.i, align 4, !tbaa !8
  %i.gi = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = icmp ugt i64 %i.aw, %i.gj
  br i1 %i.gk, label %.lr.ph66.i.i, label %.loopexit.i, !llvm.loop !1685

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block239, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %.preheader56.i.i
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.aw
  %i.gm = sub i64 %.03856.i, %i.as                ; 2 uses
  %i.gn = add i64 %i.as, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gm, 0
  br i1 %.not45.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.l

ma_dr_wav_read_pcm_frames_s32__pcm.exit:          ; preds = %bb.l, %bb.m, %.loopexit.i, %bb.h, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.k
  %.040.i = phi i64 [ %i.u, %bb.h ], [ 0, %bb.k ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.l ], [ %i.gn, %.loopexit.i ], [ %.03558.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.go = phi i16 [ %i.k, %bb.u ], [ %i.gt, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.hn, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.ho, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gt = load i16, ptr %i.j, align 8, !tbaa !1632 ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 6 uses
  %.not35.i = icmp eq i64 %i.gv, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader251, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec178, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.gy = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.gz, align 16, !tbaa !20
  %wide.load183 = load <4 x i16>, ptr %i.ha, align 8, !tbaa !20
  %i.hb = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hc = sext <4 x i16> %wide.load183 to <4 x i32>
  %i.hd = shl nsw <4 x i32> %i.hb, splat (i32 16)
  %i.he = shl nsw <4 x i32> %i.hc, splat (i32 16)
  %i.hf = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> %i.hd, ptr %next.gep181, align 4, !tbaa !8
  store <4 x i32> %i.he, ptr %i.hf, align 4, !tbaa !8
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hg, label %middle.block185, label %vector.body179, !llvm.loop !1686

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gv, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !20
  %i.hj = sext i16 %i.hi to i32
  %i.hk = shl nsw i32 %i.hj, 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hk, ptr %.0811.i.i, align 4, !tbaa !8
  %i.hm = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !1687

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.gv
  %i.ho = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hp = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.ho, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.hp, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !1634
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = and i32 %i.hs, 7
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !1635
  %i.hx = zext i16 %i.hw to i32
  %i.hy = mul nuw nsw i32 %i.hx, %i.hs
  %i.hz = lshr exact i32 %i.hy, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.z:                                             ; preds = %bb.x
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !1636
  %i.ic = zext i16 %i.ib to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.y, %bb.z
  %.0.i.i39 = phi i32 [ %i.hz, %bb.y ], [ %i.ic, %bb.z ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.id = zext i16 %i.k to i32                    ; 3 uses
  %i.ie = udiv i32 %.0.i.i39, %i.id
  %i.if = urem i32 %.0.i.i39, %i.id
  %.fr.i = freeze i32 %i.ie                       ; 2 uses
  %i.ig = icmp samesign uge i32 %.0.i.i39, %i.id
  %.not.i43 = icmp eq i32 %i.if, 0
  %or.cond280 = and i1 %i.ig, %.not.i43
  br i1 %or.cond280, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.aa
  %i.ih = udiv i32 4096, %.0.i.i39
  %i.ii = zext nneg i32 %i.ih to i64              ; 3 uses
  %i.ij = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.jk, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.ji, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jj, %.loopexit.us.i ], [ %.030, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.ii)
  %i.ik = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.i
  %i.im = load i16, ptr %i.j, align 8, !tbaa !1632
  %i.in = zext i16 %i.im to i64
  %i.io = mul i64 %i.ik, %i.in                    ; 7 uses
  %i.ip = mul i64 %i.io, %i.ij
  %i.iq = icmp ugt i64 %i.ip, 4096
  br i1 %i.iq, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not13.i.us.i = icmp eq i64 %i.io, 0
  br i1 %.not13.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.ac
  %min.iters.check162 = icmp ult i64 %i.io, 8
  br i1 %min.iters.check162, label %.lr.ph.i.i.us.i.preheader252, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec164 = and i64 %i.io, -8                   ; 4 uses
  %i.ir = shl i64 %n.vec164, 2
  %i.is = getelementptr i8, ptr %.03149.us.i, i64 %i.ir
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body165 ] ; 3 uses
  %i.it = shl i64 %index166, 2
  %next.gep167 = getelementptr i8, ptr %.03149.us.i, i64 %i.it ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index166 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load168 = load <4 x float>, ptr %i.iu, align 16, !tbaa !336
end_hunk_2
begin_hunk_3_@ma_dr_mp3_version:bb.a
  store i32 3, ptr %2, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_mp3_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_mp3dec_init(ptr nofree noundef writeonly captures(none) initializes((6152, 6153)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6152
  store i8 0, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 1153) i32 @ma_dr_mp3dec_decode_frame(ptr noundef initializes((6155, 6156)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #27 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %i.b = alloca [40 x i8], align 16               ; 12 uses
  %5 = alloca [1 x %struct.ma_dr_mp3_bs], align 16 ; 7 uses
  %6 = alloca [1 x %struct.ma_dr_mp3_L12_scale_info], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.c = icmp sgt i32 %2, 4
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !9
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %.lr.ph125.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !9
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %.lr.ph125.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9     ; 4 uses
  %i.k = zext i8 %i.j to i32                      ; 7 uses
  %i.l = and i32 %i.k, 240
  %i.m = icmp ne i32 %i.l, 240
  %i.n = and i32 %i.k, 254
  %i.o = icmp ne i32 %i.n, 226
  %or.cond.not11.i.i = and i1 %i.m, %i.o
  %i.p = and i8 %i.j, 6                           ; 2 uses
  %.not.i.i = icmp eq i8 %i.p, 0
  %or.cond8.i.i = or i1 %.not.i.i, %or.cond.not11.i.i
  br i1 %or.cond8.i.i, label %.lr.ph125.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9     ; 7 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask.i.i = and i32 %i.s, 240
  %.not6.i.i = icmp eq i32 %.mask.i.i, 240
  %i.t = and i32 %i.s, 12
  %.not8.i = icmp eq i32 %i.t, 12
  %or.cond.i = or i1 %.not6.i.i, %.not8.i
  br i1 %or.cond.i, label %.lr.ph125.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6153
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = xor i8 %i.v, %i.j
  %i.x = icmp ult i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %.lr.ph125.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.z = load i8, ptr %i.y, align 2, !tbaa !9     ; 2 uses
  %i.aa = xor i8 %i.z, %i.r
  %i.ab = and i8 %i.aa, 12
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %ma_dr_mp3_hdr_compare.exit, label %.lr.ph125.preheader.i

ma_dr_mp3_hdr_compare.exit:                       ; preds = %bb.g
  %i.ad = icmp ult i8 %i.z, 16
  %i.ae = icmp ult i8 %i.r, 16                    ; 2 uses
  %.not = xor i1 %i.ae, %i.ad
  br i1 %.not, label %.lr.ph125.preheader.i, label %ma_dr_mp3_hdr_padding.exit

ma_dr_mp3_hdr_padding.exit:                       ; preds = %ma_dr_mp3_hdr_compare.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6148
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2870
  %i.ah = and i32 %i.k, 6
  %i.ai = icmp eq i32 %i.ah, 6
  %i.aj = and i32 %i.k, 14
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = zext i1 %i.ak to i32
  %i.am = lshr exact i32 1152, %i.al
  %i.an = lshr i32 %i.k, 3
  %.lobit.i.i = and i32 %i.an, 1                  ; 2 uses
  %i.ao = zext nneg i32 %.lobit.i.i to i64
  %i.ap = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.ao
  %i.aq = lshr i32 %i.k, 1
  %i.ar = and i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [15 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -15
  %i.av = lshr i8 %i.r, 4
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.am, 250
  %i.bb = select i1 %i.ai, i32 96000, i32 %i.ba
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = lshr i8 %i.r, 2
  %i.be = and i8 %i.bd, 3
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = xor i32 %.lobit.i.i, 1
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.k, 4
  %.lobit3.i.i = and i32 %i.bk, 1
  %i.bl = xor i32 %.lobit3.i.i, 1
  %i.bm = lshr i32 %i.bj, %i.bl
  %i.bn = udiv i32 %i.bc, %i.bm                   ; 2 uses
  %i.bo = icmp eq i8 %i.p, 6                      ; 2 uses
  %i.bp = and i32 %i.bn, 134217724
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 %i.bn ; 2 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  %i.bq = select i1 %.not.i, i32 %i.ag, i32 %spec.select.i
  %i.br = and i8 %i.r, 2
  %.not.i127 = icmp eq i8 %i.br, 0
  %i.bs = select i1 %i.bo, i32 4, i32 1
  %spec.select = select i1 %.not.i127, i32 0, i32 %i.bs
  %i.bt = add nsw i32 %i.bq, %spec.select         ; 5 uses
  %.not110 = icmp eq i32 %i.bt, %2
  br i1 %.not110, label %.thread212, label %bb.h

bb.h:                                             ; preds = %ma_dr_mp3_hdr_padding.exit
  %i.bu = add nsw i32 %i.bt, 4
  %i.bv = icmp sgt i32 %i.bu, %2
  br i1 %i.bv, label %.lr.ph125.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = icmp eq i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %.lr.ph125.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9   ; 3 uses
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = and i32 %i.cc, 240
  %i.ce = icmp ne i32 %i.cd, 240
  %i.cf = and i32 %i.cc, 254
  %i.cg = icmp ne i32 %i.cf, 226
  %or.cond.not11.i.i128 = and i1 %i.ce, %i.cg
  %i.ch = and i8 %i.cb, 6
  %.not.i.i129 = icmp eq i8 %i.ch, 0
  %or.cond8.i.i130 = or i1 %.not.i.i129, %or.cond.not11.i.i128
  br i1 %or.cond8.i.i130, label %.lr.ph125.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9   ; 3 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %.mask.i.i131 = and i32 %i.ck, 240
  %.not6.i.i132 = icmp ne i32 %.mask.i.i131, 240
  %i.cl = and i32 %i.ck, 12
  %.not8.i133 = icmp ne i32 %i.cl, 12
  %or.cond.i134.not229 = and i1 %.not6.i.i132, %.not8.i133
  %i.cm = xor i8 %i.cb, %i.j
  %i.cn = icmp ult i8 %i.cm, 2
  %or.cond228 = and i1 %i.cn, %or.cond.i134.not229
  br i1 %or.cond228, label %bb.l, label %.lr.ph125.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.co = xor i8 %i.cj, %i.r
  %i.cp = and i8 %i.co, 12
  %i.cq = icmp ne i8 %i.cp, 0
  %i.cr = icmp ult i8 %i.cj, 16
  %.not111 = xor i1 %i.ae, %i.cr
  %or.cond563 = or i1 %i.cq, %.not111
  %.not112 = icmp eq i32 %i.bt, 0
  %or.cond564 = or i1 %or.cond563, %.not112
  br i1 %or.cond564, label %.lr.ph125.preheader.i, label %.thread212

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  br label %ma_dr_mp3d_find_frame.exit.thread

.lr.ph125.preheader.i:                            ; preds = %bb.h, %bb.l, %bb.i, %bb.k, %bb.j, %bb.d, %bb.e, %bb.c, %bb.f, %bb.g, %bb.b, %ma_dr_mp3_hdr_compare.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6148 ; 2 uses
  %i.ct = add nsw i32 %2, -4                      ; 2 uses
  %i.cu = zext nneg i32 %2 to i64
  %wide.trip.count.i.a = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.ke, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %i.cv = load i8, ptr %.063121.i, align 1, !tbaa !9
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.n, label %ma_dr_mp3_hdr_valid.exit.thread.i

bb.n:                                             ; preds = %.lr.ph125.i
  %i.cx = getelementptr i8, ptr %.063121.i, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !9   ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 7 uses
  %i.da = and i32 %i.cz, 240
  %i.db = icmp ne i32 %i.da, 240
  %i.dc = and i32 %i.cz, 254
  %i.dd = icmp ne i32 %i.dc, 226
  %or.cond.not11.i.i136 = and i1 %i.db, %i.dd
  %i.de = and i8 %i.cy, 6                         ; 2 uses
  %.not.i.i137 = icmp eq i8 %i.de, 0
  %or.cond8.i.i138 = or i1 %.not.i.i137, %or.cond.not11.i.i136
  br i1 %or.cond8.i.i138, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr i8, ptr %.063121.i, i64 2 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9   ; 4 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %.mask.i.i139 = and i32 %i.dh, 240
  %.not6.i.i140 = icmp eq i32 %.mask.i.i139, 240
  %i.di = and i32 %i.dh, 12
  %.not105.i = icmp eq i32 %i.di, 12
  %or.cond107.i = or i1 %.not6.i.i140, %.not105.i
  br i1 %or.cond107.i, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit.i

ma_dr_mp3_hdr_padding.exit.i:                     ; preds = %bb.o
  %i.dj = and i32 %i.cz, 6
  %i.dk = icmp eq i32 %i.dj, 6
  %i.dl = and i32 %i.cz, 14
  %i.dm = icmp eq i32 %i.dl, 2
  %i.dn = zext i1 %i.dm to i32
  %i.do = lshr exact i32 1152, %i.dn
  %i.dp = lshr i32 %i.cz, 3
  %.lobit.i.i.i = and i32 %i.dp, 1                ; 2 uses
  %i.dq = zext nneg i32 %.lobit.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.dq
  %i.ds = lshr i32 %i.cz, 1
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr [15 x i8], ptr %i.dr, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -15
  %i.dx = lshr i8 %i.dg, 4
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.do, 250
  %i.ed = select i1 %i.dk, i32 96000, i32 %i.ec
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %i.ef = lshr i8 %i.dg, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = xor i32 %.lobit.i.i.i, 1
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.cz, 4
  %.lobit3.i.i.i = and i32 %i.em, 1
  %i.en = xor i32 %.lobit3.i.i.i, 1
  %i.eo = lshr i32 %i.el, %i.en
  %i.ep = udiv i32 %i.ee, %i.eo                   ; 2 uses
  %i.eq = icmp eq i8 %i.de, 6                     ; 2 uses
  %i.er = and i32 %i.ep, 134217724
  %spec.select.i.i = select i1 %i.eq, i32 %i.er, i32 %i.ep ; 3 uses
  %i.es = and i8 %i.dg, 2
  %.not.i76.i = icmp eq i8 %i.es, 0
  %i.et = select i1 %i.eq, i32 4, i32 1
  %spec.select.i141 = select i1 %.not.i76.i, i32 0, i32 %i.et
  %i.eu = add nuw nsw i32 %spec.select.i.i, %spec.select.i141 ; 2 uses
  %i.ev = icmp eq i32 %spec.select.i.i, 0
  %i.ew = trunc nuw nsw i64 %indvars.iv140.i to i32 ; 3 uses
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %ma_dr_mp3_hdr_padding.exit.i
  %i.ex = add nuw nsw i64 %indvars.iv140.i, 4
  br label %bb.p

bb.p:                                             ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 6 uses
  %.054118.i = phi i32 [ %i.eu, %.lr.ph.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 12 uses
  %i.ey = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ez = add nuw nsw i64 %i.ey, %indvars.iv140.i
  %7 = trunc nuw i64 %i.ez to i32
  %8 = icmp sgt i32 %i.ct, %7
  br i1 %8, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.r, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9   ; 3 uses
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = and i32 %i.ff, 240
  %i.fh = icmp ne i32 %i.fg, 240
  %i.fi = and i32 %i.ff, 254
  %i.fj = icmp ne i32 %i.fi, 226
  %or.cond.not11.i.i.i = and i1 %i.fh, %i.fj
  %i.fk = and i8 %i.fe, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fk, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9   ; 4 uses
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fn, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.fo = and i32 %i.fn, 12
  %.not8.i.i = icmp eq i32 %i.fo, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = load i8, ptr %i.cx, align 1, !tbaa !9   ; 3 uses
  %i.fq = xor i8 %i.fp, %i.fe
  %i.fr = icmp ult i8 %i.fq, 2
  br i1 %i.fr, label %bb.u, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.fs = load i8, ptr %i.df, align 1, !tbaa !9   ; 4 uses
  %i.ft = xor i8 %i.fs, %i.fm
  %i.fu = and i8 %i.ft, 12
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %ma_dr_mp3_hdr_compare.exit.i, label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.i:                     ; preds = %bb.u
  %i.fw = icmp ult i8 %i.fs, 16                   ; 2 uses
  %i.fx = icmp ult i8 %i.fm, 16
  %.not70.i = xor i1 %i.fx, %i.fw
  br i1 %.not70.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit78.i

ma_dr_mp3_hdr_padding.exit78.i:                   ; preds = %ma_dr_mp3_hdr_compare.exit.i
  %i.fy = and i8 %i.fs, 2
  %.not.i77.i = icmp eq i8 %i.fy, 0
  %i.fz = and i8 %i.fp, 6
  %i.ga = icmp eq i8 %i.fz, 6
  %.neg.i = select i1 %i.ga, i32 -4, i32 -1
  %.neg106.i = select i1 %.not.i77.i, i32 0, i32 %.neg.i
  %i.gb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.gc = add nsw i32 %.neg106.i, %i.gb           ; 3 uses
  %i.gd = and i8 %i.fm, 2
  %.not.i79.i = icmp eq i8 %i.gd, 0
  %i.ge = icmp eq i8 %i.fk, 6
  %i.gf = select i1 %i.ge, i32 4, i32 1
  %i.gg = select i1 %.not.i79.i, i32 0, i32 %i.gf
  %i.gh = add nsw i32 %i.gc, %i.gg                ; 2 uses
  %i.gi = add nuw nsw i64 %i.ex, %indvars.iv.i
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i32 %i.gh, %i.gj
  %i.gl = icmp sgt i32 %i.gk, %2
  br i1 %i.gl, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %ma_dr_mp3_hdr_padding.exit78.i
  %i.gm = sext i32 %i.gh to i64
  %i.gn = getelementptr inbounds i8, ptr %i.fa, i64 %i.gm ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = icmp eq i8 %i.go, -1
  br i1 %i.gp, label %bb.w, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9   ; 3 uses
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = and i32 %i.gs, 240
  %i.gu = icmp ne i32 %i.gt, 240
  %i.gv = and i32 %i.gs, 254
  %i.gw = icmp ne i32 %i.gv, 226
  %or.cond.not11.i.i81.i = and i1 %i.gu, %i.gw
  %i.gx = and i8 %i.gr, 6
  %.not.i.i82.i = icmp eq i8 %i.gx, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !9   ; 3 uses
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.ha, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hb = and i32 %i.ha, 12
  %.not8.i86.i = icmp ne i32 %i.hb, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.hc = xor i8 %i.gr, %i.fp
  %i.hd = icmp ult i8 %i.hc, 2
  %or.cond155.i = and i1 %i.hd, %or.cond.i87.not157.i
  br i1 %or.cond155.i, label %bb.y, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.he = xor i8 %i.gz, %i.fs
  %i.hf = and i8 %i.he, 12
  %i.hg = icmp ne i8 %i.hf, 0
  %i.hh = icmp ult i8 %i.gz, 16
  %.not71.i = xor i1 %i.fw, %i.hh
  %or.cond156.i = or i1 %.not71.i, %i.hg
  br i1 %or.cond156.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.gc, ptr %i.cs, align 4, !tbaa !8
  br label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.thread.i:              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %ma_dr_mp3_hdr_padding.exit78.i, %ma_dr_mp3_hdr_compare.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.257.i = phi i32 [ 0, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gc, %bb.z ], [ 0, %bb.x ], [ 0, %ma_dr_mp3_hdr_padding.exit78.i ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gb, %bb.z ], [ %.054118.i, %bb.x ], [ %.054118.i, %ma_dr_mp3_hdr_padding.exit78.i ], [ %.054118.i, %bb.r ], [ %.054118.i, %bb.u ], [ %.054118.i, %bb.t ], [ %.054118.i, %bb.q ], [ %.054118.i, %bb.s ], [ %.054118.i, %bb.y ], [ %.054118.i, %bb.w ], [ %.054118.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hi = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.hj = icmp samesign ult i64 %indvars.iv.i, 2303
  %or.cond.i143 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i, !llvm.loop !2871

.critedge.i:                                      ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %ma_dr_mp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %ma_dr_mp3_hdr_padding.exit.i ], [ %.257.i, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.eu, %ma_dr_mp3_hdr_padding.exit.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 9 uses
  %.lcssa.i = phi i1 [ false, %ma_dr_mp3_hdr_padding.exit.i ], [ %i.hi, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %i.hk = add nsw i32 %.054.lcssa.i, %i.ew        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hk, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %i.hl = sub nuw nsw i64 %i.cu, %indvars.iv140.i
  %.val.pre.i.i = load i8, ptr %i.cx, align 1, !tbaa !9 ; 2 uses
  %.val16.pre.i.i = load i8, ptr %i.df, align 1, !tbaa !9 ; 3 uses
  %i.hm = icmp ult i8 %.val16.pre.i.i, 16
  br label %ma_dr_mp3_hdr_padding.exit.i.i

ma_dr_mp3_hdr_padding.exit.i.i:                   ; preds = %bb.af, %bb.aa
  %.val16.i.i = phi i8 [ %.val16.pre.i.i, %bb.aa ], [ %i.jt, %bb.af ] ; 3 uses
  %.val.i.i = phi i8 [ %.val.pre.i.i, %bb.aa ], [ %i.jl, %bb.af ] ; 2 uses
  %.021.i.i = phi i32 [ 0, %bb.aa ], [ %i.kc, %bb.af ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.aa ], [ %i.jc, %bb.af ]
  %i.hn = zext i8 %.val.i.i to i32                ; 5 uses
  %i.ho = and i32 %i.hn, 6
  %i.hp = icmp eq i32 %i.ho, 6
  %i.hq = and i32 %i.hn, 14
  %i.hr = icmp eq i32 %i.hq, 2
  %i.hs = zext i1 %i.hr to i32
  %i.ht = lshr exact i32 1152, %i.hs
  %i.hu = lshr i32 %i.hn, 3
  %.lobit.i.i.i.i = and i32 %i.hu, 1              ; 2 uses
  %i.hv = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.hw = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.hv
  %i.hx = lshr i32 %i.hn, 1
  %i.hy = and i32 %i.hx, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr [15 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -15
  %i.ic = lshr i8 %.val16.i.i, 4
  %i.id = zext nneg i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.ht, 250
  %i.ii = select i1 %i.hp, i32 96000, i32 %i.ih
  %i.ij = mul nuw nsw i32 %i.ii, %i.ig
  %i.ik = lshr i8 %.val16.i.i, 2
  %i.il = and i8 %i.ik, 3
  %i.im = zext nneg i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !8
  %i.ip = xor i32 %.lobit.i.i.i.i, 1
  %i.iq = lshr i32 %i.io, %i.ip
  %i.ir = lshr i32 %i.hn, 4
  %.lobit3.i.i.i.i = and i32 %i.ir, 1
  %i.is = xor i32 %.lobit3.i.i.i.i, 1
  %i.it = lshr i32 %i.iq, %i.is
  %i.iu = udiv i32 %i.ij, %i.it                   ; 2 uses
  %i.iv = and i8 %.val.i.i, 6
  %i.iw = icmp eq i8 %i.iv, 6                     ; 2 uses
  %i.ix = and i32 %i.iu, 134217724
  %spec.select.i.i.i = select i1 %i.iw, i32 %i.ix, i32 %i.iu ; 2 uses
  %.not.i.i89.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.iy = select i1 %.not.i.i89.i, i32 %.055.lcssa.i, i32 %spec.select.i.i.i
  %i.iz = and i8 %.val16.i.i, 2
  %.not.i17.i.i = icmp eq i8 %i.iz, 0
  %i.ja = select i1 %i.iw, i32 4, i32 1
  %spec.select.i90.i = select i1 %.not.i17.i.i, i32 0, i32 %i.ja
  %i.jb = add i32 %spec.select.i90.i, %.01420.i.i
  %i.jc = add i32 %i.jb, %i.iy                    ; 3 uses
  %i.jd = add nsw i32 %i.jc, 4
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %i.hl, %i.je
  br i1 %i.jf, label %ma_dr_mp3d_match_frame.exit.i, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %i.jg = sext i32 %i.jc to i64
  %i.jh = getelementptr inbounds i8, ptr %.063121.i, i64 %i.jg ; 3 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !9
  %i.jj = icmp eq i8 %i.ji, -1
  br i1 %i.jj, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !9   ; 4 uses
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 240
  %i.jo = icmp ne i32 %i.jn, 240
  %i.jp = and i32 %i.jm, 254
  %i.jq = icmp ne i32 %i.jp, 226
  %or.cond.not11.i.i.i.i = and i1 %i.jo, %i.jq
  %i.jr = and i8 %i.jl, 6
  %.not.i.i.i.i = icmp eq i8 %i.jr, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i, %or.cond.not11.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %.critedge.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !9   ; 4 uses
  %i.ju = zext i8 %i.jt to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.ju, 240
  %.not6.i.i.i.i = icmp ne i32 %.mask.i.i.i.i, 240
  %i.jv = and i32 %i.ju, 12
  %.not8.i.i.i = icmp ne i32 %i.jv, 12
  %or.cond.i.not28.i.i = and i1 %.not6.i.i.i.i, %.not8.i.i.i
  %i.jw = xor i8 %i.jl, %.val.pre.i.i
  %i.jx = icmp ult i8 %i.jw, 2
  %or.cond.i91.i = select i1 %or.cond.i.not28.i.i, i1 %i.jx, i1 false
  br i1 %or.cond.i91.i, label %bb.ae, label %.critedge.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.jy = xor i8 %i.jt, %.val16.pre.i.i
  %i.jz = and i8 %i.jy, 12
  %i.ka = icmp ne i8 %i.jz, 0
  %i.kb = icmp ult i8 %i.jt, 16
  %.not.i92.i = xor i1 %i.hm, %i.kb
  %or.cond27.i.i = select i1 %i.ka, i1 true, i1 %.not.i92.i
  br i1 %or.cond27.i.i, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kc = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.kc, 10
  br i1 %exitcond.not.i.i, label %ma_dr_mp3d_find_frame.exit, label %ma_dr_mp3_hdr_padding.exit.i.i, !llvm.loop !2872

ma_dr_mp3d_match_frame.exit.i:                    ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %ma_dr_mp3d_find_frame.exit.loopexit332

.critedge.thread.i:                               ; preds = %bb.p, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %ma_dr_mp3d_match_frame.exit.i, %.critedge.i
  %.054112.i = phi i32 [ %.054.lcssa.i, %bb.ae ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.054.lcssa.i, %bb.ad ], [ %.054118.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.kd = icmp eq i32 %.054112.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.kd, i1 false
  br i1 %or.cond73.i, label %ma_dr_mp3d_find_frame.exit.loopexit332, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4, !tbaa !8
  br label %ma_dr_mp3_hdr_valid.exit.thread.i

ma_dr_mp3_hdr_valid.exit.thread.i:                ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i.a
  br i1 %exitcond.not.i, label %ma_dr_mp3d_find_frame.exit.thread, label %.lr.ph125.i, !llvm.loop !2873

ma_dr_mp3d_find_frame.exit.loopexit332:           ; preds = %ma_dr_mp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ew, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.pre408 = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %ma_dr_mp3d_find_frame.exit

ma_dr_mp3d_find_frame.exit:                       ; preds = %bb.af, %ma_dr_mp3d_find_frame.exit.loopexit332
  %.pre-phi = phi i32 [ %.pre408, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.hk, %bb.af ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %.054.lcssa.i, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.ew, %bb.af ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.kf = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.kf
  br i1 %or.cond117, label %ma_dr_mp3d_find_frame.exit.thread, label %.thread212

ma_dr_mp3d_find_frame.exit.thread:                ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %bb.m, %ma_dr_mp3d_find_frame.exit
  %.3.i222 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %ma_dr_mp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i222, ptr %4, align 4, !tbaa !1964
  br label %bb.fz

.thread212:                                       ; preds = %bb.l, %ma_dr_mp3_hdr_padding.exit, %ma_dr_mp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %ma_dr_mp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %i.kg = sext i32 %.095 to i64
  %i.kh = getelementptr inbounds i8, ptr %1, i64 %i.kg ; 6 uses
  %i.ki = load i32, ptr %i.kh, align 1
  store i32 %i.ki, ptr %i.d, align 8
  %i.kj = add nsw i32 %.095, %.1
  store i32 %i.kj, ptr %4, align 4, !tbaa !1964
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 3 ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !9
  %i.km = icmp ugt i8 %i.kl, -65
  %i.kn = select i1 %i.km, i32 1, i32 2
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !2121
  %i.kp = getelementptr i8, ptr %i.kh, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.kp, align 1, !tbaa !9
  %i.kq = getelementptr i8, ptr %i.kh, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.kq, align 1, !tbaa !9
  %i.kr = lshr i8 %.val122, 2
  %i.ks = and i8 %i.kr, 3
  %i.kt = zext nneg i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !8
  %i.kw = zext i8 %.val121 to i32                 ; 2 uses
  %i.kx = lshr i32 %i.kw, 3
  %.lobit.i = and i32 %i.kx, 1
  %i.ky = xor i32 %.lobit.i, 1
  %i.kz = lshr i32 %i.kv, %i.ky
  %i.la = lshr i32 %i.kw, 4
  %.lobit3.i = and i32 %i.la, 1
  %i.lb = xor i32 %.lobit3.i, 1
  %i.lc = lshr i32 %i.kz, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !2116
  %i.le = load i8, ptr %i.kp, align 1, !tbaa !9
  %i.lf = lshr i8 %i.le, 1
  %i.lg = and i8 %i.lf, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.lg
  %i.lh = zext nneg i8 %narrow to i32
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !2118
  %.val119 = load i8, ptr %i.kp, align 1, !tbaa !9
  %.val120 = load i8, ptr %i.kq, align 1, !tbaa !9
  %i.lj = zext i8 %.val119 to i32                 ; 2 uses
  %i.lk = lshr i32 %i.lj, 3
  %.lobit.i144 = and i32 %i.lk, 1
  %i.ll = zext nneg i32 %.lobit.i144 to i64
  %i.lm = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.ll
  %i.ln = lshr i32 %i.lj, 1
  %i.lo = and i32 %i.ln, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr [15 x i8], ptr %i.lm, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -15
  %i.ls = lshr i8 %.val120, 4
  %i.lt = zext nneg i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !9
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw nsw i32 %i.lw, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !2120
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 9 uses
  store ptr %i.lz, ptr %5, align 16, !tbaa !1966
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.ma, align 8, !tbaa !1967
  %i.mb = shl i32 %.1, 3
  %i.mc = add i32 %i.mb, -32                      ; 10 uses
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !1968
  %i.me = load i8, ptr %i.kp, align 1, !tbaa !9
  %.fr = freeze i8 %i.me                          ; 4 uses
  %i.mf = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.mf, 0
  br i1 %.not114, label %bb.ag, label %ma_dr_mp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread212
  store i32 16, ptr %i.ma, align 8, !tbaa !1967
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.ag, %.thread212
  %.promoted = phi i32 [ 0, %.thread212 ], [ 16, %bb.ag ]
  %i.mg = icmp eq i8 %i.lg, 1
  br i1 %i.mg, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mj = call fastcc i32 @ma_dr_mp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.mi, ptr noundef nonnull %i.kh) ; 4 uses
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ml = load i32, ptr %i.ma, align 8, !tbaa !1967 ; 3 uses
  %i.mm = load i32, ptr %i.md, align 4, !tbaa !1968 ; 2 uses
  %i.mn = icmp sgt i32 %i.ml, %i.mm
  br i1 %i.mn, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8, !tbaa !9
  br label %bb.fz

bb.aj:                                            ; preds = %bb.ai
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !2874 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.mp, i32 range(i32 0, -2147483648) %i.mj) ; 2 uses
  %i.mq = sub nsw i32 %i.mp, %i.mj
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.mq, i32 0)
  %i.mr = zext nneg i32 %narrow.i to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mr
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mv = sub nsw i32 %i.mm, %i.ml
  %i.mw = lshr i32 %i.mv, 3                       ; 2 uses
  %i.mx = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mu, ptr nonnull readonly align 1 %i.mt, i64 %i.mx, i1 false)
  %i.my = getelementptr inbounds i8, ptr %i.mu, i64 %i.mx
  %i.mz = load ptr, ptr %5, align 16, !tbaa !1966
  %i.na = sdiv i32 %i.ml, 8
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.nb
  %i.nd = zext nneg i32 %i.mw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.my, ptr align 1 %i.nc, i64 %i.nd, i1 false)
  %i.ne = add nsw i32 %..i, %i.mw
  store ptr %i.mu, ptr %i.mh, align 8, !tbaa !1966
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nf, align 8, !tbaa !1967
  %i.ng = shl nsw i32 %i.ne, 3                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.ng, ptr %i.nh, align 4, !tbaa !1968
  %i.ni = load i32, ptr %i.mo, align 8, !tbaa !2874
  %i.nj = icmp sge i32 %i.ni, %i.mj               ; 2 uses
  %i.nk = zext i1 %i.nj to i32
  %i.nl = icmp ne ptr %3, null
  %or.cond = and i1 %i.nl, %i.nj
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aj
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.oa = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %ma_dr_mp3_L3_decode.exit
  %i.oe = phi i1 [ true, %.preheader ], [ false, %ma_dr_mp3_L3_decode.exit ]
  %.093324 = phi i32 [ 0, %.preheader ], [ 1, %ma_dr_mp3_L3_decode.exit ]
  %.0100323 = phi ptr [ %3, %.preheader ], [ %i.blu, %ma_dr_mp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.nm, i8 0, i64 4608, i1 false)
  %i.of = load i32, ptr %i.ko, align 4, !tbaa !2121 ; 4 uses
  %i.og = mul nuw nsw i32 %i.of, %.093324
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [32 x i8], ptr %i.mi, i64 %i.oh ; 7 uses
  %i.oj = icmp sgt i32 %i.of, 0                   ; 2 uses
  br i1 %i.oj, label %.lr.ph.i149, label %._crit_edge.i146

.lr.ph.i149:                                      ; preds = %bb.ak
  %i.ok = load ptr, ptr %i.mh, align 8, !tbaa !1966 ; 6 uses
  %i.ol = ptrtoint ptr %i.ok to i64
  %wide.trip.count.i150 = zext nneg i32 %i.of to i64
  %.pre.i = load i32, ptr %i.nf, align 8, !tbaa !2875
  br label %bb.al

bb.al:                                            ; preds = %ma_dr_mp3_L3_huffman.exit.i, %.lr.ph.i149
end_hunk_3
