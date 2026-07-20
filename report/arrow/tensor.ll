inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIjEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = sext i8 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = sext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !723

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !724

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = sext i8 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !725
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = zext i8 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !728

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !729

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = zext i8 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !730
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !733

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = sext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !734

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = sext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !735
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = zext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !738

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = zext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !739

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = zext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !740
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bd, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %.01117, %i.an
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 %i.al, ptr %i.as, align 4, !tbaa !3
  %i.at = or disjoint i64 %.01117, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !743

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.be = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.m ]
  %i.bf = phi ptr [ %i.z, %.lr.ph ], [ %i.cr, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.m ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !425
  %i.bn = add nsw i64 %i.bm, %.016                ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = trunc i64 %i.bn to i8
  %i.bs = and i8 %i.br, 7
  %i.bt = lshr i8 %i.bq, %i.bs
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  switch i32 %i.bx, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.by, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.bz, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cb = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cb, %i.cc
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cg = phi i32 [ %i.cf, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ch = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !210
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %.016, %i.ck
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !404
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit, !llvm.loop !744

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %.01117.epil.init, %i.cy
  %i.da = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.ag, i64 %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  store i32 %i.cw, ptr %i.dd, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !745
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bd, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %.01117, %i.an
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 %i.al, ptr %i.as, align 4, !tbaa !3
  %i.at = or disjoint i64 %.01117, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !748

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.be = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.m ]
  %i.bf = phi ptr [ %i.z, %.lr.ph ], [ %i.cr, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.m ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !425
  %i.bn = add nsw i64 %i.bm, %.016                ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = trunc i64 %i.bn to i8
  %i.bs = and i8 %i.br, 7
  %i.bt = lshr i8 %i.bq, %i.bs
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  switch i32 %i.bx, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.by, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.bz, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cb = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cb, %i.cc
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cg = phi i32 [ %i.cf, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ch = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !210
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %.016, %i.ck
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !404
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit, !llvm.loop !749

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %.01117.epil.init, %i.cy
  %i.da = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.ag, i64 %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  store i32 %i.cw, ptr %i.dd, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !750
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = trunc i64 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !753

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !754

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = trunc i64 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !755
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = trunc i64 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !758

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !759

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = trunc i64 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !760
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = zext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !763

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = zext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !764

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = zext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !765
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load float, ptr %i.ak, align 4, !tbaa !310
  %i.am = fptoui float %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !310
  %i.ax = fptoui float %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !768

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !310
  %i.ci = fptoui float %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !769

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !310
  %i.da = fptoui float %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !770
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load double, ptr %i.ak, align 8, !tbaa !317
  %i.am = fptoui double %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !317
  %i.ax = fptoui double %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !773

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !317
  %i.ci = fptoui double %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !722, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !214
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !216
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !774

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !317
  %i.da = fptoui double %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !214
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !216
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !775
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 2
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIiEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = sext i8 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = sext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1290

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = sext i8 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1291

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = sext i8 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1292
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = zext i8 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1295

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = zext i8 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1296

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = zext i8 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1297
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1300

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = sext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1301

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = sext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1302
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = zext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1305

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = zext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1306

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = zext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1307
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bd, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %.01117, %i.an
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 %i.al, ptr %i.as, align 4, !tbaa !3
  %i.at = or disjoint i64 %.01117, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1310

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.be = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.m ]
  %i.bf = phi ptr [ %i.z, %.lr.ph ], [ %i.cr, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.m ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !425
  %i.bn = add nsw i64 %i.bm, %.016                ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = trunc i64 %i.bn to i8
  %i.bs = and i8 %i.br, 7
  %i.bt = lshr i8 %i.bq, %i.bs
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  switch i32 %i.bx, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.by, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.bz, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cb = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cb, %i.cc
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cg = phi i32 [ %i.cf, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ch = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !210
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %.016, %i.ck
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !404
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit, !llvm.loop !1311

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %.01117.epil.init, %i.cy
  %i.da = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.ag, i64 %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  store i32 %i.cw, ptr %i.dd, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1312
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bd, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %.01117, %i.an
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 %i.al, ptr %i.as, align 4, !tbaa !3
  %i.at = or disjoint i64 %.01117, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ag, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1315

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.be = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.m ]
  %i.bf = phi ptr [ %i.z, %.lr.ph ], [ %i.cr, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.m ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !425
  %i.bn = add nsw i64 %i.bm, %.016                ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = trunc i64 %i.bn to i8
  %i.bs = and i8 %i.br, 7
  %i.bt = lshr i8 %i.bq, %i.bs
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  switch i32 %i.bx, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.by, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.bz, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cb = load atomic i64, ptr %i.ca seq_cst, align 8
  %i.cc = load i64, ptr %i.be, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cb, %i.cc
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cg = phi i32 [ %i.cf, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ch = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !210
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %.016, %i.ck
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !404
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit, !llvm.loop !1316

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %.01117.epil.init, %i.cy
  %i.da = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.ag, i64 %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  store i32 %i.cw, ptr %i.dd, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1317
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = trunc i64 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1320

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1321

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = trunc i64 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1322
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = trunc i64 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1325

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1326

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = trunc i64 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1327
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !273
  %i.am = zext i16 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !273
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1330

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !273
  %i.ci = zext i16 %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1331

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  %i.da = zext i16 %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1332
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117
  %i.al = load float, ptr %i.ak, align 4, !tbaa !310
  %i.am = fptosi float %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !310
  %i.ax = fptosi float %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1335

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !310
  %i.ci = fptosi float %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1336

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !310
  %i.da = fptosi float %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !210 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.aj = icmp eq i64 %i.ab, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bf, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.1, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.al = load double, ptr %i.ak, align 8, !tbaa !317
  %i.am = fptosi double %i.al to i32
  %i.an = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01117, %i.ao
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01117, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !317
  %i.ax = fptosi double %i.aw to i32
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.au, %i.az
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ag, i64 %i.ba
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw nsw i64 %.01117, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1340

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.m ]
  %i.bh = phi ptr [ %i.z, %.lr.ph ], [ %i.cu, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.m ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !424
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !425
  %i.bp = add nsw i64 %i.bo, %.016                ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  switch i32 %i.bz, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.ca, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cd = load atomic i64, ptr %i.cc seq_cst, align 8
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cd, %i.ce
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i64 noundef %.016)
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !317
  %i.ci = fptosi double %i.ch to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.g ], [ poison, %bb.k ], [ poison, %bb.j ], [ poison, %bb.i ]
  %i.ck = load ptr, ptr %1, align 8, !tbaa !1289, !nonnull !54, !align !342
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !210
  %i.cm = load i32, ptr %i.ad, align 8, !tbaa !228
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %.016, %i.cn
  %i.cp = load i32, ptr %i.ae, align 4, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %i.cj, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1288, !nonnull !54, !align !342 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !404
  %i.cx = icmp slt i64 %i.ct, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit, !llvm.loop !1341

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !317
  %i.da = fptosi double %i.cz to i32
  %i.db = load i32, ptr %i.ah, align 8, !tbaa !228
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.01117.epil.init, %i.dc
  %i.de = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ag, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1342
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 14 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 2
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10UInt32TypeEEENS_6StatusERKT_:bb.a
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = uitofp i32 %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store float %i.cy, ptr %i.dh, align 4, !tbaa !310
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1613

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1614
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !238
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !240
  %i.am = sext i32 %i.al to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.am ; 5 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.ab, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775804
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bh, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.3, %bb.e ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = sitofp i64 %i.ap to float
  %i.ar = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ar
  store float %i.aq, ptr %gep, align 4, !tbaa !310
  %i.as = or disjoint i64 %.01117, 1              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = sitofp i64 %i.au to float
  %i.aw = mul nsw i64 %i.as, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aw
  store float %i.av, ptr %gep.1, align 4, !tbaa !310
  %i.ax = or disjoint i64 %.01117, 2              ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = sitofp i64 %i.az to float
  %i.bb = mul nsw i64 %i.ax, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bb
  store float %i.ba, ptr %gep.2, align 4, !tbaa !310
  %i.bc = or disjoint i64 %.01117, 3              ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = sitofp i64 %i.be to float
  %i.bg = mul nsw i64 %i.bc, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bg
  store float %i.bf, ptr %gep.3, align 4, !tbaa !310
  %i.bh = add nuw nsw i64 %.01117, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1617

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cx, %bb.m ]
  %i.bj = phi ptr [ %i.z, %.lr.ph ], [ %i.cw, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.m ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !424
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !425
  %i.br = add nsw i64 %i.bq, %.016                ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !55
  switch i32 %i.cb, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cc, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cf = load atomic i64, ptr %i.ce seq_cst, align 8
  %i.cg = load i64, ptr %i.bi, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cf, %i.cg
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.ch = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = sitofp i64 %i.cj to float
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cl = phi float [ %i.ck, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.cm = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !234
  %i.co = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %.016, %i.cp
  %i.cr = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %i.cs
  store float %i.cl, ptr %i.cu, align 4, !tbaa !310
  %i.cv = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !404
  %i.cz = icmp slt i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.f, label %.loopexit, !llvm.loop !1618

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.01117.epil = phi i64 [ %.01117.epil.init, %.epil.preheader ], [ %i.de, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil
  %i.db = load i64, ptr %i.da, align 8, !tbaa !14
  %i.dc = sitofp i64 %i.db to float
  %i.dd = mul nsw i64 %.01117.epil, %i.aj
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dd
  store float %i.dc, ptr %gep.epil, align 4, !tbaa !310
  %i.de = add nuw nsw i64 %.01117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.n, !llvm.loop !1619

.loopexit:                                        ; preds = %bb.m, %.loopexit.loopexit.unr-lcssa, %bb.n, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1620
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !238
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !240
  %i.am = sext i32 %i.al to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.am ; 5 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.ab, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775804
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bh, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.3, %bb.e ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = uitofp i64 %i.ap to float
  %i.ar = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ar
  store float %i.aq, ptr %gep, align 4, !tbaa !310
  %i.as = or disjoint i64 %.01117, 1              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = uitofp i64 %i.au to float
  %i.aw = mul nsw i64 %i.as, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aw
  store float %i.av, ptr %gep.1, align 4, !tbaa !310
  %i.ax = or disjoint i64 %.01117, 2              ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = uitofp i64 %i.az to float
  %i.bb = mul nsw i64 %i.ax, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bb
  store float %i.ba, ptr %gep.2, align 4, !tbaa !310
  %i.bc = or disjoint i64 %.01117, 3              ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = uitofp i64 %i.be to float
  %i.bg = mul nsw i64 %i.bc, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bg
  store float %i.bf, ptr %gep.3, align 4, !tbaa !310
  %i.bh = add nuw nsw i64 %.01117, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1623

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cx, %bb.m ]
  %i.bj = phi ptr [ %i.z, %.lr.ph ], [ %i.cw, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.m ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !424
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !425
  %i.br = add nsw i64 %i.bq, %.016                ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !55
  switch i32 %i.cb, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cc, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cf = load atomic i64, ptr %i.ce seq_cst, align 8
  %i.cg = load i64, ptr %i.bi, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cf, %i.cg
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.ch = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = uitofp i64 %i.cj to float
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cl = phi float [ %i.ck, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.cm = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !234
  %i.co = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %.016, %i.cp
  %i.cr = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %i.cs
  store float %i.cl, ptr %i.cu, align 4, !tbaa !310
  %i.cv = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !404
  %i.cz = icmp slt i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.f, label %.loopexit, !llvm.loop !1624

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.01117.epil = phi i64 [ %.01117.epil.init, %.epil.preheader ], [ %i.de, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil
  %i.db = load i64, ptr %i.da, align 8, !tbaa !14
  %i.dc = uitofp i64 %i.db to float
  %i.dd = mul nsw i64 %.01117.epil, %i.aj
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dd
  store float %i.dc, ptr %gep.epil, align 4, !tbaa !310
  %i.de = add nuw nsw i64 %.01117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.n, !llvm.loop !1625

.loopexit:                                        ; preds = %bb.m, %.loopexit.loopexit.unr-lcssa, %bb.n, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1626
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 7 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !238 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10UInt32TypeEEENS_6StatusERKT_:bb.a
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = uitofp i32 %i.cw to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi double [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !241
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !245
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !247
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  store double %i.cy, ptr %i.dh, align 8, !tbaa !317
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1783

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1784
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.f

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !245
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !247
  %i.am = sext i32 %i.al to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %i.am ; 5 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.ab, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.ab, 9223372036854775804
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph18.new
  %.01117 = phi i64 [ 0, %.lr.ph18.new ], [ %i.bh, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.3, %bb.e ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ar
  store double %i.aq, ptr %gep, align 8, !tbaa !317
  %i.as = or disjoint i64 %.01117, 1              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = sitofp i64 %i.au to double
  %i.aw = mul nsw i64 %i.as, %i.aj
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aw
  store double %i.av, ptr %gep.1, align 8, !tbaa !317
  %i.ax = or disjoint i64 %.01117, 2              ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = sitofp i64 %i.az to double
  %i.bb = mul nsw i64 %i.ax, %i.aj
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bb
  store double %i.ba, ptr %gep.2, align 8, !tbaa !317
  %i.bc = or disjoint i64 %.01117, 3              ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = sitofp i64 %i.be to double
  %i.bg = mul nsw i64 %i.bc, %i.aj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg
  store double %i.bf, ptr %gep.3, align 8, !tbaa !317
  %i.bh = add nuw nsw i64 %.01117, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1787

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cx, %bb.m ]
  %i.bj = phi ptr [ %i.z, %.lr.ph ], [ %i.cw, %bb.m ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.m ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !424
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !425
  %i.br = add nsw i64 %i.bq, %.016                ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !55
  switch i32 %i.cb, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cc, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.cd, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cf = load atomic i64, ptr %i.ce seq_cst, align 8
  %i.cg = load i64, ptr %i.bi, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cf, %i.cg
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.ch = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i64 noundef %.016)
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = sitofp i64 %i.cj to double
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cl = phi double [ %i.ck, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.cm = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !241
  %i.co = load i32, ptr %i.ad, align 8, !tbaa !245
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %.016, %i.cp
  %i.cr = load i32, ptr %i.ae, align 4, !tbaa !247
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cn, i64 %i.cq
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.cs
  store double %i.cl, ptr %i.cu, align 8, !tbaa !317
  %i.cv = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !404
  %i.cz = icmp slt i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.f, label %.loopexit, !llvm.loop !1788

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18
  %.01117.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.01117.epil = phi i64 [ %.01117.epil.init, %.epil.preheader ], [ %i.de, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01117.epil
  %i.db = load i64, ptr %i.da, align 8, !tbaa !14
  %i.dc = sitofp i64 %i.db to double
  %i.dd = mul nsw i64 %.01117.epil, %i.aj
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dd
  store double %i.dc, ptr %gep.epil, align 8, !tbaa !317
  %i.de = add nuw nsw i64 %.01117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.n, !llvm.loop !1789

.loopexit:                                        ; preds = %bb.m, %.loopexit.loopexit.unr-lcssa, %bb.n, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1790
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !402
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !404 ; 7 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !245 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_3
