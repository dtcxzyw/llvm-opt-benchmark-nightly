Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/COBLoader?download=true
inline.NumInlined: 2279
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp11COBImporter14ReadPolH_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
bb.bk:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153
  %i.hq = ptrtoaddr ptr %.1.i148.1 to i64
  %i.hr = sub i64 %i.hd, %i.hq
  %scevgep.i.i5.i149.1 = getelementptr i8, ptr %.1.i148.1, i64 %i.hr ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %i.hs = phi i8 [ %i.hp, %bb.bk ], [ %.pre.i152.1, %bb.bn ] ; 2 uses
  %.0.i.i6.i150.1 = phi ptr [ %.1.i148.1, %bb.bk ], [ %i.ht, %bb.bn ] ; 3 uses
  switch i8 %i.hs, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1 [
    i8 32, label %bb.bm
    i8 9, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %.not.i.i7.i151.1 = icmp eq ptr %.0.i.i6.i150.1, %i.hb
  br i1 %.not.i.i7.i151.1, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1_crit_edge, label %bb.bn

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1_crit_edge: ; preds = %bb.bm
  %.pre515 = load i8, ptr %scevgep.i.i5.i149.1, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1

bb.bn:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i6.i150.1, i64 1 ; 2 uses
  %.pre.i152.1 = load i8, ptr %i.ht, align 1
  br label %bb.bl, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1: ; preds = %bb.bl, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1_crit_edge
  %i.hu = phi i8 [ %.pre515, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1_crit_edge ], [ %i.hs, %bb.bl ] ; 2 uses
  %.0.lcssa.i.i9.i154.1 = phi ptr [ %scevgep.i.i5.i149.1, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1_crit_edge ], [ %.0.i.i6.i150.1, %bb.bl ]
  %i.hv = add i8 %i.hu, -58
  %or.cond11.i158 = icmp ult i8 %i.hv, -10
  br i1 %or.cond11.i158, label %_ZN6Assimp9strtoul10EPKcPS1_.exit166, label %.lr.ph.i159

_ZN6Assimp9IsLineEndIcEEbT_.exit.i156.1:          ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153
  %i.hw = getelementptr inbounds nuw i8, ptr %.1.i148.1, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153, !llvm.loop !92

.lr.ph.i159:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1, %.lr.ph.i159
  %i.hx = phi i8 [ %i.ic, %.lr.ph.i159 ], [ %i.hu, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1 ]
  %.013.i160 = phi i32 [ %i.ia, %.lr.ph.i159 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1 ]
  %.0812.i161 = phi ptr [ %i.ib, %.lr.ph.i159 ], [ %.0.lcssa.i.i9.i154.1, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1 ]
  %i.hy = mul i32 %.013.i160, 10
  %narrow.i162 = add nsw i8 %i.hx, -48
  %i.hz = zext nneg i8 %narrow.i162 to i32
  %i.ia = add i32 %i.hy, %i.hz                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0812.i161, i64 1 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1             ; 2 uses
  %i.id = add i8 %i.ic, -58
  %or.cond.i163 = icmp ult i8 %i.id, -10
  br i1 %or.cond.i163, label %_ZN6Assimp9strtoul10EPKcPS1_.exit166, label %.lr.ph.i159, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit166:             ; preds = %.lr.ph.i159, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1
  %.0.lcssa.i165 = phi i32 [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i153.1 ], [ %i.ia, %.lr.ph.i159 ] ; 2 uses
  %i.ie = zext i32 %.0.lcssa.i165 to i64          ; 5 uses
  %i.if = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.ig = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 3                 ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.ie
  br i1 %i.il, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit166
  %i.im = sub nuw nsw i64 %i.ie, %i.ik
  call void @_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 noundef %i.im)
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit

bb.bp:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit166
  %i.in = icmp ugt i64 %i.ik, %i.ie
  br i1 %i.in, label %bb.bq, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit

bb.bq:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ie ; 2 uses
  %.not.i.i167 = icmp eq ptr %i.if, %i.io
  br i1 %.not.i.i167, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.bq
  store ptr %i.io, ptr %i.dj, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.bo, %bb.bp, %bb.bq, %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not454 = icmp eq i32 %.0.lcssa.i165, 0
  br i1 %.not454, label %.critedge, label %.lr.ph444

.lr.ph444:                                        ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179 ], [ 0, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.ip = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = and i64 %i.iy, 4294967295
  %.not403 = icmp eq i64 %i.iz, 0
  br i1 %.not403, label %.critedge, label %bb.br

bb.br:                                            ; preds = %.lr.ph444
  %i.ja = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.jb = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.jc = load ptr, ptr %i.di, align 8
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv497 ; 2 uses
  %i.je = ptrtoaddr ptr %i.ja to i64
  %i.jf = ptrtoaddr ptr %i.jb to i64              ; 2 uses
  %i.jg = sub i64 %i.jf, %i.je
  %scevgep.i.i168 = getelementptr i8, ptr %i.ja, i64 %i.jg
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.0.i.i169 = phi ptr [ %i.ja, %bb.br ], [ %i.ji, %bb.bu ] ; 4 uses
  %i.jh = load i8, ptr %.0.i.i169, align 1
  switch i8 %i.jh, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit173 [
    i8 32, label %bb.bt
    i8 9, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %.not.i.i170 = icmp eq ptr %.0.i.i169, %i.jb
  br i1 %.not.i.i170, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit173, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i169, i64 1
  br label %bb.bs, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit173:      ; preds = %bb.bs, %bb.bt
  %.0.lcssa.i.i172 = phi ptr [ %.0.i.i169, %bb.bs ], [ %scevgep.i.i168, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.jj = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i172, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.jk = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  store float %i.jk, ptr %i.jd, align 4
  %i.jl = ptrtoaddr ptr %i.jj to i64
  %i.jm = sub i64 %i.jf, %i.jl
  %scevgep.i.i174 = getelementptr i8, ptr %i.jj, i64 %i.jm
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit173
  %.0.i.i175 = phi ptr [ %i.jj, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit173 ], [ %i.jo, %bb.bx ] ; 4 uses
  %i.jn = load i8, ptr %.0.i.i175, align 1
  switch i8 %i.jn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179 [
    i8 32, label %bb.bw
    i8 9, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %.not.i.i176 = icmp eq ptr %.0.i.i175, %i.jb
  br i1 %.not.i.i176, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i.i175, i64 1
  br label %bb.bv, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179:      ; preds = %bb.bv, %bb.bw
  %.0.lcssa.i.i178 = phi ptr [ %.0.i.i175, %bb.bv ], [ %scevgep.i.i174, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4
  %i.jp = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i178, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.jq = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store float %i.jq, ptr %i.jr, align 4
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %i.ie
  br i1 %exitcond501.not, label %.critedge, label %.lr.ph444, !llvm.loop !94

_ZN6Assimp12LineSplitter11match_startEPKc.exit139.thread393: ; preds = %bb.x
  %.not.i180 = icmp samesign ult i64 %i.dn, 5
  br i1 %.not.i180, label %.critedge, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit184

_ZN6Assimp12LineSplitter11match_startEPKc.exit184: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit139, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread390, %_ZN6Assimp12LineSplitter11match_startEPKc.exit139.thread393
  %i.js = load ptr, ptr %i.de, align 8            ; 5 uses
  %i.jt = load i32, ptr %i.js, align 1
  %i.ju = xor i32 1701011782, %i.jt
  %i.jv = getelementptr i8, ptr %i.js, i64 4
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = zext i8 %i.jw to i32
  %i.jy = xor i32 115, %i.jx
  %i.jz = or i32 %i.ju, %i.jy
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = zext i1 %i.ka to i32
  %.not9.i.i.i.i.i183 = icmp eq i32 %i.kb, 0
  br i1 %.not9.i.i.i.i.i183, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread396

_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit184
  %i.kc = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.kd = ptrtoaddr ptr %i.js to i64
  %i.ke = ptrtoaddr ptr %i.kc to i64              ; 2 uses
  %i.kf = sub i64 %i.ke, %i.kd
  %scevgep.i.i.i185 = getelementptr i8, ptr %i.js, i64 %i.kf
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread
  %.0.i.i.i186 = phi ptr [ %i.js, %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread ], [ %i.kh, %bb.ca ] ; 4 uses
  %i.kg = load i8, ptr %.0.i.i.i186, align 1
  switch i8 %i.kg, label %bb.bz [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader: ; preds = %bb.by, %bb.by
  %.not.i.i.i187 = icmp eq ptr %.0.i.i.i186, %i.kc
  br i1 %.not.i.i.i187, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader
  %.1.i193.ph = phi ptr [ %scevgep.i.i.i185, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader ], [ %.0.i.i.i186, %bb.by ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188

bb.ca:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188.preheader
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.i186, i64 1
  br label %bb.by, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188:    ; preds = %bb.bz, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i201
  %.1.i193 = phi ptr [ %i.kl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i201 ], [ %.1.i193.ph, %bb.bz ] ; 5 uses
  %i.ki = load i8, ptr %.1.i193, align 1          ; 2 uses
  switch i8 %i.ki, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i201 [
    i8 32, label %bb.ce
    i8 9, label %bb.ce
    i8 13, label %bb.cb
    i8 10, label %bb.cb
    i8 0, label %bb.cb
    i8 12, label %bb.cb
  ]

bb.cb:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188
  %i.kj = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull @.str.107)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @__cxa_throw(ptr nonnull %i.kj, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kj) #26
  br label %common.resume

_ZN6Assimp9IsLineEndIcEEbT_.exit.i201:            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i193, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188, !llvm.loop !92

bb.ce:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i188
  %i.km = ptrtoaddr ptr %.1.i193 to i64
  %i.kn = sub i64 %i.ke, %i.km
  %scevgep.i.i5.i194 = getelementptr i8, ptr %.1.i193, i64 %i.kn ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %i.ko = phi i8 [ %i.ki, %bb.ce ], [ %.pre.i197, %bb.ch ] ; 2 uses
  %.0.i.i6.i195 = phi ptr [ %.1.i193, %bb.ce ], [ %i.kp, %bb.ch ] ; 3 uses
  switch i8 %i.ko, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i7.i196 = icmp eq ptr %.0.i.i6.i195, %i.kc
  br i1 %.not.i.i7.i196, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198_crit_edge, label %bb.ch

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198_crit_edge: ; preds = %bb.cg
  %.pre516 = load i8, ptr %scevgep.i.i5.i194, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198

bb.ch:                                            ; preds = %bb.cg
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i6.i195, i64 1 ; 2 uses
  %.pre.i197 = load i8, ptr %i.kp, align 1
  br label %bb.cf, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198:  ; preds = %bb.cf, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198_crit_edge
  %i.kq = phi i8 [ %.pre516, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198_crit_edge ], [ %i.ko, %bb.cf ] ; 2 uses
  %.0.lcssa.i.i9.i199 = phi ptr [ %scevgep.i.i5.i194, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198_crit_edge ], [ %.0.i.i6.i195, %bb.cf ]
  %i.kr = add i8 %i.kq, -58
  %or.cond11.i203 = icmp ult i8 %i.kr, -10
  br i1 %or.cond11.i203, label %_ZN6Assimp9strtoul10EPKcPS1_.exit211, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198, %.lr.ph.i204
  %i.ks = phi i8 [ %i.kx, %.lr.ph.i204 ], [ %i.kq, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198 ]
  %.013.i205 = phi i32 [ %i.kv, %.lr.ph.i204 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198 ]
  %.0812.i206 = phi ptr [ %i.kw, %.lr.ph.i204 ], [ %.0.lcssa.i.i9.i199, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198 ]
  %i.kt = mul i32 %.013.i205, 10
  %narrow.i207 = add nsw i8 %i.ks, -48
  %i.ku = zext nneg i8 %narrow.i207 to i32
  %i.kv = add i32 %i.kt, %i.ku                    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0812.i206, i64 1 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1             ; 2 uses
  %i.ky = add i8 %i.kx, -58
  %or.cond.i208 = icmp ult i8 %i.ky, -10
  br i1 %or.cond.i208, label %_ZN6Assimp9strtoul10EPKcPS1_.exit211, label %.lr.ph.i204, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit211:             ; preds = %.lr.ph.i204, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198
  %.0.lcssa.i210 = phi i32 [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i198 ], [ %i.kv, %.lr.ph.i204 ] ; 3 uses
  %i.kz = zext i32 %.0.lcssa.i210 to i64          ; 3 uses
  %i.la = load ptr, ptr %i.dl, align 8
  %i.lb = load ptr, ptr %i.dk, align 8
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64               ; 2 uses
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 5
  %i.lg = icmp ult i64 %i.lf, %i.kz
  br i1 %i.lg, label %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit211
  %i.lh = load ptr, ptr %i.dm, align 8
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = sub i64 %i.li, %i.ld
  %i.lk = shl nuw nsw i64 %i.kz, 5
  %i.ll = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #29 ; 4 uses
  %i.lm = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.ln = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.lm, %i.ln
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i.i ], [ %i.ll, %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i ], [ %i.lm, %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.lo = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !98, !noalias !95
  store i64 %i.lo, ptr %.012.i.i.i.i, align 8, !alias.scope !95, !noalias !98
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.lr = load <2 x ptr>, ptr %i.lq, align 8, !alias.scope !98, !noalias !95
  store <2 x ptr> %i.lr, ptr %i.lp, align 8, !alias.scope !95, !noalias !98
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.lt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !98, !noalias !95
  store ptr %i.lu, ptr %i.ls, align 8, !alias.scope !95, !noalias !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i8 0, i64 24, i1 false), !alias.scope !98, !noalias !95
  %i.lv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.lv, %i.ln
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !100

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.dk, align 8
  br label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i
  %i.lx = phi ptr [ %.pr.i, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i ], [ %i.lm, %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.lx, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ly = load ptr, ptr %i.dl, align 8
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mb) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.ci, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ll, ptr %i.dk, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lj
  store ptr %i.mc, ptr %i.dm, align 8
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.kz
  store ptr %i.md, ptr %i.dl, align 8
  br label %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit: ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit211, %_ZNSt12_Vector_baseIN6Assimp3COB4FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.not455 = icmp eq i32 %.0.lcssa.i210, 0
  br i1 %.not455, label %.critedge4, label %.lr.ph450

.lr.ph450:                                        ; preds = %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit, %.loopexit
  %.086449 = phi i32 [ %i.wi, %.loopexit ], [ 0, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit ]
  %i.me = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = ptrtoint ptr %i.mi to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = and i64 %i.mn, 4294967295
  %.not404 = icmp eq i64 %i.mo, 0
  br i1 %.not404, label %.critedge4, label %bb.cj

.critedge4:                                       ; preds = %.lr.ph450, %.loopexit, %_ZNSt6vectorIN6Assimp3COB4FaceESaIS2_EE7reserveEm.exit
  %i.mp = load i32, ptr %i.f, align 8
  %i.mq = icmp ult i32 %i.mp, 5
  br i1 %i.mq, label %.loopexit406, label %.critedge

bb.cj:                                            ; preds = %.lr.ph450
  %i.mr = load i64, ptr %i.dd, align 8
  %.not.i212 = icmp ult i64 %i.mr, 4
  br i1 %.not.i212, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit221.thread398, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit216

_ZN6Assimp12LineSplitter11match_startEPKc.exit216: ; preds = %bb.cj
  %i.ms = load ptr, ptr %i.de, align 8
  %i.mt = load i32, ptr %i.ms, align 1
  %i.mu = icmp ne i32 1701605192, %i.mt
  %i.mv = zext i1 %i.mu to i32
  %.not9.i.i.i.i.i215 = icmp eq i32 %i.mv, 0
  br i1 %.not9.i.i.i.i.i215, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit216.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit221

_ZN6Assimp12LineSplitter11match_startEPKc.exit216.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit216
  %i.mw = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.mw, ptr noundef nonnull @.str.80)
  br label %.loopexit

_ZN6Assimp12LineSplitter11match_startEPKc.exit221: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit216
  %i.mx = load ptr, ptr %i.de, align 8
  %i.my = load i32, ptr %i.mx, align 1
  %i.mz = icmp ne i32 1701011782, %i.my
  %i.na = zext i1 %i.mz to i32
  %.not9.i.i.i.i.i220 = icmp eq i32 %i.na, 0
  br i1 %.not9.i.i.i.i.i220, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit221.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit221.thread398

_ZN6Assimp12LineSplitter11match_startEPKc.exit221.thread398: ; preds = %bb.cj, %_ZN6Assimp12LineSplitter11match_startEPKc.exit221
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
end_hunk_0
begin_hunk_1_@_ZN6Assimp11COBImporter14ReadPolH_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  %i.uh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.fq
  %i.uj = load i64, ptr %i.uh, align 8
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.fp
  %.pn110 = phi { ptr, i32 } [ %i.ue, %bb.fp ], [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %i.uf, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume

bb.fr:                                            ; preds = %.critedge.i.i309
  %i.ul = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i310, i64 1 ; 3 uses
  %i.um = load i8, ptr %i.ul, align 1             ; 2 uses
  %i.un = add i8 %i.um, -58
  %or.cond11.i318 = icmp ult i8 %i.un, -10
  br i1 %or.cond11.i318, label %_ZN6Assimp9strtoul10EPKcPS1_.exit327, label %.lr.ph.i319

.lr.ph.i319:                                      ; preds = %bb.fr, %.lr.ph.i319
  %i.uo = phi i8 [ %i.ut, %.lr.ph.i319 ], [ %i.um, %bb.fr ]
  %.013.i320 = phi i32 [ %i.ur, %.lr.ph.i319 ], [ 0, %bb.fr ]
  %.0812.i321 = phi ptr [ %i.us, %.lr.ph.i319 ], [ %i.ul, %bb.fr ]
  %i.up = mul i32 %.013.i320, 10
  %narrow.i322 = add nsw i8 %i.uo, -48
  %i.uq = zext nneg i8 %narrow.i322 to i32
  %i.ur = add i32 %i.up, %i.uq                    ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0812.i321, i64 1 ; 3 uses
  %i.ut = load i8, ptr %i.us, align 1             ; 2 uses
  %i.uu = add i8 %i.ut, -58
  %or.cond.i323 = icmp ult i8 %i.uu, -10
  br i1 %or.cond.i323, label %_ZN6Assimp9strtoul10EPKcPS1_.exit327, label %.lr.ph.i319, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit327:             ; preds = %.lr.ph.i319, %bb.fr
  %.08.lcssa.i324 = phi ptr [ %i.ul, %bb.fr ], [ %i.us, %.lr.ph.i319 ] ; 2 uses
  %.0.lcssa.i325 = phi i32 [ 0, %bb.fr ], [ %i.ur, %.lr.ph.i319 ]
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %.0447
  store i32 %.0.lcssa.i325, ptr %i.uv, align 4
  %i.uw = load i8, ptr %.08.lcssa.i324, align 1
  %.not104 = icmp eq i8 %i.uw, 44
  br i1 %.not104, label %bb.fx, label %bb.fs

bb.fs:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit327
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ft unwind label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN6Assimp11COBImporter14ThrowExceptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %12) #27
          to label %bb.fu unwind label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  unreachable

bb.fv:                                            ; preds = %bb.fs
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

bb.fw:                                            ; preds = %bb.ft
  %i.uy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uz = load ptr, ptr %12, align 8              ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.vb = icmp eq ptr %i.uz, %i.va
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.fw
  %i.vc = load i64, ptr %i.va, align 8
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.fv
  %.pn108 = phi { ptr, i32 } [ %i.ux, %bb.fv ], [ %i.uy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %i.uy, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %common.resume

bb.fx:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit327
  %i.ve = getelementptr inbounds nuw i8, ptr %.08.lcssa.i324, i64 1 ; 3 uses
  %i.vf = load i8, ptr %i.ve, align 1             ; 2 uses
  %i.vg = add i8 %i.vf, -58
  %or.cond11.i331 = icmp ult i8 %i.vg, -10
  br i1 %or.cond11.i331, label %_ZN6Assimp9strtoul10EPKcPS1_.exit340, label %.lr.ph.i332

.lr.ph.i332:                                      ; preds = %bb.fx, %.lr.ph.i332
  %i.vh = phi i8 [ %i.vm, %.lr.ph.i332 ], [ %i.vf, %bb.fx ]
  %.013.i333 = phi i32 [ %i.vk, %.lr.ph.i332 ], [ 0, %bb.fx ]
  %.0812.i334 = phi ptr [ %i.vl, %.lr.ph.i332 ], [ %i.ve, %bb.fx ]
  %i.vi = mul i32 %.013.i333, 10
  %narrow.i335 = add nsw i8 %i.vh, -48
  %i.vj = zext nneg i8 %narrow.i335 to i32
  %i.vk = add i32 %i.vi, %i.vj                    ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.0812.i334, i64 1 ; 3 uses
  %i.vm = load i8, ptr %i.vl, align 1             ; 2 uses
  %i.vn = add i8 %i.vm, -58
  %or.cond.i336 = icmp ult i8 %i.vn, -10
  br i1 %or.cond.i336, label %_ZN6Assimp9strtoul10EPKcPS1_.exit340, label %.lr.ph.i332, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit340:             ; preds = %.lr.ph.i332, %bb.fx
  %.08.lcssa.i337 = phi ptr [ %i.ve, %bb.fx ], [ %i.vl, %.lr.ph.i332 ] ; 2 uses
  %.0.lcssa.i338 = phi i32 [ 0, %bb.fx ], [ %i.vk, %.lr.ph.i332 ]
  %i.vo = load ptr, ptr %i.no, align 8
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %.0447
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  store i32 %.0.lcssa.i338, ptr %i.vq, align 4
  %i.vr = load i8, ptr %.08.lcssa.i337, align 1
  %.not105 = icmp eq i8 %i.vr, 62
  br i1 %.not105, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit340
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN6Assimp11COBImporter14ThrowExceptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %14) #27
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fy
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.gc:                                            ; preds = %bb.fz
  %i.vt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vu = load ptr, ptr %14, align 8              ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.gc
  %i.vx = load i64, ptr %i.vv, align 8
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.gb
  %.pn106 = phi { ptr, i32 } [ %i.vs, %bb.gb ], [ %i.vt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %i.vt, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %common.resume

bb.gd:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit340
  %i.vz = getelementptr inbounds nuw i8, ptr %.08.lcssa.i337, i64 1
  %i.wa = add nuw i64 %.0447, 1                   ; 2 uses
  %i.wb = load ptr, ptr %i.pq, align 8
  %i.wc = load ptr, ptr %i.no, align 8            ; 2 uses
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = sub i64 %i.wd, %i.we
  %i.wg = ashr exact i64 %i.wf, 3
  %i.wh = icmp ult i64 %i.wa, %i.wg
  br i1 %i.wh, label %bb.fe, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %bb.gd, %_ZN6Assimp9strtoul10EPKcPS1_.exit305, %_ZN6Assimp12LineSplitter11match_startEPKc.exit216.thread
  %i.wi = add nuw i32 %.086449, 1                 ; 2 uses
  %exitcond514.not = icmp eq i32 %i.wi, %.0.lcssa.i210
  br i1 %exitcond514.not, label %.critedge4, label %.lr.ph450, !llvm.loop !102

_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread396: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit184
  %.not.i344 = icmp ult i64 %i.dn, 9
  br i1 %.not.i344, label %.critedge, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit348

_ZN6Assimp12LineSplitter11match_startEPKc.exit348: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread396
  %i.wj = load ptr, ptr %i.de, align 8            ; 5 uses
  %i.wk = load i64, ptr %i.wj, align 1
  %i.wl = xor i64 7449354308553896516, %i.wk
  %i.wm = getelementptr i8, ptr %i.wj, i64 8
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = zext i8 %i.wn to i64
  %i.wp = xor i64 115, %i.wo
  %i.wq = or i64 %i.wl, %i.wp
  %i.wr = icmp ne i64 %i.wq, 0
  %i.ws = zext i1 %i.wr to i32
  %.not9.i.i.i.i.i347 = icmp eq i32 %i.ws, 0
  br i1 %.not9.i.i.i.i.i347, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit348.thread, label %.critedge

_ZN6Assimp12LineSplitter11match_startEPKc.exit348.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit348
  %i.wt = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.wu = ptrtoaddr ptr %i.wj to i64
  %i.wv = ptrtoaddr ptr %i.wt to i64              ; 2 uses
  %i.ww = sub i64 %i.wv, %i.wu
  %scevgep.i.i.i349 = getelementptr i8, ptr %i.wj, i64 %i.ww
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gg, %_ZN6Assimp12LineSplitter11match_startEPKc.exit348.thread
  %.0.i.i.i350 = phi ptr [ %i.wj, %_ZN6Assimp12LineSplitter11match_startEPKc.exit348.thread ], [ %i.wy, %bb.gg ] ; 4 uses
  %i.wx = load i8, ptr %.0.i.i.i350, align 1
  switch i8 %i.wx, label %bb.gf [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader: ; preds = %bb.ge, %bb.ge
  %.not.i.i.i351 = icmp eq ptr %.0.i.i.i350, %i.wt
  br i1 %.not.i.i.i351, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader
  %.1.i357.ph = phi ptr [ %scevgep.i.i.i349, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader ], [ %.0.i.i.i350, %bb.ge ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352

bb.gg:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352.preheader
  %i.wy = getelementptr inbounds nuw i8, ptr %.0.i.i.i350, i64 1
  br label %bb.ge, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352:    ; preds = %bb.gf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i365
  %.1.i357 = phi ptr [ %i.xc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i365 ], [ %.1.i357.ph, %bb.gf ] ; 5 uses
  %i.wz = load i8, ptr %.1.i357, align 1          ; 2 uses
  switch i8 %i.wz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i365 [
    i8 32, label %bb.gk
    i8 9, label %bb.gk
    i8 13, label %bb.gh
    i8 10, label %bb.gh
    i8 0, label %bb.gh
    i8 12, label %bb.gh
  ]

bb.gh:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352
  %i.xa = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, ptr noundef nonnull @.str.107)
          to label %bb.gi unwind label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @__cxa_throw(ptr nonnull %i.xa, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.xa) #26
  br label %common.resume

_ZN6Assimp9IsLineEndIcEEbT_.exit.i365:            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352
  %i.xc = getelementptr inbounds nuw i8, ptr %.1.i357, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352, !llvm.loop !92

bb.gk:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i352
  %i.xd = ptrtoaddr ptr %.1.i357 to i64
  %i.xe = sub i64 %i.wv, %i.xd
  %scevgep.i.i5.i358 = getelementptr i8, ptr %.1.i357, i64 %i.xe ; 2 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gn, %bb.gk
  %i.xf = phi i8 [ %i.wz, %bb.gk ], [ %.pre.i361, %bb.gn ] ; 2 uses
  %.0.i.i6.i359 = phi ptr [ %.1.i357, %bb.gk ], [ %i.xg, %bb.gn ] ; 3 uses
  switch i8 %i.xf, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362 [
    i8 32, label %bb.gm
    i8 9, label %bb.gm
  ]

bb.gm:                                            ; preds = %bb.gl, %bb.gl
  %.not.i.i7.i360 = icmp eq ptr %.0.i.i6.i359, %i.wt
  br i1 %.not.i.i7.i360, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362_crit_edge, label %bb.gn

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362_crit_edge: ; preds = %bb.gm
  %.pre521 = load i8, ptr %scevgep.i.i5.i358, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362

bb.gn:                                            ; preds = %bb.gm
  %i.xg = getelementptr inbounds nuw i8, ptr %.0.i.i6.i359, i64 1 ; 2 uses
  %.pre.i361 = load i8, ptr %i.xg, align 1
  br label %bb.gl, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362:  ; preds = %bb.gl, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362_crit_edge
  %i.xh = phi i8 [ %.pre521, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362_crit_edge ], [ %i.xf, %bb.gl ] ; 2 uses
  %.0.lcssa.i.i9.i363 = phi ptr [ %scevgep.i.i5.i358, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362_crit_edge ], [ %.0.i.i6.i359, %bb.gl ]
  %i.xi = add i8 %i.xh, -58
  %or.cond11.i367 = icmp ult i8 %i.xi, -10
  br i1 %or.cond11.i367, label %_ZN6Assimp9strtoul10EPKcPS1_.exit375, label %.lr.ph.i368

.lr.ph.i368:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362, %.lr.ph.i368
  %i.xj = phi i8 [ %i.xo, %.lr.ph.i368 ], [ %i.xh, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362 ]
  %.013.i369 = phi i32 [ %i.xm, %.lr.ph.i368 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362 ]
  %.0812.i370 = phi ptr [ %i.xn, %.lr.ph.i368 ], [ %.0.lcssa.i.i9.i363, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362 ]
  %i.xk = mul i32 %.013.i369, 10
  %narrow.i371 = add nsw i8 %i.xj, -48
  %i.xl = zext nneg i8 %narrow.i371 to i32
  %i.xm = add i32 %i.xk, %i.xl                    ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0812.i370, i64 1 ; 2 uses
  %i.xo = load i8, ptr %i.xn, align 1             ; 2 uses
  %i.xp = add i8 %i.xo, -58
  %or.cond.i372 = icmp ult i8 %i.xp, -10
  br i1 %or.cond.i372, label %_ZN6Assimp9strtoul10EPKcPS1_.exit375, label %.lr.ph.i368, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit375:             ; preds = %.lr.ph.i368, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362
  %.0.lcssa.i374 = phi i32 [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i362 ], [ %i.xm, %.lr.ph.i368 ]
  %i.xq = getelementptr inbounds nuw i8, ptr %i.cp, i64 288
  store i32 %.0.lcssa.i374, ptr %i.xq, align 8
  br label %.loopexit406

.critedge:                                        ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit179, %.lr.ph444, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit134, %.lr.ph, %_ZN6Assimp12LineSplitter11match_startEPKc.exit139.thread393, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm.exit, %_ZN6Assimp12LineSplitter11match_startEPKc.exit184.thread396, %.critedge4, %_ZN6Assimp12LineSplitter11match_startEPKc.exit348
  %i.xr = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 0 uses
  %i.xs = load ptr, ptr %i.ct, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = ptrtoint ptr %i.xu to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = and i64 %i.xz, 4294967295
  %.not401 = icmp eq i64 %i.ya, 0
  br i1 %.not401, label %.loopexit406, label %bb.x, !llvm.loop !103

.loopexit406:                                     ; preds = %.critedge, %.critedge4, %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit, %_ZN6Assimp9strtoul10EPKcPS1_.exit375, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter14ReadBitM_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11COBImporter22UnsupportedChunk_AsciiERNS_12LineSplitterERKNS_3COB9ChunkInfoEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.87)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoaddr ptr %i.f to i64
  %i.j = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.k = sub i64 %i.j, %i.i
  %scevgep.i.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.m, %bb.f ] ; 4 uses
  %i.l = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.l, label %bb.e [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.d, %bb.d
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.h
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ], [ %.0.i.i.i, %bb.d ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.f:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.d, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %bb.e, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %bb.e ] ; 5 uses
  %i.n = load i8, ptr %.1.i, align 1              ; 2 uses
  switch i8 %i.n, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.107)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #26
  resume { ptr, i32 } %i.p

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !92

bb.j:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.r = ptrtoaddr ptr %.1.i to i64
  %i.s = sub i64 %i.j, %i.r
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.s ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.t = phi i8 [ %i.n, %bb.j ], [ %.pre.i, %bb.m ] ; 2 uses
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.j ], [ %i.u, %bb.m ] ; 3 uses
  switch i8 %i.t, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.h
  br i1 %.not.i.i7.i, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge, label %bb.m

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge: ; preds = %bb.l
  %.pre = load i8, ptr %scevgep.i.i5.i, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.u, align 1
  br label %bb.k, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.k, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge
  %i.v = phi i8 [ %.pre, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %i.t, %bb.k ] ; 2 uses
  %.0.lcssa.i.i9.i = phi ptr [ %scevgep.i.i5.i, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %.0.i.i6.i, %bb.k ]
  %i.w = add i8 %i.v, -58
  %or.cond11.i = icmp ult i8 %i.w, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, %.lr.ph.i
  %i.x = phi i8 [ %i.ac, %.lr.ph.i ], [ %i.v, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.013.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.0812.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.0.lcssa.i.i9.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %i.y = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.x, -48
  %i.z = zext nneg i8 %narrow.i to i32
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = add i8 %i.ac, -58
  %or.cond.i = icmp ult i8 %i.ad, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %bb.n, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread

_ZN6Assimp9strtoul10EPKcPS1_.exit.thread:         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull @.str.88)
  br label %bb.n

bb.n:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread, %_ZN6Assimp9strtoul10EPKcPS1_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter14ReadMat1_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca [10 x ptr], align 16              ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ugt i32 %i.k, 8
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11COBImporter22UnsupportedChunk_AsciiERNS_12LineSplitterERKNS_3COB9ChunkInfoEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.39)
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not.i = icmp ult i64 %i.o, 5
  br i1 %.not.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread117, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit:   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i32, ptr %i.q, align 1
  %i.s = xor i32 594829677, %i.r
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 32, %i.v
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread117

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread117: ; preds = %bb.c, %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  %i.aa = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN6Assimp6Logger4warnIJRA38_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 1 dereferenceable(38) @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
  br label %bb.bm

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i42 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3COB8MaterialE, i64 16), ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  store float 1.000000e+00, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i32 -1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.an, i8 0, i64 60, i1 false)
  %i.ao = load ptr, ptr %i.ac, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152 ; 2 uses
  store ptr %i.ap, ptr %i.ac, align 8
  br label %_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.e:                                             ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ad)
  %.pre = load ptr, ptr %i.ac, align 8
  br label %_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.d, %bb.e
  %i.ar = phi ptr [ %i.ap, %bb.d ], [ %.pre, %bb.e ] ; 9 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -144
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = ptrtoaddr ptr %i.au to i64
  %i.ay = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  %i.az = sub i64 %i.ay, %i.ax
  %scevgep.i.i.i = getelementptr i8, ptr %i.au, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %.0.i.i.i = phi ptr [ %i.au, %_ZNSt6vectorIN6Assimp3COB8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ], [ %i.bb, %bb.h ] ; 4 uses
  %i.ba = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.ba, label %bb.g [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.f, %bb.f
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.aw
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ], [ %.0.i.i.i, %bb.f ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.h:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.f, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %bb.g, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.bf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %bb.g ] ; 5 uses
  %i.bc = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.bc, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.l
    i8 9, label %bb.l
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 0, label %bb.i
    i8 12, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.107)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.u, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.cj, %bb.u ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #26
  br label %common.resume

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !92

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.bg = ptrtoaddr ptr %.1.i to i64
  %i.bh = sub i64 %i.ay, %i.bg
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.bh ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.bi = phi i8 [ %i.bc, %bb.l ], [ %.pre.i43, %bb.o ] ; 2 uses
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.l ], [ %i.bj, %bb.o ] ; 3 uses
  switch i8 %i.bi, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.aw
  br i1 %.not.i.i7.i, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge, label %bb.o

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge: ; preds = %bb.n
  %.pre142 = load i8, ptr %scevgep.i.i5.i, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i43 = load i8, ptr %i.bj, align 1
  br label %bb.m, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.m, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge
  %i.bk = phi i8 [ %.pre142, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %i.bi, %bb.m ] ; 2 uses
  %.0.lcssa.i.i9.i = phi ptr [ %scevgep.i.i5.i, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %.0.i.i6.i, %bb.m ]
  %i.bl = add i8 %i.bk, -58
  %or.cond11.i = icmp ult i8 %i.bl, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, %.lr.ph.i
  %i.bm = phi i8 [ %i.br, %.lr.ph.i ], [ %i.bk, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.013.i = phi i32 [ %i.bp, %.lr.ph.i ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.0812.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %.0.lcssa.i.i9.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %i.bn = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.bm, -48
  %i.bo = zext nneg i8 %narrow.i to i32
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bs = add i8 %i.br, -58
  %or.cond.i = icmp ult i8 %i.bs, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  %.0.lcssa.i = phi i32 [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ], [ %i.bp, %.lr.ph.i ]
  %i.bt = getelementptr inbounds i8, ptr %i.ar, i64 -64
  store i32 %.0.lcssa.i, ptr %i.bt, align 8
  %i.bu = tail call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 0 uses
  %i.bv = load i64, ptr %i.n, align 8
  %.not.i44 = icmp ult i64 %i.bv, 8
  br i1 %.not.i44, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread118, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit48

_ZN6Assimp12LineSplitter11match_startEPKc.exit48: ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.bw = load ptr, ptr %i.p, align 8             ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = icmp ne i64 2322294337664280691, %i.bx
  %i.bz = zext i1 %i.by to i32
  %.not9.i.i.i.i.i47 = icmp eq i32 %i.bz, 0
  br i1 %.not9.i.i.i.i.i47, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread118

_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread118: ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit, %_ZN6Assimp12LineSplitter11match_startEPKc.exit48
  %i.ca = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnIJRA38_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 1 dereferenceable(38) @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.at)
  br label %bb.bm

_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.cb = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.cc = ptrtoaddr ptr %i.bw to i64
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = sub i64 %i.cd, %i.cc
  %scevgep.i.i.i49 = getelementptr i8, ptr %i.bw, i64 %i.ce
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread
  %.0.i.i.i50 = phi ptr [ %i.bw, %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread ], [ %i.cg, %bb.r ] ; 4 uses
  %i.cf = load i8, ptr %.0.i.i.i50, align 1
  switch i8 %i.cf, label %bb.q [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader: ; preds = %bb.p, %bb.p
  %.not.i.i.i51 = icmp eq ptr %.0.i.i.i50, %i.cb
  br i1 %.not.i.i.i51, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader
  %.1.i57.ph = phi ptr [ %scevgep.i.i.i49, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader ], [ %.0.i.i.i50, %bb.p ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52

bb.r:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i50, i64 1
  br label %bb.p, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52:     ; preds = %bb.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i65
  %.1.i57 = phi ptr [ %i.ck, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i65 ], [ %.1.i57.ph, %bb.q ] ; 5 uses
  %i.ch = load i8, ptr %.1.i57, align 1           ; 2 uses
  switch i8 %i.ch, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i65 [
    i8 32, label %bb.v
    i8 9, label %bb.v
    i8 13, label %bb.s
    i8 10, label %bb.s
    i8 0, label %bb.s
    i8 12, label %bb.s
  ]

bb.s:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull @.str.107)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ci) #26
  br label %common.resume

_ZN6Assimp9IsLineEndIcEEbT_.exit.i65:             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i57, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52, !llvm.loop !92

bb.v:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i52
  %i.cl = ptrtoaddr ptr %.1.i57 to i64
  %i.cm = sub i64 %i.cd, %i.cl
  %scevgep.i.i5.i58 = getelementptr i8, ptr %.1.i57, i64 %i.cm
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.cn = phi i8 [ %i.ch, %bb.v ], [ %.pre.i61, %bb.y ]
  %.0.i.i6.i59 = phi ptr [ %.1.i57, %bb.v ], [ %i.cp, %bb.y ] ; 3 uses
  switch i8 %i.cn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62.thread [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62.thread: ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.co, ptr %4, align 8
  br label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i7.i60 = icmp eq ptr %.0.i.i6.i59, %i.cb
  br i1 %.not.i.i7.i60, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i6.i59, i64 1 ; 2 uses
  %.pre.i61 = load i8, ptr %i.cp, align 1
  br label %bb.w, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62:   ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cq, ptr %4, align 8
  %i.cr = icmp eq ptr %i.cb, null
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.103) #27
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62.thread, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62
  %i.cs = phi ptr [ %i.co, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62.thread ], [ %i.cq, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62 ] ; 10 uses
  %.0.lcssa.i.i9.i63159 = phi ptr [ %.0.i.i6.i59, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62.thread ], [ %scevgep.i.i5.i58, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i62 ] ; 3 uses
  %i.ct = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i9.i63159) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.ct, ptr %i.g, align 8
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aa
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc67 unwind label %bb.am  ; 2 uses

.noexc67:                                         ; preds = %.noexc.i
  store ptr %i.cv, ptr %4, align 8
  %i.cw = load i64, ptr %i.g, align 8
  store i64 %i.cw, ptr %i.cs, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc67, %bb.aa
  %i.cx = phi ptr [ %i.cv, %.noexc67 ], [ %i.cs, %bb.aa ] ; 2 uses
  switch i64 %i.ct, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.cy = load i8, ptr %.0.lcssa.i.i9.i63159, align 1
  store i8 %i.cy, ptr %i.cx, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 1 %.0.lcssa.i.i9.i63159, i64 %i.ct, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  %i.cz = load i64, ptr %i.g, align 8             ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = load ptr, ptr %4, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.43, i64 noundef 0, i64 noundef 2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.de = load i64, ptr %i.da, align 8, !noalias !104
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.df, ptr %5, align 8, !alias.scope !104
  %i.dg = load ptr, ptr %4, align 8, !noalias !104 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dd, i64 %i.de) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !104
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !noalias !104
  %i.dh = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dh, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.ad
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc68 unwind label %bb.an  ; 2 uses

.noexc68:                                         ; preds = %.noexc10.i.i
  store ptr %i.di, ptr %5, align 8, !alias.scope !104
  %i.dj = load i64, ptr %i.f, align 8, !noalias !104
  store i64 %i.dj, ptr %i.df, align 8, !alias.scope !104
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc68, %bb.ad
  %i.dk = phi ptr [ %i.di, %.noexc68 ], [ %i.df, %bb.ad ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.dl = load i8, ptr %i.dg, align 1
  store i8 %i.dl, ptr %i.dk, align 1
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dg, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i
  %i.dm = load i64, ptr %i.f, align 8, !noalias !104 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.dm, ptr %i.dn, align 8, !alias.scope !104
  %i.do = load ptr, ptr %5, align 8, !alias.scope !104
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !104
  %i.dq = load ptr, ptr %4, align 8               ; 6 uses
  %i.dr = icmp eq ptr %i.dq, %i.cs
  %i.ds = load ptr, ptr %5, align 8               ; 5 uses
  %i.dt = icmp eq ptr %i.ds, %i.df                ; 2 uses
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ag
  br i1 %i.dt, label %bb.ah, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ag
  br i1 %i.dt, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.du = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  switch i64 %i.du, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load i8, ptr %i.ds, align 1
  store i8 %i.dw, ptr %i.dq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.dx = load i64, ptr %i.dn, align 8            ; 2 uses
  store i64 %i.dx, ptr %i.da, align 8
  %i.dy = load ptr, ptr %4, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store i8 0, ptr %i.dz, align 1
  %.pre.i70 = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ds, ptr %4, align 8
  %i.ea = load i64, ptr %i.dn, align 8
  store i64 %i.ea, ptr %i.da, align 8
  %i.eb = load i64, ptr %i.df, align 8
  store i64 %i.eb, ptr %i.cs, align 8
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ec = load i64, ptr %i.cs, align 8
  store ptr %i.ds, ptr %4, align 8
  %i.ed = load i64, ptr %i.dn, align 8
  store i64 %i.ed, ptr %i.da, align 8
  %i.ee = load i64, ptr %i.df, align 8
  store i64 %i.ee, ptr %i.cs, align 8
  %.not.i69 = icmp eq ptr %i.dq, null
  br i1 %.not.i69, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dq, ptr %5, align 8
  store i64 %i.ec, ptr %i.df, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.df, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.ef = phi ptr [ %.pre.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dq, %bb.ak ], [ %i.df, %bb.al ]
  store i64 0, ptr %i.dn, align 8
  store i8 0, ptr %i.ef, align 1
  %i.eg = load ptr, ptr %5, align 8               ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.df
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ei = load i64, ptr %i.df, align 8
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ek = load i64, ptr %i.da, align 8            ; 2 uses
  switch i64 %i.ek, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = load ptr, ptr %4, align 8               ; 4 uses
  %i.em = load i32, ptr %i.el, align 1
  %i.en = xor i32 %i.em, 1635018093
  %i.eo = getelementptr i8, ptr %i.el, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 108
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72

bb.am:                                            ; preds = %.noexc.i, %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.an:                                            ; preds = %.noexc10.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bo

bb.ao:                                            ; preds = %bb.ar, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread122, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121, %bb.ap, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ez = load i32, ptr %i.el, align 1
  %i.fa = xor i32 %i.ez, 1852794992
  %i.fb = getelementptr i8, ptr %i.el, i64 4
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = xor i32 %i.fd, 103
  %i.ff = or i32 %i.fa, %i.fe
  %i.fg = icmp ne i32 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121.sink.split, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre143 = load ptr, ptr %4, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %.pre143, ptr nonnull @.str.46, i64 %i.ek)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ap unwind label %bb.ao

bb.ap:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN6Assimp6Logger4warnIJRA44_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fj, ptr noundef nonnull align 1 dereferenceable(44) @.str.47, ptr noundef nonnull align 4 dereferenceable(4) %i.at)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121 unwind label %bb.ao

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sink = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72 ]
  %i.fk = getelementptr inbounds i8, ptr %i.ar, i64 -60
  store i32 %.sink, ptr %i.fk, align 4
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121.sink.split, %bb.ap, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fl = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
          to label %bb.aq unwind label %bb.ao     ; 0 uses

bb.aq:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121
  %i.fm = load i64, ptr %i.n, align 8
  %.not.i73 = icmp ult i64 %i.fm, 4
  br i1 %.not.i73, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread122, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit77

_ZN6Assimp12LineSplitter11match_startEPKc.exit77: ; preds = %bb.aq
  %i.fn = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = icmp ne i32 543319922, %i.fo
  %i.fq = zext i1 %i.fp to i32
  %.not9.i.i.i.i.i76 = icmp eq i32 %i.fq, 0
  br i1 %.not9.i.i.i.i.i76, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread122

_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread122: ; preds = %bb.aq, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77
  %i.fr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread122
  invoke void @_ZN6Assimp6Logger4warnIJRA37_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fr, ptr noundef nonnull align 1 dereferenceable(37) @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.at)
          to label %._ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread_crit_edge unwind label %bb.ao

._ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread_crit_edge: ; preds = %bb.ar
  %.pre144 = load ptr, ptr %i.p, align 8
  br label %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread

_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread: ; preds = %._ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread_crit_edge, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77
  %i.fs = phi ptr [ %.pre144, %._ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread_crit_edge ], [ %i.fn, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.ft = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.fu = ptrtoaddr ptr %i.fs to i64
  %i.fv = ptrtoaddr ptr %i.ft to i64              ; 2 uses
  %i.fw = sub i64 %i.fv, %i.fu
  %scevgep.i.i.i78 = getelementptr i8, ptr %i.fs, i64 %i.fw
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread
  %.0.i.i.i79 = phi ptr [ %i.fs, %_ZN6Assimp12LineSplitter11match_startEPKc.exit77.thread ], [ %i.fy, %bb.au ] ; 4 uses
  %i.fx = load i8, ptr %.0.i.i.i79, align 1
  switch i8 %i.fx, label %bb.at [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader: ; preds = %bb.as, %bb.as
  %.not.i.i.i80 = icmp eq ptr %.0.i.i.i79, %i.ft
  br i1 %.not.i.i.i80, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader
  %.1.i86.ph = phi ptr [ %scevgep.i.i.i78, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader ], [ %.0.i.i.i79, %bb.as ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81

bb.au:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81.preheader
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i79, i64 1
  br label %bb.as, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81:     ; preds = %bb.at, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i94
  %.1.i86 = phi ptr [ %i.gc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i94 ], [ %.1.i86.ph, %bb.at ] ; 5 uses
  %i.fz = load i8, ptr %.1.i86, align 1           ; 2 uses
  switch i8 %i.fz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i94 [
    i8 32, label %bb.ay
    i8 9, label %bb.ay
    i8 13, label %bb.av
    i8 10, label %bb.av
    i8 0, label %bb.av
    i8 12, label %bb.av
  ]

bb.av:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81
  %i.ga = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull @.str.107)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
          to label %.noexc95 unwind label %bb.bf

.noexc95:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ga) #26
  br label %.body

_ZN6Assimp9IsLineEndIcEEbT_.exit.i94:             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81
  %i.gc = getelementptr inbounds nuw i8, ptr %.1.i86, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81, !llvm.loop !92

bb.ay:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i81
  %i.gd = ptrtoaddr ptr %.1.i86 to i64
  %i.ge = sub i64 %i.fv, %i.gd
  %scevgep.i.i5.i87 = getelementptr i8, ptr %.1.i86, i64 %i.ge
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.gf = phi i8 [ %i.fz, %bb.ay ], [ %.pre.i90, %bb.bb ]
  %.0.i.i6.i88 = phi ptr [ %.1.i86, %bb.ay ], [ %i.gg, %bb.bb ] ; 3 uses
  switch i8 %i.gf, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i91 [
    i8 32, label %bb.ba
    i8 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %.not.i.i7.i89 = icmp eq ptr %.0.i.i6.i88, %i.ft
  br i1 %.not.i.i7.i89, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i91, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i.i6.i88, i64 1 ; 2 uses
  %.pre.i90 = load i8, ptr %i.gg, align 1
  br label %bb.az, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i91:   ; preds = %bb.ba, %bb.az
  %.0.lcssa.i.i9.i92 = phi ptr [ %.0.i.i6.i88, %bb.az ], [ %scevgep.i.i5.i87, %bb.ba ]
  store ptr %.0.lcssa.i.i9.i92, ptr %i.h, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.ar, i64 -96
  invoke void @_ZN6Assimp11COBImporter21ReadFloat3Tuple_AsciiI9aiColor3DEEvRT_PPKcS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.gh, ptr noundef nonnull %i.h, ptr noundef %i.ft)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i91
  %i.gi = invoke noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
          to label %bb.bd unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gj = load i64, ptr %i.n, align 8
  %.not.i97 = icmp ult i64 %i.gj, 6
  br i1 %.not.i97, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread123, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit101

_ZN6Assimp12LineSplitter11match_startEPKc.exit101: ; preds = %bb.bd
  %i.gk = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 1
  %i.gm = xor i32 1752198241, %i.gl
  %i.gn = getelementptr i8, ptr %i.gk, i64 4
  %i.go = load i16, ptr %i.gn, align 1
  %i.gp = zext i16 %i.go to i32
  %i.gq = xor i32 8289, %i.gp
  %i.gr = or i32 %i.gm, %i.gq
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %.not9.i.i.i.i.i100 = icmp eq i32 %i.gt, 0
  br i1 %.not9.i.i.i.i.i100, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread123

_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread123: ; preds = %bb.bd, %_ZN6Assimp12LineSplitter11match_startEPKc.exit101
  %i.gu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread123
  invoke void @_ZN6Assimp6Logger4warnIJRA39_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gu, ptr noundef nonnull align 1 dereferenceable(39) @.str.51, ptr noundef nonnull align 4 dereferenceable(4) %i.at)
          to label %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread unwind label %bb.bf

bb.bf:                                            ; preds = %bb.aw, %bb.be, %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread123, %bb.bc, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i91
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread: ; preds = %bb.be, %_ZN6Assimp12LineSplitter11match_startEPKc.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  invoke void @_ZNK6Assimp12LineSplitter10get_tokensILm10EEEvRAT__PKc(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store float 0.000000e+00, ptr %i.e, align 4
  %i.gy = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.gx, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true)
          to label %bb.bh unwind label %bb.bn     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gz = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ha = getelementptr inbounds i8, ptr %i.ar, i64 -84
  store float %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store float 0.000000e+00, ptr %i.d, align 4
  %i.hd = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.hc, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bn     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.he = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.hf = getelementptr inbounds i8, ptr %i.ar, i64 -72
  store float %i.he, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4
  %i.hi = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
          to label %bb.bj unwind label %bb.bn     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hj = load float, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.hk = getelementptr inbounds i8, ptr %i.ar, i64 -68
  store float %i.hj, ptr %i.hk, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.hn = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.hm, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bn     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ho = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.hp = getelementptr inbounds i8, ptr %i.ar, i64 -80
  store float %i.ho, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4
  %i.hs = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.hr, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.bn     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ht = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hu = getelementptr inbounds i8, ptr %i.ar, i64 -76
  store float %i.ht, ptr %i.hu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.hv = load ptr, ptr %4, align 8               ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.cs
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bl
  %i.hx = load i64, ptr %i.cs, align 8
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit48.thread118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread117, %bb.b
  ret void

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %_ZN6Assimp12LineSplitter11match_startEPKc.exit101.thread
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %.body

.body:                                            ; preds = %bb.bf, %bb.ax, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.hz, %bb.bn ], [ %i.gv, %bb.bf ], [ %i.gb, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.bo

bb.bo:                                            ; preds = %.body, %bb.ao, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ey, %bb.ao ], [ %i.ex, %bb.an ] ; 2 uses
  %i.ia = load ptr, ptr %4, align 8               ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.cs
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

end_hunk_1
begin_hunk_2_@_ZN6Assimp11COBImporter14ReadLght_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  %.not.i = icmp ult i64 %i.cn, 9
  br i1 %.not.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread82, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit:   ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 7310584018064797257, %i.cq
  %i.cs = getelementptr i8, ptr %i.cp, i64 8
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = xor i64 32, %i.cu
  %i.cw = or i64 %i.cr, %i.cv
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit51

bb.x:                                             ; preds = %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 240) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.j
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt12__shared_ptrIN6Assimp3COB5LightELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.da, %bb.y ], [ %i.cz, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread82: ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit
  %.not.i47 = icmp samesign ult i64 %i.cn, 6
  br i1 %.not.i47, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit51.thread83, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit51

_ZN6Assimp12LineSplitter11match_startEPKc.exit51: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread82
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = xor i32 1633906508, %i.dd
  %i.df = getelementptr i8, ptr %i.dc, i64 4
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i32
  %i.di = xor i32 8300, %i.dh
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not9.i.i.i.i.i50 = icmp eq i32 %i.dl, 0
  br i1 %.not9.i.i.i.i.i50, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit56

_ZN6Assimp12LineSplitter11match_startEPKc.exit51.thread83: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread82
  %.not.i52.not = icmp eq i64 %i.cn, 5
  br i1 %.not.i52.not, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit56, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84

_ZN6Assimp12LineSplitter11match_startEPKc.exit56: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit51, %_ZN6Assimp12LineSplitter11match_startEPKc.exit51.thread83
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = load i32, ptr %i.dn, align 1
  %i.dp = xor i32 1953460307, %i.do
  %i.dq = getelementptr i8, ptr %i.dn, i64 4
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = xor i32 32, %i.ds
  %i.du = or i32 %i.dp, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %.not9.i.i.i.i.i55 = icmp eq i32 %i.dw, 0
  br i1 %.not9.i.i.i.i.i55, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84

_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit51.thread83, %_ZN6Assimp12LineSplitter11match_startEPKc.exit56
  %i.dx = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.dz, ptr %6, align 8, !alias.scope !115
  %i.ea = load ptr, ptr %i.dy, align 8, !noalias !115 ; 2 uses
  %i.eb = load i64, ptr %i.cm, align 8, !noalias !115 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !115
  store i64 %i.eb, ptr %i.c, align 8, !noalias !115
  %i.ec = icmp ugt i64 %i.eb, 15
  br i1 %i.ec, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84
  %i.ed = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ed, ptr %6, align 8, !alias.scope !115
  %i.ee = load i64, ptr %i.c, align 8, !noalias !115
  store i64 %i.ee, ptr %i.dz, align 8, !alias.scope !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84
  %i.ef = phi ptr [ %i.ed, %.noexc.i.i ], [ %i.dz, %_ZN6Assimp12LineSplitter11match_startEPKc.exit56.thread84 ] ; 2 uses
  switch i64 %i.eb, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.eg = load i8, ptr %i.ea, align 1
  store i8 %i.eg, ptr %i.ef, align 1
  br label %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.ea, i64 %i.eb, i1 false)
  br label %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit

_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit:        ; preds = %._crit_edge.i.i.i, %bb.aa, %bb.ab
  %i.eh = load i64, ptr %i.c, align 8, !noalias !115 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !alias.scope !115
  %i.ej = load ptr, ptr %6, align 8, !alias.scope !115
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !115
  invoke void @_ZN6Assimp6Logger4warnIJRA46_KcRKjRA4_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dx, ptr noundef nonnull align 1 dereferenceable(46) @.str.64, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 1 dereferenceable(4) @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit
  %i.el = load ptr, ptr %6, align 8               ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dz
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.en = load i64, ptr %i.dz, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread

bb.ad:                                            ; preds = %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %6, align 8               ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dz
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ad
  %i.es = load i64, ptr %i.dz, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit56, %_ZN6Assimp12LineSplitter11match_startEPKc.exit51, %_ZN6Assimp12LineSplitter11match_startEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sink = phi i32 [ 2, %_ZN6Assimp12LineSplitter11match_startEPKc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZN6Assimp12LineSplitter11match_startEPKc.exit51 ], [ 0, %_ZN6Assimp12LineSplitter11match_startEPKc.exit56 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ci, i64 232
  store i32 %.sink, ptr %i.eu, align 8
  %i.ev = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 0 uses
  %i.ew = load i64, ptr %i.cm, align 8
  %.not.i60 = icmp ult i64 %i.ew, 6
  br i1 %.not.i60, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread85, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit64

_ZN6Assimp12LineSplitter11match_startEPKc.exit64: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 1
  %i.fa = xor i32 1869377379, %i.ez
  %i.fb = getelementptr i8, ptr %i.ey, i64 4
  %i.fc = load i16, ptr %i.fb, align 1
  %i.fd = zext i16 %i.fc to i32
  %i.fe = xor i32 8306, %i.fd
  %i.ff = or i32 %i.fa, %i.fe
  %i.fg = icmp ne i32 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %.not9.i.i.i.i.i63 = icmp eq i32 %i.fh, 0
  br i1 %.not9.i.i.i.i.i63, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread85

_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread85: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64
  %i.fi = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA39_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fi, ptr noundef nonnull align 1 dereferenceable(39) @.str.67, ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread

_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread85, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64
  %i.fj = phi ptr [ %.pre, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread85 ], [ %i.ey, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8            ; 8 uses
  %i.fm = ptrtoaddr ptr %i.fj to i64
  %i.fn = ptrtoaddr ptr %i.fl to i64              ; 6 uses
  %i.fo = sub i64 %i.fn, %i.fm
  %scevgep.i.i.i = getelementptr i8, ptr %i.fj, i64 %i.fo
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread
  %.0.i.i.i = phi ptr [ %i.fj, %_ZN6Assimp12LineSplitter11match_startEPKc.exit64.thread ], [ %i.fq, %bb.ag ] ; 4 uses
  %i.fp = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.fp, label %bb.af [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.ae, %bb.ae
  %.not.i.i.i65 = icmp eq ptr %.0.i.i.i, %i.fl
  br i1 %.not.i.i.i65, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ], [ %.0.i.i.i, %bb.ae ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.ag:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.ae, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %bb.af, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.fu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %bb.af ] ; 5 uses
  %i.fr = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.fr, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.ak
    i8 9, label %bb.ak
    i8 13, label %bb.ah
    i8 10, label %bb.ah
    i8 0, label %bb.ah
    i8 12, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.fs = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull @.str.107)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fs) #26
  br label %common.resume

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !92

bb.ak:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.fv = ptrtoaddr ptr %.1.i to i64
  %i.fw = sub i64 %i.fn, %i.fv
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.fw
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %i.fx = phi i8 [ %i.fr, %bb.ak ], [ %.pre.i, %bb.an ]
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.ak ], [ %i.fy, %bb.an ] ; 3 uses
  switch i8 %i.fx, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i [
    i8 32, label %bb.am
    i8 9, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.fl
  br i1 %.not.i.i7.i, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.fy, align 1
  br label %bb.al, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.am, %bb.al
  %.0.lcssa.i.i9.i = phi ptr [ %.0.i.i6.i, %bb.al ], [ %scevgep.i.i5.i, %bb.am ]
  store ptr %.0.lcssa.i.i9.i, ptr %i.d, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 212
  call void @_ZN6Assimp11COBImporter21ReadFloat3Tuple_AsciiI9aiColor3DEEvRT_PPKcS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.fz, ptr noundef nonnull %i.d, ptr noundef %i.fl)
  %i.ga = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = sub i64 %i.fn, %i.gb
  %scevgep.i.i = getelementptr i8, ptr %i.ga, i64 %i.gc
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  %.0.i.i = phi ptr [ %i.ga, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ], [ %i.ge, %bb.aq ] ; 4 uses
  %i.gd = load i8, ptr %.0.i.i, align 1
  switch i8 %i.gd, label %.critedge.i.i [
    i8 32, label %bb.ap
    i8 9, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %.not.i.i66 = icmp eq ptr %.0.i.i, %i.fl
  br i1 %.not.i.i66, label %.critedge.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.ao, !llvm.loop !91

.critedge.i.i:                                    ; preds = %bb.ap, %bb.ao
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.ao ], [ %scevgep.i.i, %bb.ap ] ; 3 uses
  store ptr %.0.lcssa.i.i, ptr %i.d, align 8
  %i.gf = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i, ptr noundef nonnull dereferenceable(11) @.str.68, i64 noundef 10) #31
  %.not = icmp eq i32 %i.gf, 0
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i
  %i.gg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA62_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gg, ptr noundef nonnull align 1 dereferenceable(62) @.str.69, ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
  %.pre90 = load ptr, ptr %i.d, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge.i.i
  %i.gh = phi ptr [ %.pre90, %bb.ar ], [ %.0.lcssa.i.i, %.critedge.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 10 ; 3 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = sub i64 %i.fn, %i.gj
  %scevgep.i = getelementptr i8, ptr %i.gi, i64 %i.gk
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %.0.i = phi ptr [ %i.gi, %bb.as ], [ %i.gm, %bb.av ] ; 4 uses
  %i.gl = load i8, ptr %.0.i, align 1
  switch i8 %i.gl, label %.critedge.i [
    i8 32, label %bb.au
    i8 9, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %.not.i67 = icmp eq ptr %.0.i, %i.fl
  br i1 %.not.i67, label %.critedge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.at, !llvm.loop !91

.critedge.i:                                      ; preds = %bb.au, %bb.at
  %.0.lcssa.i = phi ptr [ %.0.i, %bb.at ], [ %scevgep.i, %bb.au ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.gn = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 4 uses
  store ptr %i.gn, ptr %i.d, align 8
  %i.go = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ci, i64 224
  store float %i.go, ptr %i.gp, align 8
  %i.gq = ptrtoaddr ptr %i.gn to i64
  %i.gr = sub i64 %i.fn, %i.gq
  %scevgep.i.i69 = getelementptr i8, ptr %i.gn, i64 %i.gr
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.critedge.i
  %.0.i.i70 = phi ptr [ %i.gn, %.critedge.i ], [ %i.gt, %bb.ay ] ; 4 uses
  %i.gs = load i8, ptr %.0.i.i70, align 1
  switch i8 %i.gs, label %.critedge.i.i72 [
    i8 32, label %bb.ax
    i8 9, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %.not.i.i71 = icmp eq ptr %.0.i.i70, %i.fl
  br i1 %.not.i.i71, label %.critedge.i.i72, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i70, i64 1
  br label %bb.aw, !llvm.loop !91

.critedge.i.i72:                                  ; preds = %bb.ax, %bb.aw
  %.0.lcssa.i.i73 = phi ptr [ %.0.i.i70, %bb.aw ], [ %scevgep.i.i69, %bb.ax ] ; 3 uses
  store ptr %.0.lcssa.i.i73, ptr %i.d, align 8
  %i.gu = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i73, ptr noundef nonnull dereferenceable(12) @.str.70, i64 noundef 11) #31
  %.not41 = icmp eq i32 %i.gu, 0
  br i1 %.not41, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.critedge.i.i72
  %i.gv = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA63_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gv, ptr noundef nonnull align 1 dereferenceable(63) @.str.71, ptr noundef nonnull align 4 dereferenceable(4) %i.ck)
  %.pre91 = load ptr, ptr %i.d, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge.i.i72
  %i.gw = phi ptr [ %.pre91, %bb.az ], [ %.0.lcssa.i.i73, %.critedge.i.i72 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 11 ; 3 uses
  %i.gy = ptrtoaddr ptr %i.gx to i64
  %i.gz = sub i64 %i.fn, %i.gy
  %scevgep.i75 = getelementptr i8, ptr %i.gx, i64 %i.gz
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.0.i76 = phi ptr [ %i.gx, %bb.ba ], [ %i.hb, %bb.bd ] ; 4 uses
  %i.ha = load i8, ptr %.0.i76, align 1
  switch i8 %i.ha, label %.critedge.i78 [
    i8 32, label %bb.bc
    i8 9, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %.not.i77 = icmp eq ptr %.0.i76, %i.fl
  br i1 %.not.i77, label %.critedge.i78, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i76, i64 1
  br label %bb.bb, !llvm.loop !91

.critedge.i78:                                    ; preds = %bb.bc, %bb.bb
  %.0.lcssa.i79 = phi ptr [ %.0.i76, %bb.bb ], [ %scevgep.i75, %bb.bc ] ; 2 uses
  store ptr %.0.lcssa.i79, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4
  %i.hc = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i79, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.hd = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.he = getelementptr inbounds nuw i8, ptr %i.ci, i64 228
  store float %i.hd, ptr %i.he, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.be

bb.be:                                            ; preds = %.critedge.i78, %bb.b
  ret void
end_hunk_2
begin_hunk_3_@_ZN6Assimp11COBImporter14ReadBone_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #26
  br label %_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE9push_backEOS4_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.ba = load ptr, ptr %i.r, align 8             ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #26, !inline_history !122
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #26, !inline_history !122
  br label %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i16 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i16, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i18 = phi i32 [ %i.be, %bb.s ], [ %i.bo, %bb.t ]
  %i.bp = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.bp, label %bb.u, label %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #26
  br label %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bq = load ptr, ptr %i.ad, align 8, !noalias !123 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !123
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.v, label %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !123
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  br label %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit

_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.v
  %i.bz = phi ptr [ %i.by, %bb.v ], [ %i.bq, %_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
  call void @_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(212) %i.cb, ptr noundef nonnull align 8 dereferenceable(59) %i.ce, ptr nonnull align 8 poison)
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt5dequeISt10shared_ptrIN6Assimp3COB4NodeEESaIS4_EE4backEv.exit, %bb.b
  ret void

bb.x:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 216) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp3COB4NodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt12__shared_ptrIN6Assimp3COB4BoneELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter14ReadChan_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(59) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11COBImporter22UnsupportedChunk_AsciiERNS_12LineSplitterERKNS_3COB9ChunkInfoEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.59)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter14ReadUnit_AsciiERNS_3COB5SceneERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp11COBImporter22UnsupportedChunk_AsciiERNS_12LineSplitterERKNS_3COB9ChunkInfoEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.52)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp ult i64 %i.g, 6
  br i1 %.not.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread22, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit:   ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load i32, ptr %i.i, align 1
  %i.k = xor i32 1953066581, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = xor i32 8307, %i.n
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread22

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread22: ; preds = %bb.c, %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  %i.s = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN6Assimp6Logger4warnIJRA39_KcRKjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(39) @.str.54, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  br label %bb.s

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !126 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !noalias !129 ; 2 uses
  %.not2631 = icmp eq ptr %i.v, %i.x
  br i1 %.not2631, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !noalias !126
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !126
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit
  %.sroa.019.034 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.019.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit ] ; 3 uses
  %.sroa.10.033 = phi ptr [ %i.ab, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.13.032 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.019.034, align 8   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %.not = icmp eq i32 %i.ag, %i.ad
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = ptrtoaddr ptr %i.i to i64
  %i.ak = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.al = sub i64 %i.ak, %i.aj
  %scevgep.i.i.i = getelementptr i8, ptr %i.i, i64 %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0.i.i.i = phi ptr [ %i.i, %bb.e ], [ %i.an, %bb.h ] ; 4 uses
  %i.am = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.am, label %bb.g [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.f, %bb.f
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.ai
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ], [ %.0.i.i.i, %bb.f ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.h:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.f, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %bb.g, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.ar, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %bb.g ] ; 5 uses
  %i.ao = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.ao, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.l
    i8 9, label %bb.l
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 0, label %bb.i
    i8 12, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.107)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #26
  resume { ptr, i32 } %i.aq

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !92

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.as = ptrtoaddr ptr %.1.i to i64
  %i.at = sub i64 %i.ak, %i.as
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.at ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.au = phi i8 [ %i.ao, %bb.l ], [ %.pre.i, %bb.o ] ; 2 uses
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.l ], [ %i.av, %bb.o ] ; 3 uses
  switch i8 %i.au, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.ai
  br i1 %.not.i.i7.i, label %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge, label %bb.o

._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge: ; preds = %bb.n
  %.pre = load i8, ptr %scevgep.i.i5.i, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.av, align 1
  br label %bb.m, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.m, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge
  %i.aw = phi i8 [ %.pre, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %i.au, %bb.m ] ; 2 uses
  %.0.lcssa.i.i9.i = phi ptr [ %scevgep.i.i5.i, %._ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i_crit_edge ], [ %.0.i.i6.i, %bb.m ]
  %i.ax = add i8 %i.aw, -58
  %or.cond11.i = icmp ult i8 %i.ax, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, %.lr.ph.i
  %i.ay = phi i8 [ %i.bd, %.lr.ph.i ], [ %i.aw, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.013.i = phi i32 [ %i.bb, %.lr.ph.i ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %.0812.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.0.lcssa.i.i9.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %i.az = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.ay, -48
  %i.ba = zext nneg i8 %narrow.i to i32
  %i.bb = add i32 %i.az, %i.ba                    ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = add i8 %i.bd, -58
  %or.cond.i = icmp ult i8 %i.be, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !85

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i
  store i32 %i.bb, ptr %i.a, align 4
  %i.bf = icmp ugt i32 %i.bb, 7
  br i1 %i.bf, label %bb.p, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread

bb.p:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.bg = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN6Assimp6Logger4warnIJRKjRA61_KcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(61) @.str.55, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  %.pre39 = load ptr, ptr %.sroa.019.034, align 8
  br label %bb.r

_ZN6Assimp9strtoul10EPKcPS1_.exit.thread:         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %.0.lcssa.i24 = phi i32 [ %i.bb, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ]
  %i.bi = zext nneg i32 %.0.lcssa.i24 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZN6AssimpL5unitsE, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4
  br label %bb.r

.critedge:                                        ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.034, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %.sroa.10.033
  br i1 %i.bm, label %bb.q, label %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit

bb.q:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.13.032, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  br label %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit

_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit: ; preds = %.critedge, %bb.q
  %.sroa.13.1 = phi ptr [ %i.bn, %bb.q ], [ %.sroa.13.032, %.critedge ]
  %.sroa.10.1 = phi ptr [ %i.bp, %bb.q ], [ %.sroa.10.033, %.critedge ]
  %.sroa.019.1 = phi ptr [ %i.bo, %bb.q ], [ %i.bl, %.critedge ] ; 2 uses
  %.not26 = icmp eq ptr %.sroa.019.1, %i.x
  br i1 %.not26, label %._crit_edge, label %bb.d

bb.r:                                             ; preds = %bb.p, %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread
  %i.bq = phi ptr [ %.pre39, %bb.p ], [ %i.ae, %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread ]
  %i.br = phi float [ 1.000000e+00, %bb.p ], [ %i.bk, %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 208
  store float %i.br, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp3COB4NodeEERS4_PS4_EppEv.exit, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %i.bt = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @_ZN6Assimp6Logger4warnIJRA14_KcRKjRA16_S2_S6_RA22_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 1 dereferenceable(14) @.str.56, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 1 dereferenceable(16) @.str.57, ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull align 1 dereferenceable(22) @.str.58)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread22, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !132, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = and i64 %i.l, 4294967295
  %.not37 = icmp eq i64 %i.m, 0
  br i1 %.not37, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.104)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.s, %bb.o, %bb.k, %bb.f
  %.sink = phi ptr [ %i.dt, %bb.ai ], [ %i.dk, %bb.ae ], [ %i.cp, %bb.ab ], [ %i.cf, %bb.x ], [ %i.bo, %bb.s ], [ %i.bf, %bb.o ], [ %i.aj, %bb.k ], [ %i.n, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.dl, %bb.ae ], [ %i.cq, %bb.ab ], [ %i.cg, %bb.x ], [ %i.bp, %bb.s ], [ %i.bg, %bb.o ], [ %i.ak, %bb.k ], [ %i.o, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #26
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.p, align 8
  store i8 0, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = and i64 %i.z, 4294967295
  %.not39 = icmp eq i64 %i.aa, 0
  br i1 %.not39, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.h
end_hunk_3
begin_hunk_4_@_ZN6Assimp6Logger5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !alias.scope !157
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !alias.scope !157
  store i8 0, ptr %i.f, align 8, !alias.scope !157
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !157 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !157 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !157 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !alias.scope !157 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %2, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.f, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.aq, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.at) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl(ptr noundef nonnull align 8 dereferenceable(49) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %1 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.109)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #26
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(212) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 20 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !40, !align !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = and i64 %i.k, 4294967295
  %.not39 = icmp eq i64 %i.l, 0
  br i1 %.not39, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit
  %i.u = load i64, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.u, 4
  br i1 %.not.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit:   ; preds = %bb.b
  %i.v = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.w = load i32, ptr %i.v, align 1
  %i.x = icmp ne i32 1701667150, %i.w
  %i.y = zext i1 %i.x to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread34

_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread: ; preds = %_ZN6Assimp12LineSplitter11match_startEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.aa = ptrtoaddr ptr %i.v to i64
  %i.ab = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %scevgep.i.i.i = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread
  %.0.i.i.i = phi ptr [ %i.v, %_ZN6Assimp12LineSplitter11match_startEPKc.exit.thread ], [ %i.ae, %bb.e ] ; 4 uses
  %i.ad = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.ad, label %bb.d [
    i8 32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
    i8 9, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader: ; preds = %bb.c, %bb.c
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.z
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %.1.i.ph = phi ptr [ %scevgep.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader ], [ %.0.i.i.i, %bb.c ]
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i

bb.e:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.c, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %bb.d, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.1.i = phi ptr [ %i.ai, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.1.i.ph, %bb.d ] ; 5 uses
  %i.af = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.af, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.107)
          to label %bb.g unwind label %common.resume

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #26
  resume { ptr, i32 } %i.ah

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !92

bb.h:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.aj = ptrtoaddr ptr %.1.i to i64
  %i.ak = sub i64 %i.ab, %i.aj
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.ak
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.al = phi i8 [ %i.af, %bb.h ], [ %.pre.i, %bb.k ]
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.h ], [ %i.am, %bb.k ] ; 3 uses
  switch i8 %i.al, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread: ; preds = %bb.i
  store ptr %i.p, ptr %4, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.z
  br i1 %.not.i.i7.i, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.am, align 1
  br label %bb.i, !llvm.loop !91

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.j
  store ptr %i.p, ptr %4, align 8
  %i.an = icmp eq ptr %i.z, null
  br i1 %i.an, label %.noexc, label %bb.l

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.103) #27
  unreachable

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  %.0.lcssa.i.i9.i59 = phi ptr [ %.0.i.i6.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread ], [ %scevgep.i.i5.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ] ; 3 uses
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i9.i59) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ao, ptr %i.b, align 8
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %4, align 8
  %i.ar = load i64, ptr %i.b, align 8
  store i64 %i.ar, ptr %i.p, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.l
  %i.as = phi ptr [ %i.aq, %.noexc.i ], [ %i.p, %bb.l ] ; 2 uses
  switch i64 %i.ao, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %.0.lcssa.i.i9.i59, align 1
  store i8 %i.at, ptr %i.as, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %.0.lcssa.i.i9.i59, i64 %i.ao, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.au = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.au, ptr %i.q, align 8
  %i.av = load ptr, ptr %4, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ax = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  %i.az = load ptr, ptr %4, align 8               ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.p                 ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = load i8, ptr %i.az, align 1
  store i8 %i.bd, ptr %i.ax, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.be = load i64, ptr %i.q, align 8             ; 2 uses
  store i64 %i.be, ptr %i.t, align 8
  %i.bf = load ptr, ptr %i.r, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1
  %.pre.i24 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.az, ptr %i.r, align 8
  %i.bh = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bh, ptr %i.t, align 8
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.s, align 8
  store ptr %i.az, ptr %i.r, align 8
  %i.bj = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bj, ptr %i.t, align 8
  %.not.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ax, ptr %4, align 8
  store i64 %i.bi, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bk = phi ptr [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ax, %bb.s ], [ %i.p, %bb.t ]
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.bk, align 1
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.p
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bn = load i64, ptr %i.p, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bp = load ptr, ptr %i.r, align 8             ; 44 uses
  %i.bq = load i64, ptr %i.t, align 8             ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %.not6.i = icmp samesign eq i64 %i.bq, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check76 = icmp ult i64 %i.bq, 32
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bq, 24
  %n.vec = and i64 %i.bq, -32                     ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 %n.vec
  br label %vector.body
end_hunk_4
