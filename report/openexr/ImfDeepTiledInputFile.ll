Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepTiledInputFile?download=true
inline.NumInlined: 777
inline.NumDeleted: 367
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_111TileProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferERKSt6vectorINS_9DeepSliceESaIS9_EE:bb.a
  %i.hs = getelementptr inbounds i8, ptr %i.hm, i64 %i.hr
  br label %.lr.ph19.split.i

._crit_edge20.i:                                  ; preds = %._crit_edge.i, %.lr.ph19.i, %bb.bi
  %i.ht = phi i32 [ %i.gq, %bb.bi ], [ %i.gq, %.lr.ph19.i ], [ %i.id, %._crit_edge.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 56 ; 2 uses
  %.not5.i = icmp eq ptr %i.hu, %.val37
  br i1 %.not5.i, label %_ZN7Imf_3_412_GLOBAL__N_111TileProcess8run_fillEPKNS_15DeepFrameBufferEiiiiRKSt6vectorINS_9DeepSliceESaIS6_EE.exit, label %bb.be

.lr.ph19.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph19.split.preheader.i
  %i.hv = phi i32 [ %i.gq, %.lr.ph19.split.preheader.i ], [ %i.id, %._crit_edge.i ]
  %i.hw = phi i32 [ %i.gq, %.lr.ph19.split.preheader.i ], [ %i.ie, %._crit_edge.i ]
  %i.hx = phi i32 [ %i.hd, %.lr.ph19.split.preheader.i ], [ %i.if, %._crit_edge.i ] ; 2 uses
  %i.hy = phi i32 [ %i.hd, %.lr.ph19.split.preheader.i ], [ %i.ig, %._crit_edge.i ] ; 3 uses
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph19.split.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i ] ; 2 uses
  %.06816.i = phi ptr [ %i.hs, %.lr.ph19.split.preheader.i ], [ %i.ih, %._crit_edge.i ] ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul nsw i64 %indvars.iv43.i, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.ia
  %i.ic = icmp sgt i32 %i.hy, 0
  br i1 %i.ic, label %.lr.ph15.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i46
  %.pre46.i = load i32, ptr %i.ez, align 4, !tbaa !271 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph19.split.i
  %i.id = phi i32 [ %.pre46.i, %._crit_edge.loopexit.i ], [ %i.hv, %.lr.ph19.split.i ] ; 2 uses
  %i.ie = phi i32 [ %.pre46.i, %._crit_edge.loopexit.i ], [ %i.hw, %.lr.ph19.split.i ] ; 2 uses
  %i.if = phi i32 [ %i.lh, %._crit_edge.loopexit.i ], [ %i.hx, %.lr.ph19.split.i ]
  %i.ig = phi i32 [ %i.lh, %._crit_edge.loopexit.i ], [ %i.hy, %.lr.ph19.split.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.06816.i, i64 %i.ha
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %i.ii = sext i32 %i.ie to i64
  %i.ij = icmp slt i64 %indvars.iv.next44.i, %i.ii
  br i1 %i.ij, label %.lr.ph19.split.i, label %._crit_edge20.i, !llvm.loop !236

.lr.ph15.i:                                       ; preds = %.lr.ph19.split.i, %.loopexit.i46
  %i.ik = phi i32 [ %i.lh, %.loopexit.i46 ], [ %i.hx, %.lr.ph19.split.i ] ; 9 uses
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.loopexit.i46 ], [ 0, %.lr.ph19.split.i ] ; 2 uses
  %.06413.i = phi ptr [ %.1.i, %.loopexit.i46 ], [ %.06816.i, %.lr.ph19.split.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv40.i
  %i.im = load i32, ptr %i.il, align 4, !tbaa !63 ; 11 uses
  %i.in = load ptr, ptr %.06413.i, align 8, !tbaa !75 ; 8 uses
  %i.io = icmp eq i32 %i.im, 0
  %i.ip = icmp eq ptr %i.in, null
  %or.cond.i45 = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond.i45, label %.loopexit.i46, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph15.i
  %i.iq = load i32, ptr %.sroa.02.022.i, align 8, !tbaa !85
  switch i32 %i.iq, label %bb.bx [
    i32 0, label %bb.bk
    i32 1, label %bb.bl
    i32 2, label %bb.bw
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ir = load double, ptr %i.hc, align 8, !tbaa !275
  %i.is = fptoui double %i.ir to i32              ; 2 uses
  %i.it = icmp sgt i32 %i.im, 0
  br i1 %i.it, label %.lr.ph12.preheader.i, label %.loopexit.i46

.lr.ph12.preheader.i:                             ; preds = %bb.bk
  %wide.trip.count38.i = zext nneg i32 %i.im to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.im, 8
  br i1 %min.iters.check, label %.lr.ph12.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph12.preheader.i
  %n.vec = and i64 %wide.trip.count38.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.iu, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat, ptr %i.iv, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count38.i
  br i1 %cmp.n, label %.loopexit.loopexit.i50, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %.lr.ph12.preheader.i, %middle.block
  %indvars.iv35.i.ph = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.lr.ph12.i ], [ %indvars.iv35.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv35.i
  store i32 %i.is, ptr %i.ix, align 4, !tbaa !63
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %.loopexit.loopexit.i50, label %.lr.ph12.i, !llvm.loop !238

bb.bl:                                            ; preds = %bb.bj
  %i.iy = load double, ptr %i.hc, align 8, !tbaa !275
  %i.iz = fptrunc double %i.iy to float           ; 2 uses
  %i.ja = bitcast float %i.iz to i32
  %i.jb = call float @llvm.fabs.f32(float %i.iz)
  %i.jc = bitcast float %i.jb to i32              ; 10 uses
  %i.jd = lshr i32 %i.ja, 16                      ; 3 uses
  %i.je = trunc nuw i32 %i.jd to i16
  %i.jf = and i16 %i.je, -32768                   ; 3 uses
  %i.jg = icmp samesign ugt i32 %i.jc, 947912703
  br i1 %i.jg, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.jh = icmp samesign ugt i32 %i.jc, 2139095039
  br i1 %i.jh, label %bb.bn, label %bb.bp, !prof !64

bb.bn:                                            ; preds = %bb.bm
  %i.ji = or disjoint i16 %i.jf, 31744            ; 2 uses
  %i.jj = icmp eq i32 %i.jc, 2139095040
  br i1 %i.jj, label %_ZN9Imath_3_24halfC2Ef.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = lshr i32 %i.jc, 13
  %i.jl = and i32 %i.jk, 1023                     ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  %i.jn = zext i1 %i.jm to i16
  %i.jo = trunc nuw nsw i32 %i.jl to i16
  %i.jp = or i16 %i.jo, %i.jn
  %i.jq = or disjoint i16 %i.jp, %i.ji
  br label %_ZN9Imath_3_24halfC2Ef.exit.i

bb.bp:                                            ; preds = %bb.bm
  %i.jr = icmp samesign ugt i32 %i.jc, 1199566847
  br i1 %i.jr, label %bb.bq, label %bb.br, !prof !64

bb.bq:                                            ; preds = %bb.bp
  %i.js = or disjoint i16 %i.jf, 31744
  br label %_ZN9Imath_3_24halfC2Ef.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.jt = add nuw nsw i32 %i.jc, 134221823
  %i.ju = lshr i32 %i.jc, 13
  %i.jv = and i32 %i.ju, 1
  %i.jw = add nuw nsw i32 %i.jt, %i.jv
  %i.jx = lshr i32 %i.jw, 13
  %i.jy = and i32 %i.jd, 32768
  %i.jz = or i32 %i.jx, %i.jy
  %i.ka = trunc i32 %i.jz to i16
  br label %_ZN9Imath_3_24halfC2Ef.exit.i

bb.bs:                                            ; preds = %bb.bl
  %i.kb = icmp samesign ult i32 %i.jc, 855638017
  br i1 %i.kb, label %_ZN9Imath_3_24halfC2Ef.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kc = lshr i32 %i.jc, 23                      ; 2 uses
  %i.kd = sub nuw nsw i32 126, %i.kc
  %i.ke = and i32 %i.jc, 8388607
  %i.kf = or disjoint i32 %i.ke, 8388608          ; 2 uses
  %i.kg = add nsw i32 %i.kc, -94
  %i.kh = shl i32 %i.kf, %i.kg                    ; 2 uses
  %i.ki = lshr i32 %i.kf, %i.kd                   ; 2 uses
  %i.kj = and i32 %i.jd, 32768
  %i.kk = or i32 %i.ki, %i.kj
  %i.kl = trunc nuw i32 %i.kk to i16              ; 2 uses
  %i.km = icmp ugt i32 %i.kh, -2147483648
  br i1 %i.km, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kn = icmp ne i32 %i.kh, -2147483648
  %i.ko = and i32 %i.ki, 1
  %.not.i.i.i = icmp eq i32 %i.ko, 0
  %or.cond.i.i.i = select i1 %i.kn, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfC2Ef.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kp = add nuw i16 %i.kl, 1
  br label %_ZN9Imath_3_24halfC2Ef.exit.i

_ZN9Imath_3_24halfC2Ef.exit.i:                    ; preds = %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn
  %.033.i.i.i = phi i16 [ %i.jf, %bb.bs ], [ %i.jq, %bb.bo ], [ %i.js, %bb.bq ], [ %i.ka, %bb.br ], [ %i.ji, %bb.bn ], [ %i.kp, %bb.bv ], [ %i.kl, %bb.bu ] ; 3 uses
  %i.kq = icmp sgt i32 %i.im, 0
  br i1 %i.kq, label %iter.check, label %.loopexit.i46

iter.check:                                       ; preds = %_ZN9Imath_3_24halfC2Ef.exit.i
  %wide.trip.count33.i = zext nneg i32 %i.im to i64 ; 6 uses
  %min.iters.check89 = icmp ult i32 %i.im, 4
  br i1 %min.iters.check89, label %.lr.ph10.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i32 %i.im, 16
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check
  %i.kr = and i64 %wide.trip.count33.i, 12
  %n.vec92 = and i64 %wide.trip.count33.i, 2147483632 ; 4 uses
  %broadcast.splatinsert93 = insertelement <8 x i16> poison, i16 %.033.i.i.i, i64 0
  %broadcast.splat94 = shufflevector <8 x i16> %broadcast.splatinsert93, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.ph91, %vector.body95
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next97, %vector.body95 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %index96 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <8 x i16> %broadcast.splat94, ptr %i.ks, align 2, !tbaa !278
  store <8 x i16> %broadcast.splat94, ptr %i.kt, align 2, !tbaa !278
  %index.next97 = add nuw i64 %index96, 16        ; 2 uses
  %i.ku = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.ku, label %middle.block98, label %vector.body95, !llvm.loop !239

middle.block98:                                   ; preds = %vector.body95
  %cmp.n99 = icmp eq i64 %n.vec92, %wide.trip.count33.i
  br i1 %cmp.n99, label %.loopexit.i46, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block98
  %min.epilog.iters.check = icmp eq i64 %i.kr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph10.i.preheader, label %vec.epilog.ph, !prof !279

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec92, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %wide.trip.count33.i, 2147483644 ; 3 uses
  %broadcast.splatinsert101 = insertelement <4 x i16> poison, i16 %.033.i.i.i, i64 0
  %broadcast.splat102 = shufflevector <4 x i16> %broadcast.splatinsert101, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %index103
  store <4 x i16> %broadcast.splat102, ptr %i.kv, align 2, !tbaa !278
  %index.next104 = add nuw i64 %index103, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.kw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %n.vec100, %wide.trip.count33.i
  br i1 %cmp.n105, label %.loopexit.i46, label %.lr.ph10.i.preheader

.lr.ph10.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec92, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph10.i.preheader, %.lr.ph10.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph10.i ], [ %indvars.iv30.i.ph, %.lr.ph10.i.preheader ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv30.i
  store i16 %.033.i.i.i, ptr %i.kx, align 2, !tbaa !278
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %.loopexit.i46, label %.lr.ph10.i, !llvm.loop !241

bb.bw:                                            ; preds = %bb.bj
  %i.ky = load double, ptr %i.hc, align 8, !tbaa !275
  %i.kz = fptrunc double %i.ky to float           ; 2 uses
  %i.la = icmp sgt i32 %i.im, 0
  br i1 %i.la, label %.lr.ph.preheader.i, label %.loopexit.i46

.lr.ph.preheader.i:                               ; preds = %bb.bw
  %wide.trip.count.i = zext nneg i32 %i.im to i64 ; 3 uses
  %min.iters.check108 = icmp ult i32 %i.im, 8
  br i1 %min.iters.check108, label %.lr.ph.i47.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.preheader.i
  %n.vec110 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert111 = insertelement <4 x float> poison, float %i.kz, i64 0
  %broadcast.splat112 = shufflevector <4 x float> %broadcast.splatinsert111, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph109
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body113 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index114 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <4 x float> %broadcast.splat112, ptr %i.lb, align 4, !tbaa !126
  store <4 x float> %broadcast.splat112, ptr %i.lc, align 4, !tbaa !126
  %index.next115 = add nuw i64 %index114, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ld, label %middle.block116, label %vector.body113, !llvm.loop !242

middle.block116:                                  ; preds = %vector.body113
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count.i
  br i1 %cmp.n117, label %.loopexit.i46, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block116
  %indvars.iv.i48.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec110, %middle.block116 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i47 ], [ %indvars.iv.i48.ph, %.lr.ph.i47.preheader ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i48
  store float %i.kz, ptr %i.le, align 4, !tbaa !126
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i46, label %.lr.ph.i47, !llvm.loop !243

bb.bx:                                            ; preds = %bb.bj
  %i.lf = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef nonnull @.str.44)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__cxa_throw(ptr nonnull %i.lf, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.loopexit.i50:                           ; preds = %.lr.ph12.i, %middle.block
  %.pre.i51 = load i32, ptr %i.gp, align 8, !tbaa !273
  br label %.loopexit.i46

.loopexit.i46:                                    ; preds = %.lr.ph.i47, %.lr.ph10.i, %middle.block116, %middle.block98, %vec.epilog.middle.block, %.loopexit.loopexit.i50, %bb.bw, %_ZN9Imath_3_24halfC2Ef.exit.i, %bb.bk, %.lr.ph15.i
  %i.lh = phi i32 [ %i.ik, %middle.block98 ], [ %i.ik, %.lr.ph15.i ], [ %.pre.i51, %.loopexit.loopexit.i50 ], [ %i.ik, %bb.bw ], [ %i.ik, %_ZN9Imath_3_24halfC2Ef.exit.i ], [ %i.ik, %bb.bk ], [ %i.ik, %middle.block116 ], [ %i.ik, %vec.epilog.middle.block ], [ %i.ik, %.lr.ph10.i ], [ %i.ik, %.lr.ph.i47 ] ; 4 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.06413.i, i64 %i.gy
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next41.i, %i.li
  br i1 %i.lj, label %.lr.ph15.i, label %._crit_edge.loopexit.i, !llvm.loop !244

bb.ca:                                            ; preds = %bb.bz, %bb.bh
  %.sink.i44 = phi ptr [ %i.lf, %bb.bz ], [ %i.gv, %bb.bh ]
  %.pn72.i = phi { ptr, i32 } [ %i.lg, %bb.bz ], [ %i.gw, %bb.bh ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i44) #26
  br label %common.resume

_ZN7Imf_3_412_GLOBAL__N_111TileProcess8run_fillEPKNS_15DeepFrameBufferEiiiiRKSt6vectorINS_9DeepSliceESaIS6_EE.exit: ; preds = %._crit_edge20.i, %bb.bd, %_ZN7Imf_3_412_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.cb:                                            ; preds = %bb.ao, %bb.ag, %bb.s, %bb.o, %bb.j, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.w, %bb.o ], [ %i.af, %bb.s ], [ %i.di, %bb.ag ], [ %.pn, %bb.ao ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %common.resume

bb.cc:                                            ; preds = %bb.al
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_111TileProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !99, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = invoke i32 @exr_decoding_destroy(ptr noundef %i.f, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_418DeepTiledInputFile4Data14TileBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_111TileProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferERKSt6vectorINS_9DeepSliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.b, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = extractvalue { ptr, i32 } %i.m, 1
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.q = icmp eq i32 %i.o, %i.p
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
end_hunk_0
