Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i:bb.a
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn365.pn = phi { ptr, i32 } [ %i.gy, %bb.ct ], [ %i.gx, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.et

bb.cv:                                            ; preds = %bb.ck, %.critedge399
  %i.gz = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.gz, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ha = call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.hb = icmp eq i64 %i.ha, 12884901891
  br i1 %i.hb, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.hc = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !189
  %i.hd = icmp eq i32 %i.hc, 65536
  br i1 %i.hd, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !12, !noalias !189
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %i.hf)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.hg = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 -1040056314, ptr %45, align 8, !tbaa !8
  store ptr %38, ptr %i.hg, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 12884901891, ptr %i.hh, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.critedge

bb.dc:                                            ; preds = %bb.da
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.et

.critedge:                                        ; preds = %bb.cv, %bb.cw, %bb.db, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  %i.hj = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, i8 0, i64 56, i1 false), !tbaa !16, !alias.scope !192
  store double 1.000000e+00, ptr %46, align 8, !tbaa !16, !alias.scope !192
  %i.hk = getelementptr inbounds nuw i8, ptr %46, i64 32
  store double 1.000000e+00, ptr %i.hk, align 8, !tbaa !16, !alias.scope !192
  %i.hl = getelementptr inbounds nuw i8, ptr %46, i64 64
  store double 1.000000e+00, ptr %i.hl, align 8, !tbaa !16, !alias.scope !192
  %i.hm = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.hm, label %bb.dl, label %bb.dd

bb.dd:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  %i.hn = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !195
  %i.ho = icmp eq i32 %i.hn, 65536
  br i1 %i.ho, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !12, !noalias !195
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %i.hq)
  br label %_ZNK2cv11_InputArray6getMatEi.exit457

bb.df:                                            ; preds = %bb.dd
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit457

_ZNK2cv11_InputArray6getMatEi.exit457:            ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !198
  store i64 9223372034707292160, ptr %10, align 8, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !198
  store i32 0, ptr %11, align 4, !tbaa !201, !noalias !198
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 3, ptr %i.hr, align 4, !tbaa !203, !noalias !198
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit457
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  %i.hs = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 -1040056314, ptr %49, align 8, !tbaa !8
  store ptr %46, ptr %i.hs, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 12884901891, ptr %i.ht, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.dq

bb.di:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit457
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dg
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn370.pn = phi { ptr, i32 } [ %i.hv, %bb.dj ], [ %i.hu, %bb.di ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.es

bb.dl:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  %i.hw = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !204
  %i.hx = icmp eq i32 %i.hw, 65536
  br i1 %i.hx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !12, !noalias !204
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 8 dereferenceable(208) %i.hz)
  br label %_ZNK2cv11_InputArray6getMatEi.exit459

bb.dn:                                            ; preds = %bb.dl
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit459

_ZNK2cv11_InputArray6getMatEi.exit459:            ; preds = %bb.dm, %bb.dn
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.8") align 8 %50, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %46, ptr noundef nonnull align 8 dereferenceable(72) %50, i64 72, i1 false), !tbaa.struct !207
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.dq

bb.dp:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit459
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.es

bb.dq:                                            ; preds = %bb.do, %bb.dh
  %i.ib = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ie = load double, ptr %i.id, align 16, !tbaa !16, !noalias !208 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.ig = load double, ptr %i.if, align 8, !tbaa !16, !noalias !208 ; 4 uses
  %i.ih = load double, ptr %i.gf, align 16, !tbaa !16, !noalias !208 ; 4 uses
  %i.ii = load <2 x double>, ptr %38, align 16, !tbaa !16, !noalias !208 ; 12 uses
  %i.ij = load <9 x double>, ptr %46, align 8, !tbaa !16, !noalias !208 ; 20 uses
  %i.ik = load double, ptr %i.hj, align 8, !tbaa !16, !noalias !208 ; 2 uses
  %i.il = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.ii, <2 x double> zeroinitializer)
  %i.in = load <2 x double>, ptr %i.ib, align 8, !tbaa !16, !noalias !208 ; 12 uses
  %i.io = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ip = insertelement <2 x double> %i.io, double %i.ie, i64 0 ; 4 uses
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.ip, <2 x double> zeroinitializer)
  %i.ir = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.in, <2 x double> %i.im)
  %i.it = load <2 x double>, ptr %i.ic, align 16, !tbaa !16, !noalias !208 ; 12 uses
  %i.iu = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.iv = insertelement <2 x double> %i.iu, double %i.ig, i64 0 ; 4 uses
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.iv, <2 x double> %i.iq)
  %i.ix = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.it, <2 x double> %i.is) ; 6 uses
  %i.iz = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ja = insertelement <2 x double> %i.iz, double %i.ih, i64 0 ; 4 uses
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.ja, <2 x double> %i.iw) ; 5 uses
  %i.jc = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.jd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.ii, <2 x double> zeroinitializer)
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.ip, <2 x double> zeroinitializer)
  %i.jf = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.in, <2 x double> %i.jd)
  %i.jh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.iv, <2 x double> %i.je)
  %i.ji = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.it, <2 x double> %i.jg) ; 7 uses
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.ja, <2 x double> %i.jh) ; 3 uses
  %i.jl = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 6, i32 6> ; 3 uses
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.ii, <2 x double> zeroinitializer)
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.ip, <2 x double> zeroinitializer)
  %i.jo = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 7, i32 7> ; 2 uses
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.in, <2 x double> %i.jm)
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.iv, <2 x double> %i.jn)
  %i.jr = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 8, i32 8> ; 3 uses
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.it, <2 x double> %i.jp) ; 6 uses
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.ja, <2 x double> %i.jq) ; 6 uses
  %i.ju = extractelement <2 x double> %i.jk, i64 0 ; 2 uses
  %i.jv = fneg double %i.ju                       ; 2 uses
  %i.jw = shufflevector <2 x double> %i.jt, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x double> %i.jw, %i.jy
  %i.ka = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.ka, <2 x double> %i.jz) ; 2 uses
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> %i.jj, <2 x i32> <i32 0, i32 3>
  %i.kd = fneg <2 x double> %i.kc                 ; 2 uses
  %i.ke = shufflevector <2 x double> %i.iy, <2 x double> %i.jt, <2 x i32> <i32 1, i32 3>
  %i.kf = fmul <2 x double> %i.ke, %i.kd
  %i.kg = shufflevector <2 x double> %i.iy, <2 x double> %i.jj, <2 x i32> <i32 0, i32 2>
  %i.kh = shufflevector <2 x double> %i.kb, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kh, <2 x double> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x double> %i.jb, i64 0
  %i.kk = extractelement <2 x double> %i.ki, i64 0
  %i.kl = extractelement <2 x double> %i.ki, i64 1
  %i.km = call noundef double @llvm.fmuladd.f64(double %i.kj, double %i.kl, double %i.kk) ; 2 uses
  %i.kn = fcmp une double %i.km, 0.000000e+00
  br i1 %i.kn, label %bb.dr, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

bb.dr:                                            ; preds = %bb.dq
  %i.ko = fdiv double 1.000000e+00, %i.km         ; 2 uses
  %i.kp = fneg <2 x double> %i.js
  %i.kq = fneg <2 x double> %i.jt                 ; 2 uses
  %i.kr = extractelement <2 x double> %i.iy, i64 1
  %i.ks = shufflevector <2 x double> %i.iy, <2 x double> %i.jk, <2 x i32> <i32 1, i32 2>
  %i.kt = shufflevector <2 x double> %i.jb, <2 x double> %i.jj, <2 x i32> <i32 0, i32 3>
  %i.ku = shufflevector <2 x double> %i.js, <2 x double> %i.jt, <2 x i32> <i32 1, i32 2>
  %i.kv = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %shift = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.jb, %shift
  %i.kx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ky = call double @llvm.fmuladd.f64(double %i.kr, double %i.ju, double %i.kx)
  %i.kz = fmul double %i.ky, %i.ko
  %i.la = shufflevector <2 x double> %i.js, <2 x double> %i.jj, <2 x i32> <i32 1, i32 2>
  %i.lb = fneg <2 x double> %i.la                 ; 2 uses
  %i.lc = shufflevector <2 x double> %i.kq, <2 x double> %i.lb, <2 x i32> <i32 0, i32 2>
  %i.ld = fmul <2 x double> %i.ks, %i.lc
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.ku, <2 x double> %i.ld)
  %i.lf = fmul <2 x double> %i.le, %i.kw
  %i.lg = fmul <2 x double> %i.jj, %i.kq
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.js, <2 x double> %i.lg)
  %i.li = fmul <2 x double> %i.jb, %i.kp
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.jt, <2 x double> %i.li)
  %i.lk = insertelement <2 x double> %i.lb, double %i.jv, i64 0
  %i.ll = fmul <2 x double> %i.iy, %i.lk
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jj, <2 x double> %i.ll)
  %i.ln = fmul <2 x double> %i.lh, %i.kw
  %i.lo = fmul <2 x double> %i.lj, %i.kw
  %i.lp = fmul <2 x double> %i.lm, %i.kw
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:             ; preds = %bb.dq, %bb.dr
  %.sroa.6512.0 = phi double [ %i.kz, %bb.dr ], [ 0.000000e+00, %bb.dq ]
  %i.lq = phi <2 x double> [ %i.lo, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.lr = phi <2 x double> [ %i.lp, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.ls = phi <2 x double> [ %i.ln, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.lt = phi <2 x double> [ %i.lf, %bb.dr ], [ zeroinitializer, %bb.dq ] ; 2 uses
  %i.lu = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 5, i32 4> ; 3 uses
  %i.lv = fneg <2 x double> %i.lu                 ; 2 uses
  %i.lw = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 7, i32 6>
  %i.lx = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ly = fmul <2 x double> %i.lw, %i.lx
  %i.lz = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 4, i32 3>
  %i.ma = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.jr, <2 x double> %i.ly) ; 2 uses
  %i.mb = insertelement <2 x double> %i.jl, double %i.ik, i64 0
  %i.mc = shufflevector <2 x double> %i.lu, <2 x double> %i.ma, <2 x i32> <i32 3, i32 1>
  %i.md = fneg <2 x double> %i.mc
  %i.me = fmul <2 x double> %i.mb, %i.md
  %i.mf = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.mg = shufflevector <2 x double> %i.ma, <2 x double> poison, <9 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mh = shufflevector <9 x double> %i.mg, <9 x double> %i.ij, <2 x i32> <i32 0, i32 16>
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mh, <2 x double> %i.me) ; 2 uses
  %i.mj = extractelement <9 x double> %i.ij, i64 2
  %i.mk = extractelement <2 x double> %i.mi, i64 0
  %i.ml = extractelement <2 x double> %i.mi, i64 1
  %i.mm = call noundef double @llvm.fmuladd.f64(double %i.mj, double %i.ml, double %i.mk) ; 2 uses
  %i.mn = fcmp une double %i.mm, 0.000000e+00
  br i1 %i.mn, label %bb.ds, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460

bb.ds:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit
  %i.mo = fdiv double 1.000000e+00, %i.mm
  %i.mp = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 8, i32 7> ; 2 uses
  %i.mq = fneg <2 x double> %i.mp
  %i.mr = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 6, i32 8> ; 2 uses
  %i.ms = fneg <2 x double> %i.mr
  %i.mt = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 3, i32 5> ; 2 uses
  %i.mu = fmul <2 x double> %i.mt, %i.mq
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.mr, <2 x double> %i.mu)
  %i.mw = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.mx = insertelement <2 x double> %i.mw, double %i.ik, i64 1 ; 2 uses
  %i.my = fmul <2 x double> %i.mx, %i.ms
  %i.mz = shufflevector <9 x double> %i.ij, <9 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mp, <2 x double> %i.my)
  %i.nb = fmul <2 x double> %i.mz, %i.lv
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.mt, <2 x double> %i.nb)
  %i.nd = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nf = fmul <2 x double> %i.mv, %i.ne
  %i.ng = fmul <2 x double> %i.na, %i.ne
  %i.nh = fmul <2 x double> %i.nc, %i.ne
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460:          ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit, %bb.ds
  %i.ni = phi <2 x double> [ %i.ng, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.nj = phi <2 x double> [ %i.nh, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.nk = phi <2 x double> [ %i.nf, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %56 = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.nl = insertelement <2 x double> %56, double %i.ig, i64 1
  %57 = fneg <2 x double> %i.nl                   ; 2 uses
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nm = fmul <2 x double> %i.it, %58
  %i.nn = insertelement <2 x double> poison, double %i.ih, i64 0 ; 2 uses
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.no, <2 x double> %i.nm) ; 2 uses
  %59 = shufflevector <2 x double> %i.ii, <2 x double> %i.it, <2 x i32> <i32 1, i32 2>
  %60 = shufflevector <2 x double> %i.np, <2 x double> %56, <2 x i32> <i32 0, i32 2>
  %61 = fneg <2 x double> %60
  %i.nq = fmul <2 x double> %59, %61
  %i.nr = shufflevector <2 x double> %i.ii, <2 x double> %i.in, <2 x i32> <i32 0, i32 2>
  %i.ns = shufflevector <2 x double> %i.np, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.ns, <2 x double> %i.nq) ; 2 uses
  %i.nu = extractelement <2 x double> %i.nt, i64 0
  %i.nv = extractelement <2 x double> %i.nt, i64 1
  %i.nw = call noundef double @llvm.fmuladd.f64(double %i.ie, double %i.nv, double %i.nu) ; 2 uses
  %i.nx = fcmp une double %i.nw, 0.000000e+00
  br i1 %i.nx, label %bb.dt, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461

bb.dt:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460
  %i.ny = fdiv double 1.000000e+00, %i.nw         ; 2 uses
  %i.nz = extractelement <2 x double> %i.in, i64 1
  %i.oa = extractelement <2 x double> %i.ii, i64 1
  %i.ob = extractelement <2 x double> %i.in, i64 0
  %i.oc = extractelement <2 x double> %i.ii, i64 0
  %i.od = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.oe = insertelement <2 x double> %i.od, double %i.ih, i64 1
  %i.of = fneg <2 x double> %i.oe
  %62 = fneg <2 x double> %i.ja
  %i.og = fmul <2 x double> %i.iv, %i.of
  %i.oh = shufflevector <2 x double> %i.in, <2 x double> %i.it, <2 x i32> <i32 1, i32 2>
  %i.oi = insertelement <2 x double> %i.nn, double %i.ig, i64 1
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oi, <2 x double> %i.og)
  %i.ok = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ol = insertelement <2 x double> %i.ok, double %i.ie, i64 1
  %i.om = fmul <2 x double> %i.ol, %62
  %i.on = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.ih, i64 1
  %i.op = shufflevector <2 x double> %i.it, <2 x double> %i.ii, <2 x i32> <i32 1, i32 2>
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.op, <2 x double> %i.om)
  %i.or = fmul <2 x double> %i.ip, %57
  %i.os = shufflevector <2 x double> %i.ii, <2 x double> %i.in, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ot = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.ie, i64 1
  %i.ov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ou, <2 x double> %i.or)
  %i.ow = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.ox = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.oy = fmul <2 x double> %i.oj, %i.ox
  %i.oz = fmul <2 x double> %i.oq, %i.ox
  %i.pa = fmul <2 x double> %i.ov, %i.ox
  %i.pb = shufflevector <2 x double> %i.ii, <2 x double> %i.in, <2 x i32> <i32 0, i32 3>
  %63 = shufflevector <2 x double> %i.od, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %64 = fneg <2 x double> %63
  %i.pc = fmul <2 x double> %i.pb, %64
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.it, <2 x double> %i.pc)
  %i.pe = fmul <2 x double> %i.pd, %i.ox
  %i.pf = fneg double %i.ob
  %i.pg = fmul double %i.oa, %i.pf
  %i.ph = call double @llvm.fmuladd.f64(double %i.oc, double %i.nz, double %i.pg)
  %i.pi = fmul double %i.ph, %i.ny
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461:          ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460, %bb.dt
  %.sroa.12.0 = phi double [ %i.pi, %bb.dt ], [ 0.000000e+00, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.pj = phi <2 x double> [ %i.pa, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.pk = phi <2 x double> [ %i.oy, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.pl = phi <2 x double> [ %i.oz, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.pm = phi <2 x double> [ %i.pe, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ] ; 2 uses
  br i1 %i.co, label %.preheader, label %bb.ed

.preheader:                                       ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461
  %i.pn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !211
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %.lr.ph683, label %.loopexit

.lr.ph683:                                        ; preds = %.preheader
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %52, i64 128
  %i.pt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %53, i64 128
  %i.pw = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.px = fmul <2 x double> %i.pw, splat (double 2.000000e+00) ; 2 uses
  %i.py = extractelement <2 x double> %i.lt, i64 0
  %i.pz = extractelement <2 x double> %i.lt, i64 1
  %i.qa = extractelement <4 x double> %i.fl, i64 0
  %i.qb = extractelement <4 x double> %i.fl, i64 2
  %i.qc = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qd = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.qe = extractelement <2 x double> %i.px, i64 0
  %i.qf = extractelement <2 x double> %i.px, i64 1
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph683, %._crit_edge681
  %indvars.iv694 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next695, %._crit_edge681 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  %i.qg = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !212
  %i.qh = icmp eq i32 %i.qg, 65536
  br i1 %i.qh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qi = load ptr, ptr %i.pq, align 8, !tbaa !12, !noalias !212
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 8 dereferenceable(208) %i.qi)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

bb.dw:                                            ; preds = %bb.du
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

_ZNK2cv11_InputArray6getMatEi.exit462:            ; preds = %bb.dv, %bb.dw
  %i.qj = load ptr, ptr %i.pr, align 8, !tbaa !30
  %i.qk = load i64, ptr %i.ps, align 8, !tbaa !109
  %i.ql = mul i64 %i.qk, %indvars.iv694
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.ql ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.qn = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !215
  %i.qo = icmp eq i32 %i.qn, 65536
  br i1 %i.qo, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  %i.qp = load ptr, ptr %i.pt, align 8, !tbaa !12, !noalias !215
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(208) %i.qp)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

bb.dy:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

_ZNK2cv11_InputArray6getMatEi.exit463:            ; preds = %bb.dx, %bb.dy
  %i.qq = load ptr, ptr %i.pu, align 8, !tbaa !30
  %i.qr = load i64, ptr %i.pv, align 8, !tbaa !109
  %i.qs = mul i64 %i.qr, %indvars.iv694
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qs ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  %i.qu = load i32, ptr %5, align 4, !tbaa !218   ; 2 uses
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %_ZNK2cv11_InputArray6getMatEi.exit463
  %i.qw = trunc nuw nsw i64 %indvars.iv694 to i32
  %i.qx = uitofp nneg i32 %i.qw to double         ; 2 uses
  %i.qy = insertelement <2 x double> poison, double %i.qx, i64 0
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ra = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.lq, <2 x double> %i.lr)
  %i.rb = call double @llvm.fmuladd.f64(double %i.qx, double %i.py, double %.sroa.6512.0)
  %wide.trip.count692 = zext nneg i32 %i.qu to i64
  br label %.lr.ph680

._crit_edge681:                                   ; preds = %bb.ec, %_ZNK2cv11_InputArray6getMatEi.exit463
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %i.rc = load i32, ptr %i.pn, align 4, !tbaa !211
  %i.rd = sext i32 %i.rc to i64
  %i.re = icmp slt i64 %indvars.iv.next695, %i.rd
  br i1 %i.re, label %bb.du, label %.loopexit, !llvm.loop !219

.lr.ph680:                                        ; preds = %.lr.ph680.preheader, %bb.ec
  %indvars.iv689 = phi i64 [ 0, %.lr.ph680.preheader ], [ %indvars.iv.next690, %bb.ec ] ; 5 uses
  %.0335676 = phi double [ %i.rb, %.lr.ph680.preheader ], [ %i.tt, %bb.ec ] ; 4 uses
  %i.rf = phi <2 x double> [ %i.ra, %.lr.ph680.preheader ], [ %i.tu, %bb.ec ] ; 5 uses
  %i.rg = extractelement <2 x double> %i.rf, i64 0
  %foldExtExtBinop725 = fmul <2 x double> %i.rf, %i.rf
  %i.rh = extractelement <2 x double> %foldExtExtBinop725, i64 0
  %i.ri = call double @llvm.fmuladd.f64(double %.0335676, double %.0335676, double %i.rh)
  %i.rj = extractelement <2 x double> %i.rf, i64 1 ; 3 uses
  %i.rk = call double @llvm.fmuladd.f64(double %i.rj, double %i.rj, double %i.ri)
  %sqrt = call double @llvm.sqrt.f64(double %i.rk) ; 3 uses
  %i.rl = fdiv double %i.rg, %sqrt
  %i.rm = fdiv double %i.rj, %sqrt
  %i.rn = fadd double %i.gc, %i.rm                ; 2 uses
  %i.ro = fdiv double %.0335676, %sqrt
  %i.rp = fdiv double %i.rl, %i.rn                ; 7 uses
  %i.rq = fdiv double %i.ro, %i.rn                ; 7 uses
  %i.rr = fmul double %i.rp, %i.rp
  %i.rs = fmul double %i.qe, %i.rq
  %i.rt = fmul double %i.rp, %i.rs
  %i.ru = fmul double %i.rq, 2.000000e+00
  %i.rv = insertelement <2 x double> %i.qc, double %i.rq, i64 1
  %i.rw = fmul double %i.rp, 2.000000e+00
  %i.rx = call double @llvm.fmuladd.f64(double %i.rq, double %i.rq, double %i.rr) ; 5 uses
  %i.ry = call double @llvm.fmuladd.f64(double %i.qa, double %i.rx, double 1.000000e+00)
  %i.rz = fmul double %i.rx, %i.rx
  %i.sa = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sb = insertelement <2 x double> %i.sa, double %i.ru, i64 1
  %i.sc = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sd = insertelement <2 x double> %i.sc, double %i.rx, i64 1
  %i.se = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.sb, <2 x double> %i.sd) ; 2 uses
  %i.sf = extractelement <2 x double> %i.se, i64 0 ; 2 uses
  %i.sg = call double @llvm.fmuladd.f64(double %i.sf, double %i.rq, double %i.rt)
  %i.sh = insertelement <2 x double> %i.qd, double %i.rw, i64 1
  %i.si = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = insertelement <2 x double> %i.si, double %i.rp, i64 1
  %i.sk = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.sl = insertelement <2 x double> %i.sk, double %i.rx, i64 1
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.sj, <2 x double> %i.sl) ; 2 uses
  %i.sn = extractelement <2 x double> %i.sm, i64 1
  %i.so = fmul double %i.qb, %i.sn
  %i.sp = call double @llvm.fmuladd.f64(double %i.sf, double %i.rp, double %i.so)
  %i.sq = fmul double %i.qf, %i.rq
  %i.sr = call double @llvm.fmuladd.f64(double %i.sq, double %i.rp, double %i.sp) ; 2 uses
  %i.ss = fmul double %.0318, %i.sr
  %i.st = extractelement <2 x double> %i.sm, i64 0
  %i.su = call double @llvm.fmuladd.f64(double %.sroa.0562.0, double %i.st, double %i.ss)
  %i.sv = fadd double %.sroa.0558.0, %i.su        ; 2 uses
  %i.sw = call double @llvm.fmuladd.f64(double %.sroa.8564.0, double %i.sr, double %.sroa.8560.0) ; 2 uses
  br i1 %i.a, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph680
  %i.sx = fmul double %i.sv, 3.200000e+01
  %i.sy = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.sz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.sy) ; 2 uses
  %i.ta = fmul double %i.sw, 3.200000e+01
  %i.tb = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.tb) ; 2 uses
  %i.td = lshr i32 %i.sz, 5
  %i.te = trunc i32 %i.td to i16
  %.idx721 = shl nuw nsw i64 %indvars.iv689, 2
  %i.tf = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.idx721 ; 2 uses
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !220
  %i.tg = lshr i32 %i.tc, 5
  %i.th = trunc i32 %i.tg to i16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 2
  store i16 %i.th, ptr %i.ti, align 2, !tbaa !220
  %i.tj = shl i32 %i.tc, 5
  %i.tk = and i32 %i.tj, 992
  %i.tl = and i32 %i.sz, 31
  %i.tm = or disjoint i32 %i.tk, %i.tl
  %i.tn = trunc nuw nsw i32 %i.tm to i16
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %indvars.iv689
  store i16 %i.tn, ptr %i.to, align 2, !tbaa !220
  br label %bb.ec

bb.ea:                                            ; preds = %.lr.ph680
  br i1 %i.b, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.tp = fptrunc double %i.sv to float
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv689
  store float %i.tp, ptr %i.tq, align 4, !tbaa !40
  %i.tr = fptrunc double %i.sw to float
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv689
  store float %i.tr, ptr %i.ts, align 4, !tbaa !40
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb, %bb.dz
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %i.tt = fadd double %i.pz, %.0335676
  %i.tu = fadd <2 x double> %i.ls, %i.rf
  %exitcond693.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count692
  br i1 %exitcond693.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !222

bb.ed:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461
  %i.tv = and i32 %9, 6
  %or.cond11 = icmp eq i32 %i.tv, 2
  %or.cond13 = or i1 %i.cp, %or.cond11
  br i1 %or.cond13, label %.preheader669, label %.loopexit

.preheader669:                                    ; preds = %bb.ed
  %i.tw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !211
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph675, label %.loopexit

.lr.ph675:                                        ; preds = %.preheader669
  %i.tz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.ub = getelementptr inbounds nuw i8, ptr %54, i64 128
  %i.uc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.ue = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.uf = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ug = fmul <2 x double> %i.uf, splat (double 2.000000e+00) ; 2 uses
  %i.uh = extractelement <4 x double> %i.fl, i64 0
  %i.ui = extractelement <4 x double> %i.fl, i64 2
  %i.uj = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.uk = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ul = insertelement <2 x double> %i.ug, double 2.000000e+00, i64 1
  %shift727 = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph675, %._crit_edge
  %indvars.iv686 = phi i64 [ 0, %.lr.ph675 ], [ %indvars.iv.next687, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.um = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !223
  %i.un = icmp eq i32 %i.um, 65536
  br i1 %i.un, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.uo = load ptr, ptr %i.tz, align 8, !tbaa !12, !noalias !223
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(208) %i.uo)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

bb.eg:                                            ; preds = %bb.ee
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %54, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

_ZNK2cv11_InputArray6getMatEi.exit464:            ; preds = %bb.ef, %bb.eg
  %i.up = load ptr, ptr %i.ua, align 8, !tbaa !30
  %i.uq = load i64, ptr %i.ub, align 8, !tbaa !109
  %i.ur = mul i64 %i.uq, %indvars.iv686
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ur ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.ut = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !226
  %i.uu = icmp eq i32 %i.ut, 65536
  br i1 %i.uu, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  %i.uv = load ptr, ptr %i.uc, align 8, !tbaa !12, !noalias !226
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(208) %i.uv)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

bb.ei:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

_ZNK2cv11_InputArray6getMatEi.exit465:            ; preds = %bb.eh, %bb.ei
  %i.uw = load ptr, ptr %i.ud, align 8, !tbaa !30
  %i.ux = load i64, ptr %i.ue, align 8, !tbaa !109
  %i.uy = mul i64 %i.ux, %indvars.iv686
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uy ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  %i.va = load i32, ptr %5, align 4, !tbaa !218   ; 2 uses
  %i.vb = icmp sgt i32 %i.va, 0
  br i1 %i.vb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2cv11_InputArray6getMatEi.exit465
  %i.vc = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.vd = uitofp nneg i32 %i.vc to double
  %i.ve = insertelement <2 x double> poison, double %i.vd, i64 0
  %i.vf = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.ni, <2 x double> %i.nj)
  %wide.trip.count = zext nneg i32 %i.va to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.er, %_ZNK2cv11_InputArray6getMatEi.exit465
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.vh = load i32, ptr %i.tw, align 4, !tbaa !211
  %i.vi = sext i32 %i.vh to i64
  %i.vj = icmp slt i64 %indvars.iv.next687, %i.vi
  br i1 %i.vj, label %bb.ee, label %.loopexit, !llvm.loop !229

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.er
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.er ] ; 5 uses
  %i.vk = phi <2 x double> [ %i.vg, %.lr.ph.preheader ], [ %i.zs, %bb.er ] ; 10 uses
  switch i32 %9, label %bb.el [
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.ej:                                            ; preds = %.lr.ph
  %i.vl = extractelement <2 x double> %i.vk, i64 1 ; 2 uses
  %i.vm = call double @cos(double noundef %i.vl) #22
  %i.vn = call double @sin(double noundef %i.vl) #22 ; 2 uses
  %65 = shufflevector <2 x double> %i.vk, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %66 = insertelement <3 x double> %65, double %i.vm, i64 1
  %67 = insertelement <3 x double> %66, double %i.vn, i64 2
  br label %bb.en

bb.ek:                                            ; preds = %.lr.ph
  %i.vo = extractelement <2 x double> %i.vk, i64 1 ; 3 uses
  %i.vp = call double @cos(double noundef %i.vo) #22
  %i.vq = fneg double %i.vp
  %i.vr = call double @sin(double noundef %i.vo) #22
  %i.vs = fneg double %i.vr
  %i.vt = extractelement <2 x double> %i.vk, i64 0 ; 2 uses
  %i.vu = call double @cos(double noundef %i.vt) #22
  %i.vv = fmul double %i.vu, %i.vs                ; 2 uses
  %i.vw = call double @sin(double noundef %i.vo) #22
  %i.vx = call double @sin(double noundef %i.vt) #22
  %i.vy = fmul double %i.vw, %i.vx
  %68 = insertelement <3 x double> poison, double %i.vy, i64 0
  %69 = insertelement <3 x double> %68, double %i.vq, i64 1
  %70 = insertelement <3 x double> %69, double %i.vv, i64 2
  br label %bb.en

bb.el:                                            ; preds = %.lr.ph
  br i1 %i.cp, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.vz = shufflevector <2 x double> %i.vk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.wa = fmul <2 x double> %i.vz, <double 1.000000e+00, double -2.000000e+00>
  %i.wb = shufflevector <2 x double> %i.vk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wc = fmul <2 x double> %i.wb, <double 1.000000e+00, double 2.000000e+00>
  %i.wd = fneg <2 x double> %i.vk
  %i.we = shufflevector <2 x double> %i.vk, <2 x double> %i.wd, <2 x i32> <i32 0, i32 2>
  %i.wf = fmul <2 x double> %i.wc, %i.we
  %i.wg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.vz, <2 x double> %i.wf) ; 2 uses
  %i.wh = extractelement <2 x double> %i.wg, i64 0 ; 2 uses
  %i.wi = fadd double %i.wh, 4.000000e+00         ; 2 uses
  %i.wj = fadd double %i.wh, -4.000000e+00
  %i.wk = extractelement <2 x double> %i.wg, i64 1 ; 3 uses
  %i.wl = fneg double %i.wk
  %i.wm = fmul double %i.wi, 4.000000e+00
  %i.wn = fneg double %i.wj
  %i.wo = fmul double %i.wm, %i.wn
  %i.wp = call double @llvm.fmuladd.f64(double %i.wk, double %i.wk, double %i.wo)
  %i.wq = call double @sqrt(double noundef %i.wp) #22
  %i.wr = fsub double %i.wl, %i.wq
  %i.ws = fmul double %i.wi, 2.000000e+00
  %i.wt = fdiv double %i.wr, %i.ws                ; 3 uses
  %i.wu = fsub double 1.000000e+00, %i.wt
  %71 = insertelement <2 x double> poison, double %i.wu, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fmul <2 x double> %i.vk, %72
  %74 = fmul <2 x double> %73, splat (double 5.000000e-01)
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %76 = insertelement <3 x double> %75, double %i.wt, i64 2
  br label %bb.en

bb.en:                                            ; preds = %bb.ek, %bb.em, %bb.el, %bb.ej
  %.0324 = phi double [ %i.vn, %bb.ej ], [ %i.vv, %bb.ek ], [ %i.wt, %bb.em ], [ 0.000000e+00, %bb.el ]
  %77 = phi <3 x double> [ %67, %bb.ej ], [ %70, %bb.ek ], [ %76, %bb.em ], [ zeroinitializer, %bb.el ] ; 5 uses
  %78 = shufflevector <3 x double> %77, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.wv = fmul <2 x double> %i.pl, %78
  %79 = extractelement <3 x double> %77, i64 0
  %80 = shufflevector <3 x double> %77, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ww = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %80, <2 x double> %i.wv)
  %i.wx = shufflevector <3 x double> %77, <3 x double> poison, <2 x i32> zeroinitializer
  %i.wy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.wx, <2 x double> %i.ww) ; 5 uses
  %i.wz = shufflevector <2 x double> %i.pm, <2 x double> %i.wy, <2 x i32> <i32 0, i32 3>
  %i.xa = insertelement <2 x double> %i.wy, double %.0324, i64 0
  %i.xb = fmul <2 x double> %i.wz, %i.xa
  %81 = shufflevector <2 x double> %i.pm, <2 x double> %i.wy, <2 x i32> <i32 1, i32 2>
  %82 = shufflevector <2 x double> %i.wy, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %83 = shufflevector <3 x double> %77, <3 x double> %82, <2 x i32> <i32 1, i32 3>
  %i.xc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %81, <2 x double> %83, <2 x double> %i.xb) ; 2 uses
  %i.xd = extractelement <2 x double> %i.xc, i64 0
  %i.xe = call double @llvm.fmuladd.f64(double %.sroa.12.0, double %79, double %i.xd) ; 3 uses
  %i.xf = extractelement <2 x double> %i.xc, i64 1
  %i.xg = call double @llvm.fmuladd.f64(double %i.xe, double %i.xe, double %i.xf)
  %sqrt668 = call double @llvm.sqrt.f64(double %i.xg) ; 2 uses
  %i.xh = insertelement <2 x double> poison, double %sqrt668, i64 0
  %i.xi = shufflevector <2 x double> %i.xh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xj = fdiv <2 x double> %i.wy, %i.xi
  %i.xk = fdiv double %i.xe, %sqrt668
  %i.xl = fadd double %i.gc, %i.xk
  %i.xm = insertelement <2 x double> poison, double %i.xl, i64 0
  %i.xn = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xo = fdiv <2 x double> %i.xj, %i.xn          ; 6 uses
  %i.xp = extractelement <2 x double> %i.xo, i64 1 ; 5 uses
  %i.xq = extractelement <2 x double> %i.xo, i64 0 ; 4 uses
  %i.xr = fmul double %i.xp, %i.xp
  %i.xs = fmul <2 x double> %i.ul, %i.xo          ; 2 uses
  %i.xt = extractelement <2 x double> %i.xs, i64 0
  %i.xu = fmul double %i.xp, %i.xt
  %i.xv = fmul double %i.xq, 2.000000e+00
  %i.xw = shufflevector <2 x double> %i.uj, <2 x double> %i.xo, <2 x i32> <i32 0, i32 2>
  %i.xx = call double @llvm.fmuladd.f64(double %i.xq, double %i.xq, double %i.xr) ; 5 uses
  %i.xy = call double @llvm.fmuladd.f64(double %i.uh, double %i.xx, double 1.000000e+00)
  %i.xz = fmul double %i.xx, %i.xx
  %i.ya = insertelement <2 x double> poison, double %i.xz, i64 0
  %i.yb = insertelement <2 x double> %i.ya, double %i.xv, i64 1
  %i.yc = insertelement <2 x double> poison, double %i.xy, i64 0
  %i.yd = insertelement <2 x double> %i.yc, double %i.xx, i64 1
  %i.ye = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> %i.yb, <2 x double> %i.yd) ; 2 uses
  %i.yf = extractelement <2 x double> %i.ye, i64 0 ; 2 uses
  %i.yg = call double @llvm.fmuladd.f64(double %i.yf, double %i.xq, double %i.xu)
  %i.yh = shufflevector <2 x double> %i.uk, <2 x double> %i.xs, <2 x i32> <i32 0, i32 3>
  %i.yi = shufflevector <2 x double> %i.ye, <2 x double> %i.xo, <2 x i32> <i32 1, i32 3>
  %i.yj = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.xx, i64 1
  %i.yl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yh, <2 x double> %i.yi, <2 x double> %i.yk) ; 2 uses
  %i.ym = extractelement <2 x double> %i.yl, i64 1
  %i.yn = fmul double %i.ui, %i.ym
  %i.yo = call double @llvm.fmuladd.f64(double %i.yf, double %i.xp, double %i.yn)
  %foldExtExtBinop728 = fmul <2 x double> %shift727, %i.xo
  %i.yp = extractelement <2 x double> %foldExtExtBinop728, i64 0
  %i.yq = call double @llvm.fmuladd.f64(double %i.yp, double %i.xp, double %i.yo) ; 2 uses
  %i.yr = fmul double %.0318, %i.yq
  %i.ys = extractelement <2 x double> %i.yl, i64 0
  %i.yt = call double @llvm.fmuladd.f64(double %.sroa.0562.0, double %i.ys, double %i.yr)
  %i.yu = fadd double %.sroa.0558.0, %i.yt        ; 2 uses
  %i.yv = call double @llvm.fmuladd.f64(double %.sroa.8564.0, double %i.yq, double %.sroa.8560.0) ; 2 uses
  br i1 %i.a, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.yw = fmul double %i.yu, 3.200000e+01
  %i.yx = insertelement <2 x double> poison, double %i.yw, i64 0
  %i.yy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yx) ; 2 uses
  %i.yz = fmul double %i.yv, 3.200000e+01
  %i.za = insertelement <2 x double> poison, double %i.yz, i64 0
  %i.zb = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.za) ; 2 uses
  %i.zc = lshr i32 %i.yy, 5
  %i.zd = trunc i32 %i.zc to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.ze = getelementptr inbounds nuw i8, ptr %i.us, i64 %.idx ; 2 uses
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !220
  %i.zf = lshr i32 %i.zb, 5
  %i.zg = trunc i32 %i.zf to i16
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 2
  store i16 %i.zg, ptr %i.zh, align 2, !tbaa !220
  %i.zi = shl i32 %i.zb, 5
  %i.zj = and i32 %i.zi, 992
  %i.zk = and i32 %i.yy, 31
  %i.zl = or disjoint i32 %i.zj, %i.zk
  %i.zm = trunc nuw nsw i32 %i.zl to i16
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %indvars.iv
  store i16 %i.zm, ptr %i.zn, align 2, !tbaa !220
  br label %bb.er

bb.ep:                                            ; preds = %bb.en
  br i1 %i.b, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.zo = fptrunc double %i.yu to float
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv
  store float %i.zo, ptr %i.zp, align 4, !tbaa !40
  %i.zq = fptrunc double %i.yv to float
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv
  store float %i.zq, ptr %i.zr, align 4, !tbaa !40
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq, %bb.eo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zs = fadd <2 x double> %i.nk, %i.vk
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge681, %.preheader669, %.preheader, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  ret void

bb.es:                                            ; preds = %bb.dp, %bb.dk
  %.pn373 = phi { ptr, i32 } [ %i.ia, %bb.dp ], [ %.pn370.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.dc, %bb.cu
  %.pn373.pn = phi { ptr, i32 } [ %.pn373, %bb.es ], [ %i.hi, %bb.dc ], [ %.pn365.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.critedge394

.critedge394:                                     ; preds = %bb.bs, %bb.bx, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn373.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ], [ %i.et, %bb.bx ], [ %i.ef, %bb.bs ], [ %.pn373.pn, %bb.et ]
  resume { ptr, i32 } %.pn373.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN2cv7omnidir14undistortImageERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_iS3_RKNS_5Size_IiEES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Size_", align 8         ; 5 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = load i32, ptr %7, align 4, !tbaa !218
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 1
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %7, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  store i64 %storemerge, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !8
  store ptr %10, ptr %i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !8
  store ptr %11, ptr %i.k, align 8, !tbaa !12
  invoke void @_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !211
  store i32 16842752, ptr %14, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %10, ptr %i.o, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !211
  store i32 16842752, ptr %15, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %11, ptr %i.r, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void
end_hunk_0
