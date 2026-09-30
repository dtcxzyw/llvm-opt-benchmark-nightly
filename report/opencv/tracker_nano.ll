Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tracker_nano?download=true
inline.NumInlined: 630
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv15TrackerNanoImpl6updateERKNS_11_InputArrayERNS_5Rect_IiEE:bb.a
  %i.zw = icmp sgt i32 %i.zt, 0
  br i1 %i.zw, label %.lr.ph.i.i361, label %_ZN2cv3Mat2atIfEERT_PKi.exit367

.lr.ph.i.i361:                                    ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit359
  %i.zx = getelementptr inbounds nuw i8, ptr %122, i64 128 ; 5 uses
  %wide.trip.count.i.i362 = zext nneg i32 %i.zt to i64 ; 2 uses
  %xtraiter559 = and i64 %wide.trip.count.i.i362, 3 ; 3 uses
  %i.zy = icmp ult i32 %i.zt, 4
  br i1 %i.zy, label %.epil.preheader558, label %.lr.ph.i.i361.new

.lr.ph.i.i361.new:                                ; preds = %.lr.ph.i.i361
  %unroll_iter564 = and i64 %wide.trip.count.i.i362, 2147483644
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.lr.ph.i.i361.new
  %indvars.iv.i.i363 = phi i64 [ 0, %.lr.ph.i.i361.new ], [ %indvars.iv.next.i.i365.3, %bb.ew ] ; 6 uses
  %.010.i.i364 = phi ptr [ %i.zv, %.lr.ph.i.i361.new ], [ %i.aba, %bb.ew ]
  %niter565 = phi i64 [ 0, %.lr.ph.i.i361.new ], [ %niter565.next.3, %bb.ew ]
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i363
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !64
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.i.i363
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !72
  %i.aae = mul i64 %i.aad, %i.aab
  %i.aaf = getelementptr inbounds nuw i8, ptr %.010.i.i364, i64 %i.aae
  %indvars.iv.next.i.i365 = or disjoint i64 %indvars.iv.i.i363, 1 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i365
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !64
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.next.i.i365
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !72
  %i.aal = mul i64 %i.aak, %i.aai
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aal
  %indvars.iv.next.i.i365.1 = or disjoint i64 %indvars.iv.i.i363, 2 ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i365.1
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !64
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.next.i.i365.1
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !72
  %i.aas = mul i64 %i.aar, %i.aap
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aas
  %indvars.iv.next.i.i365.2 = or disjoint i64 %indvars.iv.i.i363, 3 ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i365.2
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !64
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.next.i.i365.2
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !72
  %i.aaz = mul i64 %i.aay, %i.aaw
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aaz ; 3 uses
  %indvars.iv.next.i.i365.3 = add nuw nsw i64 %indvars.iv.i.i363, 4 ; 2 uses
  %niter565.next.3 = add i64 %niter565, 4         ; 2 uses
  %niter565.ncmp.3 = icmp eq i64 %niter565.next.3, %unroll_iter564
  br i1 %niter565.ncmp.3, label %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa, label %bb.ew, !llvm.loop !175

_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa: ; preds = %bb.ew
  %lcmp.mod561.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod561.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit367, label %.epil.preheader558

.epil.preheader558:                               ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa, %.lr.ph.i.i361
  %indvars.iv.i.i363.epil.init = phi i64 [ 0, %.lr.ph.i.i361 ], [ %indvars.iv.next.i.i365.3, %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa ]
  %.010.i.i364.epil.init = phi ptr [ %i.zv, %.lr.ph.i.i361 ], [ %i.aba, %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa ]
  %lcmp.mod563 = icmp ne i64 %xtraiter559, 0
  call void @llvm.assume(i1 %lcmp.mod563)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %.epil.preheader558
  %indvars.iv.i.i363.epil = phi i64 [ %indvars.iv.i.i363.epil.init, %.epil.preheader558 ], [ %indvars.iv.next.i.i365.epil, %bb.ex ] ; 3 uses
  %.010.i.i364.epil = phi ptr [ %.010.i.i364.epil.init, %.epil.preheader558 ], [ %i.abh, %bb.ex ]
  %epil.iter560 = phi i64 [ 0, %.epil.preheader558 ], [ %epil.iter560.next, %bb.ex ]
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i363.epil
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !64
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %indvars.iv.i.i363.epil
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !72
  %i.abg = mul i64 %i.abf, %i.abd
  %i.abh = getelementptr inbounds nuw i8, ptr %.010.i.i364.epil, i64 %i.abg ; 2 uses
  %indvars.iv.next.i.i365.epil = add nuw nsw i64 %indvars.iv.i.i363.epil, 1
  %epil.iter560.next = add i64 %epil.iter560, 1   ; 2 uses
  %epil.iter560.cmp.not = icmp eq i64 %epil.iter560.next, %xtraiter559
  br i1 %epil.iter560.cmp.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit367, label %bb.ex, !llvm.loop !181

_ZN2cv3Mat2atIfEERT_PKi.exit367:                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa, %bb.ex, %_ZN2cv3Mat2atIfEERT_PKi.exit359
  %.0.lcssa.i.i360 = phi ptr [ %i.zv, %_ZN2cv3Mat2atIfEERT_PKi.exit359 ], [ %i.aba, %_ZN2cv3Mat2atIfEERT_PKi.exit367.loopexit.unr-lcssa ], [ %i.abh, %bb.ex ]
  %i.abi = load float, ptr %.0.lcssa.i.i360, align 4, !tbaa !51
  %i.abj = getelementptr inbounds nuw i8, ptr %90, i64 4
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !225 ; 3 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %90, i64 24
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !219 ; 3 uses
  %i.abn = icmp sgt i32 %i.abk, 0
  br i1 %i.abn, label %.lr.ph.i.i369, label %_ZN2cv3Mat2atIfEERT_PKi.exit375

.lr.ph.i.i369:                                    ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit367
  %i.abo = getelementptr inbounds nuw i8, ptr %90, i64 128 ; 5 uses
  %wide.trip.count.i.i370 = zext nneg i32 %i.abk to i64 ; 2 uses
  %xtraiter567 = and i64 %wide.trip.count.i.i370, 3 ; 3 uses
  %i.abp = icmp ult i32 %i.abk, 4
  br i1 %i.abp, label %.epil.preheader566, label %.lr.ph.i.i369.new

.lr.ph.i.i369.new:                                ; preds = %.lr.ph.i.i369
  %unroll_iter572 = and i64 %wide.trip.count.i.i370, 2147483644
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ey, %.lr.ph.i.i369.new
  %indvars.iv.i.i371 = phi i64 [ 0, %.lr.ph.i.i369.new ], [ %indvars.iv.next.i.i373.3, %bb.ey ] ; 6 uses
  %.010.i.i372 = phi ptr [ %i.abm, %.lr.ph.i.i369.new ], [ %i.acr, %bb.ey ]
  %niter573 = phi i64 [ 0, %.lr.ph.i.i369.new ], [ %niter573.next.3, %bb.ey ]
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i371
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !64
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.i.i371
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !72
  %i.abv = mul i64 %i.abu, %i.abs
  %i.abw = getelementptr inbounds nuw i8, ptr %.010.i.i372, i64 %i.abv
  %indvars.iv.next.i.i373 = or disjoint i64 %indvars.iv.i.i371, 1 ; 2 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i373
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !64
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i373
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !72
  %i.acc = mul i64 %i.acb, %i.abz
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.acc
  %indvars.iv.next.i.i373.1 = or disjoint i64 %indvars.iv.i.i371, 2 ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i373.1
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !64
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i373.1
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !72
  %i.acj = mul i64 %i.aci, %i.acg
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acj
  %indvars.iv.next.i.i373.2 = or disjoint i64 %indvars.iv.i.i371, 3 ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i373.2
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !64
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i373.2
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !72
  %i.acq = mul i64 %i.acp, %i.acn
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acq ; 3 uses
  %indvars.iv.next.i.i373.3 = add nuw nsw i64 %indvars.iv.i.i371, 4 ; 2 uses
  %niter573.next.3 = add i64 %niter573, 4         ; 2 uses
  %niter573.ncmp.3 = icmp eq i64 %niter573.next.3, %unroll_iter572
  br i1 %niter573.ncmp.3, label %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa, label %bb.ey, !llvm.loop !175

_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa: ; preds = %bb.ey
  %lcmp.mod569.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod569.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit375, label %.epil.preheader566

.epil.preheader566:                               ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa, %.lr.ph.i.i369
  %indvars.iv.i.i371.epil.init = phi i64 [ 0, %.lr.ph.i.i369 ], [ %indvars.iv.next.i.i373.3, %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa ]
  %.010.i.i372.epil.init = phi ptr [ %i.abm, %.lr.ph.i.i369 ], [ %i.acr, %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa ]
  %lcmp.mod571 = icmp ne i64 %xtraiter567, 0
  call void @llvm.assume(i1 %lcmp.mod571)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %.epil.preheader566
  %indvars.iv.i.i371.epil = phi i64 [ %indvars.iv.i.i371.epil.init, %.epil.preheader566 ], [ %indvars.iv.next.i.i373.epil, %bb.ez ] ; 3 uses
  %.010.i.i372.epil = phi ptr [ %.010.i.i372.epil.init, %.epil.preheader566 ], [ %i.acy, %bb.ez ]
  %epil.iter568 = phi i64 [ 0, %.epil.preheader566 ], [ %epil.iter568.next, %bb.ez ]
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i371.epil
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !64
  %i.acu = sext i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.i.i371.epil
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !72
  %i.acx = mul i64 %i.acw, %i.acu
  %i.acy = getelementptr inbounds nuw i8, ptr %.010.i.i372.epil, i64 %i.acx ; 2 uses
  %indvars.iv.next.i.i373.epil = add nuw nsw i64 %indvars.iv.i.i371.epil, 1
  %epil.iter568.next = add i64 %epil.iter568, 1   ; 2 uses
  %epil.iter568.cmp.not = icmp eq i64 %epil.iter568.next, %xtraiter567
  br i1 %epil.iter568.cmp.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit375, label %bb.ez, !llvm.loop !182

_ZN2cv3Mat2atIfEERT_PKi.exit375:                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa, %bb.ez, %_ZN2cv3Mat2atIfEERT_PKi.exit367
  %.0.lcssa.i.i368 = phi ptr [ %i.abm, %_ZN2cv3Mat2atIfEERT_PKi.exit367 ], [ %i.acr, %_ZN2cv3Mat2atIfEERT_PKi.exit375.loopexit.unr-lcssa ], [ %i.acy, %bb.ez ]
  %i.acz = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.ada = insertelement <2 x float> %i.acz, float %i.xt, i64 1 ; 2 uses
  %i.adb = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.adc = insertelement <2 x float> %i.adb, float %i.zk, i64 1 ; 2 uses
  %i.add = fadd <2 x float> %i.ada, %i.adc
  %i.ade = sdiv i32 %i.zl, 2
  %i.adf = sitofp i32 %i.ade to float
  %i.adg = fsub <2 x float> %i.adc, %i.ada
  %i.adh = load float, ptr %.0.lcssa.i.i368, align 4, !tbaa !51
  %i.adi = fmul float %i.abi, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.adk = load float, ptr %i.adj, align 8, !tbaa !227
  %i.adl = fmul float %i.adi, %i.adk              ; 2 uses
  %i.adm = load ptr, ptr %i.ma, align 8, !tbaa !66 ; 2 uses
  %i.adn = fsub float 1.000000e+00, %i.adl
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.adp = fmul <2 x float> %i.add, splat (float 5.000000e-01)
  %i.adq = insertelement <2 x float> poison, float %i.adf, i64 0
  %i.adr = shufflevector <2 x float> %i.adq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ads = fsub <2 x float> %i.adp, %i.adr
  %i.adt = fdiv <2 x float> %i.ads, %i.zq
  %i.adu = load <2 x float>, ptr %i.adm, align 4, !tbaa !51
  %i.adv = fadd <2 x float> %i.adt, %i.adu        ; 2 uses
  %i.adw = load <2 x i32>, ptr %i.ado, align 8, !tbaa !64
  %i.adx = sitofp <2 x i32> %i.adw to <2 x float> ; 4 uses
  %i.ady = fcmp olt <2 x float> %i.adv, %i.adx
  %i.adz = select <2 x i1> %i.ady, <2 x float> %i.adv, <2 x float> %i.adx ; 2 uses
  %i.aea = fcmp ogt <2 x float> %i.adz, zeroinitializer
  %i.aeb = select <2 x i1> %i.aea, <2 x float> %i.adz, <2 x float> zeroinitializer ; 2 uses
  store <2 x float> %i.aeb, ptr %i.adm, align 4, !tbaa !51
  %i.aec = fdiv <2 x float> %i.adg, %i.zq
  %i.aed = insertelement <2 x float> poison, float %i.adn, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.zr, %i.aee
  %i.aeg = insertelement <2 x float> poison, float %i.adl, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aec, <2 x float> %i.aeh, <2 x float> %i.aef) ; 2 uses
  %i.aej = fcmp olt <2 x float> %i.aei, %i.adx
  %i.aek = select <2 x i1> %i.aej, <2 x float> %i.aei, <2 x float> %i.adx ; 2 uses
  %i.ael = fcmp ogt <2 x float> %i.aek, splat (float 1.000000e+01)
  %i.aem = select <2 x i1> %i.ael, <2 x float> %i.aek, <2 x float> splat (float 1.000000e+01) ; 4 uses
  %i.aen = extractelement <2 x float> %i.aem, i64 0
  store float %i.aen, ptr %i.zm, align 4, !tbaa !51
  %i.aeo = extractelement <2 x float> %i.aem, i64 1
  store float %i.aeo, ptr %i.zn, align 4, !tbaa !51
  %i.aep = fmul <2 x float> %i.aem, splat (float 5.000000e-01)
  %i.aeq = fsub <2 x float> %i.aeb, %i.aep
  %138 = shufflevector <2 x float> %i.aem, <2 x float> %i.aeq, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aer = fptosi <4 x float> %138 to <4 x i32>
  store <4 x i32> %i.aer, ptr %2, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %131) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %122) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %117) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %115) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %108) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %104) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %100) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %96) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %89) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #21
  %i.aes = load ptr, ptr %81, align 8, !tbaa !81  ; 3 uses
  %i.aet = load ptr, ptr %i.dj, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aes, %i.aet
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit375, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aeu, %.lr.ph.i.i.i ], [ %i.aes, %_ZN2cv3Mat2atIfEERT_PKi.exit375 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #21
  %i.aeu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aeu, %i.aet
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %81, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN2cv3Mat2atIfEERT_PKi.exit375
  %i.aev = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.aes, %_ZN2cv3Mat2atIfEERT_PKi.exit375 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aev, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.aew = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !83
  %i.aey = ptrtoint ptr %i.aex to i64
  %i.aez = ptrtoint ptr %i.aev to i64
  %i.afa = sub i64 %i.aey, %i.aez
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef %i.afa) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21
  %i.afb = load ptr, ptr %79, align 8, !tbaa !75  ; 3 uses
  %i.afc = load ptr, ptr %i.cv, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i383 = icmp eq ptr %i.afb, %i.afc
  br i1 %.not4.i.i.i383, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i384

.lr.ph.i.i.i384:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i385 = phi ptr [ %i.afi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.afb, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %i.afd = load ptr, ptr %.05.i.i.i385, align 8, !tbaa !24 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.05.i.i.i385, i64 16 ; 2 uses
  %i.aff = icmp eq ptr %i.afd, %i.afe
  br i1 %i.aff, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i384
  %i.afg = load i64, ptr %i.afe, align 8, !tbaa !20
  %i.afh = add i64 %i.afg, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afh) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.afi = getelementptr inbounds nuw i8, ptr %.05.i.i.i385, i64 32 ; 2 uses
  %.not.i.i.i386 = icmp eq ptr %i.afi, %i.afc
  br i1 %.not.i.i.i386, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i384, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i387 = load ptr, ptr %79, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.afj = phi ptr [ %.pr.i387, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.afb, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i388 = icmp eq ptr %i.afj, null
  br i1 %.not.i.i1.i388, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.afk = load ptr, ptr %i.cm, align 8, !tbaa !76
  %i.afl = ptrtoint ptr %i.afk to i64
  %i.afm = ptrtoint ptr %i.afj to i64
  %i.afn = sub i64 %i.afl, %i.afm
  call void @_ZdlPvm(ptr noundef nonnull %i.afj, i64 noundef %i.afn) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  ret i1 true

bb.fc:                                            ; preds = %bb.ab
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.fd:                                            ; preds = %bb.ac
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.fe:                                            ; preds = %bb.ad
  %i.afq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.ae
  %i.afr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #21
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn153 = phi { ptr, i32 } [ %i.afr, %bb.ff ], [ %i.afq, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #21
  br label %bb.in

bb.fh:                                            ; preds = %bb.af
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.ag
  %i.aft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %88) #21
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn155 = phi { ptr, i32 } [ %i.aft, %bb.fi ], [ %i.afs, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  br label %bb.in

bb.fk:                                            ; preds = %bb.ci
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.fl:                                            ; preds = %bb.cj
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fm:                                            ; preds = %bb.ck
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #21
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.pn157 = phi { ptr, i32 } [ %i.afw, %bb.fm ], [ %i.afv, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #21
  br label %bb.il

bb.fo:                                            ; preds = %bb.cl
  %i.afx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fp:                                            ; preds = %bb.cm
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fq:                                            ; preds = %bb.cn
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fr:                                            ; preds = %.body281, %bb.fq
  %.pn159 = phi { ptr, i32 } [ %i.iv, %.body281 ], [ %i.afz, %bb.fq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #21
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fp
  %.pn159.pn = phi { ptr, i32 } [ %.pn159, %bb.fr ], [ %i.afy, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
end_hunk_0
