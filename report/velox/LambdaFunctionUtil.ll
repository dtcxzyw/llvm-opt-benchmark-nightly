inline.NumInlined: 1081
inline.NumDeleted: 452
begin_hunk_0_@_ZN8facebook5velox9functions12flattenArrayERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorE:bb.a

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i: ; preds = %.lr.ph.i.us.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.loopexit.unr-lcssa, %bb.ai
  %indvars.iv.next21.i.i = add nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %exitcond24.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, %wide.trip.count23.i.i
  br i1 %exitcond24.not.i.i, label %.loopexit, label %bb.ai, !llvm.loop !102

.lr.ph.split.i.i:                                 ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, %.lr.ph.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.hk, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i ] ; 6 uses
  %i.it = lshr i64 %indvars.iv.i.i, 6
  %i.iu = and i64 %i.it, 67108863
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !100
  %i.ix = and i64 %indvars.iv.i.i, 63
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iy, %i.iw
  %.not.i.i4.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i4.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.i.i
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv.i.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3  ; 6 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.jc
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3  ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.i.i
  store i32 %i.je, ptr %i.jh, align 4, !tbaa !3
  %i.ji = load i32, ptr %i.h, align 4, !tbaa !3
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !3
  %i.jk = icmp sgt i32 %i.je, 0
  br i1 %i.jk, label %.lr.ph.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aj
  %xtraiter149 = and i32 %i.je, 1
  %i.jl = icmp eq i32 %i.je, 1
  br i1 %i.jl, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter152 = and i32 %i.je, 2147483646
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.jx, %.lr.ph.i.i.i ] ; 3 uses
  %niter153 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter153.next.1, %.lr.ph.i.i.i ]
  %i.jm = add nsw i32 %.012.i.i.i, %i.jg
  %i.jn = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.jo = add nsw i32 %i.jn, 1
  store i32 %i.jo, ptr %i.h, align 4, !tbaa !3
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jp
  store i32 %i.jm, ptr %i.jq, align 4, !tbaa !3
  %i.jr = or disjoint i32 %.012.i.i.i, 1
  %i.js = add nsw i32 %i.jr, %i.jg
  %i.jt = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.h, align 4, !tbaa !3
  %i.jv = sext i32 %i.jt to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jv
  store i32 %i.js, ptr %i.jw, align 4, !tbaa !3
  %i.jx = add nuw nsw i32 %.012.i.i.i, 2          ; 2 uses
  %niter153.next.1 = add i32 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i32 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !101

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod150.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.012.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.jx, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod151 = trunc i32 %i.je to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.jy = add nsw i32 %.012.i.i.i.epil.init, %i.jg
  %i.jz = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.h, align 4, !tbaa !3
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.kb
  store i32 %i.jy, ptr %i.kc, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i: ; preds = %.lr.ph.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, %bb.aj, %.lr.ph.split.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.split.i.i, !llvm.loop !102

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.kd = load ptr, ptr %1, align 8, !tbaa !97    ; 2 uses
  %i.ke = load i32, ptr %i.cw, align 8, !tbaa !77 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %.sroa.39.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.e, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.g, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.c, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.d, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.h, ptr %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.b, ptr %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.kd, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i.i18 = icmp slt i32 %i.hf, %i.ke
  br i1 %.not.i.i.i.i.i18, label %bb.al, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.kf = add i32 %i.hf, 63                       ; 2 uses
  %i.kg = srem i32 %i.kf, 64
  %i.kh = sub nsw i32 %i.kf, %i.kg                ; 6 uses
  %i.ki = and i32 %i.ke, -64                      ; 4 uses
  %i.kj = icmp slt i32 %i.ki, %i.kh
  br i1 %i.kj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kk = ashr i32 %i.ke, 6
  %i.kl = and i32 %i.ke, 63
  %i.km = zext nneg i32 %i.kl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.km
  %i.kn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ko = sub nsw i32 %i.kh, %i.hf                ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.kp
  %i.kq = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.kr = sub nsw i32 64, %i.ko
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = shl i64 %i.kq, %i.ks
  %i.ku = and i64 %i.kt, %i.kn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(80) %4, i32 noundef %i.kk, i64 noundef %i.ku)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %.not32.i.i.i.i.i = icmp eq i32 %i.hf, %i.kh
  br i1 %.not32.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kv = sdiv i32 %i.hf, 64
  %i.kw = sub nsw i32 %i.kh, %i.hf                ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.kx
  %i.ky = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.kz = sub nsw i32 64, %i.kw
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %i.ky, %i.la
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(80) %4, i32 noundef %i.kv, i64 noundef %i.lb)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lc = add nsw i32 %i.kh, 64                   ; 2 uses
  %.not3340.i.i.i.i.i = icmp sgt i32 %i.lc, %i.ki
  br i1 %.not3340.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.ap
  %i.ld = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ld, null   ; 2 uses
  %i.le = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lf = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.li = load ptr, ptr %i.d, align 8             ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %bb.ap
  %.not34.i.i.i.i.i = icmp eq i32 %i.ke, %i.ki
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i, label %bb.av

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %i.lj = phi i32 [ %i.rw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.lc, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.041.i.i.i.i.i = phi i32 [ %i.lj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.kh, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.lk = sdiv i32 %.041.i.i.i.i.i, 64            ; 3 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !100 ; 3 uses
  switch i64 %i.ln, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.ar
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.lo = shl nsw i32 %i.lk, 6                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.preheader.i

.lr.ph.split.i.i.i.i.i.preheader.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lp = load ptr, ptr %i.f, align 8
  %i.lq = load ptr, ptr %i.e, align 8
  %i.lr = load ptr, ptr %i.g, align 8
  %i.ls = load ptr, ptr %i.c, align 8
  %i.lt = load ptr, ptr %i.d, align 8
  %i.lu = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lv = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i
  %.01525.us.i.i.i.i.i.i = phi i64 [ %i.ln, %.lr.ph.split.us.i.i.i.i.i.i ], [ %i.nb, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i ] ; 3 uses
  %i.lw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01525.us.i.i.i.i.i.i, i1 true)
  %20 = trunc nuw nsw i64 %i.lw to i32
  %21 = or disjoint i32 %i.lo, %20
  %22 = sext i32 %21 to i64                       ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %22
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3  ; 6 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.lz
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3  ; 3 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %22
  store i32 %i.mb, ptr %i.me, align 4, !tbaa !3
  %i.mf = load i32, ptr %i.h, align 4, !tbaa !3
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.li, i64 %22
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !3
  %i.mh = icmp sgt i32 %i.mb, 0
  br i1 %i.mh, label %.lr.ph.i19.us.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i

.lr.ph.i19.us.i.i.i.i.i.i.preheader:              ; preds = %bb.aq
  %xtraiter144 = and i32 %i.mb, 1
  %i.mi = icmp eq i32 %i.mb, 1
  br i1 %i.mi, label %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new

.lr.ph.i19.us.i.i.i.i.i.i.preheader.new:          ; preds = %.lr.ph.i19.us.i.i.i.i.i.i.preheader
  %unroll_iter147 = and i32 %i.mb, 2147483646
  br label %.lr.ph.i19.us.i.i.i.i.i.i

.lr.ph.i19.us.i.i.i.i.i.i:                        ; preds = %.lr.ph.i19.us.i.i.i.i.i.i, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new
  %.012.i20.us.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new ], [ %i.mu, %.lr.ph.i19.us.i.i.i.i.i.i ] ; 3 uses
  %niter148 = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new ], [ %niter148.next.1, %.lr.ph.i19.us.i.i.i.i.i.i ]
  %i.mj = add nsw i32 %.012.i20.us.i.i.i.i.i.i, %i.md
  %i.mk = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.h, align 4, !tbaa !3
  %i.mm = sext i32 %i.mk to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.mm
  store i32 %i.mj, ptr %i.mn, align 4, !tbaa !3
  %i.mo = or disjoint i32 %.012.i20.us.i.i.i.i.i.i, 1
  %i.mp = add nsw i32 %i.mo, %i.md
  %i.mq = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.mr = add nsw i32 %i.mq, 1
  store i32 %i.mr, ptr %i.h, align 4, !tbaa !3
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.ms
  store i32 %i.mp, ptr %i.mt, align 4, !tbaa !3
  %i.mu = add nuw nsw i32 %.012.i20.us.i.i.i.i.i.i, 2 ; 2 uses
  %niter148.next.1 = add i32 %niter148, 2         ; 2 uses
  %niter148.ncmp.1 = icmp eq i32 %niter148.next.1, %unroll_iter147
  br i1 %niter148.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.us.i.i.i.i.i.i, !llvm.loop !101

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.us.i.i.i.i.i.i
  %lcmp.mod145.not = icmp eq i32 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i, label %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader

.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader:         ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.us.i.i.i.i.i.i.preheader
  %.012.i20.us.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader ], [ %i.mu, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod146 = trunc i32 %i.mb to i1
  call void @llvm.assume(i1 %lcmp.mod146)
  %i.mv = add nsw i32 %.012.i20.us.i.i.i.i.i.i.epil.init, %i.md
  %i.mw = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.h, align 4, !tbaa !3
  %i.my = sext i32 %i.mw to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.my
  store i32 %i.mv, ptr %i.mz, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i: ; preds = %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.aq
  %i.na = add i64 %.01525.us.i.i.i.i.i.i, -1
  %i.nb = and i64 %i.na, %.01525.us.i.i.i.i.i.i   ; 2 uses
  %.not.us.i.i.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.us.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.aq, !llvm.loop !103

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nc = shl nsw i32 %i.lk, 6                    ; 2 uses
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %i.ne = add i32 %i.nc, 64
  %i.nf = sext i32 %i.ne to i64                   ; 2 uses
  %.0.off.i.i.i.i.i = add i32 %.041.i.i.i.i.i, 127
  %.not28.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not28.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph27.i.i.i.i.i.i

.lr.ph27.i.i.i.i.i.i:                             ; preds = %bb.ar
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph27.split.us.i.i.i.i.i.i, label %.lr.ph27.split.i.i.i.i.i.preheader.i

.lr.ph27.split.i.i.i.i.i.preheader.i:             ; preds = %.lr.ph27.i.i.i.i.i.i
  %i.ng = load ptr, ptr %i.f, align 8
  %i.nh = load ptr, ptr %i.e, align 8
  %i.ni = load ptr, ptr %i.g, align 8
  %i.nj = load ptr, ptr %i.c, align 8
  %i.nk = load ptr, ptr %i.d, align 8
  %i.nl = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %.lr.ph27.split.i.i.i.i.i.i

.lr.ph27.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph27.i.i.i.i.i.i
  %i.nm = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i, %.lr.ph27.split.us.i.i.i.i.i.i
  %.026.us.i.i.i.i.i.i = phi i64 [ %i.nd, %.lr.ph27.split.us.i.i.i.i.i.i ], [ %i.or, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i ] ; 2 uses
  %sext.us.i.i.i.i.i.i = shl i64 %.026.us.i.i.i.i.i.i, 32
  %i.nn = ashr exact i64 %sext.us.i.i.i.i.i.i, 32 ; 3 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !3  ; 6 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.nq
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3  ; 3 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.nn
  store i32 %i.ns, ptr %i.nv, align 4, !tbaa !3
  %i.nw = load i32, ptr %i.h, align 4, !tbaa !3
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nn
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !3
  %i.ny = icmp sgt i32 %i.ns, 0
  br i1 %i.ny, label %.lr.ph.i.us.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i.preheader:                ; preds = %bb.as
  %xtraiter134 = and i32 %i.ns, 1
  %i.nz = icmp eq i32 %i.ns, 1
  br i1 %i.nz, label %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.us.i.i.i.i.i.i.preheader.new

.lr.ph.i.us.i.i.i.i.i.i.preheader.new:            ; preds = %.lr.ph.i.us.i.i.i.i.i.i.preheader
  %unroll_iter137 = and i32 %i.ns, 2147483646
  br label %.lr.ph.i.us.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.us.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new
  %.012.i.us.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new ], [ %i.ol, %.lr.ph.i.us.i.i.i.i.i.i ] ; 3 uses
  %niter138 = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new ], [ %niter138.next.1, %.lr.ph.i.us.i.i.i.i.i.i ]
  %i.oa = add nsw i32 %.012.i.us.i.i.i.i.i.i, %i.nu
  %i.ob = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.h, align 4, !tbaa !3
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.od
  store i32 %i.oa, ptr %i.oe, align 4, !tbaa !3
  %i.of = or disjoint i32 %.012.i.us.i.i.i.i.i.i, 1
  %i.og = add nsw i32 %i.of, %i.nu
  %i.oh = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.h, align 4, !tbaa !3
  %i.oj = sext i32 %i.oh to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.oj
  store i32 %i.og, ptr %i.ok, align 4, !tbaa !3
  %i.ol = add nuw nsw i32 %.012.i.us.i.i.i.i.i.i, 2 ; 2 uses
  %niter138.next.1 = add i32 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i32 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i.i.i.i.i.i, !llvm.loop !101

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  %lcmp.mod135.not = icmp eq i32 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader

.lr.ph.i.us.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.i.i.i.i.i.preheader
  %.012.i.us.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader ], [ %i.ol, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %i.ns to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.om = add nsw i32 %.012.i.us.i.i.i.i.i.i.epil.init, %i.nu
  %i.on = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oo = add nsw i32 %i.on, 1
  store i32 %i.oo, ptr %i.h, align 4, !tbaa !3
  %i.op = sext i32 %i.on to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.op
  store i32 %i.om, ptr %i.oq, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.as
  %i.or = add nuw i64 %.026.us.i.i.i.i.i.i, 1     ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.nf
  br i1 %i.os, label %bb.as, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !104

.lr.ph27.split.i.i.i.i.i.i:                       ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i, %.lr.ph27.split.i.i.i.i.i.preheader.i
  %.026.i.i.i.i.i.i = phi i64 [ %i.qe, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.nd, %.lr.ph27.split.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.ot = lshr i64 %.026.i.i.i.i.i.i, 6
  %i.ou = and i64 %i.ot, 67108863
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !100
  %i.ox = and i64 %.026.i.i.i.i.i.i, 63
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = and i64 %i.oy, %i.ow
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph27.split.i.i.i.i.i.i
  %sext.i.i.i.i.i.i = shl i64 %.026.i.i.i.i.i.i, 32
  %i.pa = ashr exact i64 %sext.i.i.i.i.i.i, 32    ; 3 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = sext i32 %i.pc to i64                   ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3  ; 6 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.pd
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3  ; 3 uses
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.pa
  store i32 %i.pf, ptr %i.pi, align 4, !tbaa !3
  %i.pj = load i32, ptr %i.h, align 4, !tbaa !3
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.pa
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !3
  %i.pl = icmp sgt i32 %i.pf, 0
  br i1 %i.pl, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.at
  %xtraiter = and i32 %i.pf, 1
  %i.pm = icmp eq i32 %i.pf, 1
  br i1 %i.pm, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i32 %i.pf, 2147483646
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.012.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.pn = add nsw i32 %.012.i.i.i.i.i.i.i, %i.ph
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions10flattenMapERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorE:bb.a

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i: ; preds = %.lr.ph.i.us.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.loopexit.unr-lcssa, %bb.ai
  %indvars.iv.next21.i.i = add nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %exitcond24.not.i.i = icmp eq i64 %indvars.iv.next21.i.i, %wide.trip.count23.i.i
  br i1 %exitcond24.not.i.i, label %.loopexit, label %bb.ai, !llvm.loop !145

.lr.ph.split.i.i:                                 ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, %.lr.ph.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.hk, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i ] ; 6 uses
  %i.it = lshr i64 %indvars.iv.i.i, 6
  %i.iu = and i64 %i.it, 67108863
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !100
  %i.ix = and i64 %indvars.iv.i.i, 63
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iy, %i.iw
  %.not.i.i4.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i4.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.i.i
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv.i.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3  ; 6 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.jc
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3  ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.i.i
  store i32 %i.je, ptr %i.jh, align 4, !tbaa !3
  %i.ji = load i32, ptr %i.h, align 4, !tbaa !3
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !3
  %i.jk = icmp sgt i32 %i.je, 0
  br i1 %i.jk, label %.lr.ph.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aj
  %xtraiter186 = and i32 %i.je, 1
  %i.jl = icmp eq i32 %i.je, 1
  br i1 %i.jl, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter189 = and i32 %i.je, 2147483646
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.jx, %.lr.ph.i.i.i ] ; 3 uses
  %niter190 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter190.next.1, %.lr.ph.i.i.i ]
  %i.jm = add nsw i32 %.012.i.i.i, %i.jg
  %i.jn = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.jo = add nsw i32 %i.jn, 1
  store i32 %i.jo, ptr %i.h, align 4, !tbaa !3
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jp
  store i32 %i.jm, ptr %i.jq, align 4, !tbaa !3
  %i.jr = or disjoint i32 %.012.i.i.i, 1
  %i.js = add nsw i32 %i.jr, %i.jg
  %i.jt = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.h, align 4, !tbaa !3
  %i.jv = sext i32 %i.jt to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jv
  store i32 %i.js, ptr %i.jw, align 4, !tbaa !3
  %i.jx = add nuw nsw i32 %.012.i.i.i, 2          ; 2 uses
  %niter190.next.1 = add i32 %niter190, 2         ; 2 uses
  %niter190.ncmp.1 = icmp eq i32 %niter190.next.1, %unroll_iter189
  br i1 %niter190.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !144

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod187.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.012.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.jx, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod188 = trunc i32 %i.je to i1
  call void @llvm.assume(i1 %lcmp.mod188)
  %i.jy = add nsw i32 %.012.i.i.i.epil.init, %i.jg
  %i.jz = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.h, align 4, !tbaa !3
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.kb
  store i32 %i.jy, ptr %i.kc, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i: ; preds = %.lr.ph.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.loopexit.unr-lcssa, %bb.aj, %.lr.ph.split.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.split.i.i, !llvm.loop !145

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.kd = load ptr, ptr %1, align 8, !tbaa !97    ; 2 uses
  %i.ke = load i32, ptr %i.cw, align 8, !tbaa !77 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %.sroa.39.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.e, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.g, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.c, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.d, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.h, ptr %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.b, ptr %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.kd, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i.i22 = icmp slt i32 %i.hf, %i.ke
  br i1 %.not.i.i.i.i.i22, label %bb.al, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.kf = add i32 %i.hf, 63                       ; 2 uses
  %i.kg = srem i32 %i.kf, 64
  %i.kh = sub nsw i32 %i.kf, %i.kg                ; 6 uses
  %i.ki = and i32 %i.ke, -64                      ; 4 uses
  %i.kj = icmp slt i32 %i.ki, %i.kh
  br i1 %i.kj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kk = ashr i32 %i.ke, 6
  %i.kl = and i32 %i.ke, 63
  %i.km = zext nneg i32 %i.kl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.km
  %i.kn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ko = sub nsw i32 %i.kh, %i.hf                ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.kp
  %i.kq = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.kr = sub nsw i32 64, %i.ko
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = shl i64 %i.kq, %i.ks
  %i.ku = and i64 %i.kt, %i.kn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(80) %4, i32 noundef %i.kk, i64 noundef %i.ku)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %.not32.i.i.i.i.i = icmp eq i32 %i.hf, %i.kh
  br i1 %.not32.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kv = sdiv i32 %i.hf, 64
  %i.kw = sub nsw i32 %i.kh, %i.hf                ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.kx
  %i.ky = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.kz = sub nsw i32 64, %i.kw
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %i.ky, %i.la
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(80) %4, i32 noundef %i.kv, i64 noundef %i.lb)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lc = add nsw i32 %i.kh, 64                   ; 2 uses
  %.not3340.i.i.i.i.i = icmp sgt i32 %i.lc, %i.ki
  br i1 %.not3340.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.ap
  %i.ld = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ld, null   ; 2 uses
  %i.le = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lf = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.li = load ptr, ptr %i.d, align 8             ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %bb.ap
  %.not34.i.i.i.i.i = icmp eq i32 %i.ke, %i.ki
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiiT_.exit.i.i, label %bb.av

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %i.lj = phi i32 [ %i.rw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.lc, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.041.i.i.i.i.i = phi i32 [ %i.lj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.kh, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.lk = sdiv i32 %.041.i.i.i.i.i, 64            ; 3 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !100 ; 3 uses
  switch i64 %i.ln, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.ar
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.lo = shl nsw i32 %i.lk, 6                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.preheader.i

.lr.ph.split.i.i.i.i.i.preheader.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lp = load ptr, ptr %i.f, align 8
  %i.lq = load ptr, ptr %i.e, align 8
  %i.lr = load ptr, ptr %i.g, align 8
  %i.ls = load ptr, ptr %i.c, align 8
  %i.lt = load ptr, ptr %i.d, align 8
  %i.lu = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lv = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i
  %.01525.us.i.i.i.i.i.i = phi i64 [ %i.ln, %.lr.ph.split.us.i.i.i.i.i.i ], [ %i.nb, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i ] ; 3 uses
  %i.lw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01525.us.i.i.i.i.i.i, i1 true)
  %24 = trunc nuw nsw i64 %i.lw to i32
  %25 = or disjoint i32 %i.lo, %24
  %26 = sext i32 %25 to i64                       ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %26
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3  ; 6 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.lz
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3  ; 3 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %26
  store i32 %i.mb, ptr %i.me, align 4, !tbaa !3
  %i.mf = load i32, ptr %i.h, align 4, !tbaa !3
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.li, i64 %26
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !3
  %i.mh = icmp sgt i32 %i.mb, 0
  br i1 %i.mh, label %.lr.ph.i19.us.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i

.lr.ph.i19.us.i.i.i.i.i.i.preheader:              ; preds = %bb.aq
  %xtraiter181 = and i32 %i.mb, 1
  %i.mi = icmp eq i32 %i.mb, 1
  br i1 %i.mi, label %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new

.lr.ph.i19.us.i.i.i.i.i.i.preheader.new:          ; preds = %.lr.ph.i19.us.i.i.i.i.i.i.preheader
  %unroll_iter184 = and i32 %i.mb, 2147483646
  br label %.lr.ph.i19.us.i.i.i.i.i.i

.lr.ph.i19.us.i.i.i.i.i.i:                        ; preds = %.lr.ph.i19.us.i.i.i.i.i.i, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new
  %.012.i20.us.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new ], [ %i.mu, %.lr.ph.i19.us.i.i.i.i.i.i ] ; 3 uses
  %niter185 = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader.new ], [ %niter185.next.1, %.lr.ph.i19.us.i.i.i.i.i.i ]
  %i.mj = add nsw i32 %.012.i20.us.i.i.i.i.i.i, %i.md
  %i.mk = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.h, align 4, !tbaa !3
  %i.mm = sext i32 %i.mk to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.mm
  store i32 %i.mj, ptr %i.mn, align 4, !tbaa !3
  %i.mo = or disjoint i32 %.012.i20.us.i.i.i.i.i.i, 1
  %i.mp = add nsw i32 %i.mo, %i.md
  %i.mq = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.mr = add nsw i32 %i.mq, 1
  store i32 %i.mr, ptr %i.h, align 4, !tbaa !3
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.ms
  store i32 %i.mp, ptr %i.mt, align 4, !tbaa !3
  %i.mu = add nuw nsw i32 %.012.i20.us.i.i.i.i.i.i, 2 ; 2 uses
  %niter185.next.1 = add i32 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i32 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.us.i.i.i.i.i.i, !llvm.loop !144

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.us.i.i.i.i.i.i
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i, label %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader

.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader:         ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.us.i.i.i.i.i.i.preheader
  %.012.i20.us.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.us.i.i.i.i.i.i.preheader ], [ %i.mu, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod183 = trunc i32 %i.mb to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.mv = add nsw i32 %.012.i20.us.i.i.i.i.i.i.epil.init, %i.md
  %i.mw = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.h, align 4, !tbaa !3
  %i.my = sext i32 %i.mw to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.my
  store i32 %i.mv, ptr %i.mz, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i: ; preds = %.lr.ph.i19.us.i.i.i.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit22.us.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.aq
  %i.na = add i64 %.01525.us.i.i.i.i.i.i, -1
  %i.nb = and i64 %i.na, %.01525.us.i.i.i.i.i.i   ; 2 uses
  %.not.us.i.i.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.us.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.aq, !llvm.loop !146

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nc = shl nsw i32 %i.lk, 6                    ; 2 uses
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %i.ne = add i32 %i.nc, 64
  %i.nf = sext i32 %i.ne to i64                   ; 2 uses
  %.0.off.i.i.i.i.i = add i32 %.041.i.i.i.i.i, 127
  %.not28.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not28.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph27.i.i.i.i.i.i

.lr.ph27.i.i.i.i.i.i:                             ; preds = %bb.ar
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph27.split.us.i.i.i.i.i.i, label %.lr.ph27.split.i.i.i.i.i.preheader.i

.lr.ph27.split.i.i.i.i.i.preheader.i:             ; preds = %.lr.ph27.i.i.i.i.i.i
  %i.ng = load ptr, ptr %i.f, align 8
  %i.nh = load ptr, ptr %i.e, align 8
  %i.ni = load ptr, ptr %i.g, align 8
  %i.nj = load ptr, ptr %i.c, align 8
  %i.nk = load ptr, ptr %i.d, align 8
  %i.nl = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %.lr.ph27.split.i.i.i.i.i.i

.lr.ph27.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph27.i.i.i.i.i.i
  %i.nm = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i, %.lr.ph27.split.us.i.i.i.i.i.i
  %.026.us.i.i.i.i.i.i = phi i64 [ %i.nd, %.lr.ph27.split.us.i.i.i.i.i.i ], [ %i.or, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i ] ; 2 uses
  %sext.us.i.i.i.i.i.i = shl i64 %.026.us.i.i.i.i.i.i, 32
  %i.nn = ashr exact i64 %sext.us.i.i.i.i.i.i, 32 ; 3 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !3  ; 6 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.nq
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3  ; 3 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.nn
  store i32 %i.ns, ptr %i.nv, align 4, !tbaa !3
  %i.nw = load i32, ptr %i.h, align 4, !tbaa !3
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nn
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !3
  %i.ny = icmp sgt i32 %i.ns, 0
  br i1 %i.ny, label %.lr.ph.i.us.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i.preheader:                ; preds = %bb.as
  %xtraiter171 = and i32 %i.ns, 1
  %i.nz = icmp eq i32 %i.ns, 1
  br i1 %i.nz, label %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.us.i.i.i.i.i.i.preheader.new

.lr.ph.i.us.i.i.i.i.i.i.preheader.new:            ; preds = %.lr.ph.i.us.i.i.i.i.i.i.preheader
  %unroll_iter174 = and i32 %i.ns, 2147483646
  br label %.lr.ph.i.us.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.us.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new
  %.012.i.us.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new ], [ %i.ol, %.lr.ph.i.us.i.i.i.i.i.i ] ; 3 uses
  %niter175 = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader.new ], [ %niter175.next.1, %.lr.ph.i.us.i.i.i.i.i.i ]
  %i.oa = add nsw i32 %.012.i.us.i.i.i.i.i.i, %i.nu
  %i.ob = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.h, align 4, !tbaa !3
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.od
  store i32 %i.oa, ptr %i.oe, align 4, !tbaa !3
  %i.of = or disjoint i32 %.012.i.us.i.i.i.i.i.i, 1
  %i.og = add nsw i32 %i.of, %i.nu
  %i.oh = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.h, align 4, !tbaa !3
  %i.oj = sext i32 %i.oh to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.oj
  store i32 %i.og, ptr %i.ok, align 4, !tbaa !3
  %i.ol = add nuw nsw i32 %.012.i.us.i.i.i.i.i.i, 2 ; 2 uses
  %niter175.next.1 = add i32 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i32 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i.i.i.i.i.i, !llvm.loop !144

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader

.lr.ph.i.us.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.i.i.i.i.i.preheader
  %.012.i.us.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.us.i.i.i.i.i.i.preheader ], [ %i.ol, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.ns to i1
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.om = add nsw i32 %.012.i.us.i.i.i.i.i.i.epil.init, %i.nu
  %i.on = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.oo = add nsw i32 %i.on, 1
  store i32 %i.oo, ptr %i.h, align 4, !tbaa !3
  %i.op = sext i32 %i.on to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.op
  store i32 %i.om, ptr %i.oq, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.as
  %i.or = add nuw i64 %.026.us.i.i.i.i.i.i, 1     ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.nf
  br i1 %i.os, label %bb.as, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !147

.lr.ph27.split.i.i.i.i.i.i:                       ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i, %.lr.ph27.split.i.i.i.i.i.preheader.i
  %.026.i.i.i.i.i.i = phi i64 [ %i.qe, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.nd, %.lr.ph27.split.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.ot = lshr i64 %.026.i.i.i.i.i.i, 6
  %i.ou = and i64 %i.ot, 67108863
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !100
  %i.ox = and i64 %.026.i.i.i.i.i.i, 63
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = and i64 %i.oy, %i.ow
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph27.split.i.i.i.i.i.i
  %sext.i.i.i.i.i.i = shl i64 %.026.i.i.i.i.i.i, 32
  %i.pa = ashr exact i64 %sext.i.i.i.i.i.i, 32    ; 3 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = sext i32 %i.pc to i64                   ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3  ; 6 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.pd
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3  ; 3 uses
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.pa
  store i32 %i.pf, ptr %i.pi, align 4, !tbaa !3
  %i.pj = load i32, ptr %i.h, align 4, !tbaa !3
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.pa
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !3
  %i.pl = icmp sgt i32 %i.pf, 0
  br i1 %i.pl, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.at
  %xtraiter = and i32 %i.pf, 1
  %i.pm = icmp eq i32 %i.pf, 1
  br i1 %i.pm, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i32 %i.pf, 2147483646
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.012.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.pn = add nsw i32 %.012.i.i.i.i.i.i.i, %i.ph
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !340
  store ptr @.str, ptr %2, align 16, !tbaa !39, !alias.scope !343, !noalias !340
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.aj, ptr %i.ay, align 16, !tbaa !39, !noalias !340
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.av, ptr %i.az, align 16, !tbaa !39, !noalias !340
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.9, i64 20, i64 284, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !340
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.9) #24
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %3, align 8, !tbaa !175   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ba

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.bg = extractvalue { i32, i1 } %i.aw, 0
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISC_EEvSE_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.93) align 8 %2, ptr noundef byval(%class.anon.94) align 8 %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.92", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !118, !range !26, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !124
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !346

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !118, !range !26, !noundef !27
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !124
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !100
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !346

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.q

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.bm = phi i32 [ %i.bg, %.lr.ph ], [ %i.fc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.053 = phi i32 [ %i.c, %.lr.ph ], [ %i.bm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.bn = sdiv i32 %.053, 64                      ; 3 uses
  %i.bo = load i8, ptr %3, align 8, !tbaa !125, !range !26, !noundef !27
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !127
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !100
  %i.bt = xor i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = xor i64 %i.bs, %i.bv                    ; 3 uses
  switch i64 %i.bw, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bx = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !334, !nonnull !27, !align !237 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !335 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load ptr, ptr %i.bj, align 8, !nonnull !27, !align !239 ; 4 uses
  %i.cf = load ptr, ptr %i.bk, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.cg = load ptr, ptr %i.bl, align 8, !nonnull !27, !align !237 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !76
  %.promoted = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %.lr.ph.i.split.us
  %i.cj = phi i32 [ %.promoted, %.lr.ph.i.split.us ], [ %i.cs, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 2 uses
  %.01519.i.us = phi i64 [ %i.bw, %.lr.ph.i.split.us ], [ %i.cu, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 3 uses
  %i.ck = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us, i1 true)
  %6 = trunc nuw nsw i64 %i.ck to i32
  %7 = or disjoint i32 %i.bx, %6
  %8 = sext i32 %7 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cj, i32 %i.cp) ; 2 uses
  %i.cr = extractvalue { i32, i1 } %i.cq, 1
  br i1 %i.cr, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, !prof !116

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %i.cs = extractvalue { i32, i1 } %i.cq, 0       ; 2 uses
  store i32 %i.cs, ptr %i.ce, align 4, !tbaa !3
  %i.ct = add i64 %.01519.i.us, -1
  %i.cu = and i64 %i.ct, %.01519.i.us             ; 2 uses
  %.not.i41.us = icmp eq i64 %i.cu, 0
  br i1 %.not.i41.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !347

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !7, !range !26, !noundef !27
  %i.cx = trunc nuw i8 %i.cw to i1
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cy = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.cz = add i32 %i.cy, 64
  %i.da = sext i32 %i.cz to i64
  %.0.off = add i32 %.053, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.db = sext i32 %i.cy to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.db, %.lr.ph21.i ], [ %i.dd, %bb.j ] ; 2 uses
  %i.dc = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef %i.dc)
  %i.dd = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  br i1 %i.de, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !348

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %.lr.ph.i.split
  %.01519.i = phi i64 [ %i.bw, %.lr.ph.i.split ], [ %i.fb, %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit ] ; 3 uses
  %i.df = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = or disjoint i32 %i.bx, %i.dg            ; 3 uses
  %i.di = load i8, ptr %i.cb, align 1, !range !26
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dk = zext i32 %i.dh to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !100
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !336, !range !26, !noundef !27
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.cd, align 8, !tbaa !89
  %i.du = sext i32 %i.dh to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !100
  %i.eb = and i64 %i.dx, 63
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ec, %i.ea
  %.not.i7.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.m
  %i.ee = load i64, ptr %i.ca, align 8, !tbaa !100
  %i.ef = and i64 %i.ee, 1
  %.not.i6.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.n, %bb.l
  %i.eg = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ei = load ptr, ptr %i.cg, align 8, !tbaa !76
  %i.ej = sext i32 %i.dh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.eg, i32 %i.eo) ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 1
  br i1 %i.eq, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i, !prof !116

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %.us-phi = phi i32 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.us-phi51 = phi i32 [ %i.cp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !349
  store ptr @.str, ptr %4, align 16, !tbaa !39, !alias.scope !352, !noalias !349
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.us-phi, ptr %i.er, align 16, !tbaa !39, !noalias !349
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.us-phi51, ptr %i.es, align 16, !tbaa !39, !noalias !349
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.9, i64 20, i64 284, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !349
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.9) #24
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.split.us
  unreachable

bb.p:                                             ; preds = %.split.us
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %5, align 8, !tbaa !175   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !39
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.et

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.ez = extractvalue { i32, i1 } %i.ep, 0
  store i32 %i.ez, ptr %i.ce, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit

_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit: ; preds = %bb.l, %bb.n, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i
  %i.fa = add i64 %.01519.i, -1
  %i.fb = and i64 %i.fa, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !347

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %bb.h, %bb.i
  %i.fc = add nsw i32 %i.bm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fc, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !355

bb.q:                                             ; preds = %._crit_edge
  %i.fd = ashr i32 %1, 6
  %i.fe = and i32 %1, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %notmask.i42 = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i42, -1
  %i.fh = load i8, ptr %2, align 8, !tbaa !118, !range !26, !noundef !27
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !124
  %i.fk = sext i32 %i.fd to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !100
  %i.fn = xor i8 %i.fh, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = xor i64 %i.fm, %i.fp
  %i.fr = and i64 %i.fq, %i.fg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fr, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fr, %.preheader.i44 ], [ %i.fx, %bb.r ] ; 3 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = or disjoint i32 %i.d, %i.fu
  call void @_ZZN8facebook5velox9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 noundef %i.fv)
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.r, !llvm.loop !346

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.r, %bb.d, %bb.q, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_112flattenNullsERKNS0_17SelectivityVectorERKNS0_13DecodedVectorE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.75", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !116

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !374
  store i64 %2, ptr %4, align 16, !tbaa !39, !alias.scope !377, !noalias !374
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !39, !alias.scope !377, !noalias !374
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.17, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !374
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.17) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !175    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !26
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !68
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !69

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #24
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 2 uses
  %i.r = lshr i64 %1, 2                           ; 2 uses
  %i.s = lshr i64 %2, 2                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -4
  %i.x = and i64 %1, -4
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 9223372036854775776     ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !381

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <8 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !382

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.u, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !383

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !384, !range !26, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !388
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !389, !nonnull !27, !align !237
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !27, !align !239 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !27, !align !237 ; 2 uses
  br i1 %.not.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !76
  br label %bb.b

bb.b:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, %.preheader.split.us
  %.011.us = phi i64 [ %i.k, %.preheader.split.us ], [ %i.bo, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %3 = trunc nuw nsw i64 %i.ai to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64                         ; 3 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 6 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %5
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !3
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %5
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = icmp sgt i32 %i.an, 0
  br i1 %i.at, label %.lr.ph.i.us, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 3 uses
  %xtraiter23 = and i32 %i.an, 1
  %i.av = icmp eq i32 %i.an, 1
  br i1 %i.av, label %.epil.preheader22, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.lr.ph.i.us
  %unroll_iter26 = and i32 %i.an, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.new
  %.012.i.us = phi i32 [ 0, %.lr.ph.i.us.new ], [ %i.bh, %bb.c ] ; 3 uses
  %niter27 = phi i32 [ 0, %.lr.ph.i.us.new ], [ %niter27.next.1, %bb.c ]
  %i.aw = add nsw i32 %.012.i.us, %i.ap
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.y, align 4, !tbaa !3
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.az
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !3
  %i.bb = or disjoint i32 %.012.i.us, 1
  %i.bc = add nsw i32 %i.bb, %i.ap
  %i.bd = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.y, align 4, !tbaa !3
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bf
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !3
  %i.bh = add nuw nsw i32 %.012.i.us, 2           ; 2 uses
  %niter27.next.1 = add i32 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i32 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, label %bb.c, !llvm.loop !101

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod24.not = icmp eq i32 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, label %.epil.preheader22

.epil.preheader22:                                ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, %.lr.ph.i.us
  %.012.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.us ], [ %i.bh, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bi = add nsw i32 %.012.i.us.epil.init, %i.ap
  %i.bj = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.y, align 4, !tbaa !3
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bl
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us: ; preds = %.epil.preheader22, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, %bb.b
  %i.bn = add i64 %.011.us, -1
  %i.bo = and i64 %i.bn, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.bo, 0
  br i1 %.not10.us, label %.loopexit, label %bb.b, !llvm.loop !390

.preheader.split:                                 ; preds = %.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit
  %.011 = phi i64 [ %i.dk, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit ], [ %i.k, %.preheader ] ; 3 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = or disjoint i32 %i.m, %i.bq             ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !100
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.cb = sext i32 %i.br to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3  ; 6 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3  ; 3 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cb
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !3
  %i.cm = load i32, ptr %i.y, align 4, !tbaa !3
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cb
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !3
  %i.cp = icmp sgt i32 %i.cg, 0
  br i1 %i.cp, label %.lr.ph.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 3 uses
  %xtraiter = and i32 %i.cg, 1
  %i.cr = icmp eq i32 %i.cg, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.cg, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.dd, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.cs = add nsw i32 %.012.i, %i.cj
  %i.ct = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.y, align 4, !tbaa !3
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !3
  %i.cx = or disjoint i32 %.012.i, 1
  %i.cy = add nsw i32 %i.cx, %i.cj
  %i.cz = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.y, align 4, !tbaa !3
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.db
  store i32 %i.cy, ptr %i.dc, align 4, !tbaa !3
  %i.dd = add nuw nsw i32 %.012.i, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !101

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.dd, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.de = add nsw i32 %.012.i.epil.init, %i.cj
  %i.df = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.y, align 4, !tbaa !3
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dh
  store i32 %i.de, ptr %i.di, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit: ; preds = %.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, %.preheader.split, %bb.d
  %i.dj = add i64 %.011, -1
  %i.dk = and i64 %i.dj, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dk, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split, !llvm.loop !390

.loopexit:                                        ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_11ArrayVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox11ArrayVectorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %i.a) #22, !inline_history !391
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.f, 42
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi:bb.a
  br i1 %i.ax, label %bb.f, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit, !prof !116

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !435
  store ptr @.str, ptr %2, align 16, !tbaa !39, !alias.scope !438, !noalias !435
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.aj, ptr %i.ay, align 16, !tbaa !39, !noalias !435
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.av, ptr %i.az, align 16, !tbaa !39, !noalias !435
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.9, i64 20, i64 284, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !435
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.9) #24
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %3, align 8, !tbaa !175   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ba

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.bg = extractvalue { i32, i1 } %i.aw, 0
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISC_EEvSE_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.109) align 8 %2, ptr noundef byval(%class.anon.110) align 8 %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.92", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !154, !range !26, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !157
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !441

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !154, !range !26, !noundef !27
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !100
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !441

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.q

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.bm = phi i32 [ %i.bg, %.lr.ph ], [ %i.fc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.053 = phi i32 [ %i.c, %.lr.ph ], [ %i.bm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.bn = sdiv i32 %.053, 64                      ; 3 uses
  %i.bo = load i8, ptr %3, align 8, !tbaa !158, !range !26, !noundef !27
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !160
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !100
  %i.bt = xor i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = xor i64 %i.bs, %i.bv                    ; 3 uses
  switch i64 %i.bw, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bx = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !431, !nonnull !27, !align !237 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !335 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load ptr, ptr %i.bj, align 8, !nonnull !27, !align !239 ; 4 uses
  %i.cf = load ptr, ptr %i.bk, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.cg = load ptr, ptr %i.bl, align 8, !nonnull !27, !align !237 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !76
  %.promoted = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %.lr.ph.i.split.us
  %i.cj = phi i32 [ %.promoted, %.lr.ph.i.split.us ], [ %i.cs, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 2 uses
  %.01519.i.us = phi i64 [ %i.bw, %.lr.ph.i.split.us ], [ %i.cu, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 3 uses
  %i.ck = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us, i1 true)
  %6 = trunc nuw nsw i64 %i.ck to i32
  %7 = or disjoint i32 %i.bx, %6
  %8 = sext i32 %7 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cj, i32 %i.cp) ; 2 uses
  %i.cr = extractvalue { i32, i1 } %i.cq, 1
  br i1 %i.cr, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, !prof !116

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %i.cs = extractvalue { i32, i1 } %i.cq, 0       ; 2 uses
  store i32 %i.cs, ptr %i.ce, align 4, !tbaa !3
  %i.ct = add i64 %.01519.i.us, -1
  %i.cu = and i64 %i.ct, %.01519.i.us             ; 2 uses
  %.not.i41.us = icmp eq i64 %i.cu, 0
  br i1 %.not.i41.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !442

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !7, !range !26, !noundef !27
  %i.cx = trunc nuw i8 %i.cw to i1
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cy = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.cz = add i32 %i.cy, 64
  %i.da = sext i32 %i.cz to i64
  %.0.off = add i32 %.053, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.db = sext i32 %i.cy to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.db, %.lr.ph21.i ], [ %i.dd, %bb.j ] ; 2 uses
  %i.dc = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef %i.dc)
  %i.dd = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  br i1 %i.de, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !443

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %.lr.ph.i.split
  %.01519.i = phi i64 [ %i.bw, %.lr.ph.i.split ], [ %i.fb, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit ] ; 3 uses
  %i.df = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = or disjoint i32 %i.bx, %i.dg            ; 3 uses
  %i.di = load i8, ptr %i.cb, align 1, !range !26
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dk = zext i32 %i.dh to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !100
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !336, !range !26, !noundef !27
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.cd, align 8, !tbaa !89
  %i.du = sext i32 %i.dh to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !100
  %i.eb = and i64 %i.dx, 63
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ec, %i.ea
  %.not.i7.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.m
  %i.ee = load i64, ptr %i.ca, align 8, !tbaa !100
  %i.ef = and i64 %i.ee, 1
  %.not.i6.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.n, %bb.l
  %i.eg = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.eh = load ptr, ptr %i.cf, align 8, !tbaa !76
  %i.ei = load ptr, ptr %i.cg, align 8, !tbaa !76
  %i.ej = sext i32 %i.dh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.eg, i32 %i.eo) ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 1
  br i1 %i.eq, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i, !prof !116

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %.us-phi = phi i32 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.us-phi51 = phi i32 [ %i.cp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.eo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !444
  store ptr @.str, ptr %4, align 16, !tbaa !39, !alias.scope !447, !noalias !444
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.us-phi, ptr %i.er, align 16, !tbaa !39, !noalias !444
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.us-phi51, ptr %i.es, align 16, !tbaa !39, !noalias !444
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.9, i64 20, i64 284, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !444
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.9) #24
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.split.us
  unreachable

bb.p:                                             ; preds = %.split.us
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %5, align 8, !tbaa !175   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !39
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.et

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.ez = extractvalue { i32, i1 } %i.ep, 0
  store i32 %i.ez, ptr %i.ce, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit

_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit: ; preds = %bb.l, %bb.n, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i
  %i.fa = add i64 %.01519.i, -1
  %i.fb = and i64 %i.fa, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !442

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %bb.h, %bb.i
  %i.fc = add nsw i32 %i.bm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fc, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !450

bb.q:                                             ; preds = %._crit_edge
  %i.fd = ashr i32 %1, 6
  %i.fe = and i32 %1, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %notmask.i42 = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i42, -1
  %i.fh = load i8, ptr %2, align 8, !tbaa !154, !range !26, !noundef !27
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !157
  %i.fk = sext i32 %i.fd to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !100
  %i.fn = xor i8 %i.fh, 1
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = xor i64 %i.fm, %i.fp
  %i.fr = and i64 %i.fq, %i.fg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fr, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fr, %.preheader.i44 ], [ %i.fx, %bb.r ] ; 3 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = or disjoint i32 %i.d, %i.fu
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 noundef %i.fv)
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.r, !llvm.loop !441

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.r, %bb.d, %bb.q, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESG_SG_SG_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !451, !range !26, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !454
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !455, !nonnull !27, !align !237
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !27, !align !239 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !27, !align !237 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !27, !align !237 ; 2 uses
  br i1 %.not.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !76
  br label %bb.b

bb.b:                                             ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, %.preheader.split.us
  %.011.us = phi i64 [ %i.k, %.preheader.split.us ], [ %i.bo, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %3 = trunc nuw nsw i64 %i.ai to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64                         ; 3 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 6 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %5
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !3
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %5
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = icmp sgt i32 %i.an, 0
  br i1 %i.at, label %.lr.ph.i.us, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 3 uses
  %xtraiter23 = and i32 %i.an, 1
  %i.av = icmp eq i32 %i.an, 1
  br i1 %i.av, label %.epil.preheader22, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.lr.ph.i.us
  %unroll_iter26 = and i32 %i.an, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.new
  %.012.i.us = phi i32 [ 0, %.lr.ph.i.us.new ], [ %i.bh, %bb.c ] ; 3 uses
  %niter27 = phi i32 [ 0, %.lr.ph.i.us.new ], [ %niter27.next.1, %bb.c ]
  %i.aw = add nsw i32 %.012.i.us, %i.ap
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.y, align 4, !tbaa !3
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.az
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !3
  %i.bb = or disjoint i32 %.012.i.us, 1
  %i.bc = add nsw i32 %i.bb, %i.ap
  %i.bd = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.y, align 4, !tbaa !3
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bf
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !3
  %i.bh = add nuw nsw i32 %.012.i.us, 2           ; 2 uses
  %niter27.next.1 = add i32 %niter27, 2           ; 2 uses
  %niter27.ncmp.1 = icmp eq i32 %niter27.next.1, %unroll_iter26
  br i1 %niter27.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, label %bb.c, !llvm.loop !144

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod24.not = icmp eq i32 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, label %.epil.preheader22

.epil.preheader22:                                ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, %.lr.ph.i.us
  %.012.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.us ], [ %i.bh, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bi = add nsw i32 %.012.i.us.epil.init, %i.ap
  %i.bj = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.y, align 4, !tbaa !3
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bl
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us: ; preds = %.epil.preheader22, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us.loopexit.unr-lcssa, %bb.b
  %i.bn = add i64 %.011.us, -1
  %i.bo = and i64 %i.bn, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.bo, 0
  br i1 %.not10.us, label %.loopexit, label %bb.b, !llvm.loop !456

.preheader.split:                                 ; preds = %.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit
  %.011 = phi i64 [ %i.dk, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit ], [ %i.k, %.preheader ] ; 3 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = or disjoint i32 %i.m, %i.bq             ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !100
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.split
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.cb = sext i32 %i.br to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3  ; 6 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3  ; 3 uses
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cb
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !3
  %i.cm = load i32, ptr %i.y, align 4, !tbaa !3
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cb
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !3
  %i.cp = icmp sgt i32 %i.cg, 0
  br i1 %i.cp, label %.lr.ph.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 3 uses
  %xtraiter = and i32 %i.cg, 1
  %i.cr = icmp eq i32 %i.cg, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.cg, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.dd, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.cs = add nsw i32 %.012.i, %i.cj
  %i.ct = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.y, align 4, !tbaa !3
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !3
  %i.cx = or disjoint i32 %.012.i, 1
  %i.cy = add nsw i32 %i.cx, %i.cj
  %i.cz = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.y, align 4, !tbaa !3
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.db
  store i32 %i.cy, ptr %i.dc, align 4, !tbaa !3
  %i.dd = add nuw nsw i32 %.012.i, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !144

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.dd, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.de = add nsw i32 %.012.i.epil.init, %i.cj
  %i.df = load i32, ptr %i.y, align 4, !tbaa !3   ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.y, align 4, !tbaa !3
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dh
  store i32 %i.de, ptr %i.di, align 4, !tbaa !3
  br label %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit

_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit: ; preds = %.epil.preheader, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.loopexit.unr-lcssa, %.preheader.split, %bb.d
  %i.dj = add i64 %.011, -1
  %i.dk = and i64 %i.dj, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dk, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split, !llvm.loop !456

.loopexit:                                        ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit, %_ZZN8facebook5velox9functions12_GLOBAL__N_114flattenBuffersINS0_9MapVectorEEEvRKNS0_17SelectivityVectorEiRNS0_13DecodedVectorERN5boost13intrusive_ptrINS0_6BufferEEESE_SE_SE_ENKUliE_clEi.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox9MapVectorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(161) %i.a) #22, !inline_history !457
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_4
