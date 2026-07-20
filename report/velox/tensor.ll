inline.NumInlined: 5087
inline.NumDeleted: 1397
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIjEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.32)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116
  %i.am = load i8, ptr %i.al, align 1, !tbaa !88
  %i.an = sext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !88
  %i.ay = sext i8 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !743

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = sext i8 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !744

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116.epil.init
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88
  %i.db = sext i8 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !745
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116
  %i.am = load i8, ptr %i.al, align 1, !tbaa !88
  %i.an = zext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !88
  %i.ay = zext i8 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !748

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = zext i8 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !749

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116.epil.init
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88
  %i.db = zext i8 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !750
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !753

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = sext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !754

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = sext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !755
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = zext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !758

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = zext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !759

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = zext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !760
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.be, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01116, %i.ao
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01116, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ah, i64 %i.az
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !763

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bf = phi ptr [ %i.ab, %.lr.ph ], [ %i.ct, %bb.n ]
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %bb.n ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !453
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !454
  %i.bo = add nsw i64 %i.bn, %.015                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !43
  switch i32 %i.by, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.bz, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ca, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !433
  %.not = icmp eq i64 %i.cc, %i.cd
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ch = phi i32 [ %i.cg, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !250
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %.015, %i.cl
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !256
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !433
  %i.cv = icmp slt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.g, label %.loopexit, !llvm.loop !764

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.01116.epil.init, %i.cz
  %i.db = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.ah, i64 %i.da
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !765
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.be, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01116, %i.ao
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01116, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ah, i64 %i.az
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !768

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bf = phi ptr [ %i.ab, %.lr.ph ], [ %i.ct, %bb.n ]
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %bb.n ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !453
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !454
  %i.bo = add nsw i64 %i.bn, %.015                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !43
  switch i32 %i.by, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.bz, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ca, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !433
  %.not = icmp eq i64 %i.cc, %i.cd
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ch = phi i32 [ %i.cg, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !250
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %.015, %i.cl
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !256
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !433
  %i.cv = icmp slt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.g, label %.loopexit, !llvm.loop !769

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.01116.epil.init, %i.cz
  %i.db = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.ah, i64 %i.da
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !770
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = trunc i64 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !773

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !774

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.db = trunc i64 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !775
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = trunc i64 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !778

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !779

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.db = trunc i64 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !780
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = zext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !783

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = zext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !784

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = zext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !785
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fptoui float %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349
  %i.ay = fptoui float %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !788

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !349
  %i.cj = fptoui float %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !789

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load float, ptr %i.cz, align 4, !tbaa !349
  %i.db = fptoui float %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !790
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIjE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load double, ptr %i.al, align 8, !tbaa !356
  %i.an = fptoui double %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !356
  %i.ay = fptoui double %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !793

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !356
  %i.cj = fptoui double %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !742, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !254
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !256
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !741, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !794

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load double, ptr %i.cz, align 8, !tbaa !356
  %i.db = fptoui double %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !254
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !256
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !798, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !798, !nonnull !81, !align !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !433  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424
  %i.l = load i64, ptr %i.d, align 8, !tbaa !427
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !428
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.o, ptr noundef %i.q)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !431
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !798, !nonnull !81, !align !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !798, !nonnull !81, !align !82 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !433
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %.not18 = icmp samesign eq i64 %i.i, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f
  %i.ai = load ptr, ptr %1, align 8, !tbaa !800, !nonnull !81, !align !82 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !250 ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph20, %.prol.preheader
  %i.aj = phi ptr [ %i.am, %.prol.preheader ], [ %.promoted, %.lr.ph20 ] ; 2 uses
  %.01319.prol = phi ptr [ %i.an, %.prol.preheader ], [ %i.m, %.lr.ph20 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph20 ]
  %i.ak = load i8, ptr %.01319.prol, align 1, !tbaa !88
  %i.al = sext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIiEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.33) #22
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.32)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116
  %i.am = load i8, ptr %i.al, align 1, !tbaa !88
  %i.an = sext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !88
  %i.ay = sext i8 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1261

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = sext i8 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1262

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116.epil.init
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88
  %i.db = sext i8 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116
  %i.am = load i8, ptr %i.al, align 1, !tbaa !88
  %i.an = zext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !88
  %i.ay = zext i8 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1266

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %.015
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = zext i8 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1267

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01116.epil.init
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88
  %i.db = zext i8 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1268
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1271

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = sext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1272

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = sext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = zext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1276

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = zext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1277

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = zext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1278
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.be, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01116, %i.ao
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01116, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ah, i64 %i.az
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1281

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bf = phi ptr [ %i.ab, %.lr.ph ], [ %i.ct, %bb.n ]
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %bb.n ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !453
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !454
  %i.bo = add nsw i64 %i.bn, %.015                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !43
  switch i32 %i.by, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.bz, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ca, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !433
  %.not = icmp eq i64 %i.cc, %i.cd
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ch = phi i32 [ %i.cg, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !250
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %.015, %i.cl
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !270
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !433
  %i.cv = icmp slt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.g, label %.loopexit, !llvm.loop !1282

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.01116.epil.init, %i.cz
  %i.db = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.ah, i64 %i.da
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1283
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.be, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %.01116, %i.ao
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %i.ap
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %i.am, ptr %i.at, align 4, !tbaa !3
  %i.au = or disjoint i64 %.01116, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ah, i64 %i.az
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1286

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bf = phi ptr [ %i.ab, %.lr.ph ], [ %i.ct, %bb.n ]
  %i.bg = phi ptr [ %i.aa, %.lr.ph ], [ %i.cs, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %bb.n ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !453
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !454
  %i.bo = add nsw i64 %i.bn, %.015                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !43
  switch i32 %i.by, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.bz, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ca, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !433
  %.not = icmp eq i64 %i.cc, %i.cd
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.015)
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ch = phi i32 [ %i.cg, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !250
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %.015, %i.cl
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !270
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !433
  %i.cv = icmp slt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.g, label %.loopexit, !llvm.loop !1287

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.01116.epil.init, %i.cz
  %i.db = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.ah, i64 %i.da
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1288
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = trunc i64 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1291

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1292

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.db = trunc i64 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1293
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = trunc i64 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1296

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1297

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.db = trunc i64 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1298
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116
  %i.am = load i16, ptr %i.al, align 2, !tbaa !314
  %i.an = zext i16 %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !314
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1301

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.015
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !314
  %i.cj = zext i16 %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1302

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !314
  %i.db = zext i16 %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1303
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fptosi float %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349
  %i.ay = fptosi float %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1306

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !349
  %i.cj = fptosi float %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1307

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load float, ptr %i.cz, align 4, !tbaa !349
  %i.db = fptosi float %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1308
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIiE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = load i64, ptr %i.d, align 8, !tbaa !427
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.l, ptr noundef %i.n)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !433 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader13

.preheader13:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.g

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph17, label %.loopexit

.lr.ph17:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !250 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ak = icmp eq i64 %i.ac, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph17.new

.lr.ph17.new:                                     ; preds = %.lr.ph17
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph17.new
  %.01116 = phi i64 [ 0, %.lr.ph17.new ], [ %i.bg, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph17.new ], [ %niter.next.1, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116
  %i.am = load double, ptr %i.al, align 8, !tbaa !356
  %i.an = fptosi double %i.am to i32
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %.01116, %i.ap
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ah, i64 %i.aq
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.an, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.01116, 1              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !356
  %i.ay = fptosi double %i.ax to i32
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.av, %i.ba
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw nsw i64 %.01116, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1311

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bh = phi ptr [ %i.ab, %.lr.ph ], [ %i.cw, %bb.n ]
  %i.bi = phi ptr [ %i.aa, %.lr.ph ], [ %i.cv, %bb.n ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %bb.n ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !453
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !454
  %i.bq = add nsw i64 %i.bp, %.015                ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = trunc i64 %i.bq to i8
  %i.bv = and i8 %i.bu, 7
  %i.bw = lshr i8 %i.bt, %i.bv
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !43
  switch i32 %i.ca, label %bb.l [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.j
    i32 38, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cb, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ce = load atomic i64, ptr %i.cd seq_cst, align 8
  %i.cf = load i64, ptr %i.bh, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ce, %i.cf
  br i1 %.not, label %bb.n, label %bb.m

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.i
  %i.cg = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bi, i64 noundef %.015)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !356
  %i.cj = fptosi double %i.ci to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.h, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.m
  %i.ck = phi i32 [ %i.cj, %bb.m ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.h ], [ poison, %bb.l ], [ poison, %bb.k ], [ poison, %bb.j ]
  %i.cl = load ptr, ptr %1, align 8, !tbaa !1260, !nonnull !81, !align !82
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !268
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %.015, %i.co
  %i.cq = load i32, ptr %i.af, align 4, !tbaa !270
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  %i.cu = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !1259, !nonnull !81, !align !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !433
  %i.cy = icmp slt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.g, label %.loopexit, !llvm.loop !1312

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17
  %.01116.epil.init = phi i64 [ 0, %.lr.ph17 ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01116.epil.init
  %i.da = load double, ptr %i.cz, align 8, !tbaa !356
  %i.db = fptosi double %i.da to i32
  %i.dc = load i32, ptr %i.ai, align 8, !tbaa !268
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.01116.epil.init, %i.dd
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !270
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ah, i64 %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.db, ptr %i.di, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1313
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1316, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1316, !nonnull !81, !align !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !433  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424
  %i.l = load i64, ptr %i.d, align 8, !tbaa !427
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !428
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.o, ptr noundef %i.q)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !431
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1316, !nonnull !81, !align !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1316, !nonnull !81, !align !82 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !433
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %.not18 = icmp samesign eq i64 %i.i, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1318, !nonnull !81, !align !82 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !250 ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph20, %.prol.preheader
  %i.aj = phi ptr [ %i.am, %.prol.preheader ], [ %.promoted, %.lr.ph20 ] ; 2 uses
  %.01319.prol = phi ptr [ %i.an, %.prol.preheader ], [ %i.m, %.lr.ph20 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph20 ]
  %i.ak = load i8, ptr %.01319.prol, align 1, !tbaa !88
  %i.al = sext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi48 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %index
  %i.ae = getelementptr i8, ptr %i.y, i64 %index
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  %i.ag = getelementptr i8, ptr %i.y, i64 %index
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  %i.ai = getelementptr i8, ptr %i.y, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 3
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.al = load i32, ptr %i.af, align 4, !tbaa !3
  %i.am = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.an = insertelement <2 x i32> %i.am, i32 %i.al, i64 1
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.aq = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %i.ap, i64 1
  %i.as = icmp ne <2 x i32> %i.an, zeroinitializer
  %i.at = icmp ne <2 x i32> %i.ar, zeroinitializer
  %i.au = zext <2 x i1> %i.as to <2 x i64>
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = add <2 x i64> %vec.phi, %i.au           ; 2 uses
  %i.ax = add <2 x i64> %vec.phi48, %i.av         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1864

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ax, %i.aw
  %i.az = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph40, %middle.block
  %.02939.ph = phi i64 [ 0, %.lr.ph40 ], [ %n.vec, %middle.block ] ; 3 uses
  %.03038.ph = phi i64 [ 0, %.lr.ph40 ], [ %i.az, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.02939.prol = phi i64 [ %i.be, %scalar.ph.prol ], [ %.02939.ph, %scalar.ph.preheader ] ; 2 uses
  %.03038.prol = phi i64 [ %spec.select.prol, %scalar.ph.prol ], [ %.03038.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = mul nsw i64 %i.ac, %.02939.prol
  %i.bb = getelementptr inbounds i8, ptr %i.y, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %.not.prol = icmp ne i32 %i.bc, 0
  %i.bd = zext i1 %.not.prol to i64
  %spec.select.prol = add nuw nsw i64 %.03038.prol, %i.bd ; 3 uses
  %i.be = add nuw nsw i64 %.02939.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1865

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %.02939.unr = phi i64 [ %.02939.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.03038.unr = phi i64 [ %.03038.ph, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %.02939.ph, %i.n
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02939 = phi i64 [ %i.ca, %scalar.ph ], [ %.02939.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03038 = phi i64 [ %spec.select.3, %scalar.ph ], [ %.03038.unr, %scalar.ph.prol.loopexit ]
  %i.bh = mul nsw i64 %i.ac, %.02939
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %.not = icmp ne i32 %i.bj, 0
  %i.bk = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %.03038, %i.bk
  %i.bl = add nuw nsw i64 %.02939, 1
  %i.bm = mul nsw i64 %i.ac, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.y, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %.not.1 = icmp ne i32 %i.bo, 0
  %i.bp = zext i1 %.not.1 to i64
  %spec.select.1 = add nuw nsw i64 %spec.select, %i.bp
  %i.bq = add nuw nsw i64 %.02939, 2
  %i.br = mul nsw i64 %i.ac, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.y, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %.not.2 = icmp ne i32 %i.bt, 0
  %i.bu = zext i1 %.not.2 to i64
  %spec.select.2 = add nuw nsw i64 %spec.select.1, %i.bu
  %i.bv = add nuw nsw i64 %.02939, 3
  %i.bw = mul nsw i64 %i.ac, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.y, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %.not.3 = icmp ne i32 %i.by, 0
  %i.bz = zext i1 %.not.3 to i64
  %spec.select.3 = add nuw nsw i64 %spec.select.2, %i.bz ; 2 uses
  %i.ca = add nuw nsw i64 %.02939, 4              ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %i.ca, %i.n
  br i1 %exitcond43.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1866

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %bb.b ]
  %.02836 = phi i64 [ %1, %.lr.ph ], [ %i.cd, %bb.b ] ; 2 uses
  %.235 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.b ]
  %i.cb = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt32TypeEEElilRKNS_6TensorE(i32 noundef %i.p, i64 noundef %.02836, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.cc = add nsw i64 %i.cb, %.235                ; 2 uses
  %i.cd = add nsw i64 %i.t, %.02836
  %i.ce = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.n
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1867

.loopexit:                                        ; preds = %bb.b, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader33, %.preheader
  %.027 = phi i64 [ %spec.select.3, %scalar.ph ], [ 0, %.preheader ], [ 0, %.preheader33 ], [ %i.az, %middle.block ], [ %spec.select.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.cc, %bb.b ]
  ret i64 %.027
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp eq i32 %0, %i.j
  %i.l = sext i32 %0 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 5 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 2 uses
  br i1 %i.k, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader33
  %i.p = add nsw i32 %0, 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.l
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %i.o, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %1 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.l
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 5 uses
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.n, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph40.new

.lr.ph40.new:                                     ; preds = %.lr.ph40
  %unroll_iter = and i64 %i.n, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph40.new
  %.02939 = phi i64 [ 0, %.lr.ph40.new ], [ %i.ax, %bb.b ] ; 5 uses
  %.03038 = phi i64 [ 0, %.lr.ph40.new ], [ %spec.select.3, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph40.new ], [ %niter.next.3, %bb.b ]
  %i.ae = mul nsw i64 %i.ac, %.02939
  %i.af = getelementptr inbounds i8, ptr %i.y, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %.not = icmp ne i64 %i.ag, 0
  %i.ah = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %.03038, %i.ah
  %i.ai = or disjoint i64 %.02939, 1
  %i.aj = mul nsw i64 %i.ac, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %.not.1 = icmp ne i64 %i.al, 0
  %i.am = zext i1 %.not.1 to i64
  %spec.select.1 = add nuw nsw i64 %spec.select, %i.am
  %i.an = or disjoint i64 %.02939, 2
  %i.ao = mul nsw i64 %i.ac, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14
  %.not.2 = icmp ne i64 %i.aq, 0
  %i.ar = zext i1 %.not.2 to i64
  %spec.select.2 = add nuw nsw i64 %spec.select.1, %i.ar
  %i.as = or disjoint i64 %.02939, 3
  %i.at = mul nsw i64 %i.ac, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14
  %.not.3 = icmp ne i64 %i.av, 0
  %i.aw = zext i1 %.not.3 to i64
  %spec.select.3 = add nuw nsw i64 %spec.select.2, %i.aw ; 3 uses
  %i.ax = add nuw nsw i64 %.02939, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1868

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.c ]
  %.02836 = phi i64 [ %1, %.lr.ph ], [ %i.ba, %bb.c ] ; 2 uses
  %.235 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ay = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_9Int64TypeEEElilRKNS_6TensorE(i32 noundef %i.p, i64 noundef %.02836, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.az = add nsw i64 %i.ay, %.235                ; 2 uses
  %i.ba = add nsw i64 %i.t, %.02836
  %i.bb = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !1869

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph40
  %.02939.epil.init = phi i64 [ 0, %.lr.ph40 ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.03038.epil.init = phi i64 [ 0, %.lr.ph40 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.02939.epil = phi i64 [ %.02939.epil.init, %.epil.preheader ], [ %i.bg, %bb.d ] ; 2 uses
  %.03038.epil = phi i64 [ %.03038.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bc = mul nsw i64 %i.ac, %.02939.epil
  %i.bd = getelementptr inbounds i8, ptr %i.y, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %.not.epil = icmp ne i64 %i.be, 0
  %i.bf = zext i1 %.not.epil to i64
  %spec.select.epil = add nuw nsw i64 %.03038.epil, %i.bf ; 2 uses
  %i.bg = add nuw nsw i64 %.02939.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !1870

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit.unr-lcssa, %bb.d, %.preheader33, %.preheader
  %.027 = phi i64 [ %spec.select.epil, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader33 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ], [ %i.az, %bb.c ]
  ret i64 %.027
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp eq i32 %0, %i.j
  %i.l = sext i32 %0 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 5 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 2 uses
  br i1 %i.k, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader33
  %i.p = add nsw i32 %0, 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.l
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %i.o, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %1 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.l
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 5 uses
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.n, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph40.new

.lr.ph40.new:                                     ; preds = %.lr.ph40
  %unroll_iter = and i64 %i.n, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph40.new
  %.02939 = phi i64 [ 0, %.lr.ph40.new ], [ %i.ax, %bb.b ] ; 5 uses
  %.03038 = phi i64 [ 0, %.lr.ph40.new ], [ %spec.select.3, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph40.new ], [ %niter.next.3, %bb.b ]
  %i.ae = mul nsw i64 %i.ac, %.02939
  %i.af = getelementptr inbounds i8, ptr %i.y, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %.not = icmp ne i64 %i.ag, 0
  %i.ah = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %.03038, %i.ah
  %i.ai = or disjoint i64 %.02939, 1
  %i.aj = mul nsw i64 %i.ac, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %.not.1 = icmp ne i64 %i.al, 0
  %i.am = zext i1 %.not.1 to i64
  %spec.select.1 = add nuw nsw i64 %spec.select, %i.am
  %i.an = or disjoint i64 %.02939, 2
  %i.ao = mul nsw i64 %i.ac, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14
  %.not.2 = icmp ne i64 %i.aq, 0
  %i.ar = zext i1 %.not.2 to i64
  %spec.select.2 = add nuw nsw i64 %spec.select.1, %i.ar
  %i.as = or disjoint i64 %.02939, 3
  %i.at = mul nsw i64 %i.ac, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14
  %.not.3 = icmp ne i64 %i.av, 0
  %i.aw = zext i1 %.not.3 to i64
  %spec.select.3 = add nuw nsw i64 %spec.select.2, %i.aw ; 3 uses
  %i.ax = add nuw nsw i64 %.02939, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1871

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.c ]
  %.02836 = phi i64 [ %1, %.lr.ph ], [ %i.ba, %bb.c ] ; 2 uses
  %.235 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ay = tail call fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_10UInt64TypeEEElilRKNS_6TensorE(i32 noundef %i.p, i64 noundef %.02836, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.az = add nsw i64 %i.ay, %.235                ; 2 uses
  %i.ba = add nsw i64 %i.t, %.02836
  %i.bb = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !1872

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph40
  %.02939.epil.init = phi i64 [ 0, %.lr.ph40 ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.03038.epil.init = phi i64 [ 0, %.lr.ph40 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.02939.epil = phi i64 [ %.02939.epil.init, %.epil.preheader ], [ %i.bg, %bb.d ] ; 2 uses
  %.03038.epil = phi i64 [ %.03038.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bc = mul nsw i64 %i.ac, %.02939.epil
  %i.bd = getelementptr inbounds i8, ptr %i.y, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %.not.epil = icmp ne i64 %i.be, 0
  %i.bf = zext i1 %.not.epil to i64
  %spec.select.epil = add nuw nsw i64 %.03038.epil, %i.bf ; 2 uses
  %i.bg = add nuw nsw i64 %.02939.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !1873

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit.unr-lcssa, %bb.d, %.preheader33, %.preheader
  %.027 = phi i64 [ %spec.select.epil, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader33 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ], [ %i.az, %bb.c ]
  ret i64 %.027
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN5arrow12_GLOBAL__N_125StridedTensorCountNonZeroINS_13HalfFloatTypeEEElilRKNS_6TensorE(i32 noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp eq i32 %0, %i.j
  %i.l = sext i32 %0 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14   ; 8 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 2 uses
  br i1 %i.k, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader33
  %i.p = add nsw i32 %0, 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.l
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %i.o, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %1 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.l
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 6 uses
  %min.iters.check = icmp ugt i64 %i.n, 3
  %ident.check.not = icmp eq i64 %i.ac, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph40
  %n.vec = and i64 %i.n, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi48 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %index
  %i.ae = getelementptr i8, ptr %i.y, i64 %index
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  %i.ag = getelementptr i8, ptr %i.y, i64 %index
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  %i.ai = getelementptr i8, ptr %i.y, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 3
  %i.ak = load i16, ptr %i.ad, align 2, !tbaa !314
  %i.al = load i16, ptr %i.af, align 2, !tbaa !314
  %i.am = insertelement <2 x i16> poison, i16 %i.ak, i64 0
  %i.an = insertelement <2 x i16> %i.am, i16 %i.al, i64 1
  %i.ao = load i16, ptr %i.ah, align 2, !tbaa !314
  %i.ap = load i16, ptr %i.aj, align 2, !tbaa !314
  %i.aq = insertelement <2 x i16> poison, i16 %i.ao, i64 0
  %i.ar = insertelement <2 x i16> %i.aq, i16 %i.ap, i64 1
  %i.as = icmp ne <2 x i16> %i.an, zeroinitializer
  %i.at = icmp ne <2 x i16> %i.ar, zeroinitializer
  %i.au = zext <2 x i1> %i.as to <2 x i64>
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = add <2 x i64> %vec.phi, %i.au           ; 2 uses
  %i.ax = add <2 x i64> %vec.phi48, %i.av         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1874

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ax, %i.aw
  %i.az = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph40, %middle.block
  %.02939.ph = phi i64 [ 0, %.lr.ph40 ], [ %n.vec, %middle.block ] ; 3 uses
  %.03038.ph = phi i64 [ 0, %.lr.ph40 ], [ %i.az, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.02939.prol = phi i64 [ %i.be, %scalar.ph.prol ], [ %.02939.ph, %scalar.ph.preheader ] ; 2 uses
  %.03038.prol = phi i64 [ %spec.select.prol, %scalar.ph.prol ], [ %.03038.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = mul nsw i64 %i.ac, %.02939.prol
  %i.bb = getelementptr inbounds i8, ptr %i.y, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !314
  %.not.prol = icmp ne i16 %i.bc, 0
  %i.bd = zext i1 %.not.prol to i64
  %spec.select.prol = add nuw nsw i64 %.03038.prol, %i.bd ; 3 uses
  %i.be = add nuw nsw i64 %.02939.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1875

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %.02939.unr = phi i64 [ %.02939.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.03038.unr = phi i64 [ %.03038.ph, %scalar.ph.preheader ], [ %spec.select.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %.02939.ph, %i.n
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02939 = phi i64 [ %i.ca, %scalar.ph ], [ %.02939.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03038 = phi i64 [ %spec.select.3, %scalar.ph ], [ %.03038.unr, %scalar.ph.prol.loopexit ]
  %i.bh = mul nsw i64 %i.ac, %.02939
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !314
  %.not = icmp ne i16 %i.bj, 0
  %i.bk = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %.03038, %i.bk
  %i.bl = add nuw nsw i64 %.02939, 1
  %i.bm = mul nsw i64 %i.ac, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.y, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !314
  %.not.1 = icmp ne i16 %i.bo, 0
  %i.bp = zext i1 %.not.1 to i64
  %spec.select.1 = add nuw nsw i64 %spec.select, %i.bp
  %i.bq = add nuw nsw i64 %.02939, 2
  %i.br = mul nsw i64 %i.ac, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.y, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !314
  %.not.2 = icmp ne i16 %i.bt, 0
  %i.bu = zext i1 %.not.2 to i64
  %spec.select.2 = add nuw nsw i64 %spec.select.1, %i.bu
  %i.bv = add nuw nsw i64 %.02939, 3
  %i.bw = mul nsw i64 %i.ac, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.y, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !314
  %.not.3 = icmp ne i16 %i.by, 0
  %i.bz = zext i1 %.not.3 to i64
  %spec.select.3 = add nuw nsw i64 %spec.select.2, %i.bz ; 2 uses
  %i.ca = add nuw nsw i64 %.02939, 4              ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %i.ca, %i.n
  br i1 %exitcond43.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1876

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %bb.b ]
  %.02836 = phi i64 [ %1, %.lr.ph ], [ %i.cd, %bb.b ] ; 2 uses
end_hunk_2
