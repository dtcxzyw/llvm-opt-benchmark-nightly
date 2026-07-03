inline.NumInlined: 518
inline.NumDeleted: 284
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib:bb.a
  %i.ix = mul nsw i64 %i.iw, %i.ie
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %i.ix
  %i.iz = shl nsw i64 %i.io, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 4 %i.iq, i64 %i.iz, i1 false)
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %i.ja = icmp slt i64 %indvars.iv.next39.i.i, %i.il
  br i1 %i.ja, label %.lr.ph30.split.us.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !192

.lr.ph30.split.i.i:                               ; preds = %.lr.ph30.i.i
  %i.jb = load i32, ptr %i.fa, align 8, !tbaa !191 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.preheader.preheader.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph30.split.i.i
  %i.jd = sext i32 %i.if to i64
  %i.je = sext i32 %i.ia to i64
  %.pre.i.i = load ptr, ptr %i.ez, align 8, !tbaa !190
  %.pre41.i.i = load ptr, ptr %i.ih, align 8, !tbaa !87
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.loopexit.i.i, %.preheader.preheader.i.i
  %i.jf = phi i32 [ %i.jb, %.preheader.preheader.i.i ], [ %i.jx, %.loopexit.i.i ] ; 3 uses
  %indvars.iv35.i.i = phi i64 [ %i.jd, %.preheader.preheader.i.i ], [ %indvars.iv.next36.i.i, %.loopexit.i.i ] ; 3 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = mul nsw i64 %indvars.iv35.i.i, %i.jg
  %i.ji = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.jh
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i13.i
  %i.jk = load i32, ptr %i.ey, align 4, !tbaa !185
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %i.ic, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %.pre41.i.i, i64 %i.jm
  %i.jo = add nsw i64 %indvars.iv35.i.i, %i.ii
  %i.jp = mul nsw i64 %i.jo, %i.ie
  %i.jq = getelementptr inbounds i8, ptr %i.jn, i64 %i.jp
  br label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i, %.lr.ph.preheader.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i16.i, %.lr.ph.i14.i ] ; 2 uses
  %.02427.i.i = phi ptr [ %i.jq, %.lr.ph.preheader.i.i ], [ %i.jt, %.lr.ph.i14.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.i15.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !3
  store i32 %i.js, ptr %.02427.i.i, align 4, !tbaa !3
  %i.jt = getelementptr inbounds i8, ptr %.02427.i.i, i64 %i.ic
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %i.ju = load i32, ptr %i.fa, align 8, !tbaa !191 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next.i16.i, %i.jv
  br i1 %i.jw, label %.lr.ph.i14.i, label %.loopexit.i.i, !llvm.loop !193

.loopexit.i.i:                                    ; preds = %.lr.ph.i14.i, %.preheader.i13.i
  %i.jx = phi i32 [ %i.jf, %.preheader.i13.i ], [ %i.ju, %.lr.ph.i14.i ]
  %indvars.iv.next36.i.i = add nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.jy = icmp slt i64 %indvars.iv.next36.i.i, %i.je
  br i1 %i.jy, label %.preheader.i13.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !194

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i: ; preds = %.loopexit.i.i, %.lr.ph30.split.us.i.i, %.lr.ph30.split.i.i, %.noexc69
  %i.jz = load i8, ptr %i.ep, align 1, !tbaa !164, !range !76, !noundef !77
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKSt6vectorINS_9DeepSliceESaIS9_EE.exit, label %bb.br

bb.br:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i
  %i.kb = load i64, ptr %i.fc, align 8, !tbaa !196
  %.not.i67 = icmp eq i64 %i.kb, 0
  br i1 %.not.i67, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = load ptr, ptr %i.fd, align 8, !tbaa !197 ; 2 uses
  %.not10.i = icmp eq ptr %i.kc, null
  br i1 %.not10.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kd = invoke noundef i32 %i.kc(ptr noundef nonnull %i.fb)
          to label %.noexc70 unwind label %.loopexit.split-lp98.loopexit, !inline_history !198 ; 2 uses

.noexc70:                                         ; preds = %bb.bt
  store i32 %i.kd, ptr %11, align 8, !tbaa !110
  %.not11.i = icmp eq i32 %i.kd, 0
  br i1 %.not11.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.noexc70
  %i.ke = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, ptr noundef nonnull @.str.27)
          to label %.invoke unwind label %bb.bv

.invoke:                                          ; preds = %bb.bh, %bb.bu
  %i.kf = phi ptr [ %i.ke, %bb.bu ], [ %i.fs, %bb.bh ]
  %i.kg = phi ptr [ @_ZTIN7Iex_3_35IoExcE, %bb.bu ], [ @_ZTIN7Iex_3_38InputExcE, %bb.bh ]
  %i.kh = phi ptr [ @_ZN7Iex_3_35IoExcD1Ev, %bb.bu ], [ @_ZN7Iex_3_38InputExcD1Ev, %bb.bh ]
  invoke void @__cxa_throw(ptr nonnull %i.kf, ptr nonnull %i.kg, ptr nonnull %i.kh) #26
          to label %.cont unwind label %.loopexit.split-lp98.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ke) #25
  br label %.body72

bb.bw:                                            ; preds = %.noexc70, %bb.bs, %bb.br
  %.val.i = load ptr, ptr %i.er, align 8, !tbaa !199
  %.val12.i = load ptr, ptr %i.fe, align 8, !tbaa !199
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKSt6vectorINS_9DeepSliceESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(584) %11, i32 noundef %.0112, ptr %.val.i, ptr %.val12.i)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKSt6vectorINS_9DeepSliceESaIS9_EE.exit unwind label %.loopexit.split-lp98.loopexit

bb.bx:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eq, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !163
  %i.kj = load ptr, ptr %0, align 8, !tbaa !25
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !103
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !107
  %i.km = load i32, ptr %i.d, align 8, !tbaa !55
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKSt6vectorINS_9DeepSliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %11, ptr noundef %i.kl, i32 noundef %i.km, ptr noundef nonnull %1, i32 noundef %.0112, i32 noundef %spec.select91, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKSt6vectorINS_9DeepSliceESaIS9_EE.exit unwind label %.loopexit.split-lp98.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKSt6vectorINS_9DeepSliceESaIS9_EE.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, %bb.bw, %bb.bx
  %i.kn = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ko = load i32, ptr %i.ff, align 8, !tbaa !165
  %i.kp = add i32 %i.ko, %i.kn                    ; 2 uses
  %.not44 = icmp sgt i32 %i.kp, %spec.select91
  br i1 %.not44, label %bb.bc, label %bb.bf, !llvm.loop !200

.body72:                                          ; preds = %.loopexit97, %.loopexit.split-lp98.loopexit.split-lp, %.loopexit.split-lp98.loopexit, %bb.bv, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.bi ], [ %i.ki, %bb.bv ], [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit102, %.loopexit.split-lp98.loopexit ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp98.loopexit.split-lp ]
  call fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bz

bb.by:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessD2Ev.exit, %_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.bz:                                            ; preds = %.body, %.body72, %bb.r, %bb.h
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.h ], [ %.pn54, %bb.r ], [ %.pn49.pn.pn, %.body ], [ %.pn, %.body72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.ca:                                            ; preds = %bb.am, %bb.o, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.d = load i8, ptr %i.c, align 1, !tbaa !84, !range !76, !noundef !77
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile10readPixelsEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #25
  resume { ptr, i32 } %i.g

_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile10readPixelsEii.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i32 noundef %1, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile12rawPixelDataEiPcRm(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.exr_chunk_info_t, align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !103
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = call i32 @exr_read_scanline_chunk_info(ptr noundef %i.b, i32 noundef %i.f, i32 noundef %1, ptr noundef nonnull %4)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !201  ; 3 uses
  %i.k = add i64 %i.j, 28
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !202  ; 2 uses
  %i.n = add i64 %i.k, %i.m                       ; 2 uses
  %.not = icmp eq ptr %2, null
  %7 = load i64, ptr %3, align 8
  %8 = icmp ugt i64 %i.n, %7
  %or.cond = select i1 %.not, i1 true, i1 %8
  store i64 %i.n, ptr %3, align 8, !tbaa !81
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !165
  store i32 %i.p, ptr %2, align 1, !tbaa !203
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i64 %i.j, ptr %i.q, align 1, !tbaa !205
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i64 %i.m, ptr %i.r, align 1, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !207
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i64 %i.t, ptr %i.u, align 1, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !103
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.j
  %i.ac = call i32 @exr_read_deep_chunk(ptr noundef %i.x, i32 noundef %i.aa, ptr noundef nonnull %4, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.v)
  %.not29 = icmp eq i32 %i.ac, 0
  br i1 %.not29, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.1, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.af = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit unwind label %bb.g

_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.2, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34.a unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34.a: ; preds = %bb.e
  %i.ai = load i64, ptr %3, align 8, !tbaa !81
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.ai)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34.a
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.a unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.a: ; preds = %_ZNSolsEm.exit
  %i.al = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.a
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #26
          to label %bb.r unwind label %bb.g

bb.g:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34.a, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn30 = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.an, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.q

bb.j:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.k:                                             ; preds = %bb.a
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.1, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.k
  %i.aq = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit37 unwind label %bb.n

_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit37: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef %i.aq)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit37
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.4, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.l
  %i.at = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #26
          to label %bb.r unwind label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %bb.k, %bb.m, %_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv.exit37
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.at) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.av, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.i ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn30.pn

bb.r:                                             ; preds = %bb.m, %bb.f
  unreachable
}

declare i32 @exr_read_scanline_chunk_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_read_deep_chunk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

declare void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile10readPixelsEPKcRKNS_15DeepFrameBufferEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4Data11readMemDataERKNS_15DeepFrameBufferEPKciib(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %1, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4Data11readMemDataERKNS_15DeepFrameBufferEPKciib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::vector", align 8       ; 11 uses
  %9 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::ScanLineProcess", align 8 ; 27 uses
  %i.a = zext i1 %5 to i8
  %i.b = tail call i64 @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile4Data13getChunkRangeEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %3)
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.c = load i32, ptr %2, align 1, !tbaa !203
  %.not = icmp eq i32 %i.c, %3
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.14, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 44)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %4)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.15, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.e
  %i.j = load i32, ptr %2, align 1, !tbaa !203
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.j)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.l = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #26
          to label %bb.bb unwind label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn35 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.n, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ba

bb.k:                                             ; preds = %bb.a
  %.not30 = icmp eq i32 %4, %.sroa.4.0.extract.trunc
  br i1 %.not30, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.14, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.l
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext 44)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %4)
          to label %bb.o unwind label %bb.r       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.16, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.o
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %.sroa.4.0.extract.trunc)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.v = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #26
          to label %bb.bb unwind label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.l, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %bb.n, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

end_hunk_0
