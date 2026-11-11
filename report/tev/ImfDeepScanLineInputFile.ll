Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfDeepScanLineInputFile?download=true
inline.NumInlined: 963
inline.NumDeleted: 567
begin_hunk_0_@_ZN7Imf_3_421DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib:bb.a
_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.cd

bb.bk:                                            ; preds = %bb.bg, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit
  %.0116 = phi i32 [ %spec.select, %bb.bg ], [ %i.le, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit ] ; 6 uses
  %.030115 = phi i1 [ true, %bb.bg ], [ false, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit ]
  %i.gc = load ptr, ptr %0, align 8, !tbaa !57
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !88
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !90
  %i.gf = load i32, ptr %i.d, align 8, !tbaa !58
  %i.gg = invoke i32 @exr_read_scanline_chunk_info(ptr noundef %i.ge, i32 noundef %i.gf, i32 noundef %.0116, ptr noundef nonnull %7)
          to label %bb.bl unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %.not45 = icmp eq i32 %i.gg, 0
  br i1 %.not45, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gh = call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, ptr noundef nonnull @.str.13)
          to label %.invoke unwind label %bb.bn

.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bt, %bb.cb, %bb.by, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i, %bb.cc, %bb.bk, %.invoke
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %.body75

bb.bn:                                            ; preds = %bb.bm
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gh) #22
  br label %.body75

bb.bo:                                            ; preds = %bb.bl
  br i1 %.030115, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gj = load i32, ptr %i.ff, align 8, !tbaa !210
  %i.gk = load i32, ptr %7, align 8, !tbaa !211
  %i.gl = icmp eq i32 %i.gj, %i.gk
  %i.gm = load i32, ptr %12, align 8
  %i.gn = icmp eq i32 %i.gm, 0
  %or.cond = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %or.cond, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.go = load i32, ptr %i.fh, align 8, !tbaa !123 ; 2 uses
  %i.gp = sub nsw i32 %.0116, %i.go
  store i32 %i.gp, ptr %i.fi, align 8, !tbaa !124
  store i32 0, ptr %i.fj, align 4, !tbaa !125
  %i.gq = sext i32 %i.go to i64
  %i.gr = load i32, ptr %i.fk, align 4, !tbaa !126
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i64 %i.gq, -1
  %i.gu = add nsw i64 %i.gt, %i.gs                ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, %i.al
  br i1 %i.gv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gw = trunc i64 %i.gu to i32
  %i.gx = sub i32 %i.gw, %spec.select94
  store i32 %i.gx, ptr %i.fj, align 4, !tbaa !125
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.gy = load i8, ptr %i.fe, align 1, !tbaa !121, !range !72, !noundef !73
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = load i16, ptr %i.fl, align 8
  %i.hb = icmp slt i16 %i.ha, 1
  %or.cond120.not = select i1 %i.gz, i1 true, i1 %i.hb
  br i1 %or.cond120.not, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bs
  %i.hc = sext i32 %.0116 to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bv ] ; 2 uses
  %i.hd = load ptr, ptr %i.fm, align 8, !tbaa !127
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.hd, i64 %indvars.iv.i.i ; 7 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !129
  %i.hg = invoke noundef ptr @_ZNK7Imf_3_415DeepFrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.hf)
          to label %.noexc71 unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc71:                                         ; preds = %bb.bt
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !130
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = icmp ne ptr %i.hg, null
  %or.cond.i.i = and i1 %i.hk, %i.hj
  br i1 %or.cond.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.noexc71
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 52
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !132
  %i.hn = trunc i32 %i.hm to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 28
  store i16 %i.hn, ptr %i.ho, align 4, !tbaa !133
  %i.hp = load i32, ptr %i.hg, align 8, !tbaa !134
  %i.hq = trunc i32 %i.hp to i16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 30
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !135
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !136 ; 2 uses
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !137 ; 2 uses
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !80
  %i.ia = load i32, ptr %i.fn, align 4, !tbaa !138
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i64 %i.ht, %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.hz, i64 %i.ic
  %i.ie = mul nsw i64 %i.hw, %i.hc
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc71
  %.sink38.i.i = phi i32 [ %i.hu, %bb.bu ], [ 0, %.noexc71 ]
  %.sink37.i.i = phi i32 [ %i.hx, %bb.bu ], [ 0, %.noexc71 ]
  %.sink.i.i = phi ptr [ %i.if, %bb.bu ], [ null, %.noexc71 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i32 %.sink38.i.i, ptr %i.ig, align 8, !tbaa !139
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  store i32 %.sink37.i.i, ptr %i.ih, align 4, !tbaa !140
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  store ptr %.sink.i.i, ptr %i.ii, align 8, !tbaa !105
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ij = load i16, ptr %i.fl, align 8, !tbaa !141
  %i.ik = sext i16 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next.i.i, %i.ik
  br i1 %i.il, label %bb.bt, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i, !llvm.loop !3

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i: ; preds = %bb.bv, %bb.bs
  %i.im = invoke noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_415DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc72 unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc72:                                         ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i
  %i.in = load i32, ptr %i.fk, align 4, !tbaa !126
  %i.io = load i32, ptr %i.fj, align 4, !tbaa !125
  %i.ip = sub nsw i32 %i.in, %i.io                ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !136 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.it = load i64, ptr %i.is, align 8, !tbaa !137 ; 2 uses
  %i.iu = load i32, ptr %i.fi, align 8, !tbaa !124 ; 3 uses
  %i.iv = icmp slt i32 %i.iu, %i.ip
  br i1 %i.iv, label %.lr.ph30.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i

.lr.ph30.i.i:                                     ; preds = %.noexc72
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.ix = sext i32 %.0116 to i64                  ; 2 uses
  %i.iy = icmp eq i64 %i.ir, 4
  br i1 %i.iy, label %.lr.ph30.split.us.preheader.i.i, label %.lr.ph30.split.i.i

.lr.ph30.split.us.preheader.i.i:                  ; preds = %.lr.ph30.i.i
  %i.iz = sext i32 %i.iu to i64
  %i.ja = sext i32 %i.ip to i64
  br label %.lr.ph30.split.us.i.i

.lr.ph30.split.us.i.i:                            ; preds = %.lr.ph30.split.us.i.i, %.lr.ph30.split.us.preheader.i.i
  %indvars.iv38.i.i = phi i64 [ %i.iz, %.lr.ph30.split.us.preheader.i.i ], [ %indvars.iv.next39.i.i, %.lr.ph30.split.us.i.i ] ; 3 uses
  %i.jb = load ptr, ptr %i.fo, align 8, !tbaa !142
  %i.jc = load i32, ptr %i.fp, align 8, !tbaa !143
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = mul nsw i64 %indvars.iv38.i.i, %i.jd
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.je
  %i.jg = load ptr, ptr %i.iw, align 8, !tbaa !80
  %i.jh = load i32, ptr %i.fn, align 4, !tbaa !138
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 2
  %i.jk = getelementptr inbounds i8, ptr %i.jg, i64 %i.jj
  %i.jl = add nsw i64 %indvars.iv38.i.i, %i.ix
  %i.jm = mul nsw i64 %i.jl, %i.it
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 %i.jm
  %i.jo = shl nsw i64 %i.jd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 4 %i.jf, i64 %i.jo, i1 false)
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %i.jp = icmp slt i64 %indvars.iv.next39.i.i, %i.ja
  br i1 %i.jp, label %.lr.ph30.split.us.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !4

.lr.ph30.split.i.i:                               ; preds = %.lr.ph30.i.i
  %i.jq = load i32, ptr %i.fp, align 8, !tbaa !143 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.preheader.preheader.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph30.split.i.i
  %i.js = sext i32 %i.iu to i64
  %i.jt = sext i32 %i.ip to i64
  %.pre.i.i = load ptr, ptr %i.fo, align 8, !tbaa !142
  %.pre41.i.i = load ptr, ptr %i.iw, align 8, !tbaa !80
  %.pre43.i.i = load i32, ptr %i.fn, align 4, !tbaa !138
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.loopexit.i.i, %.preheader.preheader.i.i
  %i.ju = phi i32 [ %i.jq, %.preheader.preheader.i.i ], [ %i.kl, %.loopexit.i.i ] ; 3 uses
  %i.jv = phi i32 [ %.pre43.i.i, %.preheader.preheader.i.i ], [ %i.km, %.loopexit.i.i ] ; 2 uses
  %indvars.iv35.i.i = phi i64 [ %i.js, %.preheader.preheader.i.i ], [ %indvars.iv.next36.i.i, %.loopexit.i.i ] ; 3 uses
  %13 = sext i32 %i.ju to i64
  %i.jw = mul nsw i64 %indvars.iv35.i.i, %13
  %i.jx = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.jw
  %i.jy = icmp sgt i32 %i.ju, 0
  br i1 %i.jy, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i13.i
  %i.jz = sext i32 %i.jv to i64
  %i.ka = mul nsw i64 %i.ir, %i.jz
  %i.kb = getelementptr inbounds i8, ptr %.pre41.i.i, i64 %i.ka
  %i.kc = add nsw i64 %indvars.iv35.i.i, %i.ix
  %i.kd = mul nsw i64 %i.kc, %i.it
  %i.ke = getelementptr inbounds i8, ptr %i.kb, i64 %i.kd
  br label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i, %.lr.ph.preheader.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i16.i, %.lr.ph.i14.i ] ; 2 uses
  %.02427.i.i = phi ptr [ %i.ke, %.lr.ph.preheader.i.i ], [ %i.kh, %.lr.ph.i14.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i15.i
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !60
  store i32 %i.kg, ptr %.02427.i.i, align 4, !tbaa !60
  %i.kh = getelementptr inbounds i8, ptr %.02427.i.i, i64 %i.ir
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %i.ki = load i32, ptr %i.fp, align 8, !tbaa !143 ; 2 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp slt i64 %indvars.iv.next.i16.i, %i.kj
  br i1 %i.kk, label %.lr.ph.i14.i, label %.loopexit.loopexit.i.i, !llvm.loop !5

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i14.i
  %.pre42.i.i = load i32, ptr %i.fn, align 4, !tbaa !138
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.preheader.i13.i
  %i.kl = phi i32 [ %i.ki, %.loopexit.loopexit.i.i ], [ %i.ju, %.preheader.i13.i ]
  %i.km = phi i32 [ %.pre42.i.i, %.loopexit.loopexit.i.i ], [ %i.jv, %.preheader.i13.i ]
  %indvars.iv.next36.i.i = add nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.kn = icmp slt i64 %indvars.iv.next36.i.i, %i.jt
  br i1 %i.kn, label %.preheader.i13.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !6

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i: ; preds = %.loopexit.i.i, %.lr.ph30.split.us.i.i, %.lr.ph30.split.i.i, %.noexc72
  %i.ko = load i8, ptr %i.fe, align 1, !tbaa !121, !range !72, !noundef !73
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i
  %i.kq = load i64, ptr %i.fr, align 8, !tbaa !212
  %.not.i69 = icmp eq i64 %i.kq, 0
  br i1 %.not.i69, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kr = load ptr, ptr %i.fs, align 8, !tbaa !213 ; 2 uses
  %.not10.i = icmp eq ptr %i.kr, null
  br i1 %.not10.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ks = invoke noundef i32 %i.kr(ptr noundef nonnull %i.fq)
          to label %.noexc73 unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !203 ; 2 uses

.noexc73:                                         ; preds = %bb.by
  store i32 %i.ks, ptr %12, align 8, !tbaa !98
  %.not11.i = icmp eq i32 %i.ks, 0
  br i1 %.not11.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.noexc73
  %i.kt = call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull @.str.28)
          to label %.invoke unwind label %bb.ca

.invoke:                                          ; preds = %bb.bm, %bb.bz
  %i.ku = phi ptr [ %i.kt, %bb.bz ], [ %i.gh, %bb.bm ]
  %i.kv = phi ptr [ @_ZTIN7Iex_3_45IoExcE, %bb.bz ], [ @_ZTIN7Iex_3_48InputExcE, %bb.bm ]
  %i.kw = phi ptr [ @_ZN7Iex_3_45IoExcD1Ev, %bb.bz ], [ @_ZN7Iex_3_48InputExcD1Ev, %bb.bm ]
  invoke void @__cxa_throw(ptr nonnull %i.ku, ptr nonnull %i.kv, ptr nonnull %i.kw) #25
          to label %.cont unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kt) #22
  br label %.body75

bb.cb:                                            ; preds = %.noexc73, %bb.bx, %bb.bw
  %.val.i70 = load ptr, ptr %i.fg, align 8, !tbaa !78
  %.val12.i = load ptr, ptr %i.ft, align 8, !tbaa !79
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKNSt3__16vectorINS_9DeepSliceENS5_9allocatorIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(584) %12, i32 noundef %.0116, ptr %.val.i70, ptr %.val12.i)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.bp, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ff, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !209
  %i.ky = load ptr, ptr %0, align 8, !tbaa !57
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !88
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !90
  %i.lb = load i32, ptr %i.d, align 8, !tbaa !58
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE(ptr noundef nonnull align 8 dereferenceable(584) %12, ptr noundef %i.la, i32 noundef %i.lb, ptr noundef nonnull %1, i32 noundef %.0116, i32 noundef %spec.select94, ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit unwind label %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, %bb.cb, %bb.cc
  %i.lc = load i32, ptr %i.a, align 4, !tbaa !60
  %i.ld = load i32, ptr %i.fu, align 8, !tbaa !122
  %i.le = add i32 %i.ld, %i.lc                    ; 2 uses
  %.not44 = icmp sgt i32 %i.le, %spec.select94
  br i1 %.not44, label %bb.bh, label %bb.bk, !llvm.loop !204

.body75:                                          ; preds = %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ca, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.bn ], [ %i.kx, %bb.ca ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit, %_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.ce:                                            ; preds = %.body, %.body75, %bb.q, %bb.g
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.g ], [ %.pn54, %bb.q ], [ %.pn49.pn.pn, %.body ], [ %.pn, %.body75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

bb.cf:                                            ; preds = %bb.au, %bb.n, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !77, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #22
  resume { ptr, i32 } %i.g

_ZN7Imf_3_421DeepScanLineInputFile10readPixelsEii.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZN7Imf_3_421DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i32 noundef %1, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421DeepScanLineInputFile12rawPixelDataEiPcRm(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.exr_chunk_info_t, align 8   ; 9 uses
  %5 = alloca %"class.std::__1::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__1::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58
  %i.g = call i32 @exr_read_scanline_chunk_info(ptr noundef %i.b, i32 noundef %i.f, i32 noundef %1, ptr noundef nonnull %4)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !214  ; 3 uses
  %i.k = add i64 %i.j, 28
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !215  ; 2 uses
  %i.n = add i64 %i.k, %i.m                       ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %3, align 8, !tbaa !75
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.n, ptr %3, align 8, !tbaa !75
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  store i64 %i.n, ptr %3, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !122
  store i32 %i.r, ptr %2, align 1, !tbaa !146
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i64 %i.j, ptr %i.s, align 1, !tbaa !216
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_421DeepScanLineInputFile4Data11readMemDataERKNS_15DeepFrameBufferEPKciib:bb.a
  store i32 %i.bt, ptr %i.bj, align 4, !tbaa !125
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.bd, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ak
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !141
  %i.bw = icmp sgt i16 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bz = sext i32 %3 to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %indvars.iv.i.i ; 7 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !129
  %i.cd = invoke noundef ptr @_ZNK7Imf_3_415DeepFrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef %i.cc)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc43:                                         ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !130
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = icmp ne ptr %i.cd, null
  %or.cond.i.i = and i1 %i.ch, %i.cg
  br i1 %or.cond.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc43
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !132
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store i16 %i.ck, ptr %i.cl, align 4, !tbaa !133
  %i.cm = load i32, ptr %i.cd, align 8, !tbaa !134
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 30
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !135
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !136 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !137 ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !80
  %i.cx = load i32, ptr %i.by, align 4, !tbaa !138
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.cq, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = mul nsw i64 %i.ct, %i.bz
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc43
  %.sink38.i.i = phi i32 [ %i.cr, %bb.am ], [ 0, %.noexc43 ]
  %.sink37.i.i = phi i32 [ %i.cu, %bb.am ], [ 0, %.noexc43 ]
  %.sink.i.i = phi ptr [ %i.dc, %bb.am ], [ null, %.noexc43 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i32 %.sink38.i.i, ptr %i.dd, align 8, !tbaa !139
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 %.sink37.i.i, ptr %i.de, align 4, !tbaa !140
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr %.sink.i.i, ptr %i.df, align 8, !tbaa !105
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dg = load i16, ptr %i.bu, align 8, !tbaa !141
  %i.dh = sext i16 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next.i.i, %i.dh
  br i1 %i.di, label %bb.al, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i, !llvm.loop !3

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i: ; preds = %bb.an, %.preheader.i.i, %bb.ak
  %i.dj = invoke i32 @exr_decoding_choose_default_routines(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.av)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.i
  %.not20.i = icmp eq i32 %i.dj, 0
  br i1 %.not20.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.noexc44
  %i.dk = call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noundef nonnull @.str.27)
          to label %.invoke unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aq:                                            ; preds = %.noexc44
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 304
  store ptr @_ZN7Imf_3_4L19mem_skip_read_chunkEP20_exr_decode_pipeline, ptr %i.dm, align 8, !tbaa !232
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 224
  store ptr %i.aa, ptr %i.dn, align 8, !tbaa !233
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !234
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 192
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !235
  %i.ds = invoke i32 @exr_decoding_run(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.av)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc46:                                         ; preds = %bb.aq
  store i32 %i.ds, ptr %9, align 8, !tbaa !98
  %.not21.i = icmp eq i32 %i.ds, 0
  br i1 %.not21.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.noexc46
  %i.dt = call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull @.str.28)
          to label %.invoke unwind label %bb.as

.invoke:                                          ; preds = %bb.ar, %bb.ao, %bb.ae, %bb.ab, %bb.y
  %i.du = phi ptr [ %i.dk, %bb.ao ], [ %i.ax, %bb.ae ], [ %i.at, %bb.ab ], [ %i.ak, %bb.y ], [ %i.dt, %bb.ar ]
  %i.dv = phi ptr [ @_ZTIN7Iex_3_45IoExcE, %bb.ao ], [ @_ZTIN7Iex_3_45IoExcE, %bb.ae ], [ @_ZTIN7Iex_3_46ArgExcE, %bb.ab ], [ @_ZTIN7Iex_3_48InputExcE, %bb.y ], [ @_ZTIN7Iex_3_45IoExcE, %bb.ar ]
  %i.dw = phi ptr [ @_ZN7Iex_3_45IoExcD1Ev, %bb.ao ], [ @_ZN7Iex_3_45IoExcD1Ev, %bb.ae ], [ @_ZN7Iex_3_46ArgExcD1Ev, %bb.ab ], [ @_ZN7Iex_3_48InputExcD1Ev, %bb.y ], [ @_ZN7Iex_3_45IoExcD1Ev, %bb.ar ]
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull %i.dv, ptr nonnull %i.dw) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %.noexc46
  %i.dy = invoke noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_415DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aq)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc48:                                         ; preds = %bb.at
  %i.dz = load i32, ptr %i.bl, align 4, !tbaa !126
  %i.ea = load i32, ptr %i.bj, align 4, !tbaa !125
  %i.eb = sub nsw i32 %i.dz, %i.ea                ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !136 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !137 ; 2 uses
  %i.eg = load i32, ptr %i.bi, align 8, !tbaa !124 ; 3 uses
  %i.eh = icmp slt i32 %i.eg, %i.eb
  br i1 %i.eh, label %.lr.ph30.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i

.lr.ph30.i.i:                                     ; preds = %.noexc48
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.em = sext i32 %3 to i64                      ; 2 uses
  %i.en = icmp eq i64 %i.ed, 4
  br i1 %i.en, label %.lr.ph30.split.us.preheader.i.i, label %.lr.ph30.split.i.i

.lr.ph30.split.us.preheader.i.i:                  ; preds = %.lr.ph30.i.i
  %i.eo = sext i32 %i.eg to i64
  %i.ep = sext i32 %i.eb to i64
  br label %.lr.ph30.split.us.i.i

.lr.ph30.split.us.i.i:                            ; preds = %.lr.ph30.split.us.i.i, %.lr.ph30.split.us.preheader.i.i
  %indvars.iv38.i.i = phi i64 [ %i.eo, %.lr.ph30.split.us.preheader.i.i ], [ %indvars.iv.next39.i.i, %.lr.ph30.split.us.i.i ] ; 3 uses
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !142
  %i.er = load i32, ptr %i.ej, align 8, !tbaa !143
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = mul nsw i64 %indvars.iv38.i.i, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.et
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !80
  %i.ew = load i32, ptr %i.el, align 4, !tbaa !138
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 2
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  %i.fa = add nsw i64 %indvars.iv38.i.i, %i.em
  %i.fb = mul nsw i64 %i.fa, %i.ef
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.fb
  %i.fd = shl nsw i64 %i.es, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 4 %i.eu, i64 %i.fd, i1 false)
  %indvars.iv.next39.i.i = add nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next39.i.i, %i.ep
  br i1 %i.fe, label %.lr.ph30.split.us.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !4

.lr.ph30.split.i.i:                               ; preds = %.lr.ph30.i.i
  %i.ff = load i32, ptr %i.ej, align 8, !tbaa !143 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader.preheader.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph30.split.i.i
  %i.fh = sext i32 %i.eg to i64
  %i.fi = sext i32 %i.eb to i64
  %.pre.i.i = load ptr, ptr %i.ei, align 8, !tbaa !142
  %.pre41.i.i = load ptr, ptr %i.ek, align 8, !tbaa !80
  %.pre43.i.i = load i32, ptr %i.el, align 4, !tbaa !138
  br label %.preheader.i24.i

.preheader.i24.i:                                 ; preds = %.loopexit.i.i, %.preheader.preheader.i.i
  %i.fj = phi i32 [ %i.ff, %.preheader.preheader.i.i ], [ %i.ga, %.loopexit.i.i ] ; 3 uses
  %i.fk = phi i32 [ %.pre43.i.i, %.preheader.preheader.i.i ], [ %i.gb, %.loopexit.i.i ] ; 2 uses
  %indvars.iv35.i.i = phi i64 [ %i.fh, %.preheader.preheader.i.i ], [ %indvars.iv.next36.i.i, %.loopexit.i.i ] ; 3 uses
  %10 = sext i32 %i.fj to i64
  %i.fl = mul nsw i64 %indvars.iv35.i.i, %10
  %i.fm = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.fl
  %i.fn = icmp sgt i32 %i.fj, 0
  br i1 %i.fn, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i24.i
  %i.fo = sext i32 %i.fk to i64
  %i.fp = mul nsw i64 %i.ed, %i.fo
  %i.fq = getelementptr inbounds i8, ptr %.pre41.i.i, i64 %i.fp
  %i.fr = add nsw i64 %indvars.iv35.i.i, %i.em
  %i.fs = mul nsw i64 %i.fr, %i.ef
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i, %.lr.ph.preheader.i.i
  %indvars.iv.i26.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i27.i, %.lr.ph.i25.i ] ; 2 uses
  %.02427.i.i = phi ptr [ %i.ft, %.lr.ph.preheader.i.i ], [ %i.fw, %.lr.ph.i25.i ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i26.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !60
  store i32 %i.fv, ptr %.02427.i.i, align 4, !tbaa !60
  %i.fw = getelementptr inbounds i8, ptr %.02427.i.i, i64 %i.ed
  %indvars.iv.next.i27.i = add nuw nsw i64 %indvars.iv.i26.i, 1 ; 2 uses
  %i.fx = load i32, ptr %i.ej, align 8, !tbaa !143 ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next.i27.i, %i.fy
  br i1 %i.fz, label %.lr.ph.i25.i, label %.loopexit.loopexit.i.i, !llvm.loop !5

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i25.i
  %.pre42.i.i = load i32, ptr %i.el, align 4, !tbaa !138
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.preheader.i24.i
  %i.ga = phi i32 [ %i.fx, %.loopexit.loopexit.i.i ], [ %i.fj, %.preheader.i24.i ]
  %i.gb = phi i32 [ %.pre42.i.i, %.loopexit.loopexit.i.i ], [ %i.fk, %.preheader.i24.i ]
  %indvars.iv.next36.i.i = add nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.gc = icmp slt i64 %indvars.iv.next36.i.i, %i.fi
  br i1 %i.gc, label %.preheader.i24.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, !llvm.loop !6

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i: ; preds = %.loopexit.i.i, %.lr.ph30.split.us.i.i, %.lr.ph30.split.i.i, %.noexc48
  %i.gd = load i8, ptr %i.ac, align 1, !tbaa !121, !range !72, !noundef !73
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess14run_mem_decodeEPK19_priv_exr_context_tiPKcPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENSA_9allocatorISC_EEEE.exit, label %bb.au

bb.au:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i
  %.val.i = load ptr, ptr %8, align 8, !tbaa !78
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val23.i = load ptr, ptr %i.gf, align 8, !tbaa !79
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKNSt3__16vectorINS_9DeepSliceENS5_9allocatorIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(584) %9, i32 noundef %3, ptr %.val.i, ptr %.val23.i)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess14run_mem_decodeEPK19_priv_exr_context_tiPKcPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENSA_9allocatorISC_EEEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.as, %bb.ap, %bb.af, %bb.ac
  %.sink.i = phi ptr [ %i.dt, %bb.as ], [ %i.dk, %bb.ap ], [ %i.ax, %bb.af ], [ %i.at, %bb.ac ]
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.as ], [ %i.dl, %bb.ap ], [ %i.ay, %bb.af ], [ %i.au, %bb.ac ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i) #22
  br label %.body

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess14run_mem_decodeEPK19_priv_exr_context_tiPKcPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENSA_9allocatorISC_EEEE.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit.i, %bb.au
  %i.gg = load i8, ptr %i.ab, align 4, !tbaa !99, !range !72, !noundef !73
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess14run_mem_decodeEPK19_priv_exr_context_tiPKcPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENSA_9allocatorISC_EEEE.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !108
  %i.gk = invoke i32 @exr_decoding_destroy(ptr noundef %i.gj, ptr noundef nonnull %i.av)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #26
  unreachable

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess14run_mem_decodeEPK19_priv_exr_context_tiPKcPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENSA_9allocatorISC_EEEE.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.gn = load ptr, ptr %8, align 8, !tbaa !78    ; 4 uses
  %.not.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !79
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !81
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gt) #24
  br label %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av, %bb.z
  %.pn = phi { ptr, i32 } [ %i.al, %bb.z ], [ %.pn.i, %bb.av ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.gu = load ptr, ptr %8, align 8, !tbaa !78    ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i50, label %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit51, label %bb.az

bb.az:                                            ; preds = %.body
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !79
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !81
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gu to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.ha) #24
  br label %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit51

_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit51: ; preds = %.body, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit51, %bb.t, %bb.j
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.j ], [ %.pn32, %bb.t ], [ %.pn, %_ZNSt3__16vectorIN7Imf_3_49DeepSliceENS_9allocatorIS2_EEED2B8ne180100Ev.exit51 ]
  resume { ptr, i32 } %.pn34.pn

bb.bb:                                            ; preds = %bb.q, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEPKcRKNS_15DeepFrameBufferEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @_ZN7Imf_3_421DeepScanLineInputFile4Data11readMemDataERKNS_15DeepFrameBufferEPKciib(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %1, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !77, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #22
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZN7Imf_3_421DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !77, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #22
  resume { ptr, i32 } %i.g

_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZN7Imf_3_421DeepScanLineInputFile4Data8readDataERKNS_15DeepFrameBufferEiib(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i32 noundef %1, i32 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_421DeepScanLineInputFile20firstScanLineInChunkEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE:bb.a
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !126
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ad, -1
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 2 uses
  %i.aj = sext i32 %5 to i64
  %i.ak = icmp sgt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = trunc i64 %i.ai to i32
  %i.am = sub i32 %i.al, %5
  store i32 %i.am, ptr %i.ac, align 4, !tbaa !125
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.v, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !141
  %i.ap = icmp sgt i16 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = sext i32 %4 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %indvars.iv.i ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.aw = tail call noundef ptr @_ZNK7Imf_3_415DeepFrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.av) ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !130
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = icmp ne ptr %i.aw, null
  %or.cond.i = and i1 %i.ba, %i.az
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !132
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !133
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !134
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 30
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !136 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !137 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !80
  %i.bq = load i32, ptr %i.ar, align 4, !tbaa !138
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.bj, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = mul nsw i64 %i.bm, %i.as
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink38.i = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.o ]
  %.sink37.i = phi i32 [ %i.bn, %bb.p ], [ 0, %bb.o ]
  %.sink.i = phi ptr [ %i.bv, %bb.p ], [ null, %bb.o ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 %.sink38.i, ptr %i.bw, align 8, !tbaa !139
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  store i32 %.sink37.i, ptr %i.bx, align 4, !tbaa !140
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %.sink.i, ptr %i.by, align 8, !tbaa !105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = load i16, ptr %i.an, align 8, !tbaa !141
  %i.ca = sext i16 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next.i, %i.ca
  br i1 %i.cb, label %bb.o, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.loopexit, !llvm.loop !3

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.loopexit: ; preds = %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 90
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !152
  br label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.loopexit, %bb.n, %.preheader.i
  %i.cc = phi i16 [ %.pre, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit.loopexit ], [ %.sink, %bb.n ], [ %.sink, %.preheader.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ce = zext i16 %i.cc to i32
  %.not22 = icmp eq i32 %.020, %i.ce
  br i1 %.not22, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit
  %i.cf = tail call i32 @exr_decoding_choose_default_routines(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.cd)
  %.not23 = icmp eq i32 %i.cf, 0
  br i1 %.not23, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull @.str.27)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #25
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %bb.r, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_15DeepFrameBufferEii.exit
  %i.ci = tail call i32 @exr_decoding_run(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.cd) ; 2 uses
  store i32 %i.ci, ptr %0, align 8, !tbaa !98
  %.not24 = icmp eq i32 %i.ci, 0
  br i1 %.not24, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 56) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull @.str.28)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #25
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.cl = tail call noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_415DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 3 uses
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !126
  %i.cn = load i32, ptr %i.ac, align 4, !tbaa !125
  %i.co = sub nsw i32 %i.cm, %i.cn                ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !136 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !137 ; 2 uses
  %i.ct = load i32, ptr %i.ab, align 8, !tbaa !124 ; 3 uses
  %i.cu = icmp slt i32 %i.ct, %i.co
  br i1 %i.cu, label %.lr.ph30.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit

.lr.ph30.i:                                       ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cz = sext i32 %4 to i64                      ; 2 uses
  %i.da = icmp eq i64 %i.cq, 4
  br i1 %i.da, label %.lr.ph30.split.us.preheader.i, label %.lr.ph30.split.i

.lr.ph30.split.us.preheader.i:                    ; preds = %.lr.ph30.i
  %i.db = sext i32 %i.ct to i64
  %i.dc = sext i32 %i.co to i64
  br label %.lr.ph30.split.us.i

.lr.ph30.split.us.i:                              ; preds = %.lr.ph30.split.us.i, %.lr.ph30.split.us.preheader.i
  %indvars.iv38.i = phi i64 [ %i.db, %.lr.ph30.split.us.preheader.i ], [ %indvars.iv.next39.i, %.lr.ph30.split.us.i ] ; 3 uses
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !142
  %i.de = load i32, ptr %i.cw, align 8, !tbaa !143
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = mul nsw i64 %indvars.iv38.i, %i.df
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !80
  %i.dj = load i32, ptr %i.cy, align 4, !tbaa !138
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 2
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl
  %i.dn = add nsw i64 %indvars.iv38.i, %i.cz
  %i.do = mul nsw i64 %i.dn, %i.cs
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do
  %i.dq = shl nsw i64 %i.df, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 4 %i.dh, i64 %i.dq, i1 false)
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.dr = icmp slt i64 %indvars.iv.next39.i, %i.dc
  br i1 %i.dr, label %.lr.ph30.split.us.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit, !llvm.loop !4

.lr.ph30.split.i:                                 ; preds = %.lr.ph30.i
  %i.ds = load i32, ptr %i.cw, align 8, !tbaa !143 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.preheader.preheader.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit

.preheader.preheader.i:                           ; preds = %.lr.ph30.split.i
  %i.du = sext i32 %i.ct to i64
  %i.dv = sext i32 %i.co to i64
  %.pre.i = load ptr, ptr %i.cv, align 8, !tbaa !142
  %.pre41.i = load ptr, ptr %i.cx, align 8, !tbaa !80
  %.pre43.i = load i32, ptr %i.cy, align 4, !tbaa !138
  br label %.preheader.i27

.preheader.i27:                                   ; preds = %.loopexit.i, %.preheader.preheader.i
  %i.dw = phi i32 [ %i.ds, %.preheader.preheader.i ], [ %i.en, %.loopexit.i ] ; 3 uses
  %i.dx = phi i32 [ %.pre43.i, %.preheader.preheader.i ], [ %i.eo, %.loopexit.i ] ; 2 uses
  %indvars.iv35.i = phi i64 [ %i.du, %.preheader.preheader.i ], [ %indvars.iv.next36.i, %.loopexit.i ] ; 3 uses
  %7 = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %indvars.iv35.i, %7
  %i.dz = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.dy
  %i.ea = icmp sgt i32 %i.dw, 0
  br i1 %i.ea, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i27
  %i.eb = sext i32 %i.dx to i64
  %i.ec = mul nsw i64 %i.cq, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %.pre41.i, i64 %i.ec
  %i.ee = add nsw i64 %indvars.iv35.i, %i.cz
  %i.ef = mul nsw i64 %i.ee, %i.cs
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.preheader.i
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i30, %.lr.ph.i28 ] ; 2 uses
  %.02427.i = phi ptr [ %i.eg, %.lr.ph.preheader.i ], [ %i.ej, %.lr.ph.i28 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i29
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !60
  store i32 %i.ei, ptr %.02427.i, align 4, !tbaa !60
  %i.ej = getelementptr inbounds i8, ptr %.02427.i, i64 %i.cq
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %i.ek = load i32, ptr %i.cw, align 8, !tbaa !143 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next.i30, %i.el
  br i1 %i.em, label %.lr.ph.i28, label %.loopexit.loopexit.i, !llvm.loop !5

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i28
  %.pre42.i = load i32, ptr %i.cy, align 4, !tbaa !138
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i27
  %i.en = phi i32 [ %i.ek, %.loopexit.loopexit.i ], [ %i.dw, %.preheader.i27 ]
  %i.eo = phi i32 [ %.pre42.i, %.loopexit.loopexit.i ], [ %i.dx, %.preheader.i27 ]
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.ep = icmp slt i64 %indvars.iv.next36.i, %i.dv
  br i1 %i.ep, label %.preheader.i27, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit, !llvm.loop !6

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit: ; preds = %.loopexit.i, %.lr.ph30.split.us.i, %bb.z, %.lr.ph30.split.i
  %i.eq = load i8, ptr %i.t, align 1, !tbaa !121, !range !72, !noundef !73
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit
  %.val = load ptr, ptr %6, align 8, !tbaa !78
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val26 = load ptr, ptr %i.es, align 8, !tbaa !79
  tail call fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKNSt3__16vectorINS_9DeepSliceENS5_9allocatorIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(584) %0, i32 noundef %4, ptr %.val, ptr %.val26)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess17copy_sample_countEPKNS_15DeepFrameBufferEi.exit, %bb.aa
  ret void

bb.ac:                                            ; preds = %bb.y, %bb.u, %bb.j, %bb.e
  %.sink40 = phi ptr [ %i.cj, %bb.y ], [ %i.cg, %bb.u ], [ %i.m, %bb.j ], [ %i.g, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.ch, %bb.u ], [ %i.n, %bb.j ], [ %i.h, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink40) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !99, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = invoke i32 @exr_decoding_destroy(ptr noundef %i.f, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable
}

declare noundef nonnull align 8 dereferenceable(50) ptr @_ZNK7Imf_3_415DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_415DeepFrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_415DeepFrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef ptr @_ZNK7Imf_3_47Context11findChannelEiPKc(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_421DeepScanLineInputFile4Data14LineBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferEiiRKNSt3__16vectorINS_9DeepSliceENS8_9allocatorISA_EEEE(ptr noundef nonnull align 8 dereferenceable(584) %i.b, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = extractvalue { ptr, i32 } %i.q, 1
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.u = icmp eq i32 %i.s, %i.t
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120  ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #22
  invoke fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef %i.ab)
          to label %.sink.split unwind label %bb.g

.sink.split:                                      ; preds = %bb.c, %bb.e
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull @.str.21)
          to label %.sink.split unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #26
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt3__136__cxx_atomic_compare_exchange_strongB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbPNS_22__cxx_atomic_base_implIT_EEPS9_S9_NS_12memory_orderESD_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 12 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 8 uses
  %i.e = icmp ugt i64 %i.d, -9
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %i.d, 23
end_hunk_2
