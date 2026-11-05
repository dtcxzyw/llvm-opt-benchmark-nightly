Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_dS3_S6_:bb.a
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %i.cw)
          to label %.critedge253 unwind label %bb.be

bb.ay:                                            ; preds = %.noexc293
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %.critedge253 unwind label %bb.be

.critedge253:                                     ; preds = %bb.ax, %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load double, ptr %i.cy, align 8, !tbaa !21
  %i.db = load <2 x double>, ptr %i.cz, align 8, !tbaa !21
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.critedge256

.critedge269:                                     ; preds = %bb.av, %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load float, ptr %i.de, align 4, !tbaa !36, !noalias !149
  %i.dh = fpext float %i.dg to double
  %i.di = load <2 x float>, ptr %i.df, align 4, !tbaa !36, !noalias !149
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = fpext <2 x float> %i.dj to <2 x double>
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.critedge256

.critedge256:                                     ; preds = %.critedge253, %.critedge269
  %.sroa.0737.0749 = phi double [ %i.da, %.critedge253 ], [ %i.dh, %.critedge269 ]
  %i.dl = phi <2 x double> [ %i.dc, %.critedge253 ], [ %i.dk, %.critedge269 ]
  %i.dm = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  %i.dn = icmp eq i32 %i.dm, 5
  br i1 %i.dn, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %.critedge256
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.do = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !150
  %i.dp = icmp eq i32 %i.do, 65536
  br i1 %i.dp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !18, !noalias !150
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.dr)
  br label %_ZNK2cv11_InputArray6getMatEi.exit297

bb.bb:                                            ; preds = %bb.az
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit297

_ZNK2cv11_InputArray6getMatEi.exit297:            ; preds = %bb.ba, %bb.bb
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.5") align 4 %23, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit297
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !36
  %i.du = fpext float %i.dt to double
  %i.dv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !36
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36
  %i.dz = fpext float %i.dw to double
  %i.ea = fpext float %i.dy to double
  %i.eb = load <2 x float>, ptr %23, align 8, !tbaa !36
  %i.ec = fpext <2 x float> %i.eb to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bl

bb.bd:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.critedge258

bb.be:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.critedge258

bb.bf:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit297
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %.critedge258

bb.bg:                                            ; preds = %.critedge256
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.eg = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !151
  %i.eh = icmp eq i32 %i.eg, 65536
  br i1 %i.eh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18, !noalias !151
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %i.ej)
  br label %_ZNK2cv11_InputArray6getMatEi.exit298

bb.bi:                                            ; preds = %bb.bg
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit298

_ZNK2cv11_InputArray6getMatEi.exit298:            ; preds = %bb.bh, %bb.bi
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.8") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit298
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.ek = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.el = load double, ptr %i.ek, align 16, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.en = load double, ptr %i.em, align 16, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !21
  %i.eq = load <2 x double>, ptr %25, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit298
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.critedge258

bb.bl:                                            ; preds = %bb.bj, %bb.bc
  %.sroa.7.0 = phi double [ %i.ea, %bb.bc ], [ %i.ep, %bb.bj ]
  %.sroa.0732.0 = phi double [ %i.dz, %bb.bc ], [ %i.en, %bb.bj ]
  %.sroa.8735.0 = phi double [ %i.du, %bb.bc ], [ %i.el, %bb.bj ] ; 4 uses
  %i.es = phi <2 x double> [ %i.ec, %bb.bc ], [ %i.eq, %bb.bj ] ; 8 uses
  %i.et = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
  %.not238 = icmp eq i32 %i.et, 5
  br i1 %.not238, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.eu = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6), !noalias !152
  %i.ev = icmp eq i32 %i.eu, 65536
  br i1 %i.ev, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !18, !noalias !152
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %i.ex)
  br label %.critedge270

bb.bo:                                            ; preds = %bb.bm
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
  br label %.critedge270

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ey = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc300 unwind label %bb.cf

.noexc300:                                        ; preds = %bb.bp
  %i.ez = icmp eq i32 %i.ey, 65536
  br i1 %i.ez, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.noexc300
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !18, !noalias !153
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %i.fb)
          to label %.critedge262 unwind label %bb.cf

bb.br:                                            ; preds = %.noexc300
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %.critedge262 unwind label %bb.cf

.critedge262:                                     ; preds = %bb.bq, %bb.br
  %i.fc = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34
  %i.fe = load <4 x double>, ptr %i.fd, align 8, !tbaa !21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.critedge265

.critedge270:                                     ; preds = %bb.bo, %bb.bn
  %i.ff = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34
  %i.fh = load <4 x float>, ptr %i.fg, align 4, !tbaa !36, !noalias !154
  %i.fi = fpext <4 x float> %i.fh to <4 x double>
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %.critedge265

.critedge265:                                     ; preds = %.critedge262, %.critedge270
  %i.fj = phi <4 x double> [ %i.fe, %.critedge262 ], [ %i.fi, %.critedge270 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.fk = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !155
  %i.fl = icmp eq i32 %i.fk, 65536
  br i1 %i.fl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.critedge265
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !18, !noalias !155
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %i.fn)
  br label %_ZNK2cv11_InputArray6getMatEi.exit304

bb.bt:                                            ; preds = %.critedge265
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit304

_ZNK2cv11_InputArray6getMatEi.exit304:            ; preds = %bb.bs, %bb.bt
  %i.fo = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.fq = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !156
  %i.fr = icmp eq i32 %i.fq, 65536
  br i1 %i.fr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit304
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !18, !noalias !156
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %i.ft)
  br label %_ZNK2cv11_InputArray6getMatEi.exit305

bb.bv:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit304
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %30, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit305

_ZNK2cv11_InputArray6getMatEi.exit305:            ; preds = %bb.bu, %bb.bv
  %i.fu = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.fw = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !157
  %i.fx = icmp eq i32 %i.fw, 65536
  br i1 %i.fx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit305
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !18, !noalias !157
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %i.fz)
  br label %_ZNK2cv11_InputArray6getMatEi.exit306

bb.bx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit305
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit306

_ZNK2cv11_InputArray6getMatEi.exit306:            ; preds = %bb.bw, %bb.bx
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.gc = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !158
  %i.gd = icmp eq i32 %i.gc, 65536
  br i1 %i.gd, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit306
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !18, !noalias !158
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %i.gf)
  br label %bb.ca

bb.bz:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit306
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.gg = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %33, i8 0, i64 72, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %34, i8 0, i64 216, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.gi = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i32 -1056833530, ptr %35, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %18, ptr %i.gj, align 8, !tbaa !18
  store i64 12884901889, ptr %i.gi, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.gk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 -1040056314, ptr %36, align 8, !tbaa !17
  store ptr %33, ptr %i.gk, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 12884901891, ptr %i.gl, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 -1040056314, ptr %37, align 8, !tbaa !17
  store ptr %34, ptr %i.gm, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 12884901897, ptr %i.gn, align 8, !tbaa !19
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.go = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.go, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.gp = shl nsw i32 %i.bq, 1
  call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.gp, i32 noundef 16, i32 noundef 6, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %i.gq = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !159
  %i.gr = icmp eq i32 %i.gq, 65536
  br i1 %i.gr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !18, !noalias !159
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(208) %i.gt)
  br label %_ZNK2cv11_InputArray6getMatEi.exit308

bb.ce:                                            ; preds = %bb.cc
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %38, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit308

_ZNK2cv11_InputArray6getMatEi.exit308:            ; preds = %bb.cd, %bb.ce
  %i.gu = getelementptr inbounds nuw i8, ptr %38, i64 24
  %.val274 = load ptr, ptr %i.gu, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.ch

bb.cf:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.critedge258

bb.cg:                                            ; preds = %bb.ca
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.critedge258

bb.ch:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit308, %bb.cb
  %.0209 = phi ptr [ %.val274, %_ZNK2cv11_InputArray6getMatEi.exit308 ], [ null, %bb.cb ]
  %i.gx = icmp sgt i32 %i.bq, 0
  br i1 %i.gx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ch
  %i.gy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.hd = getelementptr inbounds nuw i8, ptr %34, i64 144
  %i.he = getelementptr inbounds nuw i8, ptr %34, i64 152
  %i.hf = getelementptr inbounds nuw i8, ptr %34, i64 160
  %i.hg = getelementptr inbounds nuw i8, ptr %34, i64 168
  %i.hh = getelementptr inbounds nuw i8, ptr %34, i64 176
  %i.hi = getelementptr inbounds nuw i8, ptr %34, i64 184
  %i.hj = getelementptr inbounds nuw i8, ptr %34, i64 192
  %i.hk = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.hl = getelementptr inbounds nuw i8, ptr %34, i64 200
  %i.hm = getelementptr inbounds nuw i8, ptr %34, i64 208
  %i.hn = extractelement <4 x double> %i.fj, i64 0 ; 3 uses
  %i.ho = fmul double %i.hn, 2.000000e+00         ; 2 uses
  %i.hp = extractelement <4 x double> %i.fj, i64 1 ; 2 uses
  %i.hq = fmul double %i.hp, 4.000000e+00
  %i.hr = shufflevector <4 x double> %i.fj, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.hs = fmul <2 x double> %i.hr, <double 2.000000e+00, double 6.000000e+00> ; 2 uses
  %39 = shufflevector <4 x double> %i.fj, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.ht = shufflevector <4 x double> %i.fj, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.hu = fmul <2 x double> %i.ht, <double 2.000000e+00, double 6.000000e+00> ; 3 uses
  %wide.trip.count = and i64 %i.bp, 2147483647
  %i.hv = insertelement <2 x double> poison, double %.sroa.8735.0, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = extractelement <2 x double> %i.hu, i64 0
  %i.hy = insertelement <2 x double> %i.es, double %i.ho, i64 1
  %i.hz = extractelement <2 x double> %i.es, i64 1 ; 2 uses
  %i.ia = shufflevector <2 x double> %i.es, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ib = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.sroa.8735.0, i64 1
  %40 = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %41 = insertelement <2 x double> %40, double %.sroa.8735.0, i64 0
  %42 = insertelement <2 x double> poison, double %.sroa.7.0, i64 0
  %i.ic = shufflevector <4 x double> %i.fj, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.id = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = extractelement <2 x double> %i.hs, i64 0
  %i.ig = shufflevector <4 x double> %i.fj, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = shufflevector <2 x double> %i.ic, <2 x double> %i.es, <2 x i32> <i32 0, i32 2>
  br label %bb.ci

._crit_edge:                                      ; preds = %bb.cq, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.ci:                                            ; preds = %.lr.ph, %bb.cq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cq ] ; 5 uses
  %.1210768 = phi ptr [ %.0209, %.lr.ph ], [ %.2211, %bb.cq ] ; 23 uses
  %i.ii = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ij = icmp eq i32 %i.ii, 5
  br i1 %i.ij, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %indvars.iv ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load <2 x float>, ptr %i.ik, align 4, !tbaa !36, !noalias !160
  %i.in = fpext <2 x float> %i.im to <2 x double>
  %i.io = load float, ptr %i.il, align 4, !tbaa !36, !noalias !160
  %i.ip = fpext float %i.io to double
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %indvars.iv ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load <2 x double>, ptr %i.iq, align 8, !tbaa !21
  %i.it = load double, ptr %i.ir, align 8, !tbaa !21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.14713.0 = phi double [ %i.ip, %bb.cj ], [ %i.it, %bb.ck ] ; 4 uses
  %i.iu = phi <2 x double> [ %i.in, %bb.cj ], [ %i.is, %bb.ck ] ; 4 uses
  %i.iv = load double, ptr %33, align 8, !tbaa !21, !noalias !161
  %i.iw = extractelement <2 x double> %i.iu, i64 0 ; 4 uses
  %i.ix = call double @llvm.fmuladd.f64(double %i.iv, double %i.iw, double 0.000000e+00)
  %i.iy = load double, ptr %i.gy, align 8, !tbaa !21, !noalias !161
  %i.iz = extractelement <2 x double> %i.iu, i64 1 ; 4 uses
  %i.ja = call double @llvm.fmuladd.f64(double %i.iy, double %i.iz, double %i.ix)
  %i.jb = load double, ptr %i.gz, align 8, !tbaa !21, !noalias !161
  %i.jc = call double @llvm.fmuladd.f64(double %i.jb, double %.sroa.14713.0, double %i.ja)
  %i.jd = fadd double %.sroa.0737.0749, %i.jc     ; 6 uses
  %i.je = load <2 x double>, ptr %i.hb, align 8, !tbaa !21, !noalias !161
  %i.jf = load <4 x double>, ptr %i.ha, align 8, !tbaa !21, !noalias !161 ; 3 uses
  %i.jg = shufflevector <4 x double> %i.jf, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.jh = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jh, <2 x double> zeroinitializer)
  %i.jj = shufflevector <2 x double> %i.je, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jk = shufflevector <4 x double> %i.jj, <4 x double> %i.jf, <2 x i32> <i32 0, i32 5>
  %i.jl = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jl, <2 x double> %i.ji)
  %i.jn = shufflevector <4 x double> %i.jj, <4 x double> %i.jf, <2 x i32> <i32 1, i32 6>
  %i.jo = insertelement <2 x double> poison, double %.sroa.14713.0, i64 0 ; 2 uses
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jp, <2 x double> %i.jm)
  %i.jr = fadd <2 x double> %i.dl, %i.jq          ; 5 uses
  %43 = fmul double %i.jd, %i.jd
  %i.js = extractelement <2 x double> %i.jr, i64 1 ; 3 uses
  %i.jt = call double @llvm.fmuladd.f64(double %i.js, double %i.js, double %43)
  %i.ju = extractelement <2 x double> %i.jr, i64 0 ; 3 uses
  %i.jv = call noundef double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %i.jt)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.jv)
  %i.jw = fdiv double 1.000000e+00, %sqrt.i       ; 4 uses
  %i.jx = fmul double %i.ju, %i.jw
  %i.jy = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jz = insertelement <2 x double> %i.jy, double %i.jd, i64 1
  %i.ka = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = fmul <2 x double> %i.jz, %i.kb          ; 3 uses
  %i.kd = fadd double %5, %i.jx                   ; 4 uses
  %i.ke = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = fdiv <2 x double> %i.kc, %i.kf          ; 12 uses
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %44 = extractelement <2 x double> %i.kg, i64 0  ; 5 uses
  %i.ki = extractelement <2 x double> %i.kg, i64 1 ; 7 uses
  %45 = fmul double %i.ki, 2.000000e+00           ; 2 uses
  %46 = fmul double %i.if, %i.ki                  ; 2 uses
  %47 = shufflevector <2 x double> %i.kg, <2 x double> %i.hu, <2 x i32> <i32 0, i32 2>
  %48 = fmul <2 x double> %47, %i.kg              ; 2 uses
  %i.kj = extractelement <2 x double> %48, i64 0
  %i.kk = call double @llvm.fmuladd.f64(double %i.ki, double %i.ki, double %i.kj) ; 7 uses
  %i.kl = fmul double %i.kk, %i.kk                ; 3 uses
  %i.km = call double @llvm.fmuladd.f64(double %i.hn, double %i.kk, double 1.000000e+00)
  %i.kn = call double @llvm.fmuladd.f64(double %i.hp, double %i.kl, double %i.km)
  %49 = call double @llvm.fmuladd.f64(double %45, double %i.ki, double %i.kk) ; 3 uses
  %i.ko = fmul double %44, 2.000000e+00
  %i.kp = call double @llvm.fmuladd.f64(double %i.ko, double %44, double %i.kk) ; 3 uses
  %50 = shufflevector <2 x double> %39, <2 x double> %i.kh, <2 x i32> <i32 0, i32 3>
  %51 = insertelement <2 x double> %48, double %i.kp, i64 0
  %i.kq = fmul <2 x double> %50, %51
  %i.kr = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.ks, <2 x double> %i.kq)
  %52 = insertelement <2 x double> %i.hr, double %46, i64 0
  %53 = insertelement <2 x double> %i.kg, double %49, i64 1
  %54 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %53, <2 x double> %i.kt) ; 3 uses
  %55 = extractelement <2 x double> %54, i64 0    ; 3 uses
  %i.ku = fmul double %i.hz, %55
  %56 = insertelement <2 x double> %42, double %i.ku, i64 1
  %57 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %54, <2 x double> %56) ; 3 uses
  %58 = extractelement <2 x double> %57, i64 1
  %i.kv = fadd double %.sroa.0732.0, %58          ; 2 uses
  %i.kw = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.kx = icmp eq i32 %i.kw, 5
  br i1 %i.kx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ky = insertelement <2 x double> poison, double %i.kv, i64 0
  %59 = shufflevector <2 x double> %i.ky, <2 x double> %57, <2 x i32> <i32 0, i32 2>
  %i.kz = fptrunc <2 x double> %59 to <2 x float>
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  store <2 x float> %i.kz, ptr %i.la, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv ; 2 uses
  store double %i.kv, ptr %i.lb, align 8
  %.sroa.6608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %60 = extractelement <2 x double> %57, i64 0
  store double %60, ptr %.sroa.6608.0..sroa_idx, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.lc = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.lc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ld = call noundef double @pow(double noundef %i.jw, double noundef 3.000000e+00) #22 ; 3 uses
  %i.le = fneg double %i.jd
  %i.lf = fmul double %i.jd, %i.le
  %i.lg = load double, ptr %i.hm, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.lh = insertelement <2 x double> poison, double %i.lg, i64 0 ; 2 uses
  %i.li = insertelement <2 x double> %i.jo, double %i.lf, i64 1
  %i.lj = insertelement <2 x double> %i.lh, double %i.ld, i64 1
  %i.lk = fneg <2 x double> %i.jr                 ; 3 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 0
  %i.lm = fmul double %i.js, %i.ll
  %i.ln = fmul double %i.lm, %i.ld                ; 2 uses
  %i.lo = fmul <2 x double> %i.jr, %i.lk
  %i.lp = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.lq, <2 x double> %i.kb) ; 2 uses
  %i.ls = extractelement <2 x double> %i.kc, i64 1
  %i.lt = fneg double %i.ls
  %i.lu = fdiv double %i.lt, %i.kd
  %i.lv = extractelement <2 x double> %i.kc, i64 0
  %i.lw = fneg double %i.lv
  %i.lx = fdiv double %i.lw, %i.kd
  %i.ly = fmul <2 x double> %i.ie, %i.kg
  %61 = insertelement <2 x double> poison, double %i.kk, i64 0 ; 3 uses
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = fmul <2 x double> %i.ly, %62            ; 2 uses
  %i.ma = fmul <2 x double> %i.hs, %i.kg          ; 2 uses
  %i.mb = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.me = insertelement <2 x double> %i.md, double %46, i64 1
  %i.mf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.mc, <2 x double> %i.me)
  %i.mg = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.mg, <2 x double> %i.mf) ; 2 uses
  %i.mi = insertelement <2 x double> %61, double %i.kl, i64 1 ; 2 uses
  %i.mj = fmul <2 x double> %i.mg, %i.mi          ; 2 uses
  %i.mk = load <16 x double>, ptr %34, align 8, !tbaa !21, !noalias !162 ; 9 uses
  %i.ml = load double, ptr %i.hc, align 8, !tbaa !21, !noalias !162
  %i.mm = load <2 x double>, ptr %i.hk, align 8, !tbaa !21, !noalias !162
  %i.mn = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 0, i32 9> ; 2 uses
  %i.mo = insertelement <2 x double> %i.mn, double %i.ml, i64 1
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.mo, <2 x double> zeroinitializer)
  %i.mq = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 1, i32 10> ; 2 uses
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.mq, <2 x double> %i.mp)
  %i.ms = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 2, i32 11> ; 2 uses
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.ms, <2 x double> %i.mr)
  %i.mu = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 3, i32 12> ; 3 uses
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> zeroinitializer, <2 x double> %i.mt)
  %i.mw = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 4, i32 13> ; 3 uses
  %i.mx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> %i.mv)
  %i.my = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 5, i32 14> ; 3 uses
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> zeroinitializer, <2 x double> %i.mx)
  %i.na = shufflevector <16 x double> %i.mk, <16 x double> poison, <2 x i32> <i32 6, i32 15> ; 3 uses
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> zeroinitializer, <2 x double> %i.mz)
  %i.nc = shufflevector <2 x double> %i.mm, <2 x double> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.nd = shufflevector <16 x double> %i.mk, <16 x double> %i.nc, <2 x i32> <i32 7, i32 16> ; 3 uses
  %i.ne = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> zeroinitializer, <2 x double> %i.nb)
  %i.nf = shufflevector <16 x double> %i.mk, <16 x double> %i.nc, <2 x i32> <i32 8, i32 17> ; 3 uses
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> zeroinitializer, <2 x double> %i.ne) ; 2 uses
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> zeroinitializer, <2 x double> %i.nh)
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> zeroinitializer, <2 x double> %i.ni) ; 2 uses
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.mu, <2 x double> %i.nj)
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.mw, <2 x double> %i.nk)
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.my, <2 x double> %i.nl)
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> zeroinitializer, <2 x double> %i.nm)
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> zeroinitializer, <2 x double> %i.nn)
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> zeroinitializer, <2 x double> %i.no) ; 2 uses
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> zeroinitializer, <2 x double> %i.nj)
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> %i.nq)
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> zeroinitializer, <2 x double> %i.nr)
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.na, <2 x double> %i.ns)
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.nd, <2 x double> %i.nt)
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.nf, <2 x double> %i.nu) ; 2 uses
  %i.nw = shufflevector <2 x double> %i.lr, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.nx = insertelement <3 x double> %i.nw, double %i.ln, i64 0
  %i.ny = shufflevector <2 x double> %i.lr, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.nz = insertelement <3 x double> %i.ny, double %i.ln, i64 1
  %.sroa.5334.0..1210.sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %.1210768, i64 128
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 144
  %i.ob = getelementptr inbounds nuw i8, ptr %.1210768, i64 24
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 40
  %i.oc = getelementptr inbounds nuw i8, ptr %.1210768, i64 152
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 168
  %.sroa.6322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 120
  %i.od = getelementptr inbounds nuw i8, ptr %.1210768, i64 224
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 240
  %i.oe = getelementptr inbounds nuw i8, ptr %.1210768, i64 88
  %63 = insertelement <2 x double> %i.kg, double %49, i64 0
  %i.of = insertelement <2 x double> %i.lz, double 0.000000e+00, i64 0
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %63, <2 x double> %i.of) ; 3 uses
  %i.oh = extractelement <2 x double> %i.mh, i64 0
  %i.oi = extractelement <2 x double> %i.ma, i64 0
  %i.oj = call double @llvm.fmuladd.f64(double %i.hx, double %i.ki, double %i.oi)
  %i.ok = extractelement <2 x double> %i.mh, i64 1
  %i.ol = extractelement <2 x double> %i.og, i64 1
  %i.om = call double @llvm.fmuladd.f64(double %i.ki, double %i.ol, double %i.oh)
  %i.on = call double @llvm.fmuladd.f64(double %i.hn, double %i.kk, double %i.om)
  %i.oo = fadd double %i.on, 1.000000e+00         ; 2 uses
  %i.op = extractelement <2 x double> %i.lz, i64 0
  %i.oq = call double @llvm.fmuladd.f64(double %i.ho, double %44, double %i.op) ; 2 uses
  %i.or = insertelement <2 x double> %i.og, double %i.oq, i64 0
  %i.os = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.or, <2 x double> %i.ot) ; 2 uses
  %i.ov = call double @llvm.fmuladd.f64(double %44, double %i.oq, double %i.ok)
  %i.ow = insertelement <2 x double> %61, double %i.oo, i64 1
  %i.ox = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ov, i64 0
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ow, <2 x double> %i.ox) ; 2 uses
  %i.oz = extractelement <2 x double> %i.oy, i64 0
  %i.pa = fadd double %i.oz, 1.000000e+00         ; 2 uses
  %i.pb = insertelement <2 x double> %i.oy, double 0.000000e+00, i64 0
  %i.pc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.ou, <2 x double> %i.pb) ; 4 uses
  %i.pd = extractelement <2 x double> %i.pc, i64 0
  %i.pe = call double @llvm.fmuladd.f64(double %i.hz, double %i.pa, double %i.pd) ; 3 uses
  %i.pf = call double @llvm.fmuladd.f64(double %i.oo, double 0.000000e+00, double 0.000000e+00)
  %i.pg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.pf, i64 1
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.ou, <2 x double> %i.pg) ; 3 uses
  %i.pi = extractelement <2 x double> %i.ph, i64 0
  %i.pj = extractelement <2 x double> %i.pc, i64 1
  %i.pk = insertelement <2 x double> %i.pc, double %i.pe, i64 0
  %i.pl = insertelement <2 x double> %i.ph, double %i.pe, i64 0
  %i.pm = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.lu, i64 1
  %i.pn = fdiv <2 x double> %i.pm, %i.kf          ; 4 uses
  %i.po = extractelement <2 x double> %i.pn, i64 0
  %i.pp = call double @llvm.fmuladd.f64(double %i.pj, double %i.po, double 0.000000e+00)
  %i.pq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.pp, i64 0
  %i.pr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> zeroinitializer, <2 x double> %i.pq) ; 2 uses
  %i.ps = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pt = shufflevector <2 x double> %i.pr, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.ps, <2 x double> %i.pt) ; 2 uses
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.pw = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.px = fmul <2 x double> %i.pw, %i.mi          ; 2 uses
  %i.py = shufflevector <2 x double> %i.pc, <2 x double> %i.es, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.pz = shufflevector <2 x double> %i.pn, <2 x double> %i.px, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.qa = insertelement <4 x double> %i.ia, double %i.pe, i64 0
  %i.qb = shufflevector <4 x double> %i.qa, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.qc = shufflevector <2 x double> %i.mj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qd = fdiv double %i.lx, %i.kd                ; 2 uses
  %i.qe = call double @llvm.fmuladd.f64(double %.sroa.8735.0, double %i.pa, double %i.pi) ; 2 uses
  %i.qf = insertelement <2 x double> %i.ph, double %i.qe, i64 0 ; 2 uses
  %i.qg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> zeroinitializer, <2 x double> %i.pv) ; 2 uses
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> %i.pn, <2 x double> %i.qh) ; 2 uses
  %64 = fmul double %44, %45                      ; 4 uses
  %65 = insertelement <4 x double> %i.pz, double %64, i64 3
  %i.qj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.py, <4 x double> %65, <4 x double> zeroinitializer)
  %i.qk = insertelement <4 x double> poison, double %i.qd, i64 0
  %i.ql = shufflevector <4 x double> %i.qk, <4 x double> %i.qc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %66 = insertelement <4 x double> %i.ql, double %i.kp, i64 3
  %i.qm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qb, <4 x double> %66, <4 x double> %i.qj) ; 2 uses
  %i.qn = insertelement <2 x double> %i.es, double %i.qe, i64 0
  %i.qo = insertelement <2 x double> poison, double %i.qd, i64 0
  %67 = insertelement <2 x double> %i.qo, double %64, i64 1
  %i.qp = shufflevector <2 x double> %i.qi, <2 x double> %i.og, <2 x i32> <i32 1, i32 2>
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> %67, <2 x double> %i.qp) ; 3 uses
  %i.qr = shufflevector <2 x double> %i.pr, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qs = shufflevector <2 x double> %i.pu, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qt = shufflevector <4 x double> %i.qm, <4 x double> poison, <3 x i32> zeroinitializer
  %i.qu = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = fmul <2 x double> %i.qv, %i.lk
  %i.qx = fmul <2 x double> %i.qw, %i.lq          ; 2 uses
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.qz = shufflevector <3 x double> %i.nx, <3 x double> %i.qy, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.ra = shufflevector <3 x double> %i.nz, <3 x double> %i.qy, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.rb = shufflevector <2 x double> %i.qg, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rc = shufflevector <2 x double> %i.qi, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rd = shufflevector <2 x double> %i.qq, <2 x double> poison, <3 x i32> zeroinitializer
  %i.re = load double, ptr %i.hd, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.rf = load double, ptr %i.he, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.rg = load double, ptr %i.hf, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.rh = load double, ptr %i.hg, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.ri = load double, ptr %i.hh, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.rj = call double @llvm.fmuladd.f64(double %i.iw, double %i.re, double 0.000000e+00)
  %i.rk = call double @llvm.fmuladd.f64(double %i.iz, double %i.rf, double %i.rj)
  %i.rl = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.rg, double %i.rk)
  %i.rm = call double @llvm.fmuladd.f64(double %i.rh, double 0.000000e+00, double %i.rl)
  %i.rn = call double @llvm.fmuladd.f64(double %i.ri, double 0.000000e+00, double %i.rm)
  %i.ro = call double @llvm.fmuladd.f64(double %i.re, double 0.000000e+00, double 0.000000e+00)
  %i.rp = call double @llvm.fmuladd.f64(double %i.rf, double 0.000000e+00, double %i.ro)
  %i.rq = call double @llvm.fmuladd.f64(double %i.rg, double 0.000000e+00, double %i.rp) ; 2 uses
  %i.rr = call double @llvm.fmuladd.f64(double %i.iw, double %i.rh, double %i.rq)
  %i.rs = call double @llvm.fmuladd.f64(double %i.iz, double %i.ri, double %i.rr)
  %i.rt = load double, ptr %i.hi, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.ru = load double, ptr %i.hj, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.rv = load double, ptr %i.hl, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.rw = call double @llvm.fmuladd.f64(double %i.rt, double 0.000000e+00, double %i.rn)
  %i.rx = call double @llvm.fmuladd.f64(double %i.ru, double 0.000000e+00, double %i.rw)
  %i.ry = call double @llvm.fmuladd.f64(double %i.rv, double 0.000000e+00, double %i.rx)
  %i.rz = call double @llvm.fmuladd.f64(double %i.lg, double 0.000000e+00, double %i.ry) ; 2 uses
  %i.sa = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.rt, double %i.rs)
  %i.sb = call double @llvm.fmuladd.f64(double %i.ru, double 0.000000e+00, double %i.sa)
  %i.sc = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.sd = insertelement <2 x double> %i.sc, double %i.rh, i64 1
  %i.se = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.sf = insertelement <2 x double> %i.se, double %i.rq, i64 1
  %i.sg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> zeroinitializer, <2 x double> %i.sf)
  %i.sh = insertelement <2 x double> %i.lh, double %i.ri, i64 1
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> zeroinitializer, <2 x double> %i.sg) ; 3 uses
  %i.sj = extractelement <2 x double> %i.si, i64 1
  %i.sk = call double @llvm.fmuladd.f64(double %i.rt, double 0.000000e+00, double %i.sj)
  %i.sl = call double @llvm.fmuladd.f64(double %i.iw, double %i.ru, double %i.sk)
  %i.sm = call double @llvm.fmuladd.f64(double %i.iz, double %i.rv, double %i.sl)
  %i.sn = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.so = insertelement <2 x double> %i.sn, double %i.jw, i64 1
  %i.sp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.lj, <2 x double> %i.so) ; 3 uses
  %i.sq = shufflevector <2 x double> %i.sp, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.sr = shufflevector <3 x double> %i.qy, <3 x double> %i.sq, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ss = shufflevector <2 x double> %i.qx, <2 x double> %i.sp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.st = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rb, <3 x double> %i.ss, <3 x double> zeroinitializer)
  %i.su = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rc, <3 x double> %i.qz, <3 x double> %i.st)
  %i.sv = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rd, <3 x double> %i.ra, <3 x double> %i.su) ; 9 uses
  %i.sw = extractelement <3 x double> %i.sv, i64 2 ; 2 uses
  %i.sx = call double @llvm.fmuladd.f64(double %i.sw, double %i.rz, double 0.000000e+00)
  %i.sy = extractelement <3 x double> %i.sv, i64 1 ; 2 uses
  %i.sz = extractelement <2 x double> %i.si, i64 0
  %i.ta = call double @llvm.fmuladd.f64(double %i.sy, double %i.sz, double %i.sx)
  %i.tb = extractelement <3 x double> %i.sv, i64 0
  %i.tc = extractelement <2 x double> %i.sp, i64 0 ; 2 uses
  %i.td = call double @llvm.fmuladd.f64(double %i.tb, double %i.tc, double %i.ta)
  %i.te = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qr, <3 x double> %i.sr, <3 x double> zeroinitializer)
  %i.tf = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qs, <3 x double> %i.qz, <3 x double> %i.te)
  %i.tg = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qt, <3 x double> %i.ra, <3 x double> %i.tf) ; 8 uses
  %i.th = shufflevector <3 x double> %i.tg, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ti = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.ng, <2 x double> zeroinitializer)
  %i.tj = shufflevector <3 x double> %i.tg, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.np, <2 x double> %i.ti)
  %i.tl = shufflevector <3 x double> %i.tg, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %i.nv, <2 x double> %i.tk)
  %i.tn = extractelement <3 x double> %i.tg, i64 2 ; 2 uses
  %i.to = call double @llvm.fmuladd.f64(double %i.tn, double %i.rz, double 0.000000e+00)
  %i.tp = extractelement <3 x double> %i.tg, i64 0
  %i.tq = fadd double %i.tn, 0.000000e+00
  %i.tr = insertelement <2 x double> %i.si, double 0.000000e+00, i64 1
  %i.ts = insertelement <2 x double> poison, double %i.to, i64 0
  %i.tt = insertelement <2 x double> %i.ts, double %i.tq, i64 1
  %i.tu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.tr, <2 x double> %i.tt) ; 2 uses
  %i.tv = extractelement <2 x double> %i.tu, i64 0
  %i.tw = call double @llvm.fmuladd.f64(double %i.tp, double %i.tc, double %i.tv)
  %i.tx = shufflevector <3 x double> %i.sv, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ty = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %i.ng, <2 x double> zeroinitializer)
  %i.tz = shufflevector <3 x double> %i.sv, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tz, <2 x double> %i.np, <2 x double> %i.ty)
  %i.ub = shufflevector <3 x double> %i.sv, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.nv, <2 x double> %i.ua)
  store <2 x double> %i.tm, ptr %.1210768, align 8
  store double %i.tw, ptr %.sroa.5334.0..1210.sroa_idx, align 8, !tbaa !27
  store <2 x double> %i.uc, ptr %i.oa, align 8
  store double %i.td, ptr %.sroa.5331.0..sroa_idx, align 8, !tbaa !27
  %i.ud = fadd double %i.sw, 0.000000e+00
  %i.ue = shufflevector <3 x double> %i.tg, <3 x double> %i.sv, <2 x i32> <i32 2, i32 4>
  %i.uf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ud, i64 1
  %i.ug = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> zeroinitializer, <2 x double> %i.uf) ; 3 uses
  %i.uh = shufflevector <3 x double> %i.tg, <3 x double> %i.sv, <2 x i32> <i32 1, i32 5>
  %i.ui = insertelement <2 x double> %i.ug, double 0.000000e+00, i64 1
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uh, <2 x double> zeroinitializer, <2 x double> %i.ui) ; 3 uses
  %i.uk = shufflevector <3 x double> %i.tg, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ul = shufflevector <2 x double> %i.uj, <2 x double> %i.ug, <2 x i32> <i32 0, i32 2>
  %i.um = fadd <2 x double> %i.uk, %i.ul          ; 2 uses
  %i.un = shufflevector <2 x double> %i.tu, <2 x double> %i.um, <2 x i32> <i32 1, i32 3>
  %i.uo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> zeroinitializer, <2 x double> %i.un)
  store <2 x double> %i.uo, ptr %i.ob, align 8
  %i.up = extractelement <2 x double> %i.um, i64 0
  store double %i.up, ptr %.sroa.5328.0..sroa_idx, align 8, !tbaa !27
  %i.uq = extractelement <2 x double> %i.uj, i64 1
  %i.ur = call double @llvm.fmuladd.f64(double %i.sy, double 0.000000e+00, double %i.uq)
  %i.us = shufflevector <3 x double> %i.sv, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ut = insertelement <2 x double> %i.uj, double %i.ur, i64 0
  %i.uu = fadd <2 x double> %i.us, %i.ut          ; 2 uses
  %i.uv = shufflevector <2 x double> %i.ug, <2 x double> %i.uu, <2 x i32> <i32 1, i32 3>
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> zeroinitializer, <2 x double> %i.uv)
  store <2 x double> %i.uw, ptr %i.oc, align 8
  %i.ux = extractelement <2 x double> %i.uu, i64 0
  store double %i.ux, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !27
  %i.uy = extractelement <2 x double> %i.qq, i64 1
  store double %i.uy, ptr %.sroa.6322.0..sroa_idx, align 8, !tbaa !27
  %i.uz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.va = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.mj, <2 x double> %i.uz)
  store <2 x double> %i.va, ptr %i.od, align 8
  %68 = insertelement <2 x double> poison, double %64, i64 0
  %69 = insertelement <2 x double> %68, double %49, i64 1
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %70 = insertelement <2 x double> poison, double %i.kp, i64 0
  %71 = insertelement <2 x double> %70, double %64, i64 1
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %71, <2 x double> %i.vb)
  store <2 x double> %i.vc, ptr %.sroa.5.0..sroa_idx, align 8
  store <4 x double> %i.qm, ptr %i.oe, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %.1210768, i64 216
  %i.ve = extractelement <2 x double> %i.qq, i64 0
  store double %i.ve, ptr %i.vd, align 8, !tbaa !167
  %i.vf = getelementptr inbounds nuw i8, ptr %.1210768, i64 48
  %72 = extractelement <2 x double> %54, i64 1
  store double %72, ptr %i.vf, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 56
  store double 0.000000e+00, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !27
  %i.vg = getelementptr inbounds nuw i8, ptr %.1210768, i64 176
  store double 0.000000e+00, ptr %i.vg, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 184
  store double %55, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !27
  %i.vh = getelementptr inbounds nuw i8, ptr %.1210768, i64 72
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.vh, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 208
  store double 1.000000e+00, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %i.vi = getelementptr inbounds nuw i8, ptr %.1210768, i64 64
  store double %55, ptr %i.vi, align 8, !tbaa !168
  %i.vj = getelementptr inbounds nuw i8, ptr %.1210768, i64 192
  store <2 x double> zeroinitializer, ptr %i.vj, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %.1210768, i64 256
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2211 = phi ptr [ %i.vk, %bb.cp ], [ %.1210768, %bb.co ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ci, !llvm.loop !143

.critedge258:                                     ; preds = %bb.cf, %bb.be, %bb.bd, %bb.cg, %bb.bk, %bb.bf
  %.pn239.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.be ], [ %i.ed, %bb.bd ], [ %i.er, %bb.bk ], [ %i.ef, %bb.bf ], [ %i.gw, %bb.cg ], [ %i.gv, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn239.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn, %.critedge258 ], [ %.pn223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ %.pn221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %.pn219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn239.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7Affine3IdE4rvecEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Vec", align 8           ; 4 uses
  %3 = alloca %"class.cv::Matx.8", align 8        ; 9 uses
  %4 = alloca %"class.cv::Matx.8", align 8        ; 10 uses
  %5 = alloca %"class.cv::Matx.8", align 16       ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !21, !noalias !177
  store <2 x double> %i.a, ptr %5, align 16, !tbaa !21, !alias.scope !177
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <1 x double>, ptr %i.b, align 8
  %i.d = shufflevector <1 x double> %i.c, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !21, !noalias !177
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !21, !noalias !177
  %i.j = insertelement <4 x double> %i.d, double %i.g, i64 1
  %i.k = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x double> %i.j, <4 x double> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.l, ptr %i.e, align 16, !tbaa !21, !alias.scope !177
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = load <2 x double>, ptr %i.m, align 8, !tbaa !21, !noalias !177
  store <2 x double> %i.o, ptr %i.n, align 16, !tbaa !21, !alias.scope !177
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load double, ptr %i.p, align 8, !tbaa !21, !noalias !177
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.q, ptr %i.r, align 16, !tbaa !21, !alias.scope !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.t, align 8, !tbaa !18
  store i64 12884901891, ptr %i.s, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 -1040056314, ptr %7, align 8, !tbaa !17
  store ptr %2, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 12884901889, ptr %i.v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !17
  store ptr %3, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 12884901891, ptr %i.x, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 -1040056314, ptr %9, align 8, !tbaa !17
  store ptr %4, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 12884901891, ptr %i.z, align 8, !tbaa !19
  call void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aa = load double, ptr %4, align 8, !tbaa !21, !noalias !178 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !21, !noalias !178 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = load double, ptr %i.ae, align 8, !tbaa !21, !noalias !178 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.am = load <8 x double>, ptr %3, align 8, !tbaa !21, !noalias !178 ; 10 uses
  %i.an = load double, ptr %i.ak, align 8, !tbaa !21, !noalias !178 ; 2 uses
  %i.ao = load double, ptr %i.aj, align 8, !tbaa !21, !noalias !178 ; 2 uses
  %i.ap = load double, ptr %i.ab, align 8, !tbaa !21, !noalias !178 ; 2 uses
  %i.aq = extractelement <8 x double> %i.am, i64 0
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double %i.aa, double 0.000000e+00)
  %i.as = call double @llvm.fmuladd.f64(double %i.ap, double %i.ad, double %i.ar)
  %i.at = extractelement <8 x double> %i.am, i64 2
  %i.au = call double @llvm.fmuladd.f64(double %i.at, double %i.af, double %i.as) ; 2 uses
  %i.av = load <2 x double>, ptr %i.ag, align 8, !tbaa !21, !noalias !178 ; 3 uses
  %i.aw = load <2 x double>, ptr %i.ah, align 8, !tbaa !21, !noalias !178 ; 4 uses
  %i.ax = load <2 x double>, ptr %i.ai, align 8, !tbaa !21, !noalias !178 ; 3 uses
  %i.ay = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 5, i32 0> ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.ao, i64 0
  %i.ba = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bb = insertelement <2 x double> %i.ba, double %i.aa, i64 0
  %i.bc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> zeroinitializer)
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x double> %i.am, <8 x double> %i.bd, <2 x i32> <i32 4, i32 8>
  %i.bf = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.ap, i64 1
  %i.bh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bg, <2 x double> %i.bc)
  %i.bi = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
  %i.bj = insertelement <2 x double> %i.bi, double %i.an, i64 0
  %i.bk = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bl = insertelement <2 x double> %i.bk, double %i.af, i64 0
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bl, <2 x double> %i.bh) ; 2 uses
  %i.bn = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 3, i32 6> ; 2 uses
  %i.bo = insertelement <2 x double> %i.ba, double %i.aa, i64 1
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bo, <2 x double> zeroinitializer)
  %i.bq = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 4, i32 7>
  %i.br = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x double> %i.br, double %i.ad, i64 1
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bs, <2 x double> %i.bp)
  %i.bu = insertelement <2 x double> %i.bk, double %i.af, i64 1
  %i.bv = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 6, i32 0>
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.av, <2 x double> zeroinitializer)
  %i.bx = shufflevector <8 x double> %i.am, <8 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.aw, <2 x double> %i.bw)
  %i.bz = load <2 x double>, ptr %i.al, align 8, !tbaa !21, !noalias !178 ; 4 uses
  %i.ca = shufflevector <2 x double> %i.ay, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bu, <2 x double> %i.bt) ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bz, <2 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <8 x double> %i.cc, <8 x double> %i.am, <2 x i32> <i32 1, i32 10>
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ax, <2 x double> %i.by) ; 2 uses
  %i.cf = insertelement <2 x double> %i.bn, double %i.ao, i64 0
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.av, <2 x double> zeroinitializer)
  %i.ch = shufflevector <2 x double> %i.bi, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.aw, <2 x double> %i.cg)
  %i.cj = insertelement <2 x double> %i.bz, double %i.an, i64 0
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ax, <2 x double> %i.ci) ; 3 uses
  %i.cl = fsub <2 x double> %i.ce, %i.cb          ; 4 uses
  %i.cm = extractelement <2 x double> %i.bm, i64 0
  %i.cn = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.co = fsub double %i.cm, %i.cn                ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.cl, %i.cl
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cq = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cr = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cp)
  %i.cs = call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cr)
  %i.ct = fmul double %i.cs, 2.500000e-01
  %sqrt = call double @llvm.sqrt.f64(double %i.ct) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ck, i64 0
  %i.cv = fadd double %i.au, %i.cu
  %i.cw = extractelement <2 x double> %i.ck, i64 1
  %i.cx = fadd double %i.cv, %i.cw
  %i.cy = fadd double %i.cx, -1.000000e+00
  %i.cz = fmul double %i.cy, 5.000000e-01         ; 3 uses
  %i.da = fcmp ogt double %i.cz, 1.000000e+00
  %i.db = fcmp olt double %i.cz, -1.000000e+00
  %i.dc = select i1 %i.db, double -1.000000e+00, double %i.cz
  %i.dd = select i1 %i.da, double 1.000000e+00, double %i.dc ; 2 uses
  %i.de = call double @acos(double noundef %i.dd) #22 ; 2 uses
  %i.df = fcmp olt double %sqrt, 1.000000e-05
  br i1 %i.df, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.dg = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.dg, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dh = fadd double %i.au, 1.000000e+00
  %i.di = fmul double %i.dh, 5.000000e-01         ; 2 uses
  %i.dj = fcmp olt double %i.di, 0.000000e+00
  %.sroa.speculated67 = select i1 %i.dj, double 0.000000e+00, double %i.di
  %i.dk = call double @sqrt(double noundef %.sroa.speculated67) #22 ; 4 uses
  %i.dl = fadd <2 x double> %i.ck, splat (double 1.000000e+00)
  %i.dm = fcmp olt double %i.cn, 0.000000e+00
  %i.dn = fmul <2 x double> %i.dl, splat (double 5.000000e-01) ; 2 uses
  %i.do = fcmp olt <2 x double> %i.dn, zeroinitializer
  %i.dp = select <2 x i1> %i.do, <2 x double> zeroinitializer, <2 x double> %i.dn ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = call double @sqrt(double noundef %i.dq) #22 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv7omnidir15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_S3_:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 12884901891, ptr %i.fr, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %.critedge

bb.cb:                                            ; preds = %bb.bz
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cu

.critedge:                                        ; preds = %bb.bu, %bb.bv, %bb.ca, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.ft = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !225
  %i.fu = icmp eq i32 %i.ft, 65536
  br i1 %i.fu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.critedge
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !18, !noalias !225
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %i.fw)
  br label %_ZNK2cv11_InputArray6getMatEi.exit213

bb.cd:                                            ; preds = %.critedge
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit213

_ZNK2cv11_InputArray6getMatEi.exit213:            ; preds = %bb.cc, %bb.cd
  %i.fx = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.fz = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !226
  %i.ga = icmp eq i32 %i.fz, 65536
  br i1 %i.ga, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit213
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !18, !noalias !226
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %i.gc)
  br label %_ZNK2cv11_InputArray6getMatEi.exit214

bb.cf:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit213
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit214

_ZNK2cv11_InputArray6getMatEi.exit214:            ; preds = %bb.ce, %bb.cf
  %i.gd = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.gf = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !227
  %i.gg = icmp eq i32 %i.gf, 65536
  br i1 %i.gg, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit214
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !18, !noalias !227
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %34, ptr noundef nonnull align 8 dereferenceable(208) %i.gi)
  br label %_ZNK2cv11_InputArray6getMatEi.exit215

bb.ch:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit214
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit215

_ZNK2cv11_InputArray6getMatEi.exit215:            ; preds = %bb.cg, %bb.ch
  %i.gj = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.gl = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !228
  %i.gm = icmp eq i32 %i.gl, 65536
  br i1 %i.gm, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit215
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !18, !noalias !228
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %i.go)
  br label %_ZNK2cv11_InputArray6getMatEi.exit216

bb.cj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit215
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit216

_ZNK2cv11_InputArray6getMatEi.exit216:            ; preds = %bb.ci, %bb.cj
  %i.gp = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !34
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.gr = call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1) ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit216
  %i.gu = fneg double %.sroa.7291.0
  %i.gv = fmul double %.sroa.0287.0, %i.gu
  %i.gw = fneg double %.0129
  %i.gx = fmul double %.sroa.7291.0, %.sroa.0290.0
  %i.gy = shufflevector <4 x double> %i.dv, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.gz = fmul <2 x double> %i.gy, splat (double 2.000000e+00) ; 2 uses
  %i.ha = fneg <2 x double> %i.gy                 ; 2 uses
  %i.hb = fmul double %i.em, 2.000000e+00
  %i.hc = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %24, i64 56
  %wide.trip.count = and i64 %i.gr, 2147483647
  %i.hh = shufflevector <4 x double> %i.dv, <4 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hi = extractelement <2 x double> %i.ha, i64 0
  %i.hj = extractelement <2 x double> %i.gz, i64 0
  %i.hk = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = shufflevector <2 x double> %i.ha, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hm = shufflevector <4 x double> %i.hl, <4 x double> %i.dv, <2 x i32> <i32 0, i32 5>
  br label %bb.ck

._crit_edge:                                      ; preds = %bb.ct, %_ZNK2cv11_InputArray6getMatEi.exit216
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  ret void

bb.ck:                                            ; preds = %.lr.ph, %bb.ct
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ct ] ; 5 uses
  %i.hn = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ho = icmp eq i32 %i.hn, 5
  br i1 %i.ho, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv
  %i.hq = load <2 x float>, ptr %i.hp, align 4, !tbaa !36, !noalias !229
  %i.hr = fpext <2 x float> %i.hq to <2 x double>
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv
  %i.ht = load <2 x double>, ptr %i.hs, align 8, !tbaa !21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.hu = phi <2 x double> [ %i.hr, %bb.cl ], [ %i.ht, %bb.cm ] ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 0
  %i.hw = call double @llvm.fmuladd.f64(double %i.hv, double %.sroa.7291.0, double %i.gv)
  %i.hx = extractelement <2 x double> %i.hu, i64 1
  %i.hy = fsub double %i.hx, %.sroa.7288.0        ; 2 uses
  %i.hz = call double @llvm.fmuladd.f64(double %i.gw, double %i.hy, double %i.hw)
  %i.ia = fdiv double %i.hz, %i.gx                ; 2 uses
  %i.ib = fdiv double %i.hy, %.sroa.7291.0        ; 2 uses
  %i.ic = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ia, i64 0
  %i.id = insertelement <2 x double> poison, double %i.ib, i64 0
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %i.ie = fmul double %i.lh, %i.lh
  %i.if = call double @llvm.fmuladd.f64(double %i.kw, double %i.kw, double %i.ie) ; 3 uses
  %i.ig = fadd double %i.if, 1.000000e+00         ; 2 uses
  %i.ih = fmul double %i.hb, %i.if                ; 3 uses
  %i.ii = fmul double %i.em, %i.if
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double %i.em, double -1.000000e+00)
  %i.ik = fmul double %i.ig, 4.000000e+00
  %i.il = fneg double %i.ij
  %i.im = fmul double %i.ik, %i.il
  %i.in = call double @llvm.fmuladd.f64(double %i.ih, double %i.ih, double %i.im)
  %i.io = call double @sqrt(double noundef %i.in) #22
  %i.ip = fsub double %i.io, %i.ih
  %i.iq = fmul double %i.ig, 2.000000e+00
  %i.ir = fdiv double %i.ip, %i.iq                ; 3 uses
  %i.is = fadd double %i.em, %i.ir                ; 2 uses
  %i.it = load double, ptr %i.hf, align 16, !tbaa !21, !noalias !230
  %i.iu = load double, ptr %i.hg, align 8, !tbaa !21, !noalias !230
  %i.iv = load double, ptr %i.ep, align 16, !tbaa !21, !noalias !230
  %i.iw = fmul double %i.kw, %i.is                ; 2 uses
  %i.ix = fmul double %i.lh, %i.is                ; 2 uses
  %i.iy = load <2 x double>, ptr %24, align 16
  %i.iz = load <2 x double>, ptr %i.en, align 8
  %i.ja = load <2 x double>, ptr %i.hc, align 16
  %i.jb = load double, ptr %i.hd, align 8, !tbaa !21, !noalias !230
  %i.jc = insertelement <2 x double> %i.iy, double %i.jb, i64 1
  %i.jd = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.je, <2 x double> zeroinitializer)
  %i.jg = load double, ptr %i.eo, align 16, !tbaa !21, !noalias !230
  %i.jh = insertelement <2 x double> %i.iz, double %i.jg, i64 1
  %i.ji = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jj, <2 x double> %i.jf)
  %i.jl = load double, ptr %i.he, align 8, !tbaa !21, !noalias !230
  %i.jm = insertelement <2 x double> %i.ja, double %i.jl, i64 1
  %i.jn = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jo, <2 x double> %i.jk) ; 4 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.it, double %i.iw, double 0.000000e+00)
  %i.jr = call double @llvm.fmuladd.f64(double %i.iu, double %i.ix, double %i.jq)
  %i.js = call double @llvm.fmuladd.f64(double %i.iv, double %i.ir, double %i.jr) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.jp, %i.jp
  %36 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.jt = extractelement <2 x double> %i.jp, i64 1 ; 2 uses
  %i.ju = call double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double %36)
  %i.jv = call noundef double @llvm.fmuladd.f64(double %i.js, double %i.js, double %i.ju)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.jv)
  %i.jw = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.jx = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x double> %i.jp, %i.jy
  %i.ka = fmul double %i.js, %i.jw
  %i.kb = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = fdiv <2 x double> %i.jz, %i.kc          ; 2 uses
  %i.ke = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.kf = icmp eq i32 %i.ke, 5
  br i1 %i.kf, label %bb.cq, label %bb.cr

bb.cp:                                            ; preds = %bb.cn, %bb.cp
  %.0117318 = phi i32 [ 0, %bb.cn ], [ %i.li, %bb.cp ]
  %.sroa.0236.0317 = phi double [ %i.ia, %bb.cn ], [ %i.kw, %bb.cp ] ; 5 uses
  %.sroa.13.0316 = phi double [ %i.ib, %bb.cn ], [ %i.lh, %bb.cp ] ; 4 uses
  %i.kg = fmul double %.sroa.13.0316, %.sroa.13.0316
  %i.kh = fneg double %.sroa.0236.0317
  %i.ki = fmul double %i.hj, %i.kh
  %i.kj = fmul double %.sroa.0236.0317, 2.000000e+00
  %i.kk = insertelement <2 x double> %i.hh, double %i.ki, i64 0
  %i.kl = insertelement <2 x double> poison, double %.sroa.13.0316, i64 0
  %i.km = call double @llvm.fmuladd.f64(double %.sroa.0236.0317, double %.sroa.0236.0317, double %i.kg) ; 5 uses
  %i.kn = fmul double %i.km, %i.km
  %i.ko = call double @llvm.fmuladd.f64(double %i.kj, double %.sroa.0236.0317, double %i.km)
  %i.kp = insertelement <2 x double> %i.kl, double %i.km, i64 1
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.kp, <2 x double> %i.ic)
  %i.kr = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.ks = insertelement <2 x double> %i.kr, double %i.kn, i64 1
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.ks, <2 x double> %i.kq) ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0
  %i.kv = extractelement <2 x double> %i.kt, i64 1 ; 2 uses
  %i.kw = fdiv double %i.ku, %i.kv                ; 5 uses
  %i.kx = fneg double %i.kw
  %i.ky = insertelement <2 x double> %i.hk, double %.sroa.13.0316, i64 1 ; 2 uses
  %i.kz = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.kx, i64 0
  %i.la = fmul <2 x double> %i.ky, %i.kz
  %i.lb = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lc = insertelement <2 x double> %i.id, double %i.km, i64 1
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.lb, <2 x double> %i.lc) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = extractelement <2 x double> %i.ld, i64 1
  %i.lg = call double @llvm.fmuladd.f64(double %i.hi, double %i.lf, double %i.le)
  %i.lh = fdiv double %i.lg, %i.kv                ; 4 uses
  %i.li = add nuw nsw i32 %.0117318, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.li, 20
  br i1 %exitcond.not, label %bb.co, label %bb.cp, !llvm.loop !213

bb.cq:                                            ; preds = %bb.co
  %i.lj = fptrunc <2 x double> %i.kd to <2 x float>
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv
  store <2 x float> %i.lj, ptr %i.lk, align 4
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  %i.ll = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.lm = icmp eq i32 %i.ll, 6
  br i1 %i.lm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %indvars.iv
  store <2 x double> %i.kd, ptr %i.ln, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.cq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond322.not, label %._crit_edge, label %bb.ck, !llvm.loop !214

bb.cu:                                            ; preds = %bb.cb, %bb.bt
  %.pn149.pn = phi { ptr, i32 } [ %i.fs, %bb.cb ], [ %.pn146.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %.critedge175

.critedge175:                                     ; preds = %bb.ar, %bb.ax, %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn149.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.de, %bb.ax ], [ %i.co, %bb.ar ], [ %.pn149.pn, %bb.cu ]
  resume { ptr, i32 } %.pn149.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %9) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Range", align 4        ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator", align 1   ; 3 uses
  %30 = alloca %"class.cv::Matx.5", align 4       ; 9 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %32 = alloca %"class.cv::Matx.8", align 8       ; 9 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %38 = alloca %"class.cv::Matx.8", align 16      ; 14 uses
  %39 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %45 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %46 = alloca %"class.cv::Matx.8", align 8       ; 13 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Matx.8", align 8       ; 5 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %52 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = icmp eq i32 %6, 35                       ; 2 uses
  %i.b = icmp eq i32 %6, 5                        ; 2 uses
  %i.c = icmp slt i32 %6, 1
  br i1 %i.c, label %bb.g, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %6, label %bb.b [
    i32 35, label %bb.g
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i, ptr noundef nonnull @.str.1, i32 noundef 352) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %12, align 8, !tbaa !26    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !27
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.critedge394

bb.g:                                             ; preds = %switch.early.test, %switch.early.test, %bb.a
  %i.k = phi i32 [ %6, %switch.early.test ], [ %6, %switch.early.test ], [ 35, %bb.a ]
  %.sroa.0216.0.copyload = load i64, ptr %5, align 4, !tbaa !19
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %.sroa.0216.0.copyload, i32 noundef %i.k, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  %.sroa.0.0.copyload = load i64, ptr %5, align 4, !tbaa !19
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  %i.m = icmp eq i32 %i.l, 35
  %i.n = select i1 %i.m, i32 2, i32 5
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.0.0.copyload, i32 noundef %i.n, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  %i.o = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
end_hunk_1
begin_hunk_2_@_ZN2cv7omnidir8internal21initializeCalibrationERKNS_11_InputArrayES4_NS_5Size_IiEERKNS_12_OutputArrayES9_S9_RdS9_:bb.a

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn446.pn = phi { ptr, i32 } [ %i.rj, %bb.ea ], [ %i.ri, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %130) #22
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dy
  %.pn446.pn.pn = phi { ptr, i32 } [ %.pn446.pn, %bb.eb ], [ %i.rh, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #22
  br label %bb.nh

bb.ed:                                            ; preds = %bb.bw
  %i.rk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #22
  br label %bb.ng

bb.ee:                                            ; preds = %bb.bx
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.by
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %140) #22
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn455 = phi { ptr, i32 } [ %i.rm, %bb.ef ], [ %i.rl, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #22
  br label %bb.ng

bb.eh:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit, %bb.ep
  %.01411878 = phi i32 [ 1, %_ZN2cv3MataSERKNS_7MatExprE.exit ], [ %i.uu, %bb.ep ] ; 3 uses
  %.01421877 = phi double [ 1.000000e+05, %_ZN2cv3MataSERKNS_7MatExprE.exit ], [ %.2, %bb.ep ]
  %i.rn = load i32, ptr %i.du, align 4, !tbaa !60
  %i.ro = load ptr, ptr %i.dv, align 8, !tbaa !34 ; 6 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !21
  %i.rr = sitofp i32 %.01411878 to double         ; 3 uses
  %i.rs = fmul double %i.rq, %i.rr                ; 5 uses
  %i.rt = icmp slt i32 %i.rn, 2                   ; 5 uses
  %i.ru = load i64, ptr %i.dw, align 8            ; 5 uses
  %.sink.idx.i = select i1 %i.rt, i64 0, i64 %i.ru
  %.sink.i663 = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sink.idx.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.sink.i663, i64 40
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !21
  %i.rx = shl i64 %i.ru, 1
  %.sink.idx.i664 = select i1 %i.rt, i64 0, i64 %i.rx
  %.sink.i665 = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sink.idx.i664
  %i.ry = getelementptr inbounds nuw i8, ptr %.sink.i665, i64 40
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !21
  %i.sa = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.sb = insertelement <2 x double> %i.sa, double %i.rz, i64 1
  %i.sc = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.se = fmul <2 x double> %i.sb, %i.sd          ; 6 uses
  %i.sf = mul i64 %i.ru, 3
  %.sink.idx.i666 = select i1 %i.rt, i64 0, i64 %i.sf
  %.sink.i667 = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sink.idx.i666
  %i.sg = getelementptr inbounds nuw i8, ptr %.sink.i667, i64 40
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !21
  %i.si = fmul double %i.sh, %i.rr                ; 4 uses
  %i.sj = shl i64 %i.ru, 2
  %.sink.idx.i668 = select i1 %i.rt, i64 0, i64 %i.sj
  %.sink.i669 = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sink.idx.i668
  %i.sk = getelementptr inbounds nuw i8, ptr %.sink.i669, i64 40
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !21
  %i.sm = mul i64 %i.ru, 5
  %.sink.idx.i670 = select i1 %i.rt, i64 0, i64 %i.sm
  %.sink.i671 = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sink.idx.i670
  %i.sn = getelementptr inbounds nuw i8, ptr %.sink.i671, i64 40
  %i.so = load double, ptr %i.sn, align 8, !tbaa !21
  %i.sp = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %i.so, i64 1
  %i.sr = fmul <2 x double> %i.sq, %i.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %141) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #22
  %i.ss = extractelement <2 x double> %i.se, i64 0 ; 2 uses
  %i.st = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.su = insertelement <2 x double> %i.se, double %i.si, i64 0
  %i.sv = fmul <2 x double> %i.st, %i.su
  %i.sw = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = insertelement <2 x double> %i.se, double %i.rs, i64 1
  %i.sz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> %i.sy, <2 x double> %i.sv) ; 2 uses
  %i.ta = extractelement <2 x double> %i.sz, i64 0 ; 2 uses
  %i.tb = fneg double %i.ta                       ; 2 uses
  %i.tc = fmul double %i.ta, %i.tb
  %i.td = fneg double %i.ss
  %i.te = extractelement <2 x double> %i.sz, i64 1
  %i.tf = call double @llvm.fmuladd.f64(double %i.td, double %i.ss, double %i.te)
  %i.tg = fneg double %i.si
  %i.th = call double @llvm.fmuladd.f64(double %i.tg, double %i.si, double %i.tf)
  store double %i.tc, ptr %143, align 8, !tbaa !21
  store double %i.th, ptr %i.dx, align 8, !tbaa !21
  store double 1.000000e+00, ptr %i.dy, align 8, !tbaa !21
  store i32 -1056833530, ptr %142, align 8, !tbaa !17
  store ptr %143, ptr %i.ea, align 8, !tbaa !18
  store i64 4294967299, ptr %i.dz, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #22
  store i64 0, ptr %i.ec, align 8
  store i32 33619968, ptr %144, align 8, !tbaa !17
  store ptr %141, ptr %i.eb, align 8, !tbaa !18
  %i.ti = invoke noundef double @_ZN2cv9solvePolyERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %142, ptr noundef nonnull align 8 dereferenceable(24) %144, i32 noundef 300)
          to label %bb.ei unwind label %bb.ek     ; 0 uses

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #22
  %i.tj = load i32, ptr %i.ed, align 4, !tbaa !60
  %i.tk = icmp slt i32 %i.tj, 2
  br i1 %i.tk, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tl = load i32, ptr %141, align 8, !tbaa !39
  %i.tm = and i32 %i.tl, 16384
  %i.tn = icmp ne i32 %i.tm, 0
  %i.to = load i32, ptr %i.ee, align 4
  %i.tp = icmp eq i32 %i.to, 1                    ; 2 uses
  %or.cond.i672 = select i1 %i.tn, i1 true, i1 %i.tp
  %i.tq = load ptr, ptr %i.eg, align 8, !tbaa !34 ; 4 uses
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !21 ; 3 uses
  %i.ts = fcmp ogt double %i.tr, 0.000000e+00     ; 2 uses
  br i1 %or.cond.i672, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread1962, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit

_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit:         ; preds = %bb.ej
  br i1 %i.ts, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675, label %bb.el

_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread1962: ; preds = %bb.ej
  br i1 %i.ts, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675, label %.thread1964

_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread:  ; preds = %bb.ei
  %i.tt = load ptr, ptr %i.eg, align 8, !tbaa !34 ; 2 uses
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !21 ; 2 uses
  %i.tv = fcmp ogt double %i.tu, 0.000000e+00
  br i1 %i.tv, label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675, label %.thread1735

bb.ek:                                            ; preds = %bb.eh
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #22
  br label %bb.nf

.thread1735:                                      ; preds = %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  br label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678

bb.el:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit
  br i1 %i.tp, label %.thread1964, label %bb.em

.thread1964:                                      ; preds = %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread1962, %bb.el
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  br label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678

bb.em:                                            ; preds = %bb.el
  %i.tz = load i32, ptr %i.ef, align 8, !tbaa !19
  %i.ua = icmp eq i32 %i.tz, 1
  br i1 %i.ua, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ub = load i64, ptr %i.ei, align 8, !tbaa !38
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ub
  br label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678

bb.eo:                                            ; preds = %bb.em
  %i.ud = load i32, ptr %i.eh, align 4, !tbaa !46
  %.fr = freeze i32 %i.ud                         ; 3 uses
  %i.ue = add i32 %.fr, 1
  %i.uf = icmp ult i32 %i.ue, 3
  %i.ug = select i1 %i.uf, i32 %.fr, i32 0        ; 2 uses
  %i.uh = mul nsw i32 %i.ug, %.fr
  %i.ui = sub nsw i32 1, %i.uh
  %i.uj = load i64, ptr %i.ei, align 8, !tbaa !38
  %i.uk = sext i32 %i.ug to i64
  %i.ul = mul i64 %i.uj, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ul
  %i.un = sext i32 %i.ui to i64
  %i.uo = getelementptr inbounds [16 x i8], ptr %i.um, i64 %i.un
  br label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678

_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678:      ; preds = %.thread1735, %.thread1964, %bb.en, %bb.eo
  %.0.i677 = phi ptr [ %i.tx, %.thread1735 ], [ %i.ty, %.thread1964 ], [ %i.uc, %bb.en ], [ %i.uo, %bb.eo ]
  %i.up = load double, ptr %.0.i677, align 8, !tbaa !21
  br label %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675

_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675:      ; preds = %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread1962, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678
  %.sink = phi double [ %i.up, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit678 ], [ %i.tr, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread1962 ], [ %i.tu, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit.thread ], [ %i.tr, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit ]
  %i.uq = call double @sqrt(double noundef %.sink) #22
  %265 = fmul double %i.rs, %i.rs
  %i.ur = extractelement <2 x double> %i.se, i64 1 ; 2 uses
  %i.us = call double @llvm.fmuladd.f64(double %i.ur, double %i.ur, double %265)
  %i.ut = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.tb, i64 1
  br label %bb.eq

bb.ep:                                            ; preds = %bb.mv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %141) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #22
  %i.uu = add nsw i32 %.01411878, -2
  %i.uv = icmp sgt i32 %.01411878, 0
  br i1 %i.uv, label %bb.eh, label %bb.bz, !llvm.loop !324

bb.eq:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675, %bb.mv
  %.01391876 = phi i32 [ 1, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675 ], [ %i.adr, %bb.mv ] ; 3 uses
  %.11875 = phi double [ %.01421877, %_ZN2cv3Mat2atINS_3VecIdLi2EEEEERT_i.exit675 ], [ %.2, %bb.mv ] ; 2 uses
  %i.uw = sitofp i32 %.01391876 to double
  %i.ux = fmul double %i.uq, %i.uw                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #22
  %i.uy = call noundef double @llvm.fmuladd.f64(double %i.ux, double %i.ux, double %i.us)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.uy)
  %i.uz = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.va = insertelement <2 x double> %i.uz, double %i.ux, i64 1 ; 3 uses
  %i.vb = fdiv <2 x double> %i.ut, %i.va          ; 5 uses
  %i.vc = insertelement <2 x double> %i.va, double %i.rs, i64 0
  %i.vd = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ve = fmul <2 x double> %i.vc, %i.vd          ; 2 uses
  %i.vf = fmul <2 x double> %i.se, %i.vd          ; 3 uses
  %i.vg = shufflevector <2 x double> %i.va, <2 x double> %i.vb, <2 x i32> <i32 1, i32 2>
  %i.vh = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vi = insertelement <2 x double> %i.vh, double %i.si, i64 1
  %i.vj = fmul <2 x double> %i.vb, %i.vg          ; 3 uses
  %i.vk = fmul <2 x double> %i.vi, %i.vd          ; 2 uses
  %i.vl = extractelement <2 x double> %i.vb, i64 0
  %i.vm = fmul double %i.vl, 0.000000e+00
  %i.vn = fmul <2 x double> %i.sr, %i.vd
  store <2 x double> %i.vn, ptr %145, align 16
  store double %i.vm, ptr %i.ek, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #22
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %146, i32 noundef %i.pk, i32 noundef 3, i32 noundef 6)
          to label %bb.er unwind label %bb.gk

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #22
  %i.vo = extractelement <2 x double> %i.vf, i64 1 ; 3 uses
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %151, double noundef %i.vo, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.es unwind label %bb.gl

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #22
  %i.vp = extractelement <2 x double> %i.vk, i64 1 ; 3 uses
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %152, double noundef %i.vp, ptr noundef nonnull align 8 dereferenceable(208) %88)
          to label %bb.et unwind label %bb.gm

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %150, ptr noundef nonnull align 8 dereferenceable(688) %151, ptr noundef nonnull align 8 dereferenceable(688) %152)
          to label %bb.eu unwind label %bb.gn

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #22
  %i.vq = load double, ptr %i.ej, align 8, !tbaa !21
  store double %i.vq, ptr %153, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  invoke void @_ZN2cvplERKNS_7MatExprERKNS_7Scalar_IdEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %149, ptr noundef nonnull align 8 dereferenceable(688) %150, ptr noundef nonnull align 8 dereferenceable(32) %153)
          to label %bb.ev unwind label %bb.go

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %148, ptr noundef nonnull align 8 dereferenceable(688) %149, double noundef 2.000000e+00)
          to label %bb.ew unwind label %bb.gp

bb.ew:                                            ; preds = %bb.ev
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %147) #22
  %i.vr = load ptr, ptr %148, align 8, !tbaa !55, !noalias !406 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !57
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8
  invoke void %i.vu(ptr noundef nonnull align 8 dereferenceable(8) %i.vr, ptr noundef nonnull align 8 dereferenceable(688) %148, ptr noundef nonnull align 8 dereferenceable(208) %147, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit681 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %.body679

_ZNK2cv7MatExprcvNS_3MatEEv.exit681:              ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22, !noalias !407
  store i32 0, ptr %56, align 4, !tbaa !41, !noalias !407
  store i32 %i.mm, ptr %i.em, align 4, !tbaa !42, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22, !noalias !407
  store i64 9223372034707292160, ptr %57, align 8, !noalias !407
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %156, ptr noundef nonnull align 8 dereferenceable(208) %146, ptr noundef nonnull align 4 dereferenceable(8) %56, ptr noundef nonnull align 4 dereferenceable(8) %57)
          to label %bb.ey unwind label %bb.gq

bb.ey:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit681
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22, !noalias !408
  store i64 9223372034707292160, ptr %54, align 8, !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22, !noalias !408
  store i32 0, ptr %55, align 4, !tbaa !41, !noalias !408
  store i32 1, ptr %i.en, align 4, !tbaa !42, !noalias !408
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %155, ptr noundef nonnull align 8 dereferenceable(208) %156, ptr noundef nonnull align 4 dereferenceable(8) %54, ptr noundef nonnull align 4 dereferenceable(8) %55)
          to label %bb.ez unwind label %bb.gr

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22, !noalias !408
  store i64 0, ptr %i.ep, align 8
  store i32 -1040121856, ptr %154, align 8, !tbaa !17
  store ptr %155, ptr %i.eo, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %147, ptr noundef nonnull align 8 dereferenceable(24) %154)
          to label %bb.fa unwind label %bb.gs

bb.fa:                                            ; preds = %bb.ez
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %155) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %156) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %147) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eq) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.er) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.es) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.et) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eu) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ev) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ew) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ex) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ey) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ez) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fa) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #22
  %i.vw = extractelement <2 x double> %i.ve, i64 0 ; 3 uses
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %161, double noundef %i.vw, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.fb unwind label %bb.ha

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #22
  %i.vx = extractelement <2 x double> %i.vf, i64 0 ; 3 uses
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %162, double noundef %i.vx, ptr noundef nonnull align 8 dereferenceable(208) %88)
          to label %bb.fc unwind label %bb.hb

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %160, ptr noundef nonnull align 8 dereferenceable(688) %161, ptr noundef nonnull align 8 dereferenceable(688) %162)
          to label %bb.fd unwind label %bb.hc

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #22
  %i.vy = load double, ptr %145, align 16, !tbaa !21
  store double %i.vy, ptr %163, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  invoke void @_ZN2cvplERKNS_7MatExprERKNS_7Scalar_IdEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %159, ptr noundef nonnull align 8 dereferenceable(688) %160, ptr noundef nonnull align 8 dereferenceable(32) %163)
          to label %bb.fe unwind label %bb.hd

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %158, ptr noundef nonnull align 8 dereferenceable(688) %159, double noundef 2.000000e+00)
          to label %bb.ff unwind label %bb.he

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %157) #22
  %i.vz = load ptr, ptr %158, align 8, !tbaa !55, !noalias !409 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !57
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8
  invoke void %i.wc(ptr noundef nonnull align 8 dereferenceable(8) %i.vz, ptr noundef nonnull align 8 dereferenceable(688) %158, ptr noundef nonnull align 8 dereferenceable(208) %157, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit687 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.body685

_ZNK2cv7MatExprcvNS_3MatEEv.exit687:              ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22, !noalias !410
  store i32 %i.mm, ptr %52, align 4, !tbaa !41, !noalias !410
  store i32 %i.pk, ptr %i.fg, align 4, !tbaa !42, !noalias !410
end_hunk_2
