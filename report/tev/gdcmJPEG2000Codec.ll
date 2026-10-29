Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmJPEG2000Codec?download=true
inline.NumInlined: 1115
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4gdcm13JPEG2000Codec21DecodeByStreamsCommonEPcm:bb.a
  %i.ii = add nsw i32 %i.ig, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !76
  store i32 %i.il, ptr %i.id, align 4, !tbaa !76
  %i.im = load i32, ptr %i.hs, align 8, !tbaa !101
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.in ; 2 uses
  %i.ip = add nuw nsw i32 %.0117182, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit238.unr-lcssa, label %bb.bk, !llvm.loop !177

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.loopexit, label %.epil.preheader247

.epil.preheader247:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph188
  %.0121187.epil.init = phi i32 [ 0, %.lr.ph188 ], [ %i.ge, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.0122186.epil.init = phi ptr [ %i.ev, %.lr.ph188 ], [ %i.gd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i32 %i.et to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.iq = load ptr, ptr %i.ew, align 8, !tbaa !103
  %i.ir = getelementptr inbounds nuw [64 x i8], ptr %i.iq, i64 %indvars.iv198
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !113
  %i.iu = sdiv i32 %.0121187.epil.init, %i.dc
  %i.iv = mul nsw i32 %i.iu, %i.cx
  %i.iw = srem i32 %.0121187.epil.init, %i.dc
  %i.ix = add nsw i32 %i.iv, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !76
  %i.jb = trunc i32 %i.ja to i8
  store i8 %i.jb, ptr %.0122186.epil.init, align 1, !tbaa !55
  br label %.loopexit

.loopexit.loopexit237.unr-lcssa:                  ; preds = %bb.bi
  %lcmp.mod243.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.loopexit, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.loopexit.loopexit237.unr-lcssa, %.lr.ph185
  %.0119184.epil.init = phi i32 [ 0, %.lr.ph185 ], [ %i.hl, %.loopexit.loopexit237.unr-lcssa ] ; 2 uses
  %.0120183.epil.init = phi ptr [ %i.gi, %.lr.ph185 ], [ %i.hk, %.loopexit.loopexit237.unr-lcssa ]
  %lcmp.mod244 = trunc i32 %i.gg to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.jc = sdiv i32 %.0119184.epil.init, %i.dc
  %i.jd = mul nsw i32 %i.jc, %i.cx
  %i.je = srem i32 %.0119184.epil.init, %i.dc
  %i.jf = add nsw i32 %i.jd, %i.je
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !76
  %i.jj = trunc i32 %i.ji to i16
  store i16 %i.jj, ptr %.0120183.epil.init, align 2, !tbaa !111
  br label %.loopexit

.loopexit.loopexit238.unr-lcssa:                  ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit238.unr-lcssa, %.lr.ph
  %.0117182.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ip, %.loopexit.loopexit238.unr-lcssa ] ; 2 uses
  %.0118181.epil.init = phi ptr [ %i.hm, %.lr.ph ], [ %i.io, %.loopexit.loopexit238.unr-lcssa ]
  %lcmp.mod240 = trunc i32 %i.gg to i1
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.jk = sdiv i32 %.0117182.epil.init, %i.dc
  %i.jl = mul nsw i32 %i.jk, %i.cx
  %i.jm = srem i32 %.0117182.epil.init, %i.dc
  %i.jn = add nsw i32 %i.jl, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !76
  store i32 %i.jq, ptr %.0118181.epil.init, align 4, !tbaa !76
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit238.unr-lcssa, %.epil.preheader241, %.loopexit.loopexit237.unr-lcssa, %.epil.preheader247, %.loopexit.loopexit.unr-lcssa, %bb.bj, %bb.bh, %bb.be
  %i.jr = phi ptr [ %.pre201, %.epil.preheader241 ], [ %.pre202, %.epil.preheader247 ], [ %.pre202, %bb.be ], [ %.pre201, %bb.bj ], [ %.pre201, %bb.bh ], [ %.pre202, %.loopexit.loopexit.unr-lcssa ], [ %.pre201, %.loopexit.loopexit237.unr-lcssa ], [ %.pre201, %.loopexit.loopexit238.unr-lcssa ], [ %.pre201, %.epil.preheader ] ; 3 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !101
  %i.ju = zext i32 %i.jt to i64
  %.not153 = icmp samesign ult i64 %indvars.iv.next199, %i.ju
  br i1 %.not153, label %bb.z, label %.critedge161, !llvm.loop !178

.critedge161:                                     ; preds = %.loopexit, %bb.y
  %i.jv = phi ptr [ %i.cm, %bb.y ], [ %i.jr, %.loopexit ]
  %.not154 = icmp eq ptr %i.v, null
  br i1 %.not154, label %bb.bl, label %.sink.split230

.sink.split230:                                   ; preds = %.critedge161, %.critedge159
  %.sroa.0176.0.ph = phi ptr [ null, %.critedge159 ], [ %i.cl, %.critedge161 ]
  %.sroa.9.0.ph = phi i64 [ 0, %.critedge159 ], [ %i.ck, %.critedge161 ]
  call void @opj_destroy_codec(ptr noundef %i.v)
  %.pre203 = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split230, %.critedge161
  %.sink227 = phi ptr [ %i.jv, %.critedge161 ], [ %.pre203, %.sink.split230 ]
  %.sroa.0176.0 = phi ptr [ %i.cl, %.critedge161 ], [ %.sroa.0176.0.ph, %.sink.split230 ]
  %.sroa.9.0 = phi i64 [ %i.ck, %.critedge161 ], [ %.sroa.9.0.ph, %.sink.split230 ]
  call void @opj_image_destroy(ptr noundef %.sink227)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ay, %bb.bc, %bb.t, %bb.p
  %.sink228 = phi ptr [ %i.em, %bb.ay ], [ %i.eq, %bb.bc ], [ %i.bk, %bb.t ], [ %i.bb, %bb.p ]
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ay ], [ %i.er, %bb.bc ], [ %i.bl, %bb.t ], [ %i.bc, %bb.p ]
  call void @__cxa_free_exception(ptr nonnull %.sink228) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

bb.bn:                                            ; preds = %bb.bl, %.thread, %bb.g, %bb.e, %bb.c
  %.sroa.0176.1 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %.thread ], [ %.sroa.0176.0, %bb.bl ]
  %.sroa.9.1 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %.thread ], [ %.sroa.9.0, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.critedge155

.critedge155:                                     ; preds = %bb.b, %bb.a, %bb.bn
  %.sroa.0176.2 = phi ptr [ %.sroa.0176.1, %bb.bn ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.9.2 = phi i64 [ %.sroa.9.1, %bb.bn ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0176.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare hidden void @opj_set_default_decoder_parameters(ptr noundef) local_unnamed_addr #8

declare hidden ptr @opj_create_decompress(i32 noundef) local_unnamed_addr #8

declare hidden i32 @opj_codec_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #8

declare hidden i32 @opj_set_error_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden void @opj_destroy_codec(ptr noundef) local_unnamed_addr #8

declare hidden void @opj_stream_destroy(ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_read_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_end_decompress(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4gdcmL16check_comp_validEP9opj_image(ptr nofree noundef readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.e = icmp ugt i32 %i.d, 32
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !109
  %.not = icmp eq i32 %i.d, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %.not25 = icmp eq i32 %i.d, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !107
  %.not26 = icmp eq i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.r = load i32, ptr %i.q, align 8, !tbaa !107
  %.not27 = icmp eq i32 %i.n, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.v = load <2 x i32>, ptr %i.s, align 8, !tbaa !76
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = load <2 x i32>, ptr %i.t, align 8, !tbaa !76
  %i.y = load <2 x i32>, ptr %i.u, align 8, !tbaa !76
  %i.z = shufflevector <2 x i32> %i.y, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aa = icmp eq <4 x i32> %i.w, %i.z
  %i.ab = freeze <4 x i1> %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp eq i4 %i.ac, -1
  %op.rdx = select i1 %i.ad, i1 %.not27, i1 false
  %1 = select i1 %op.rdx, i1 %.not26, i1 false
  %op.rdx45 = select i1 %1, i1 %.not25, i1 false
  %op.rdx46 = select i1 %op.rdx45, i1 %.not, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.023 = phi i1 [ false, %bb.a ], [ %op.rdx46, %bb.c ], [ true, %bb.b ]
  ret i1 %.023
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4gdcmL12parsejp2_impEPKcmPbS2_(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond85 = icmp ult i64 %1, 8
  br i1 %or.cond85, label %_ZN4gdcmL6read32EPPKcPmPj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4gdcmL6read32EPPKcPmPj.exit19
  %.03587 = phi i64 [ %.136, %_ZN4gdcmL6read32EPPKcPmPj.exit19 ], [ %1, %bb.a ] ; 2 uses
  %.03886 = phi ptr [ %i.y, %_ZN4gdcmL6read32EPPKcPmPj.exit19 ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03886, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %.03886, align 1 ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %.03886, i64 8 ; 2 uses
  %i.d = add i64 %.03587, -8                      ; 2 uses
  %i.e = zext i32 %i.b to i64
  %i.f = icmp eq i32 %.sroa.0.0.copyload.i, 16777216
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.d, 7
  br i1 %i.g, label %bb.e, label %_ZN4gdcmL6read64EPPKcPmS3_.exit

_ZN4gdcmL6read64EPPKcPmS3_.exit:                  ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4gdcmL6read64EPPKcPmS3_.exit
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.d:                                             ; preds = %_ZN4gdcmL6read64EPPKcPmS3_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.c, align 1
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i20)
  %i.k = getelementptr inbounds nuw i8, ptr %.03886, i64 16
  %i.l = add i64 %.03587, -16
  %i.m = add i64 %i.j, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.046 = phi i64 [ %i.m, %bb.e ], [ %i.e, %.lr.ph ] ; 3 uses
  %.139 = phi ptr [ %i.k, %bb.e ], [ %i.c, %.lr.ph ] ; 3 uses
  %.136 = phi i64 [ %i.l, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i32 %.sroa.0.0.copyload.i18, 1664249962
  br i1 %i.n, label %bb.g, label %_ZN4gdcmL6read32EPPKcPmPj.exit19

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %.046, 0
  %i.o = ptrtoint ptr %.139 to i64
  %i.p = ptrtoint ptr %0 to i64
  %.neg = add i64 %i.p, 8
  %i.q = add i64 %.neg, %1
  %i.r = sub i64 %i.q, %i.o
  %.147 = select i1 %.not, i64 %i.r, i64 %.046    ; 2 uses
  %i.s = icmp ugt i64 %.147, 7
  br i1 %i.s, label %_ZN4gdcmL6read32EPPKcPmPj.exit19.thread70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 223, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN4gdcmL6read32EPPKcPmPj.exit19.thread70:        ; preds = %bb.g
  %i.v = add i64 %.147, -8
  %i.w = tail call fastcc noundef zeroext i1 @_ZN4gdcmL12parsej2k_impEPKcmPbS2_(ptr noundef nonnull %.139, i64 noundef %i.v, ptr noundef %2, ptr noundef %3)
  br label %_ZN4gdcmL6read32EPPKcPmPj.exit

_ZN4gdcmL6read32EPPKcPmPj.exit19:                 ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.139, i64 %.046
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %or.cond = icmp ult i64 %.136, 8
  br i1 %or.cond, label %_ZN4gdcmL6read32EPPKcPmPj.exit, label %.lr.ph

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sink = phi ptr [ %i.t, %bb.j ], [ %i.h, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #37
  resume { ptr, i32 } %.pn

_ZN4gdcmL6read32EPPKcPmPj.exit:                   ; preds = %_ZN4gdcmL6read32EPPKcPmPj.exit19, %bb.a, %_ZN4gdcmL6read32EPPKcPmPj.exit19.thread70
  %.2 = phi i1 [ %i.w, %_ZN4gdcmL6read32EPPKcPmPj.exit19.thread70 ], [ false, %bb.a ], [ false, %_ZN4gdcmL6read32EPPKcPmPj.exit19 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN4gdcmL12parsej2k_impEPKcmPbS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #19 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !95
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph, label %_ZN4gdcmL6read16EPPKcPmPt.exit

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.03774 = phi i64 [ %.239, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %.04273 = phi ptr [ %.244, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %.sroa.0.0.copyload.i = load i16, ptr %.04273, align 1 ; 2 uses
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i)
  %i.b = getelementptr i8, ptr %.04273, i64 2     ; 21 uses
  %i.c = add i64 %.03774, -2                      ; 20 uses
  switch i16 %rev.i.i.i, label %_ZN4gdcmL11hasnolengthEm.exit [
    i16 -109, label %_ZN4gdcmL6read16EPPKcPmPt.exit
    i16 -208, label %bb.h
    i16 -207, label %bb.h
    i16 -206, label %bb.h
    i16 -205, label %bb.h
    i16 -204, label %bb.h
    i16 -203, label %bb.h
    i16 -202, label %bb.h
    i16 -201, label %bb.h
    i16 -200, label %bb.h
    i16 -199, label %bb.h
    i16 -198, label %bb.h
    i16 -197, label %bb.h
    i16 -196, label %bb.h
    i16 -195, label %bb.h
    i16 -194, label %bb.h
    i16 -193, label %bb.h
    i16 -177, label %bb.h
    i16 -110, label %bb.h
    i16 -39, label %bb.h
  ]

_ZN4gdcmL11hasnolengthEm.exit:                    ; preds = %.lr.ph
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %_ZN4gdcmL6read16EPPKcPmPt.exit26, label %_ZN4gdcmL6read16EPPKcPmPt.exit

_ZN4gdcmL6read16EPPKcPmPt.exit26:                 ; preds = %_ZN4gdcmL11hasnolengthEm.exit
  %.sroa.0.0.copyload.i24 = load i16, ptr %i.b, align 1
  %rev.i.i.i25 = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i24) ; 2 uses
  %i.e = icmp ugt i16 %rev.i.i.i25, 1
  br i1 %i.e, label %bb.b, label %_ZN4gdcmL6read16EPPKcPmPt.exit

bb.b:                                             ; preds = %_ZN4gdcmL6read16EPPKcPmPt.exit26
  %i.f = zext i16 %rev.i.i.i25 to i64             ; 2 uses
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i, 21247
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.04273, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !55    ; 2 uses
  %switch = icmp ult i8 %i.i, 2
  br i1 %switch, label %bb.d, label %_ZN4gdcmL6read16EPPKcPmPt.exit

bb.d:                                             ; preds = %bb.c
  store i8 %i.i, ptr %3, align 1, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %.04273, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  switch i8 %i.k, label %_ZN4gdcmL6read16EPPKcPmPt.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %2, align 1, !tbaa !95
  br label %_ZN4gdcmL6read16EPPKcPmPt.exit

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %2, align 1, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.l = getelementptr i8, ptr %i.b, i64 %i.f
  %i.m = sub i64 %.03774, %i.f
  %i.n = add i64 %i.m, -2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.g
  %.244 = phi ptr [ %i.b, %.lr.ph ], [ %i.l, %bb.g ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph ]
  %.239 = phi i64 [ %i.c, %.lr.ph ], [ %i.n, %bb.g ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.o = icmp ugt i64 %.239, 1
  br i1 %i.o, label %.lr.ph, label %_ZN4gdcmL6read16EPPKcPmPt.exit, !llvm.loop !182

_ZN4gdcmL6read16EPPKcPmPt.exit:                   ; preds = %bb.h, %bb.d, %_ZN4gdcmL6read16EPPKcPmPt.exit26, %_ZN4gdcmL11hasnolengthEm.exit, %.lr.ph, %bb.c, %bb.a, %bb.e
  %.6 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %_ZN4gdcmL6read16EPPKcPmPt.exit26 ], [ false, %bb.d ], [ false, %bb.h ], [ true, %.lr.ph ], [ false, %_ZN4gdcmL11hasnolengthEm.exit ], [ false, %bb.c ]
  ret i1 %.6
}

declare noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #8
end_hunk_0
begin_hunk_1_@_ZN4gdcm13JPEG2000Codec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
          to label %.noexc.i unwind label %bb.am

.noexc.i:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cy) #37
  br label %.body.i

bb.ak:                                            ; preds = %bb.ag
  %i.da = add nsw i64 %i.cw, -1                   ; 2 uses
  store i64 %i.da, ptr %i.j, align 8, !tbaa !62
  %.not.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i, label %bb.al, label %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #37, !inline_history !0
  br label %_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit

bb.am:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.de, %bb.am ], [ %i.cz, %bb.aj ]
  %i.df = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.df) #41
  unreachable

_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i1 %i.av

.body:                                            ; preds = %bb.ae, %bb.af, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit57
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit57 ], [ %i.cp, %bb.ae ], [ %i.cq, %bb.af ]
  call void @_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn49.pn.pn

bb.an:                                            ; preds = %bb.ad, %bb.h
  unreachable
}

declare void @_ZN4gdcm19SequenceOfFragments11AddFragmentERKNS_8FragmentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm13JPEG2000Codec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.b = tail call { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.c = extractvalue { i64, i64 } %i.b, 1        ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #39 ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef %i.c) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN4gdcm13JPEG2000Codec13GetHeaderInfoEPKcmRNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #40
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm13JPEG2000Codec13GetHeaderInfoEPKcmRNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.opj_dparameters, align 4    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %"struct.gdcm::myfile", align 8     ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %7 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  %8 = alloca %"class.gdcm::PixelFormat", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store ptr null, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @opj_set_default_decoder_parameters(ptr noundef nonnull %4)
  %i.d = load i64, ptr %1, align 1
  %i.e = xor i64 %i.d, 2314938624866516992
  %i.f = getelementptr i8, ptr %1, i64 5
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 2963227006738512
  %i.i = or i64 %i.e, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8204
  %. = zext i1 %i.l to i32
  %.101 = select i1 %i.l, i32 2, i32 0
  store i32 %., ptr %i.m, align 4, !tbaa !93
  store i32 11, ptr %i.n, align 4, !tbaa !94
  %i.o = call ptr @opj_create_decompress(i32 noundef %.101) ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18720
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45
  %i.t = call i32 @opj_codec_set_threads(ptr noundef %i.o, i32 noundef %i.s) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !17
  store ptr %1, ptr %5, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.v, align 8, !tbaa !19
  %i.w = call i32 @opj_set_error_handler(ptr noundef %i.o, ptr noundef nonnull @_ZN4gdcm19gdcm_error_callbackEPKcPv, ptr noundef null) ; 0 uses
  %i.x = call noundef ptr @_ZN4gdcm31opj_stream_create_memory_streamEPNS_6myfileEmb(ptr noundef nonnull %5, i64 noundef 1048576, i1 noundef zeroext true) ; 7 uses
  %i.y = call i32 @opj_setup_decoder(ptr noundef %i.o, ptr noundef nonnull %4) ; 0 uses
  %i.z = call i32 @opj_read_header(ptr noundef %i.x, ptr noundef %i.o, ptr noundef nonnull %i.a)
  %.not72 = icmp eq i32 %i.z, 0
  br i1 %.not72, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @opj_destroy_codec(ptr noundef %i.o)
  call void @opj_stream_destroy(ptr noundef %i.x)
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i8 0, ptr %i.b, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i8 0, ptr %i.c, align 1, !tbaa !95
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !93
  switch i32 %i.aa, label %.critedge [
    i32 1, label %.split
    i32 0, label %bb.e
  ]

.split:                                           ; preds = %bb.d
  %i.ab = call fastcc noundef zeroext i1 @_ZN4gdcmL12parsejp2_impEPKcmPbS2_(ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.b, ptr noundef %i.c)
  br i1 %i.ab, label %bb.f, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc noundef zeroext i1 @_ZN4gdcmL12parsej2k_impEPKcmPbS2_(ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.b, ptr noundef %i.c)
  br i1 %i.ac, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.split, %bb.e
  %i.ad = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ae = load i8, ptr %i.c, align 1, !tbaa !95, !range !96, !noundef !97
  %i.af = icmp eq i8 %i.ad, 0
  %i.ag = icmp eq i8 %i.ae, 0
  br label %.critedge

.critedge:                                        ; preds = %.split, %bb.d, %bb.f, %bb.e
  %.059 = phi i1 [ %i.af, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %.split ] ; 3 uses
  %.058 = phi i1 [ %i.ag, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %.split ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = zext i1 %.059 to i8
  store i8 %i.ai, ptr %i.ah, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !103 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %i.ao = icmp ugt i32 %i.an, 32
  br i1 %i.ao, label %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread87, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !101
  %i.ar = icmp eq i32 %i.aq, 3
  br i1 %i.ar, label %_ZN4gdcmL16check_comp_validEP9opj_image.exit, label %._ZN4gdcmL16check_comp_validEP9opj_image.exit.thread_crit_edge

._ZN4gdcmL16check_comp_validEP9opj_image.exit.thread_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread

_ZN4gdcmL16check_comp_validEP9opj_image.exit:     ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.at = load i32, ptr %i.as, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.an, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.av = load i32, ptr %i.au, align 8, !tbaa !109
  %.not25.i = icmp eq i32 %i.an, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !107 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !107
  %.not26.i = icmp eq i32 %i.ax, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !107
  %.not27.i = icmp eq i32 %i.ax, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load <2 x i32>, ptr %i.bc, align 8, !tbaa !76
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bh = load <2 x i32>, ptr %i.bd, align 8, !tbaa !76
  %i.bi = load <2 x i32>, ptr %i.be, align 8, !tbaa !76
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = icmp eq <4 x i32> %i.bg, %i.bj
  %i.bl = freeze <4 x i1> %i.bk
  %i.bm = bitcast <4 x i1> %i.bl to i4
  %i.bn = icmp eq i4 %i.bm, -1
  %op.rdx = select i1 %i.bn, i1 %.not27.i, i1 false
  %9 = select i1 %op.rdx, i1 %.not26.i, i1 false
  %op.rdx103 = select i1 %9, i1 %.not25.i, i1 false
  %op.rdx104 = select i1 %op.rdx103, i1 %.not.i, i1 false
  br i1 %op.rdx104, label %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread, label %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread87

_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread87: ; preds = %.critedge, %_ZN4gdcmL16check_comp_validEP9opj_image.exit
  call void @opj_destroy_codec(ptr noundef %i.o)
  call void @opj_stream_destroy(ptr noundef %i.x)
  br label %bb.ax

_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread: ; preds = %._ZN4gdcmL16check_comp_validEP9opj_image.exit.thread_crit_edge, %_ZN4gdcmL16check_comp_validEP9opj_image.exit
  %.in = phi ptr [ %.phi.trans.insert, %._ZN4gdcmL16check_comp_validEP9opj_image.exit.thread_crit_edge ], [ %i.bc, %_ZN4gdcmL16check_comp_validEP9opj_image.exit ]
  %i.bo = load i32, ptr %.in, align 8, !tbaa !105
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !106
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !76
  %i.bt = load i32, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, 9
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %6, i32 noundef 0)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.bv, ptr noundef nonnull align 2 dereferenceable(10) %6, i64 10, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.n

bb.i:                                             ; preds = %_ZN4gdcmL16check_comp_validEP9opj_image.exit.thread
  %i.bw = icmp ult i32 %i.bt, 17
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %7, i32 noundef 4)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.bx, ptr noundef nonnull align 2 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.by = icmp ult i32 %i.bt, 33
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10) %8, i32 noundef 6)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.bz, ptr noundef nonnull align 2 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @opj_destroy_codec(ptr noundef %i.o)
  call void @opj_stream_destroy(ptr noundef %i.x)
  br label %bb.ax

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !109
  %i.cc = trunc i32 %i.cb to i16                  ; 3 uses
  switch i16 %i.cc, label %bb.r [
    i16 -1, label %bb.o
    i16 4095, label %bb.p
    i16 255, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i = phi i16 [ %i.cc, %bb.n ], [ 16, %bb.o ], [ 12, %bb.p ], [ 8, %bb.q ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !102
  %i.cf = add i16 %.0.i, -1                       ; 3 uses
  %or.cond.i = icmp ult i16 %i.cf, %i.ce
  br i1 %or.cond.i, label %bb.s, label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %.0.i, ptr %i.cg, align 8, !tbaa !110
  switch i16 %i.cf, label %bb.u [
    i16 254, label %bb.t
    i16 4094, label %.thread.i.i
  ]

bb.t:                                             ; preds = %bb.s
  br label %.thread.i.i

bb.u:                                             ; preds = %bb.s
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.u, %bb.t, %bb.s
  %.09.i.i = phi i16 [ %i.cf, %bb.u ], [ 7, %bb.t ], [ 11, %bb.s ] ; 2 uses
  %i.ch = icmp ult i16 %.09.i.i, %.0.i
  br i1 %i.ch, label %.sink.split.i.i, label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

.sink.split.i.i:                                  ; preds = %.thread.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %.09.i.i, ptr %i.ci, align 2, !tbaa !112
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit:      ; preds = %bb.r, %.thread.i.i, %.sink.split.i.i
  %i.cj = add i16 %i.cc, -1                       ; 3 uses
  switch i16 %i.cj, label %bb.x [
    i16 -2, label %.thread.i
    i16 4094, label %bb.v
    i16 254, label %bb.w
  ]

bb.v:                                             ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  br label %.thread.i

bb.w:                                             ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  %.0.ph.i = phi i16 [ 7, %bb.w ], [ 11, %bb.v ], [ 15, %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !110
  br label %bb.z

bb.x:                                             ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !110 ; 3 uses
  %i.co = icmp ugt i16 %i.cn, 1
  %i.cp = icmp eq i16 %i.cj, 0
  %or.cond.i79 = and i1 %i.cp, %i.co
  br i1 %or.cond.i79, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = add i16 %i.cn, -1
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.x, %.thread.i
  %i.cr = phi i16 [ %i.cl, %.thread.i ], [ %i.cn, %bb.x ]
  %.09.i = phi i16 [ %.0.ph.i, %.thread.i ], [ %i.cj, %bb.x ] ; 2 uses
  %i.cs = icmp ult i16 %.09.i, %i.cr
  br i1 %i.cs, label %.sink.split.i, label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.09.sink.i = phi i16 [ %i.cq, %bb.y ], [ %.09.i, %bb.z ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %.09.sink.i, ptr %i.ct, align 2, !tbaa !112
  br label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

_ZN4gdcm11PixelFormat10SetHighBitEt.exit:         ; preds = %bb.z, %.sink.split.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !107
  %i.cw = and i32 %i.cv, 65535
  %.not.i80 = icmp ne i32 %i.cw, 0
  %i.cx = zext i1 %.not.i80 to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.cx, ptr %i.cy, align 4, !tbaa !108
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !101
  switch i32 %i.db, label %bb.ae [
    i32 1, label %bb.aa
    i32 3, label %bb.ab
    i32 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.dc, align 8, !tbaa !279
  br label %bb.af

bb.ab:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.058, label %bb.ac, label %.thread96

bb.ac:                                            ; preds = %bb.ab
  store i32 4, ptr %i.dd, align 8, !tbaa !279
  br label %bb.af

bb.ad:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  call void @opj_destroy_codec(ptr noundef %i.o)
  call void @opj_stream_destroy(ptr noundef %i.x)
  br label %bb.ax

bb.ae:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  call void @opj_destroy_codec(ptr noundef %i.o)
  call void @opj_stream_destroy(ptr noundef %i.x)
  br label %bb.ax

bb.af:                                            ; preds = %bb.aa, %bb.ac
  %storemerge = phi i16 [ 1, %bb.aa ], [ 3, %bb.ac ]
  store i16 %storemerge, ptr %i.ca, align 4, !tbaa !280
  br i1 %.059, label %bb.ah, label %bb.ag

.thread96:                                        ; preds = %bb.ab
  store i32 13, ptr %i.dd, align 8, !tbaa !279
end_hunk_1
