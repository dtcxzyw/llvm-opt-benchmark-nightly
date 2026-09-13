Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.04?download=true
begin_hunk_0_@_RINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fEB4_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !337
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc40 unwind label %bb.au

.noexc40:                                         ; preds = %bb.i
  %i.ax = load i64, ptr %i.b, align 8, !range !10, !noalias !337, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !11, !noalias !337, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.j, label %_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, !prof !6

bb.j:                                             ; preds = %.noexc40
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !337
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #30
          to label %.noexc41 unwind label %bb.au

.noexc41:                                         ; preds = %bb.j
  unreachable

_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %.noexc40
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !337, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !337
  store i64 %i.ba, ptr %i.e, align 8, !alias.scope !336, !noalias !335
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !336, !noalias !335
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %5, ptr %i.bf, align 8, !alias.scope !336, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !335
  %i.bg = mul i64 %i.x, %7                        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !339
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bg, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.o, !noalias !335

.noexc.i:                                         ; preds = %_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.bh = load i64, ptr %i.a, align 8, !range !10, !noalias !339, !noundef !4
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !11, !noalias !339, !noundef !4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bi, label %bb.k, label %.split.i, !prof !6

bb.k:                                             ; preds = %.noexc.i
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !339
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bm) #30
          to label %.noexc72.i unwind label %bb.o, !noalias !335

.noexc72.i:                                       ; preds = %bb.k
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit79.i: ; preds = %bb.q, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %.pn.i, %bb.q ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.l, !noalias !335

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit79.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.n, !noalias !335

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit79.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.ap, !noalias !335

bb.n:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

bb.o:                                             ; preds = %bb.k, %_RINvXs_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit79.i

.body84.i:                                        ; preds = %bb.ac, %bb.w, %.loopexit.split-lp.i, %.loopexit96.i
  %.pn.i = phi { ptr, i32 } [ %i.cw, %bb.w ], [ %i.dd, %bb.ac ], [ %lpad.loopexit.i, %.loopexit96.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !335

bb.p:                                             ; preds = %.body84.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.r, !noalias !335

bb.q:                                             ; preds = %.body84.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit79.i unwind label %bb.ap, !noalias !335

bb.r:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

.loopexit96.i:                                    ; preds = %bb.x, %._crit_edge.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body84.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body84.i

.split.i:                                         ; preds = %.noexc.i
  %i.bs = load ptr, ptr %i.bl, align 8, !noalias !339, !nonnull !4, !noundef !4 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !339
  store i64 %i.bk, ptr %i.d, align 8, !alias.scope !338, !noalias !335
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !338, !noalias !335
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bg, ptr %i.bu, align 8, !alias.scope !338, !noalias !335
  %.not151.i = icmp eq i64 %5, 0                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.bx = icmp ugt i64 %5, 3
  %.not153.i = icmp eq i64 %7, 0
  br label %bb.v

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !335
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit81.i unwind label %bb.t, !noalias !335

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.u, !noalias !335

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit81.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.av unwind label %bb.au

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i, %.split.i
  %.sroa.023.0150.i = phi i64 [ 0, %.split.i ], [ %i.ca, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i ] ; 3 uses
  %.sroa.038.0149.i = phi i64 [ %i.x, %.split.i ], [ %i.cb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i ]
  %i.ca = add nuw nsw i64 %.sroa.023.0150.i, 1
  %i.cb = add nsw i64 %.sroa.038.0149.i, -1       ; 2 uses
  %i.cc = mul i64 %.sroa.023.0150.i, %6
  br i1 %.not151.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.at, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !335
  %i.cd = load ptr, ptr %i.be, align 8, !noalias !335, !nonnull !4, !noundef !4
  %i.ce = load i64, ptr %i.bf, align 8, !noalias !335, !noundef !4
  invoke fastcc void @_RINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio3fftfEB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cd, i64 noundef %i.ce)
          to label %.preheader95.i unwind label %.loopexit96.i, !noalias !335

.preheader95.i:                                   ; preds = %._crit_edge.i
  br i1 %.not151.i, label %._crit_edge141.i, label %.lr.ph138.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.at
  %.sroa.026.0136.i = phi i64 [ %i.cf, %bb.at ], [ 0, %bb.v ] ; 7 uses
  %i.cf = add nuw i64 %.sroa.026.0136.i, 1        ; 2 uses
  %i.cg = add i64 %.sroa.026.0136.i, %i.cc        ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.au
  br i1 %i.ch, label %bb.aq, label %bb.ar

.preheader94.i:                                   ; preds = %bb.ao
  br i1 %i.bx, label %.lr.ph140.i, label %._crit_edge141.i

.lr.ph138.i:                                      ; preds = %.preheader95.i, %bb.ao
  %.sroa.028.0137.i = phi i64 [ %i.ci, %bb.ao ], [ 0, %.preheader95.i ] ; 5 uses
  %i.ci = add nuw i64 %.sroa.028.0137.i, 1        ; 2 uses
  %i.cj = shl i64 %.sroa.028.0137.i, 1            ; 4 uses
  %i.ck = load i64, ptr %i.bv, align 8, !noalias !335, !noundef !4 ; 6 uses
  %i.cl = icmp ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.am, label %.invoke281.i

._crit_edge141.i:                                 ; preds = %bb.al, %.preheader94.i, %.preheader95.i
  br i1 %8, label %.preheader.i, label %.loopexit.i

.lr.ph140.i:                                      ; preds = %.preheader94.i, %bb.al
  %.sroa.030.0139.i = phi i64 [ %i.cm, %bb.al ], [ 1, %.preheader94.i ] ; 5 uses
  %i.cm = add nuw nsw i64 %.sroa.030.0139.i, 1    ; 2 uses
  %i.cn = sub nuw i64 %5, %.sroa.030.0139.i       ; 3 uses
  %i.co = load ptr, ptr %i.bw, align 8, !noalias !335, !nonnull !4, !noundef !4 ; 2 uses
  %i.cp = load i64, ptr %i.bv, align 8, !noalias !335, !noundef !4 ; 4 uses
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ak, label %.invoke281.i

.loopexit.i:                                      ; preds = %bb.aj, %._crit_edge141.i
  br i1 %.not153.i, label %._crit_edge148.i, label %.lr.ph147.i

.preheader.i:                                     ; preds = %._crit_edge141.i, %bb.aj
  %.sroa.032.0142.i = phi i64 [ %i.cr, %bb.aj ], [ 0, %._crit_edge141.i ] ; 4 uses
  %i.cr = add nuw i64 %.sroa.032.0142.i, 1
  %i.cs = shl nuw i64 %.sroa.032.0142.i, 1        ; 4 uses
  %i.ct = load ptr, ptr %i.bw, align 8, !noalias !335, !nonnull !4, !noundef !4 ; 3 uses
  %i.cu = load i64, ptr %i.bv, align 8, !noalias !335, !noundef !4 ; 4 uses
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.ai, label %.invoke281.i

._crit_edge148.i:                                 ; preds = %bb.af, %.loopexit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.x unwind label %bb.w, !noalias !335

bb.w:                                             ; preds = %._crit_edge148.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body84.i unwind label %bb.y, !noalias !335

bb.x:                                             ; preds = %._crit_edge148.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i unwind label %.loopexit96.i, !noalias !335

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

.lr.ph147.i:                                      ; preds = %.loopexit.i, %bb.af
  %.sroa.034.0145.i = phi i64 [ %i.cy, %bb.af ], [ 0, %.loopexit.i ] ; 3 uses
  %i.cy = add nuw i64 %.sroa.034.0145.i, 1        ; 2 uses
  %i.cz = load i64, ptr %i.bv, align 8, !noalias !335, !noundef !4 ; 3 uses
  %i.da = mul i64 %.sroa.034.0145.i, %.sroa.0.0.i
  %i.db = load ptr, ptr %i.bw, align 8, !noalias !335, !nonnull !4
  br label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit86.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !335
  %.not.i39 = icmp eq i64 %i.cb, 0
  br i1 %.not.i39, label %bb.s, label %bb.v

bb.z:                                             ; preds = %bb.ah, %.lr.ph147.i
  %.sroa.036.0144.i = phi i64 [ 0, %.lr.ph147.i ], [ %i.dc, %bb.ah ] ; 5 uses
  %.sroa.092.0143.i = phi float [ 0.000000e+00, %.lr.ph147.i ], [ %i.dt, %bb.ah ]
  %i.dc = add nuw nsw i64 %.sroa.036.0144.i, 1
  %exitcond203.not.i = icmp eq i64 %.sroa.036.0144.i, %i.cz
  br i1 %exitcond203.not.i, label %.invoke281.i, label %bb.ag

bb.aa:                                            ; preds = %.invoke281.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ac unwind label %bb.ab, !noalias !335

bb.ab:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.ad, !noalias !335

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body84.i unwind label %bb.ap, !noalias !335

bb.ad:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

bb.ae:                                            ; preds = %bb.ah
  %i.dg = mul i64 %.sroa.034.0145.i, %i.x
  %i.dh = add i64 %i.dg, %.sroa.023.0150.i        ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.bg
  br i1 %i.di, label %bb.af, label %.invoke281.i

bb.af:                                            ; preds = %bb.ae
  %i.dj = call nsz noundef float @llvm.maximumnum.f32(float %i.dt, float 1.000000e-10)
  %i.dk = call noundef float @llvm.log10.f32(float %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dh
  store float %i.dk, ptr %i.dl, align 4, !noalias !335
  %exitcond205.not.i = icmp eq i64 %i.cy, %7
  br i1 %exitcond205.not.i, label %._crit_edge148.i, label %.lr.ph147.i

bb.ag:                                            ; preds = %bb.z
  %i.dm = add nuw nsw i64 %.sroa.036.0144.i, %i.da ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %4
  br i1 %i.dn, label %bb.ah, label %.invoke281.i

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.sroa.036.0144.i
  %i.dp = load float, ptr %i.do, align 4, !noalias !335, !noundef !4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  %i.dr = load float, ptr %i.dq, align 4, !alias.scope !334, !noalias !340, !noundef !4
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %.sroa.092.0143.i, %i.ds     ; 2 uses
  %exitcond204.not.i = icmp eq i64 %.sroa.036.0144.i, %.sroa.0.0.in.i
  br i1 %exitcond204.not.i, label %bb.ae, label %bb.z

bb.ai:                                            ; preds = %.preheader.i
  %i.du = or disjoint i64 %i.cs, 1                ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.cu
  br i1 %i.dv, label %bb.aj, label %.invoke281.i

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  %9 = load float, ptr %i.dw, align 4, !noalias !335, !noundef !4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.du
  %11 = load float, ptr %10, align 4, !noalias !335, !noundef !4
  %12 = fadd float %9, %11
  %i.dx = fmul float %12, 5.000000e-01
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.032.0142.i
  store float %i.dx, ptr %i.dy, align 4, !noalias !335
  %exitcond202.not.i = icmp eq i64 %.sroa.032.0142.i, %.sroa.0.0.in.i
  br i1 %exitcond202.not.i, label %.loopexit.i, label %.preheader.i

bb.ak:                                            ; preds = %.lr.ph140.i
  %i.dz = icmp ult i64 %.sroa.030.0139.i, %i.cp
  br i1 %i.dz, label %bb.al, label %.invoke281.i

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cn
  %i.eb = load float, ptr %i.ea, align 4, !noalias !335, !noundef !4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.030.0139.i ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !alias.scope !341, !noalias !335, !noundef !4
  %i.ee = fadd float %i.eb, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !alias.scope !341, !noalias !335
  %exitcond201.not.i = icmp eq i64 %i.cm, %i.aw
  br i1 %exitcond201.not.i, label %._crit_edge141.i, label %.lr.ph140.i

bb.am:                                            ; preds = %.lr.ph138.i
  %i.ef = load ptr, ptr %i.bw, align 8, !noalias !335, !nonnull !4, !noundef !4 ; 2 uses
  %i.eg = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ck
  br i1 %i.eh, label %bb.an, label %.invoke281.i

bb.an:                                            ; preds = %bb.am
  %i.ei = icmp ult i64 %.sroa.028.0137.i, %i.ck
  br i1 %i.ei, label %bb.ao, label %.invoke281.i

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.cj
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !noalias !335 ; 2 uses
  %i.el = fmul <2 x float> %i.ek, %i.ek           ; 2 uses
  %shift = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.el, %shift
  %13 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.sroa.028.0137.i
  store float %13, ptr %i.em, align 4, !noalias !335
  %exitcond200.not.i = icmp eq i64 %i.ci, %5
  br i1 %exitcond200.not.i, label %.preheader94.i, label %.lr.ph138.i

.invoke281.i:                                     ; preds = %bb.an, %bb.am, %.lr.ph138.i, %bb.ak, %.lr.ph140.i, %bb.ai, %.preheader.i, %bb.ae, %bb.ag, %bb.z
  %i.en = phi i64 [ %i.du, %bb.ai ], [ %i.dm, %bb.ag ], [ %.sroa.030.0139.i, %bb.ak ], [ %i.dh, %bb.ae ], [ %i.cz, %bb.z ], [ %i.cs, %.preheader.i ], [ %i.cn, %.lr.ph140.i ], [ %.sroa.028.0137.i, %bb.an ], [ %i.cj, %.lr.ph138.i ], [ %i.eg, %bb.am ]
  %i.eo = phi i64 [ %i.cu, %bb.ai ], [ %4, %bb.ag ], [ %i.cp, %bb.ak ], [ %i.bg, %bb.ae ], [ %i.cz, %bb.z ], [ %i.cu, %.preheader.i ], [ %i.cp, %.lr.ph140.i ], [ %i.ck, %.lr.ph138.i ], [ %i.ck, %bb.am ], [ %i.ck, %bb.an ]
  %i.ep = phi ptr [ @8, %bb.ai ], [ @6, %bb.ag ], [ @10, %bb.ak ], [ @4, %bb.ae ], [ @5, %bb.z ], [ @7, %.preheader.i ], [ @9, %.lr.ph140.i ], [ @13, %bb.an ], [ @11, %.lr.ph138.i ], [ @12, %bb.am ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep) #30
          to label %.cont282.i unwind label %bb.aa, !noalias !335

.cont282.i:                                       ; preds = %.invoke281.i
  unreachable

bb.ap:                                            ; preds = %bb.ac, %bb.q, %bb.m
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.ab, %bb.p, %bb.l
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !335
  unreachable

bb.aq:                                            ; preds = %.lr.ph.i
  %i.er = icmp ult i64 %.sroa.026.0136.i, %i.aq
  br i1 %i.er, label %bb.as, label %.invoke.i

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i
  %.sroa.09.0.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ey, %bb.as ]
  %i.es = load i64, ptr %i.bf, align 8, !noalias !335, !noundef !4 ; 2 uses
  %i.et = icmp ult i64 %.sroa.026.0136.i, %i.es
  br i1 %i.et, label %bb.at, label %.invoke.i

bb.as:                                            ; preds = %bb.aq
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.026.0136.i
  %i.ev = load float, ptr %i.eu, align 4, !alias.scope !332, !noalias !342, !noundef !4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cg
  %i.ex = load float, ptr %i.ew, align 4, !alias.scope !333, !noalias !343, !noundef !4
  %i.ey = fmul float %i.ev, %i.ex
  br label %bb.ar

.invoke.i:                                        ; preds = %bb.ar, %bb.aq
  %i.ez = phi i64 [ %i.aq, %bb.aq ], [ %i.es, %bb.ar ]
  %i.fa = phi ptr [ @14, %bb.aq ], [ @15, %bb.ar ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.026.0136.i, i64 noundef %i.ez, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa) #30
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !335

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fb = load ptr, ptr %i.be, align 8, !noalias !335, !nonnull !4, !noundef !4
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.sroa.026.0136.i
  store float %.sroa.09.0.i, ptr %i.fc, align 4, !noalias !335
  %exitcond.not.i = icmp eq i64 %i.cf, %5
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

.body:                                            ; preds = %bb.au, %bb.t, %bb.m
  %.pn = phi { ptr, i32 } [ %.pn.pn.i, %bb.m ], [ %i.fd, %bb.au ], [ %i.by, %bb.t ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body45 unwind label %bb.be

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit81.i, %bb.j, %bb.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !335
  %.idx = shl i64 %i.bg, 2                        ; 3 uses
  %i.fe = getelementptr i8, ptr %i.bs, i64 %.idx  ; 2 uses
  %i.ff = icmp eq i64 %i.bg, 0
  br i1 %i.ff, label %._crit_edge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.fh = icmp eq i64 %i.bg, 1
  br i1 %i.fh, label %.lr.ph.preheader, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %gepdiff = add nsw i64 %.idx, -4                ; 3 uses
  %i.fi = lshr exact i64 %gepdiff, 2              ; 2 uses
  %.val.i.i.i.i.pre.i.i = load float, ptr %i.bs, align 4, !alias.scope !345, !noalias !346 ; 2 uses
  %i.fj = icmp eq i64 %gepdiff, 4
  br i1 %i.fj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ax
  %unroll_iter = and i64 %i.fi, 4611686018427387902
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.new
  %.val.i.i.i.i.i.i = phi float [ %.val.i.i.i.i.pre.i.i, %.new ], [ %i.fr, %bb.ay ] ; 2 uses
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.fq, %bb.ay ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %i.bs, %.new ], [ %..i.i.i.i.1, %bb.ay ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ay ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.sroa.04.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %.val3.i.i.i.i.i.i = load float, ptr %i.fk, align 4, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.fl = fcmp ugt float %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i.i ; 2 uses
  %..i.i.i.i = select i1 %i.fl, ptr %.sroa.02.0.i.i, ptr %i.fk
  %i.fm = select i1 %i.fl, float %.val.i.i.i.i.i.i, float %.val3.i.i.i.i.i.i ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.sroa.04.0.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %.val3.i.i.i.i.i.i.1 = load float, ptr %i.fo, align 4, !alias.scope !351, !noalias !352, !noundef !4 ; 2 uses
  %i.fp = fcmp ugt float %i.fm, %.val3.i.i.i.i.i.i.1 ; 2 uses
  %..i.i.i.i.1 = select i1 %i.fp, ptr %..i.i.i.i, ptr %i.fo ; 3 uses
  %i.fq = add nuw i64 %.sroa.04.0.i.i, 2          ; 2 uses
  %i.fr = select i1 %i.fp, float %i.fm, float %.val3.i.i.i.i.i.i.1 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.loopexit.unr-lcssa, label %bb.ay

.lr.ph.preheader.loopexit.unr-lcssa:              ; preds = %bb.ay
  %i.fs = and i64 %gepdiff, 4
  %lcmp.mod.not = icmp eq i64 %i.fs, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.loopexit.unr-lcssa, %bb.ax
  %.val.i.i.i.i.i.i.epil.init = phi float [ %.val.i.i.i.i.pre.i.i, %bb.ax ], [ %i.fr, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.ax ], [ %i.fq, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi ptr [ %i.bs, %bb.ax ], [ %..i.i.i.i.1, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %lcmp.mod206 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod206)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.sroa.04.0.i.i.epil.init ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %.val3.i.i.i.i.i.i.epil = load float, ptr %i.ft, align 4, !alias.scope !346, !noalias !345, !noundef !4
  %i.fu = fcmp ugt float %.val.i.i.i.i.i.i.epil.init, %.val3.i.i.i.i.i.i.epil
  %..i.i.i.i.epil = select i1 %i.fu, ptr %.sroa.02.0.i.i.epil.init, ptr %i.ft
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit.unr-lcssa, %bb.aw
  %.sroa.0.0.i4354 = phi ptr [ %i.bs, %bb.aw ], [ %..i.i.i.i.1, %.lr.ph.preheader.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  %i.fv = load float, ptr %.sroa.0.0.i4354, align 4, !noundef !4
  %i.fw = fadd float %i.fv, -8.000000e+00         ; 2 uses
  %i.fx = add i64 %.idx, -4                       ; 2 uses
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fx, 28
  br i1 %min.iters.check, label %.lr.ph.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %bound0 = icmp ult ptr %i.bs, %scevgep
  %bound1 = icmp ult ptr %i.l, %i.fe
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fz, 9223372036854775800     ; 3 uses
  %i.ga = shl i64 %n.vec, 2
  %i.gb = getelementptr i8, ptr %i.bs, i64 %i.ga
  %i.gc = load float, ptr %i.l, align 4, !alias.scope !353, !noundef !4
  %broadcast.splatinsert180 = insertelement <4 x float> poison, float %i.gc, i64 0
  %broadcast.splat181 = shufflevector <4 x float> %broadcast.splatinsert180, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.gd ; 3 uses
  %i.ge = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !alias.scope !354, !noalias !353
  %wide.load179 = load <4 x float>, ptr %i.ge, align 4, !alias.scope !354, !noalias !353
  %i.gf = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat)
  %i.gg = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %wide.load179, <4 x float> %broadcast.splat)
  %i.gh = fmul <4 x float> %i.gf, splat (float 2.500000e-01)
  %i.gi = fmul <4 x float> %i.gg, splat (float 2.500000e-01)
  %i.gj = fadd <4 x float> %broadcast.splat181, %i.gh
  %i.gk = fadd <4 x float> %broadcast.splat181, %i.gi
  store <4 x float> %i.gj, ptr %next.gep, align 4, !alias.scope !354, !noalias !353
  store <4 x float> %i.gk, ptr %i.ge, align 4, !alias.scope !354, !noalias !353
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader183

.lr.ph.preheader183:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.031.076.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.preheader ], [ %i.gb, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader183, %.lr.ph
  %.sroa.031.076 = phi ptr [ %i.gm, %.lr.ph ], [ %.sroa.031.076.ph, %.lr.ph.preheader183 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.031.076, i64 4 ; 2 uses
  %i.gn = load float, ptr %.sroa.031.076, align 4, !noundef !4
  %i.go = call nsz noundef float @llvm.maximumnum.f32(float %i.gn, float %i.fw)
  %i.gp = fmul float %i.go, 2.500000e-01
  %i.gq = load float, ptr %i.l, align 4, !noundef !4
  %i.gr = fadd float %i.gq, %i.gp
  store float %i.gr, ptr %.sroa.031.076, align 4
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRTReBZ_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB1Y_:bb.a
  %i.bq = xor i64 %.sroa.0.016.i.i, -1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bs = getelementptr [16 x i8], ptr %i.bo, i64 %i.bq ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.br, align 8, !alias.scope !419, !noalias !420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !421, !noalias !417
  store <2 x ptr> %i.bt, ptr %i.bs, align 8, !alias.scope !422, !noalias !423
  %i.bu = xor i64 %.sroa.0.016.i.i, -2
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = getelementptr [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !alias.scope !419, !noalias !420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !alias.scope !421, !noalias !417
  store <2 x ptr> %i.by, ptr %i.bx, align 8, !alias.scope !422, !noalias !423
  %i.bz = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bl, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.bf, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %i.ca = lshr i64 %.sroa.023.0, 1
  %i.cb = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cc = sub nsw i64 %factor, %i.ca
  %i.cd = add nuw nsw i64 %i.cb, %factor
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 false)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph59, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit
  %.sroa.02.158 = phi i64 [ %.sroa.02.0, %.lr.ph59 ], [ %i.cj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 2 uses
  %.sroa.023.157 = phi i64 [ %.sroa.023.0, %.lr.ph59 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 4 uses
  %i.cj = add i64 %.sroa.02.158, -1               ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.cl, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.157, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.158, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cn, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4 ; 3 uses
  %i.cq = lshr i64 %i.cp, 1                       ; 8 uses
  %i.cr = lshr i64 %.sroa.023.157, 1              ; 6 uses
  %i.cs = add nuw i64 %i.cq, %i.cr                ; 4 uses
  %i.ct = sub i64 %.sroa.09.0, %i.cs
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ct ; 6 uses
  %i.cv = icmp samesign ugt i64 %i.cs, %3
  %i.cw = trunc i64 %.sroa.023.157 to i1
  %i.cx = or i64 %i.cp, %.sroa.023.157
  %i.cy = trunc i64 %i.cx to i1
  %or.cond3.i = or i1 %i.cv, %i.cy
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = trunc i64 %i.cp to i1
  br i1 %i.cz, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.da = shl nuw nsw i64 %i.cs, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cw, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.db = or i64 %i.cq, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 576460752303423488) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !404
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cq
  %i.dh = or i64 %i.cr, 1
  %i.di = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.dg, i64 noundef range(i64 0, 576460752303423488) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !404
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.dm = icmp eq i64 %i.cq, 0
  %i.dn = icmp eq i64 %i.cr, 0
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cq, i64 %i.cr) ; 2 uses
  %i.dp = icmp samesign ult i64 %3, %i.do
  br i1 %i.dp, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cq ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cq, %i.cr  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dq, ptr %i.cu
  %i.dr = shl nuw nsw i64 %i.do, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dr, i1 false), !alias.scope !428
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dt = phi ptr [ %i.en, %.preheader.i ], [ %i.ds, %.critedge.i ] ; 2 uses
  %i.du = phi ptr [ %i.el, %.preheader.i ], [ %i.dq, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dx, %.preheader.i ], [ %i.n, %.critedge.i ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dt, i64 -8
  %.val.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !427, !noalias !429, !nonnull !4, !align !13, !noundef !4
  %i.dz = getelementptr i8, ptr %i.du, i64 -8
  %.val12.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !426, !noalias !430, !nonnull !4, !align !13, !noundef !4
  %i.ea = load i32, ptr %.val12.i.i, align 4, !noalias !431, !noundef !4 ; 2 uses
  %i.eb = load i32, ptr %.val.i.i, align 4, !noalias !431, !noundef !4 ; 2 uses
  %i.ec = ashr i32 %i.ea, 31
  %i.ed = lshr i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, %i.ea
  %i.ef = ashr i32 %i.eb, 31
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, %i.eb
  %i.ei = icmp slt i32 %i.ee, %i.eh               ; 3 uses
  %..i.i = select i1 %i.ei, ptr %i.dv, ptr %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !428, !noalias !432
  %i.ej = xor i1 %i.ei, true
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ek ; 3 uses
  %i.em = zext i1 %i.ei to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.em ; 3 uses
  %i.eo = icmp eq ptr %i.el, %i.cu
  %i.ep = icmp eq ptr %i.en, %2
  %or.cond.i.i = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRTReB1d_ERfEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2r_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.eq = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %i.cu, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.dq, %.critedge.i ] ; 3 uses
  %i.er = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.es = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.es, align 8, !alias.scope !426, !noalias !433, !nonnull !4, !align !13, !noundef !4
  %i.et = getelementptr i8, ptr %i.er, i64 8
  %.val.i18.i = load ptr, ptr %i.et, align 8, !alias.scope !427, !noalias !434, !nonnull !4, !align !13, !noundef !4
  %i.eu = load i32, ptr %.val.i18.i, align 4, !noalias !435, !noundef !4 ; 2 uses
  %i.ev = load i32, ptr %.sroa.0.0.val.i.i, align 4, !noalias !435, !noundef !4 ; 2 uses
  %i.ew = ashr i32 %i.eu, 31
  %i.ex = lshr i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, %i.eu
  %i.ez = ashr i32 %i.ev, 31
  %i.fa = lshr i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, %i.ev
  %i.fc = icmp slt i32 %i.ey, %i.fb               ; 3 uses
  %i.fd = xor i1 %i.fc, true
  %.sroa.05.0.i.i = select i1 %i.fc, ptr %.sroa.0.02.i.i, ptr %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !428, !noalias !436
  %i.fe = zext i1 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.fe ; 3 uses
  %i.fg = zext i1 %i.fc to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.fj = icmp ne ptr %i.ff, %i.ds
  %i.fk = icmp ne ptr %i.fh, %i.n
  %or.cond.i19.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRTReB1d_ERfEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2r_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRTReB1d_ERfEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2r_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.el, %.preheader.i ], [ %i.fi, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.en, %.preheader.i ], [ %i.ds, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ] ; 2 uses
  %i.fl = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fm = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fn = sub nuw i64 %i.fl, %i.fm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fn, i1 false), !alias.scope !428, !noalias !437
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRTReB1d_ERfEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2r_.exit.i
  %i.fo = shl nuw nsw i64 %i.cs, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit
  %.sroa.0.0.i = phi i64 [ %i.fp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit ], [ %i.da, %bb.u ] ; 2 uses
  %i.fq = icmp ugt i64 %i.cj, 1
  br i1 %i.fq, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.fs = lshr i64 %.sroa.018.0, 1
  %i.ft = add nuw nsw i64 %i.fs, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.fu, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = or i64 %1, 1
  %i.fw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 1
  %i.fz = xor i32 %i.fy, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !404
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %i.sf, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %i.rq, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %i.jn, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph127, i64 8
  %i.d = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph124, i64 8
  %i.f = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph297

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %i.g = icmp eq i32 %i.jn, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph297

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %0, %bb.a ], [ %i.sf, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %1, %bb.a ], [ %i.rq, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.h = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTReB1v_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.j = icmp samesign ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTRTReB1c_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.k
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTRTReB1c_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2d_(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 24
  %.val8.i.i = load ptr, ptr %i.r, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val9.i.i = load ptr, ptr %i.s, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.t = load i32, ptr %.val9.i.i, align 4, !noundef !4 ; 2 uses
  %i.u = load i32, ptr %.val8.i.i, align 4, !noundef !4 ; 2 uses
  %i.v = ashr i32 %i.t, 31
  %i.w = lshr i32 %i.v, 1
  %i.x = xor i32 %i.w, %i.t
  %i.y = ashr i32 %i.u, 31
  %i.z = lshr i32 %i.y, 1
  %i.aa = xor i32 %i.z, %i.u
  %i.ab = icmp slt i32 %i.x, %i.aa                ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 56
  %.val6.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.ad = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 40
  %.val7.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.ae = load i32, ptr %.val7.i.i, align 4, !noundef !4 ; 2 uses
  %i.af = load i32, ptr %.val6.i.i, align 4, !noundef !4 ; 2 uses
  %i.ag = ashr i32 %i.ae, 31
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, %i.ae
  %i.aj = ashr i32 %i.af, 31
  %i.ak = lshr i32 %i.aj, 1
  %i.al = xor i32 %i.ak, %i.af
  %i.am = icmp slt i32 %i.ai, %i.al               ; 2 uses
  %i.an = zext i1 %i.ab to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.ab, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.au ; 3 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %.val4.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.ax = getelementptr i8, ptr %i.ao, i64 8
  %.val5.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.ay = load i32, ptr %.val5.i.i, align 4, !noundef !4 ; 2 uses
  %i.az = load i32, ptr %.val4.i.i, align 4, !noundef !4 ; 2 uses
  %i.ba = ashr i32 %i.ay, 31
  %i.bb = lshr i32 %i.ba, 1
  %i.bc = xor i32 %i.bb, %i.ay
  %i.bd = ashr i32 %i.az, 31
  %i.be = lshr i32 %i.bd, 1
  %i.bf = xor i32 %i.be, %i.az
  %i.bg = icmp slt i32 %i.bc, %i.bf               ; 3 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 8
  %.val2.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.bi = getelementptr i8, ptr %i.ar, i64 8
  %.val3.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.bj = load i32, ptr %.val3.i.i, align 4, !noundef !4 ; 2 uses
  %i.bk = load i32, ptr %.val2.i.i, align 4, !noundef !4 ; 2 uses
  %i.bl = ashr i32 %i.bj, 31
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = xor i32 %i.bm, %i.bj
  %i.bo = ashr i32 %i.bk, 31
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, %i.bk
  %i.br = icmp slt i32 %i.bn, %i.bq               ; 3 uses
  %i.bs = select i1 %i.bg, ptr %i.at, ptr %i.ao, !unpredictable !4
  %i.bt = select i1 %i.br, ptr %i.ar, ptr %i.av, !unpredictable !4
  %i.bu = select i1 %i.br, ptr %i.at, ptr %i.ar, !unpredictable !4
  %i.bv = select i1 %i.bg, ptr %i.ao, ptr %i.bu, !unpredictable !4 ; 3 uses
  %i.bw = select i1 %i.bg, ptr %i.ar, ptr %i.at, !unpredictable !4
  %i.bx = select i1 %i.br, ptr %i.av, ptr %i.bw, !unpredictable !4 ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val.i.i = load ptr, ptr %i.by, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.bz = getelementptr i8, ptr %i.bv, i64 8
  %.val1.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.ca = load i32, ptr %.val1.i.i, align 4, !noundef !4 ; 2 uses
  %i.cb = load i32, ptr %.val.i.i, align 4, !noundef !4 ; 2 uses
  %i.cc = ashr i32 %i.ca, 31
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, %i.ca
  %i.cf = ashr i32 %i.cb, 31
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, %i.cb
  %i.ci = icmp slt i32 %i.ce, %i.ch               ; 2 uses
  %i.cj = select i1 %i.ci, ptr %i.bx, ptr %i.bv, !unpredictable !4
  %i.ck = select i1 %i.ci, ptr %i.bv, ptr %i.bx, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !494
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !alias.scope !494
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !alias.scope !494
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !494
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.k ; 8 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 24
  %.val8.i26.i = load ptr, ptr %i.cq, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %.val9.i27.i = load ptr, ptr %i.cr, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.cs = load i32, ptr %.val9.i27.i, align 4, !noundef !4 ; 2 uses
  %i.ct = load i32, ptr %.val8.i26.i, align 4, !noundef !4 ; 2 uses
  %i.cu = ashr i32 %i.cs, 31
  %i.cv = lshr i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, %i.cs
  %i.cx = ashr i32 %i.ct, 31
  %i.cy = lshr i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, %i.ct
  %i.da = icmp slt i32 %i.cw, %i.cz               ; 2 uses
  %i.db = getelementptr i8, ptr %i.co, i64 56
  %.val6.i28.i = load ptr, ptr %i.db, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.dc = getelementptr i8, ptr %i.co, i64 40
  %.val7.i29.i = load ptr, ptr %i.dc, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !align !13, !noundef !4
  %i.dd = load i32, ptr %.val7.i29.i, align 4, !noundef !4 ; 2 uses
  %i.de = load i32, ptr %.val6.i28.i, align 4, !noundef !4 ; 2 uses
  %i.df = ashr i32 %i.dd, 31
  %i.dg = lshr i32 %i.df, 1
  %i.dh = xor i32 %i.dg, %i.dd
  %i.di = ashr i32 %i.de, 31
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEE14reserve_rehashNCINvNtB8_3map11make_hashermBR_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0EBX_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #17

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word6SymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word6SymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0EE9from_iterB2F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNfEE11spec_extendCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, float) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4ItermNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvXsM_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB37_6ValuesmBM_EB1X_4folduNCINvNtNtB23_8adapters3map8map_foldRBM_BM_uNvYBM_NtNtB25_5clone5Clone5cloneNCIB4n_BM_TBM_uEuNCINvXs8_NtB8_3setINtB5X_7HashSetBM_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtB21_7collect6ExtendBM_E6extendINtNtB4r_6cloned6ClonedB3R_EE0NCINvNvB1X_8for_each4callB5H_NCINvXs1i_B6_INtB6_7HashMapBM_uB6o_EIB7f_B5H_E6extendINtB4p_3MapB7N_B5O_EE0E0E0E0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel13serialization16WordLevelVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel13serialization16WordLevelVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsf3Ta7LF998c_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenuNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE6insertCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCscHeDkCj8TjV_11rand_chacha6chachaINtB2_7Array64mENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 4 captures(none) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsl_NtCsf3Ta7LF998c_4core3fmtPNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core6HeaderNtB5_7Pointer3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11init_chacha(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCsf3Ta7LF998c_4core5arrayAhj20_NtNtB7_7default7Default7defaultCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maximumnum.v4f32(<4 x float>, <4 x float>) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { inlinehint }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { noinline }
attributes #30 = { noreturn }
attributes #31 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{i64 0, i64 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 4}
!14 = !{!"branch_weights", i32 4001, i32 4000000}
!15 = !{i64 1, i64 536870913}
!16 = distinct !{!16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!17 = distinct !{!17, !16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!18 = distinct !{!18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!19 = distinct !{!19, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!20 = distinct !{!20, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!21 = distinct !{!21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!22 = distinct !{!22, !21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!23 = distinct !{!23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!24 = distinct !{!24, !23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!25 = distinct !{!25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!26 = distinct !{!26, !25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!27 = distinct !{!27, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!28 = distinct !{!28, !27, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!29 = distinct !{!29, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!30 = distinct !{!30, !29, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!31 = distinct !{!31, !25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!32 = distinct !{!32, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!33 = distinct !{!33, !32, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!34 = distinct !{!34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!35 = distinct !{!35, !34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!36 = !{!17}
!37 = !{!19}
!38 = !{!19, !17}
!39 = !{!20}
!40 = !{!22, !19, !20, !17}
!41 = !{!24, !19, !20, !17}
!42 = !{!26}
!43 = !{!28}
!44 = !{!30}
!45 = !{!33, !30, !28, !31, !26}
!46 = !{!35, !30, !28, !31, !26}
!47 = !{!30, !28, !26}
!48 = !{!31}
!49 = !{!30, !28, !31, !26}
!50 = distinct !{!50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!51 = distinct !{!51, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!52 = distinct !{!52, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!53 = distinct !{!53, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!54 = distinct !{!54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!55 = distinct !{!55, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!56 = distinct !{!56, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!57 = distinct !{!57, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!60 = distinct !{!60, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!61 = distinct !{!61, !60, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!62 = distinct !{!62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!63 = distinct !{!63, !62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!64 = distinct !{!64, !62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!65 = distinct !{!65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!66 = distinct !{!66, !65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!67 = !{!51}
!68 = !{!53, !52}
!69 = !{!51, !53, !52}
!70 = !{!55}
!71 = !{!55, !57, !56, !51, !53, !52}
!72 = !{!56, !52}
!73 = !{!55, !51}
!74 = !{!57, !56, !53, !52}
!75 = !{!59}
!76 = !{!61}
!77 = !{!61, !59}
!78 = !{!61, !59, !56, !52}
!79 = !{!63}
!80 = !{!64, !56, !52}
!81 = !{!64, !63, !56, !52}
!82 = !{!66}
!83 = distinct !{!83, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!84 = distinct !{!84, !83, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!85 = distinct !{!85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!86 = distinct !{!86, !85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!87 = distinct !{!87, !85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!88 = distinct !{!88, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!89 = distinct !{!89, !88, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!90 = distinct !{!90, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!91 = distinct !{!91, !90, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!92 = distinct !{!92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!93 = distinct !{!93, !92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!94 = distinct !{!94, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!95 = distinct !{!95, !94, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!96 = distinct !{!96, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!97 = distinct !{!97, !96, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!98 = distinct !{!98, !92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!99 = distinct !{!99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!100 = distinct !{!100, !99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!101 = distinct !{!101, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!102 = distinct !{!102, !101, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!103 = !{!84}
!104 = !{!86}
!105 = !{!86, !84}
!106 = !{!87}
!107 = !{!89, !86, !87, !84}
!108 = !{!91, !86, !87, !84}
!109 = !{!93}
!110 = !{!95}
!111 = !{!97}
!112 = !{!100, !97, !95, !98, !93}
!113 = !{!102, !97, !95, !98, !93}
!114 = !{!97, !95, !93}
!115 = !{!98}
!116 = !{!97, !95, !98, !93}
!117 = distinct !{!117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!118 = distinct !{!118, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!119 = distinct !{!119, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!121 = distinct !{!121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!122 = distinct !{!122, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!123 = distinct !{!123, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!124 = distinct !{!124, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!125 = distinct !{!125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!127 = distinct !{!127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!128 = distinct !{!128, !127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!129 = distinct !{!129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!130 = distinct !{!130, !129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!131 = distinct !{!131, !"_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!132 = distinct !{!132, !131, !"_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!133 = distinct !{!133, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!134 = distinct !{!134, !133, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!135 = distinct !{!135, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!136 = distinct !{!136, !135, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!137 = !{!118}
!138 = !{!120, !119}
!139 = !{!118, !120, !119}
!140 = !{!122}
!141 = !{!122, !124, !123, !118, !120, !119}
!142 = !{!122, !118}
!143 = !{!124, !123, !120, !119}
!144 = !{!123, !119}
!145 = !{!126}
!146 = !{!128}
!147 = !{!128, !126}
!148 = !{!128, !126, !123, !119}
!149 = !{!130}
!150 = !{!132}
!151 = !{!134, !130, !123, !119}
!152 = !{!136}
!153 = distinct !{!153, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!154 = distinct !{!154, !153, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!155 = distinct !{!155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!156 = distinct !{!156, !155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!157 = distinct !{!157, !155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!158 = distinct !{!158, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!159 = distinct !{!159, !158, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!160 = distinct !{!160, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!161 = distinct !{!161, !160, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!162 = distinct !{!162, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!163 = distinct !{!163, !162, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
end_hunk_2
