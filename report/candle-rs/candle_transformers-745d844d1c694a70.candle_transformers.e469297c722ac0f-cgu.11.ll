Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.11?download=true
inline.NumInlined: 3717
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_RINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio21log_mel_spectrogram_wfEB8_:bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit118

bb.h:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.v, align 8, !noalias !5422, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5422
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !5422
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !5422
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.q, ptr %i.ac, align 8, !alias.scope !5422
  %i.ad = icmp eq i64 %9, 0
  br i1 %i.ad, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %13, 0
  br i1 %i.ae, label %bb.j, label %.split, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #30
          to label %.noexc113 unwind label %.loopexit.split-lp

.noexc113:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #26
          to label %bb.o unwind label %.loopexit.split-lp

.body123:                                         ; preds = %.loopexit137, %.loopexit.split-lp, %bb.ad, %bb.w
  %.pn = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.ci, %bb.ad ], [ %lpad.loopexit, %.loopexit137 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.body123
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %.body123
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit118 unwind label %bb.ax

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit137:                                     ; preds = %bb.s, %bb.u, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body123

.loopexit.split-lp:                               ; preds = %.invoke, %bb.k, %bb.v, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.o:                                             ; preds = %bb.v, %bb.k
  unreachable

.split:                                           ; preds = %bb.i
  %i.ah = udiv i64 %5, %9
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %11)
  %.sroa.06.0.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %1) ; 2 uses
  %i.ak = udiv i64 %.sroa.06.0.i.i, %13
  %i.al = urem i64 %.sroa.06.0.i.i, %13
  %.not.i.i = icmp ne i64 %i.al, 0
  %i.am = zext i1 %.not.i.i to i64
  %.sroa.05.0.i.i = add nuw nsw i64 %i.ak, %i.am  ; 2 uses
  %.not280 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not280, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %.split
  %.not285 = icmp eq i64 %8, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.ap = icmp ugt i64 %8, 3
  %.not286 = icmp eq i64 %12, 0
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0, i64 3)
  %.not287 = icmp samesign ult i64 %.sroa.0.0.in, 3
  %i.ar = mul i64 %9, %1
  %i.as = sub i64 %5, %i.ar
  %i.at = mul i64 %13, %9
  br label %bb.r

._crit_edge284:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125, %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit120 unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge284
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.p ], [ %.pn.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit120: ; preds = %._crit_edge284
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.r:                                             ; preds = %.lr.ph283, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125
  %indvars.iv = phi i64 [ %i.as, %.lr.ph283 ], [ %indvars.iv.next, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125 ] ; 2 uses
  %.sroa.039.0282 = phi i64 [ %1, %.lr.ph283 ], [ %i.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125 ] ; 3 uses
  %.sroa.052.0281 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph283 ], [ %i.ax, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125 ]
  %umin = call i64 @llvm.umin.i64(i64 %8, i64 %indvars.iv)
  %i.aw = add i64 %.sroa.039.0282, %13
  %i.ax = add nsw i64 %.sroa.052.0281, -1         ; 2 uses
  %i.ay = mul i64 %.sroa.039.0282, %9             ; 2 uses
  %i.az = sub i64 %5, %i.ay                       ; 6 uses
  %i.ba = call i64 @llvm.umin.i64(i64 %8, i64 %i.az)
  %.not288 = icmp eq i64 %i.ba, 0
  br i1 %.not288, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ba, %bb.r
  %i.bb = icmp ult i64 %i.az, %8
  br i1 %i.bb, label %bb.t, label %bb.s

.lr.ph:                                           ; preds = %bb.r, %bb.ba
  %.sroa.042.0258 = phi i64 [ %i.bc, %bb.ba ], [ 0, %bb.r ] ; 7 uses
  %i.bc = add nuw nsw i64 %.sroa.042.0258, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.042.0258, %3
  br i1 %exitcond.not, label %.invoke, label %bb.ay

bb.s:                                             ; preds = %bb.u, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bd = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.be = load i64, ptr %i.p, align 8, !noundef !5
  invoke fastcc void @_RINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio3fftfEB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bd, i64 noundef %i.be)
          to label %.preheader136 unwind label %.loopexit137

.preheader136:                                    ; preds = %bb.s
  br i1 %.not285, label %._crit_edge263, label %.lr.ph260

bb.t:                                             ; preds = %._crit_edge
  %i.bf = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.bg = icmp ugt i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.v, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.bi = sub nuw i64 %i.bf, %i.az
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.az
  invoke void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 4 %i.bj, i64 noundef %i.bi, float noundef 0.000000e+00)
          to label %bb.s unwind label %.loopexit137

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.bf, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #26
          to label %bb.o unwind label %.loopexit.split-lp

.preheader135:                                    ; preds = %bb.aw
  br i1 %i.ap, label %.lr.ph262, label %._crit_edge263

.lr.ph260:                                        ; preds = %.preheader136, %bb.aw
  %.sroa.044.0259 = phi i64 [ %i.bk, %bb.aw ], [ 0, %.preheader136 ] ; 5 uses
  %i.bk = add nuw i64 %.sroa.044.0259, 1          ; 2 uses
  %i.bl = shl i64 %.sroa.044.0259, 1              ; 4 uses
  %i.bm = load i64, ptr %i.an, align 8, !noundef !5 ; 6 uses
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.au, label %.invoke608

._crit_edge263:                                   ; preds = %bb.at, %.preheader136, %.preheader135
  br i1 %10, label %.preheader134, label %.loopexit

.lr.ph262:                                        ; preds = %.preheader135, %bb.at
  %.sroa.046.0261 = phi i64 [ %i.bo, %bb.at ], [ 1, %.preheader135 ] ; 5 uses
  %i.bo = add nuw nsw i64 %.sroa.046.0261, 1      ; 2 uses
  %i.bp = sub nuw i64 %8, %.sroa.046.0261         ; 3 uses
  %i.bq = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = load i64, ptr %i.an, align 8, !noundef !5 ; 4 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.as, label %.invoke608

.loopexit:                                        ; preds = %bb.ar, %._crit_edge263
  br i1 %.not286, label %._crit_edge279, label %.lr.ph278

.preheader134:                                    ; preds = %._crit_edge263, %bb.ar
  %.sroa.048.0264 = phi i64 [ %i.bt, %bb.ar ], [ 0, %._crit_edge263 ] ; 4 uses
  %i.bt = add nuw i64 %.sroa.048.0264, 1
  %i.bu = shl nuw i64 %.sroa.048.0264, 1          ; 4 uses
  %i.bv = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = load i64, ptr %i.an, align 8, !noundef !5 ; 4 uses
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.aq, label %.invoke608

._crit_edge279:                                   ; preds = %bb.af, %.loopexit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %._crit_edge279
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body123 unwind label %bb.y

bb.x:                                             ; preds = %._crit_edge279
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125 unwind label %.loopexit137

bb.y:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.lr.ph278:                                        ; preds = %.loopexit, %bb.af
  %.sroa.050.0276 = phi i64 [ %i.ca, %bb.af ], [ 0, %.loopexit ] ; 4 uses
  %i.ca = add nuw i64 %.sroa.050.0276, 1          ; 2 uses
  br i1 %.not287, label %.lr.ph273, label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph278
  %i.cb = load i64, ptr %i.an, align 8, !noundef !5 ; 8 uses
  %i.cc = mul i64 %.sroa.050.0276, %.sroa.0.0
  %i.cd = load ptr, ptr %i.ao, align 8, !nonnull !5 ; 4 uses
  br label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit125: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.ax, 0
  %indvars.iv.next = sub i64 %indvars.iv, %i.at
  br i1 %.not, label %._crit_edge284, label %bb.r

.preheader:                                       ; preds = %bb.ap
  %.not107270 = icmp samesign ugt i64 %i.em, %.sroa.0.0.in
  br i1 %.not107270, label %._crit_edge274, label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph278, %.preheader
  %.sroa.022.0.lcssa483 = phi i64 [ %i.em, %.preheader ], [ 0, %.lr.ph278 ] ; 2 uses
  %.sroa.0131.0.lcssa482 = phi float [ %i.el, %.preheader ], [ 0.000000e+00, %.lr.ph278 ]
  %i.ce = load i64, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %i.cf = mul i64 %.sroa.050.0276, %.sroa.0.0
  %i.cg = load ptr, ptr %i.ao, align 8, !nonnull !5
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.022.0.lcssa483, i64 %i.ce) ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph268, %bb.ap
  %.sroa.022.0266 = phi i64 [ 0, %.lr.ph268 ], [ %i.em, %bb.ap ] ; 8 uses
  %.sroa.0131.0265 = phi float [ 0.000000e+00, %.lr.ph268 ], [ %i.el, %bb.ap ]
  %i.ch = icmp ult i64 %.sroa.022.0266, %i.cb
  br i1 %i.ch, label %bb.ai, label %.invoke608

bb.aa:                                            ; preds = %.lr.ph273, %bb.ah
  %.sroa.022.1272 = phi i64 [ %.sroa.022.0.lcssa483, %.lr.ph273 ], [ %i.cz, %bb.ah ] ; 5 uses
  %.sroa.0131.1271 = phi float [ %.sroa.0131.0.lcssa482, %.lr.ph273 ], [ %i.cy, %bb.ah ]
  %exitcond420.not = icmp eq i64 %.sroa.022.1272, %umax
  br i1 %exitcond420.not, label %.invoke608, label %bb.ag

bb.ab:                                            ; preds = %.invoke608
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body123 unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ac
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

._crit_edge274:                                   ; preds = %bb.ah, %.preheader
  %.sroa.0131.1.lcssa = phi float [ %i.el, %.preheader ], [ %i.cy, %bb.ah ]
  %i.cl = mul i64 %.sroa.050.0276, %11
  %i.cm = add i64 %i.cl, %.sroa.039.0282          ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.q
  br i1 %i.cn, label %bb.af, label %.invoke608

bb.af:                                            ; preds = %._crit_edge274
  %i.co = call nsz noundef float @llvm.maximumnum.f32(float %.sroa.0131.1.lcssa, float 1.000000e-10)
  %i.cp = call noundef float @llvm.log10.f32(float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cm
  store float %i.cp, ptr %i.cq, align 4
  %exitcond422.not = icmp eq i64 %i.ca, %12
  br i1 %exitcond422.not, label %._crit_edge279, label %.lr.ph278

bb.ag:                                            ; preds = %bb.aa
  %i.cr = add i64 %.sroa.022.1272, %i.cf          ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %7
  br i1 %i.cs, label %bb.ah, label %.invoke608

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.sroa.022.1272
  %i.cu = load float, ptr %i.ct, align 4, !noundef !5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cr
  %i.cw = load float, ptr %i.cv, align 4, !noundef !5
  %i.cx = fmul float %i.cu, %i.cw
  %i.cy = fadd float %.sroa.0131.1271, %i.cx      ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.022.1272, 1
  %exitcond421.not = icmp eq i64 %.sroa.022.1272, %.sroa.0.0.in
  br i1 %exitcond421.not, label %._crit_edge274, label %bb.aa

bb.ai:                                            ; preds = %bb.z
  %i.da = add nuw nsw i64 %.sroa.022.0266, %i.cc  ; 6 uses
  %i.db = icmp ult i64 %i.da, %7
  br i1 %i.db, label %bb.aj, label %.invoke608

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.sroa.022.0266
  %i.dd = load float, ptr %i.dc, align 4, !noundef !5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.da
  %i.df = load float, ptr %i.de, align 4, !noundef !5
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = or disjoint i64 %.sroa.022.0266, 1      ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.cb
  br i1 %i.di, label %bb.ak, label %.invoke608

bb.ak:                                            ; preds = %bb.aj
  %i.dj = add nuw nsw i64 %i.da, 1                ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %7
  br i1 %i.dk, label %bb.al, label %.invoke608

bb.al:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dh
  %i.dm = load float, ptr %i.dl, align 4, !noundef !5
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  %i.do = load float, ptr %i.dn, align 4, !noundef !5
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = fadd float %i.dg, %i.dp
  %i.dr = or disjoint i64 %.sroa.022.0266, 2      ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %i.cb
  br i1 %i.ds, label %bb.am, label %.invoke608

bb.am:                                            ; preds = %bb.al
  %i.dt = add nuw nsw i64 %i.da, 2                ; 3 uses
  %i.du = icmp ult i64 %i.dt, %7
  br i1 %i.du, label %bb.an, label %.invoke608

bb.an:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dr
  %i.dw = load float, ptr %i.dv, align 4, !noundef !5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dt
  %i.dy = load float, ptr %i.dx, align 4, !noundef !5
  %i.dz = fmul float %i.dw, %i.dy
  %i.ea = fadd float %i.dq, %i.dz
  %i.eb = or disjoint i64 %.sroa.022.0266, 3      ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.cb
  br i1 %i.ec, label %bb.ao, label %.invoke608

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nuw nsw i64 %i.da, 3                ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %7
  br i1 %i.ee, label %bb.ap, label %.invoke608

bb.ap:                                            ; preds = %bb.ao
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.eb
  %i.eg = load float, ptr %i.ef, align 4, !noundef !5
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ed
  %i.ei = load float, ptr %i.eh, align 4, !noundef !5
  %i.ej = fmul float %i.eg, %i.ei
  %i.ek = fadd float %i.ea, %i.ej
  %i.el = fadd float %.sroa.0131.0265, %i.ek      ; 3 uses
  %i.em = add nuw nsw i64 %.sroa.022.0266, 4      ; 4 uses
  %i.en = icmp ult i64 %i.em, %i.aq
  br i1 %i.en, label %bb.z, label %.preheader

bb.aq:                                            ; preds = %.preheader134
  %i.eo = or disjoint i64 %i.bu, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.bw
  br i1 %i.ep, label %bb.ar, label %.invoke608

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %14 = load <2 x float>, ptr %i.eq, align 4
  %15 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %14)
  %i.er = fmul float %15, 5.000000e-01
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.sroa.048.0264
  store float %i.er, ptr %i.es, align 4
  %exitcond419.not = icmp eq i64 %.sroa.048.0264, %.sroa.0.0.in
  br i1 %exitcond419.not, label %.loopexit, label %.preheader134

bb.as:                                            ; preds = %.lr.ph262
  %i.et = icmp ult i64 %.sroa.046.0261, %i.br
  br i1 %i.et, label %bb.at, label %.invoke608

bb.at:                                            ; preds = %bb.as
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bp
  %i.ev = load float, ptr %i.eu, align 4, !noundef !5
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.046.0261 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !alias.scope !5423, !noundef !5
  %i.ey = fadd float %i.ev, %i.ex
  store float %i.ey, ptr %i.ew, align 4, !alias.scope !5423
  %exitcond418.not = icmp eq i64 %i.bo, %i.g
  br i1 %exitcond418.not, label %._crit_edge263, label %.lr.ph262

bb.au:                                            ; preds = %.lr.ph260
  %i.ez = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fa = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.bm
  br i1 %i.fb, label %bb.av, label %.invoke608

bb.av:                                            ; preds = %bb.au
  %i.fc = icmp ult i64 %.sroa.044.0259, %i.bm
  br i1 %i.fc, label %bb.aw, label %.invoke608

bb.aw:                                            ; preds = %bb.av
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.bl
  %i.fe = load <2 x float>, ptr %i.fd, align 4    ; 2 uses
  %i.ff = fmul <2 x float> %i.fe, %i.fe
  %16 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ff)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.sroa.044.0259
  store float %16, ptr %i.fg, align 4
  %exitcond417.not = icmp eq i64 %i.bk, %8
  br i1 %exitcond417.not, label %.preheader135, label %.lr.ph260

.invoke608:                                       ; preds = %bb.av, %bb.au, %.lr.ph260, %bb.as, %.lr.ph262, %bb.aq, %.preheader134, %._crit_edge274, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.z, %bb.ag, %bb.aa
  %i.fh = phi i64 [ %.sroa.046.0261, %bb.as ], [ %i.ed, %bb.ao ], [ %i.bu, %.preheader134 ], [ %i.cr, %bb.ag ], [ %i.cm, %._crit_edge274 ], [ %umax, %bb.aa ], [ %i.eb, %bb.an ], [ %i.dt, %bb.am ], [ %i.dr, %bb.al ], [ %i.dj, %bb.ak ], [ %i.dh, %bb.aj ], [ %i.da, %bb.ai ], [ %.sroa.022.0266, %bb.z ], [ %i.eo, %bb.aq ], [ %i.bp, %.lr.ph262 ], [ %i.fa, %bb.au ], [ %i.bl, %.lr.ph260 ], [ %.sroa.044.0259, %bb.av ]
  %i.fi = phi i64 [ %i.br, %bb.as ], [ %7, %bb.ao ], [ %i.bw, %bb.aq ], [ %7, %bb.ag ], [ %i.q, %._crit_edge274 ], [ %i.ce, %bb.aa ], [ %i.cb, %bb.an ], [ %7, %bb.am ], [ %i.cb, %bb.al ], [ %7, %bb.ak ], [ %i.cb, %bb.aj ], [ %7, %bb.ai ], [ %i.cb, %bb.z ], [ %i.bw, %.preheader134 ], [ %i.br, %.lr.ph262 ], [ %i.bm, %.lr.ph260 ], [ %i.bm, %bb.au ], [ %i.bm, %bb.av ]
  %i.fj = phi ptr [ @38, %bb.as ], [ @34, %bb.ao ], [ @35, %.preheader134 ], [ @26, %bb.ag ], [ @24, %._crit_edge274 ], [ @25, %bb.aa ], [ @33, %bb.an ], [ @32, %bb.am ], [ @31, %bb.al ], [ @30, %bb.ak ], [ @29, %bb.aj ], [ @28, %bb.ai ], [ @27, %bb.z ], [ @36, %bb.aq ], [ @37, %.lr.ph262 ], [ @40, %bb.au ], [ @39, %.lr.ph260 ], [ @41, %bb.av ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fh, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #26
          to label %.cont609 unwind label %bb.ab

.cont609:                                         ; preds = %.invoke608
  unreachable

bb.ax:                                            ; preds = %bb.ad, %bb.m, %bb.e
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.l, %bb.ac, %bb.ax, %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ay:                                            ; preds = %.lr.ph
  %i.fl = add nuw nsw i64 %.sroa.042.0258, %i.ay  ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %5
  br i1 %i.fm, label %bb.az, label %.invoke

.invoke:                                          ; preds = %bb.az, %bb.ay, %.lr.ph
  %i.fn = phi i64 [ %i.fl, %bb.ay ], [ %3, %.lr.ph ], [ %.sroa.042.0258, %bb.az ]
  %i.fo = phi i64 [ %5, %bb.ay ], [ %3, %.lr.ph ], [ %i.fq, %bb.az ]
  %i.fp = phi ptr [ @44, %bb.ay ], [ @43, %.lr.ph ], [ @45, %bb.az ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fn, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fp) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.fq = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.fr = icmp ult i64 %.sroa.042.0258, %i.fq
  br i1 %i.fr, label %bb.ba, label %.invoke

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.042.0258
  %i.ft = load float, ptr %i.fs, align 4, !noundef !5
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fl
  %i.fv = load float, ptr %i.fu, align 4, !noundef !5
  %i.fw = fmul float %i.ft, %i.fv
  %i.fx = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.sroa.042.0258
  store float %i.fw, ptr %i.fy, align 4
  %exitcond416.not = icmp eq i64 %i.bc, %umin
  br i1 %exitcond416.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio3fftfEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.l = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1201) 8, i64 noundef range(i64 1, 9) 4) #31 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #26
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  %i.n = load float, ptr %1, align 4, !noundef !5
  %i.o = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.o, ptr %i.l, align 4
  store i64 2, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.q, align 8
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.r = and i64 %2, 1
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.o, label %bb.g

bb.e:                                             ; preds = %bb.x, %bb.t
  unreachable

bb.f:                                             ; preds = %bb.be, %bb.ab, %.body, %.body46, %.body50
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.r, %bb.be, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.ee, %bb.am ], [ %i.aa, %bb.i ], [ %.pn4360, %bb.be ], [ %.pn41, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5438
  %i.t = shl nuw nsw i64 %2, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5438
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.t, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !5438
  %i.u = load i64, ptr %i.b, align 8, !range !4, !noalias !5438, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !6, !noalias !5438, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.h, label %.lr.ph.preheader.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.y, align 8, !noalias !5438
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #26, !noalias !5438
  unreachable

bb.i:                                             ; preds = %bb.l, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.n, !noalias !5438

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = load ptr, ptr %i.y, align 8, !noalias !5438, !nonnull !5, !noundef !5
  %i.ac = icmp samesign ule i64 %i.t, %i.x
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5438
  store i64 %i.x, ptr %i.c, align 8, !noalias !5438
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !5438
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !noalias !5438
  %i.af = uitofp nneg i64 %2 to float             ; 3 uses
  %i.ag = add nuw nsw i64 %2, 2305843009213693951
  %i.ah = and i64 %i.ag, 2305843009213693950      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %i.aj = phi i64 [ %i.be, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.015.037.i = phi i64 [ %i.au, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = uitofp nneg i64 %.sroa.015.037.i to float
  %i.al = fmul nnan float %i.ak, f0x40C90FDB      ; 3 uses
  br i1 %i.ai, label %._crit_edge.i.epilog-lcssa, label %.lr.ph.i.new

._crit_edge.i.epilog-lcssa:                       ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.0.035.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bw, %.lr.ph.i.new ]
  %.sroa.024.034.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.by, %.lr.ph.i.new ]
  %.sroa.026.033.i.epil.init = phi ptr [ %1, %.lr.ph.i ], [ %i.bp, %.lr.ph.i.new ]
  %.sroa.7.032.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %.lr.ph.i.new ]
  %i.am = load float, ptr %.sroa.026.033.i.epil.init, align 4, !alias.scope !5437, !noalias !5439, !noundef !5 ; 2 uses
  %i.an = uitofp nneg i64 %.sroa.7.032.i.epil.init to float
  %i.ao = fmul float %i.al, %i.an
  %i.ap = fdiv float %i.ao, %i.af
  %sincos.i.epil = call { float, float } @llvm.sincos.f32(float %i.ap) ; 2 uses
  %sin.i.epil = extractvalue { float, float } %sincos.i.epil, 0
  %cos.i.epil = extractvalue { float, float } %sincos.i.epil, 1
  %i.aq = fmul float %i.am, %cos.i.epil
  %i.ar = fadd float %.sroa.0.035.i.epil.init, %i.aq
  %i.as = fmul float %i.am, %sin.i.epil
  %i.at = fsub float %.sroa.024.034.i.epil.init, %i.as
  %i.au = add nuw nsw i64 %.sroa.015.037.i, 1     ; 2 uses
  %i.av = load i64, ptr %i.c, align 8, !range !15, !alias.scope !5440, !noalias !5438, !noundef !5
  %i.aw = icmp eq i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.epilog-lcssa
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.k unwind label %bb.i, !noalias !5438

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.epilog-lcssa
  %i.ax = load ptr, ptr %i.ad, align 8, !alias.scope !5440, !noalias !5438, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aj
  store float %i.ar, ptr %i.ay, align 4, !noalias !5438
  %i.az = or disjoint i64 %i.aj, 1                ; 3 uses
  store i64 %i.az, ptr %i.ae, align 8, !alias.scope !5440, !noalias !5438
  %i.ba = load i64, ptr %i.c, align 8, !range !15, !alias.scope !5441, !noalias !5438, !noundef !5
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.m unwind label %bb.i, !noalias !5438

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load ptr, ptr %i.ad, align 8, !alias.scope !5441, !noalias !5438, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az
  store float %i.at, ptr %i.bd, align 4, !noalias !5438
end_hunk_0
begin_hunk_1_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec2fECs1dZk1kIfPhr_19candle_transformers
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec2fECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec2mECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemINtB5_3VecmENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemINtB5_3VecfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSmECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSfECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12index_selectjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9index_addjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtCsf3Ta7LF998c_4core3ops5range5RangemEE9from_iterCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs3NyA1pFSltE_9candle_nn3rnn4LSTMNtB4_3RNN3seqCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs3NyA1pFSltE_9candle_nn3rnnNtB5_4LSTMNtB5_3RNN16states_to_tensor(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs3NyA1pFSltE_9candle_nn4convNtB5_15ConvTranspose1dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs3NyA1pFSltE_9candle_nn4convNtB5_6Conv1dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRyNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecfEE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6helium15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7mixtral15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9qwen2_moe15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma44text15RotaryEmbeddingE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma44text27ProportionalRotaryEmbeddingE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcRSfE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3elu(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maximumnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline }
attributes #30 = { noinline noreturn }
attributes #31 = { nounwind }
attributes #32 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 3}
!9 = !{i64 -1, i64 -9223372036854775764}
!10 = !{i8 -2, i8 9}
!11 = !{i64 0, i64 3}
!12 = !{i64 -1, i64 3}
!13 = !{i64 1, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"branch_weights", i32 8, i32 8}
!23 = !{!"branch_weights", i32 4, i32 28}
!24 = !{i8 0, i8 14}
!25 = !{i64 4}
!26 = !{i64 8}
!27 = !{i64 0, i64 16}
!28 = !{!"branch_weights", i32 1, i32 4001}
!29 = !{i8 0, i8 2}
!30 = !{i64 -1, i64 -9223372036854775808}
!31 = !{i64 0, i64 15}
!32 = distinct !{!32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!33 = distinct !{!33, !32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!34 = distinct !{!34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!35 = distinct !{!35, !34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!36 = distinct !{!36, !32, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!37 = distinct !{!37, !34, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!38 = distinct !{!38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers"}
!39 = distinct !{!39, !38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!40 = distinct !{!40, !38, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!41 = !{!33}
!42 = !{!35}
!43 = !{!40, !39, !35, !37, !33, !36}
!44 = !{!40, !35, !33}
!45 = !{!35, !33}
!46 = !{!37, !36}
!47 = distinct !{!47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned"}
!48 = distinct !{!48, !47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!49 = distinct !{!49, !47, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!50 = distinct !{!50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned"}
!51 = distinct !{!51, !50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!52 = distinct !{!52, !50, !"_RNvXsw_NtCsltEA4u8Pgfu_11candle_core5dtypedNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!53 = !{!48}
!54 = !{!49, !48}
!55 = !{!49}
!56 = !{!51}
!57 = !{!52, !51}
!58 = !{!52}
!59 = distinct !{!59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned"}
!60 = distinct !{!60, !59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!61 = distinct !{!61, !59, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!62 = distinct !{!62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned"}
!63 = distinct !{!63, !62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!64 = distinct !{!64, !62, !"_RNvXsv_NtCsltEA4u8Pgfu_11candle_core5dtypefNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!65 = !{!60}
!66 = !{!61, !60}
!67 = !{!61}
!68 = !{!63}
!69 = !{!64, !63}
!70 = !{!64}
!71 = distinct !{!71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned"}
!72 = distinct !{!72, !71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!73 = distinct !{!73, !71, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!74 = distinct !{!74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned"}
!75 = distinct !{!75, !74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!76 = distinct !{!76, !74, !"_RNvXso_NtCsltEA4u8Pgfu_11candle_core5dtypehNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!77 = !{!72}
!78 = !{!73, !72}
!79 = !{!73}
!80 = !{!75}
!81 = !{!76, !75}
!82 = !{!76}
!83 = distinct !{!83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned"}
!84 = distinct !{!84, !83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!85 = distinct !{!85, !83, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!86 = distinct !{!86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned"}
!87 = distinct !{!87, !86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!88 = distinct !{!88, !86, !"_RNvXsp_NtCsltEA4u8Pgfu_11candle_core5dtypemNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!89 = !{!84}
!90 = !{!85, !84}
!91 = !{!85}
!92 = !{!87}
!93 = !{!88, !87}
!94 = !{!88}
!95 = distinct !{!95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned"}
!96 = distinct !{!96, !95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!97 = distinct !{!97, !95, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!98 = distinct !{!98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned"}
!99 = distinct !{!99, !98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 1"}
!100 = distinct !{!100, !98, !"_RNvXss_NtCsltEA4u8Pgfu_11candle_core5dtypexNtB5_9WithDType20to_cpu_storage_owned: argument 0"}
!101 = !{!96}
!102 = !{!97, !96}
!103 = !{!97}
!104 = !{!99}
!105 = !{!100, !99}
!106 = !{!100}
!107 = distinct !{!107, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!108 = distinct !{!108, !107, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!109 = distinct !{!109, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!110 = distinct !{!110, !109, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!111 = distinct !{!111, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!112 = distinct !{!112, !111, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicedNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!113 = !{!108}
!114 = !{!110}
!115 = !{!112}
!116 = distinct !{!116, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!117 = distinct !{!117, !116, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!118 = distinct !{!118, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!119 = distinct !{!119, !118, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!120 = distinct !{!120, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!121 = distinct !{!121, !120, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicefNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!122 = !{!117}
!123 = !{!119}
!124 = !{!121}
!125 = distinct !{!125, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!126 = distinct !{!126, !125, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!127 = distinct !{!127, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!128 = distinct !{!128, !127, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!129 = distinct !{!129, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!130 = distinct !{!130, !129, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicemNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!131 = !{!126}
!132 = !{!128}
!133 = !{!130}
!134 = distinct !{!134, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!135 = distinct !{!135, !134, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!136 = distinct !{!136, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!137 = distinct !{!137, !136, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!138 = distinct !{!138, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers"}
!139 = distinct !{!139, !138, !"_RNvXNtCsltEA4u8Pgfu_11candle_core6devicexNtB2_7NdArray14to_cpu_storageCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!140 = !{!135}
!141 = !{!137}
!142 = !{!139}
!143 = distinct !{!143, !"_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1j_14LeafOrInternalE14find_key_indexeECs1dZk1kIfPhr_19candle_transformers"}
!144 = distinct !{!144, !143, !"_RINvMs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1j_14LeafOrInternalE14find_key_indexeECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!145 = distinct !{!145, !"_RNvXNtNtCsf3Ta7LF998c_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!146 = distinct !{!146, !145, !"_RNvXNtNtCsf3Ta7LF998c_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!147 = distinct !{!147, !145, !"_RNvXNtNtCsf3Ta7LF998c_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!148 = !{!144}
!149 = !{!147, !146}
!150 = distinct !{!150, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers"}
!151 = distinct !{!151, !150, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10group_norm9GroupNormECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!152 = distinct !{!152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!153 = distinct !{!153, !152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!154 = distinct !{!154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!155 = distinct !{!155, !154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!156 = distinct !{!156, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!157 = distinct !{!157, !156, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!160 = distinct !{!160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!161 = distinct !{!161, !160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!162 = distinct !{!162, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
end_hunk_1
