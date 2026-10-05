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
  %i.hu = fmul <2 x double> %i.ht, <double 2.000000e+00, double 6.000000e+00> ; 2 uses
  %wide.trip.count = and i64 %i.bp, 2147483647
  %i.hv = insertelement <2 x double> poison, double %.sroa.8735.0, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = extractelement <2 x double> %i.hu, i64 0 ; 2 uses
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
  %i.js = call double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double 0.000000e+00)
  %i.jt = extractelement <2 x double> %i.jr, i64 1 ; 3 uses
  %i.ju = call double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double %i.js)
  %i.jv = extractelement <2 x double> %i.jr, i64 0 ; 3 uses
  %i.jw = call noundef double @llvm.fmuladd.f64(double %i.jv, double %i.jv, double %i.ju)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.jw)
  %i.jx = fdiv double 1.000000e+00, %sqrt.i       ; 4 uses
  %i.jy = fmul double %i.jv, %i.jx
  %i.jz = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ka = insertelement <2 x double> %i.jz, double %i.jd, i64 1
  %i.kb = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul <2 x double> %i.ka, %i.kc          ; 3 uses
  %i.ke = fadd double %5, %i.jy                   ; 4 uses
  %i.kf = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kh = fdiv <2 x double> %i.kd, %i.kg          ; 16 uses
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kj = extractelement <2 x double> %i.kh, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.kh, %i.kh
  %i.kk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kl = extractelement <2 x double> %i.kh, i64 1 ; 6 uses
  %i.km = call double @llvm.fmuladd.f64(double %i.kl, double %i.kl, double %i.kk) ; 5 uses
  %i.kn = fmul double %i.km, %i.km                ; 3 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.hn, double %i.km, double 1.000000e+00)
  %i.kp = call double @llvm.fmuladd.f64(double %i.hp, double %i.kn, double %i.ko)
  %i.kq = fmul double %i.hx, %i.kl
  %43 = fmul <2 x double> %i.kh, splat (double 2.000000e+00) ; 2 uses
  %44 = insertelement <2 x double> poison, double %i.km, i64 0 ; 3 uses
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %46 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %i.kh, <2 x double> %45) ; 6 uses
  %i.kr = fmul double %i.if, %i.kl                ; 2 uses
  %47 = shufflevector <2 x double> %46, <2 x double> %i.kh, <2 x i32> <i32 0, i32 2>
  %48 = insertelement <2 x double> %39, double %i.kq, i64 1
  %i.ks = fmul <2 x double> %47, %48
  %i.kt = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.ku, <2 x double> %i.ks)
  %49 = insertelement <2 x double> %i.hr, double %i.kr, i64 0
  %50 = shufflevector <2 x double> %i.kh, <2 x double> %46, <2 x i32> <i32 0, i32 3>
  %51 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %50, <2 x double> %i.kv) ; 3 uses
  %52 = extractelement <2 x double> %51, i64 0    ; 3 uses
  %i.kw = fmul double %i.hz, %52
  %53 = insertelement <2 x double> %42, double %i.kw, i64 1
  %54 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %51, <2 x double> %53) ; 3 uses
  %55 = extractelement <2 x double> %54, i64 1
  %i.kx = fadd double %.sroa.0732.0, %55          ; 2 uses
  %i.ky = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.kz = icmp eq i32 %i.ky, 5
  br i1 %i.kz, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.la = insertelement <2 x double> poison, double %i.kx, i64 0
  %56 = shufflevector <2 x double> %i.la, <2 x double> %54, <2 x i32> <i32 0, i32 2>
  %i.lb = fptrunc <2 x double> %56 to <2 x float>
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  store <2 x float> %i.lb, ptr %i.lc, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv ; 2 uses
  store double %i.kx, ptr %i.ld, align 8
  %.sroa.6608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %57 = extractelement <2 x double> %54, i64 0
  store double %57, ptr %.sroa.6608.0..sroa_idx, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.le = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.le, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lf = call noundef double @pow(double noundef %i.jx, double noundef 3.000000e+00) #22 ; 3 uses
  %i.lg = fneg double %i.jd
  %i.lh = fmul double %i.jd, %i.lg
  %i.li = load double, ptr %i.hm, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.lj = insertelement <2 x double> poison, double %i.li, i64 0 ; 2 uses
  %i.lk = insertelement <2 x double> %i.jo, double %i.lh, i64 1
  %i.ll = insertelement <2 x double> %i.lj, double %i.lf, i64 1
  %i.lm = fneg <2 x double> %i.jr                 ; 3 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0
  %i.lo = fmul double %i.jt, %i.ln
  %i.lp = fmul double %i.lo, %i.lf                ; 2 uses
  %i.lq = fmul <2 x double> %i.jr, %i.lm
  %i.lr = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.ls, <2 x double> %i.kc) ; 2 uses
  %i.lu = extractelement <2 x double> %i.kd, i64 1
  %i.lv = fneg double %i.lu
  %i.lw = fdiv double %i.lv, %i.ke
  %i.lx = extractelement <2 x double> %i.kd, i64 0
  %i.ly = fneg double %i.lx
  %i.lz = fdiv double %i.ly, %i.ke
  %i.ma = fmul <2 x double> %i.ie, %i.kh
  %i.mb = fmul <2 x double> %i.ma, %45            ; 2 uses
  %i.mc = fmul <2 x double> %i.hs, %i.kh          ; 2 uses
  %i.md = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mg = insertelement <2 x double> %i.mf, double %i.kr, i64 1
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.me, <2 x double> %i.mg)
  %i.mi = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.mi, <2 x double> %i.mh) ; 2 uses
  %i.mk = insertelement <2 x double> %44, double %i.kn, i64 1 ; 2 uses
  %i.ml = fmul <2 x double> %i.mi, %i.mk          ; 2 uses
  %i.mm = load <16 x double>, ptr %34, align 8, !tbaa !21, !noalias !162 ; 9 uses
  %i.mn = load double, ptr %i.hc, align 8, !tbaa !21, !noalias !162
  %i.mo = load <2 x double>, ptr %i.hk, align 8, !tbaa !21, !noalias !162
  %i.mp = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 0, i32 9> ; 2 uses
  %i.mq = insertelement <2 x double> %i.mp, double %i.mn, i64 1
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.mq, <2 x double> zeroinitializer)
  %i.ms = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 1, i32 10> ; 2 uses
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.ms, <2 x double> %i.mr)
  %i.mu = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 2, i32 11> ; 2 uses
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.mu, <2 x double> %i.mt)
  %i.mw = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 3, i32 12> ; 3 uses
  %i.mx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> %i.mv)
  %i.my = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 4, i32 13> ; 3 uses
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> zeroinitializer, <2 x double> %i.mx)
  %i.na = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 5, i32 14> ; 3 uses
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> zeroinitializer, <2 x double> %i.mz)
  %i.nc = shufflevector <16 x double> %i.mm, <16 x double> poison, <2 x i32> <i32 6, i32 15> ; 3 uses
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> zeroinitializer, <2 x double> %i.nb)
  %i.ne = shufflevector <2 x double> %i.mo, <2 x double> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.nf = shufflevector <16 x double> %i.mm, <16 x double> %i.ne, <2 x i32> <i32 7, i32 16> ; 3 uses
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> zeroinitializer, <2 x double> %i.nd)
  %i.nh = shufflevector <16 x double> %i.mm, <16 x double> %i.ne, <2 x i32> <i32 8, i32 17> ; 3 uses
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> zeroinitializer, <2 x double> %i.ng) ; 2 uses
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> zeroinitializer, <2 x double> %i.nj)
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> zeroinitializer, <2 x double> %i.nk) ; 2 uses
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.mw, <2 x double> %i.nl)
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.my, <2 x double> %i.nm)
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.na, <2 x double> %i.nn)
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> zeroinitializer, <2 x double> %i.no)
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> zeroinitializer, <2 x double> %i.np)
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> zeroinitializer, <2 x double> %i.nq) ; 2 uses
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> %i.nl)
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> zeroinitializer, <2 x double> %i.ns)
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> zeroinitializer, <2 x double> %i.nt)
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.nc, <2 x double> %i.nu)
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.nf, <2 x double> %i.nv)
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.nh, <2 x double> %i.nw) ; 2 uses
  %i.ny = shufflevector <2 x double> %i.lt, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.nz = insertelement <3 x double> %i.ny, double %i.lp, i64 0
  %i.oa = shufflevector <2 x double> %i.lt, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ob = insertelement <3 x double> %i.oa, double %i.lp, i64 1
  %.sroa.5334.0..1210.sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %.1210768, i64 128
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 144
  %i.od = getelementptr inbounds nuw i8, ptr %.1210768, i64 24
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 40
  %i.oe = getelementptr inbounds nuw i8, ptr %.1210768, i64 152
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 168
  %.sroa.6322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 120
  %i.of = getelementptr inbounds nuw i8, ptr %.1210768, i64 224
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 240
  %i.og = getelementptr inbounds nuw i8, ptr %.1210768, i64 88
  %i.oh = shufflevector <2 x double> %i.kh, <2 x double> %46, <2 x i32> <i32 3, i32 1>
  %i.oi = insertelement <2 x double> %i.mb, double 0.000000e+00, i64 0
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.oh, <2 x double> %i.oi) ; 3 uses
  %i.ok = extractelement <2 x double> %i.mj, i64 0
  %i.ol = extractelement <2 x double> %i.oj, i64 1
  %i.om = call double @llvm.fmuladd.f64(double %i.kl, double %i.ol, double %i.ok)
  %i.on = call double @llvm.fmuladd.f64(double %i.hn, double %i.km, double %i.om)
  %i.oo = fadd double %i.on, 1.000000e+00         ; 2 uses
  %i.op = extractelement <2 x double> %i.mc, i64 0
  %i.oq = call double @llvm.fmuladd.f64(double %i.hx, double %i.kl, double %i.op)
  %i.or = extractelement <2 x double> %i.mj, i64 1
  %i.os = insertelement <2 x double> %44, double %i.oo, i64 1
  %i.ot = extractelement <2 x double> %i.mb, i64 0
  %i.ou = call double @llvm.fmuladd.f64(double %i.ho, double %i.kj, double %i.ot) ; 2 uses
  %i.ov = insertelement <2 x double> %i.oj, double %i.ou, i64 0
  %i.ow = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.ox = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.ov, <2 x double> %i.ox) ; 2 uses
  %i.oz = call double @llvm.fmuladd.f64(double %i.kj, double %i.ou, double %i.or)
  %i.pa = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.oz, i64 0
  %i.pb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.os, <2 x double> %i.pa) ; 2 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 0
  %i.pd = fadd double %i.pc, 1.000000e+00         ; 2 uses
  %i.pe = insertelement <2 x double> %i.pb, double 0.000000e+00, i64 0
  %i.pf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.oy, <2 x double> %i.pe) ; 4 uses
  %i.pg = extractelement <2 x double> %i.pf, i64 0
  %i.ph = call double @llvm.fmuladd.f64(double %i.hz, double %i.pd, double %i.pg) ; 3 uses
  %i.pi = call double @llvm.fmuladd.f64(double %i.oo, double 0.000000e+00, double 0.000000e+00)
  %i.pj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.pi, i64 1
  %i.pk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.oy, <2 x double> %i.pj) ; 3 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 0
  %i.pm = extractelement <2 x double> %i.pf, i64 1
  %i.pn = insertelement <2 x double> %i.pf, double %i.ph, i64 0
  %i.po = insertelement <2 x double> %i.pk, double %i.ph, i64 0
  %i.pp = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.lw, i64 1
  %i.pq = fdiv <2 x double> %i.pp, %i.kg          ; 4 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 0
  %i.ps = call double @llvm.fmuladd.f64(double %i.pm, double %i.pr, double 0.000000e+00)
  %i.pt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ps, i64 0
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> zeroinitializer, <2 x double> %i.pt) ; 2 uses
  %i.pv = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = shufflevector <2 x double> %i.pu, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.px = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.pv, <2 x double> %i.pw) ; 2 uses
  %i.py = shufflevector <2 x double> %i.px, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.pz = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qa = fmul <2 x double> %i.pz, %i.mk          ; 2 uses
  %i.qb = shufflevector <2 x double> %i.pf, <2 x double> %i.es, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.qc = shufflevector <2 x double> %i.pq, <2 x double> %i.qa, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.qd = insertelement <4 x double> %i.ia, double %i.ph, i64 0
  %i.qe = shufflevector <4 x double> %i.qd, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.qf = shufflevector <2 x double> %i.ml, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qg = fdiv double %i.lz, %i.ke                ; 2 uses
  %i.qh = call double @llvm.fmuladd.f64(double %.sroa.8735.0, double %i.pd, double %i.pl) ; 2 uses
  %i.qi = insertelement <2 x double> %i.pk, double %i.qh, i64 0 ; 2 uses
  %i.qj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> zeroinitializer, <2 x double> %i.py) ; 2 uses
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ql = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> %i.pq, <2 x double> %i.qk) ; 2 uses
  %shift = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop782 = fmul <2 x double> %i.kh, %shift ; 4 uses
  %i.qm = shufflevector <2 x double> %foldExtExtBinop782, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x double> %i.qc, <4 x double> %i.qm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.qo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qb, <4 x double> %i.qn, <4 x double> zeroinitializer)
  %i.qp = insertelement <4 x double> poison, double %i.qg, i64 0
  %i.qq = shufflevector <4 x double> %i.qp, <4 x double> %i.qf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qr = shufflevector <2 x double> %46, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qs = shufflevector <4 x double> %i.qq, <4 x double> %i.qr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.qt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qe, <4 x double> %i.qs, <4 x double> %i.qo) ; 2 uses
  %i.qu = insertelement <2 x double> %i.es, double %i.qh, i64 0
  %i.qv = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.qw = shufflevector <2 x double> %i.qv, <2 x double> %foldExtExtBinop782, <2 x i32> <i32 0, i32 2>
  %i.qx = shufflevector <2 x double> %i.ql, <2 x double> %i.oj, <2 x i32> <i32 1, i32 2>
  %i.qy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qu, <2 x double> %i.qw, <2 x double> %i.qx) ; 3 uses
  %i.qz = shufflevector <2 x double> %i.pu, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ra = shufflevector <2 x double> %i.px, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rb = shufflevector <4 x double> %i.qt, <4 x double> poison, <3 x i32> zeroinitializer
  %i.rc = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.rd = shufflevector <2 x double> %i.rc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x double> %i.rd, %i.lm
  %i.rf = fmul <2 x double> %i.re, %i.ls          ; 2 uses
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.rh = shufflevector <3 x double> %i.nz, <3 x double> %i.rg, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.ri = shufflevector <3 x double> %i.ob, <3 x double> %i.rg, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.rj = shufflevector <2 x double> %i.qj, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rk = shufflevector <2 x double> %i.ql, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rl = shufflevector <2 x double> %i.qy, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rm = load double, ptr %i.hd, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.rn = load double, ptr %i.he, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.ro = load double, ptr %i.hf, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.rp = load double, ptr %i.hg, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.rq = load double, ptr %i.hh, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.rr = call double @llvm.fmuladd.f64(double %i.iw, double %i.rm, double 0.000000e+00)
  %i.rs = call double @llvm.fmuladd.f64(double %i.iz, double %i.rn, double %i.rr)
  %i.rt = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.ro, double %i.rs)
  %i.ru = call double @llvm.fmuladd.f64(double %i.rp, double 0.000000e+00, double %i.rt)
  %i.rv = call double @llvm.fmuladd.f64(double %i.rq, double 0.000000e+00, double %i.ru)
  %i.rw = call double @llvm.fmuladd.f64(double %i.rm, double 0.000000e+00, double 0.000000e+00)
  %i.rx = call double @llvm.fmuladd.f64(double %i.rn, double 0.000000e+00, double %i.rw)
  %i.ry = call double @llvm.fmuladd.f64(double %i.ro, double 0.000000e+00, double %i.rx) ; 2 uses
  %i.rz = call double @llvm.fmuladd.f64(double %i.iw, double %i.rp, double %i.ry)
  %i.sa = call double @llvm.fmuladd.f64(double %i.iz, double %i.rq, double %i.rz)
  %i.sb = load double, ptr %i.hi, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.sc = load double, ptr %i.hj, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.sd = load double, ptr %i.hl, align 8, !tbaa !21, !noalias !162 ; 3 uses
  %i.se = call double @llvm.fmuladd.f64(double %i.sb, double 0.000000e+00, double %i.rv)
  %i.sf = call double @llvm.fmuladd.f64(double %i.sc, double 0.000000e+00, double %i.se)
  %i.sg = call double @llvm.fmuladd.f64(double %i.sd, double 0.000000e+00, double %i.sf)
  %i.sh = call double @llvm.fmuladd.f64(double %i.li, double 0.000000e+00, double %i.sg) ; 2 uses
  %i.si = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.sb, double %i.sa)
  %i.sj = call double @llvm.fmuladd.f64(double %i.sc, double 0.000000e+00, double %i.si)
  %i.sk = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.sl = insertelement <2 x double> %i.sk, double %i.rp, i64 1
  %i.sm = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sn = insertelement <2 x double> %i.sm, double %i.ry, i64 1
  %i.so = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> zeroinitializer, <2 x double> %i.sn)
  %i.sp = insertelement <2 x double> %i.lj, double %i.rq, i64 1
  %i.sq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sp, <2 x double> zeroinitializer, <2 x double> %i.so) ; 3 uses
  %i.sr = extractelement <2 x double> %i.sq, i64 1
  %i.ss = call double @llvm.fmuladd.f64(double %i.sb, double 0.000000e+00, double %i.sr)
  %i.st = call double @llvm.fmuladd.f64(double %i.iw, double %i.sc, double %i.ss)
  %i.su = call double @llvm.fmuladd.f64(double %i.iz, double %i.sd, double %i.st)
  %i.sv = insertelement <2 x double> poison, double %i.su, i64 0
  %i.sw = insertelement <2 x double> %i.sv, double %i.jx, i64 1
  %i.sx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.ll, <2 x double> %i.sw) ; 3 uses
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.sz = shufflevector <3 x double> %i.rg, <3 x double> %i.sy, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ta = shufflevector <2 x double> %i.rf, <2 x double> %i.sx, <3 x i32> <i32 0, i32 1, i32 3>
  %i.tb = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rj, <3 x double> %i.ta, <3 x double> zeroinitializer)
  %i.tc = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rk, <3 x double> %i.rh, <3 x double> %i.tb)
  %i.td = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rl, <3 x double> %i.ri, <3 x double> %i.tc) ; 9 uses
  %i.te = extractelement <3 x double> %i.td, i64 2 ; 2 uses
  %i.tf = call double @llvm.fmuladd.f64(double %i.te, double %i.sh, double 0.000000e+00)
  %i.tg = extractelement <3 x double> %i.td, i64 1 ; 2 uses
  %i.th = extractelement <2 x double> %i.sq, i64 0
  %i.ti = call double @llvm.fmuladd.f64(double %i.tg, double %i.th, double %i.tf)
  %i.tj = extractelement <3 x double> %i.td, i64 0
  %i.tk = extractelement <2 x double> %i.sx, i64 0 ; 2 uses
  %i.tl = call double @llvm.fmuladd.f64(double %i.tj, double %i.tk, double %i.ti)
  %i.tm = fadd double %i.te, 0.000000e+00
  %i.tn = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qz, <3 x double> %i.sz, <3 x double> zeroinitializer)
  %i.to = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ra, <3 x double> %i.rh, <3 x double> %i.tn)
  %i.tp = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rb, <3 x double> %i.ri, <3 x double> %i.to) ; 8 uses
  %i.tq = shufflevector <3 x double> %i.tp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.tr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tq, <2 x double> %i.ni, <2 x double> zeroinitializer)
  %i.ts = shufflevector <3 x double> %i.tp, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %i.nr, <2 x double> %i.tr)
  %i.tu = shufflevector <3 x double> %i.tp, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.nx, <2 x double> %i.tt)
  %i.tw = extractelement <3 x double> %i.tp, i64 2 ; 2 uses
  %i.tx = call double @llvm.fmuladd.f64(double %i.tw, double %i.sh, double 0.000000e+00)
  %i.ty = extractelement <3 x double> %i.tp, i64 0
  %i.tz = fadd double %i.tw, 0.000000e+00
  %i.ua = insertelement <2 x double> %i.sq, double 0.000000e+00, i64 1
  %i.ub = insertelement <2 x double> poison, double %i.tx, i64 0
  %i.uc = insertelement <2 x double> %i.ub, double %i.tz, i64 1
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %i.ua, <2 x double> %i.uc) ; 2 uses
  %i.ue = extractelement <2 x double> %i.ud, i64 0
  %i.uf = call double @llvm.fmuladd.f64(double %i.ty, double %i.tk, double %i.ue)
  %i.ug = shufflevector <3 x double> %i.td, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %i.ni, <2 x double> zeroinitializer)
  %i.ui = shufflevector <3 x double> %i.td, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ui, <2 x double> %i.nr, <2 x double> %i.uh)
  %i.uk = shufflevector <3 x double> %i.td, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> %i.nx, <2 x double> %i.uj)
  store <2 x double> %i.tv, ptr %.1210768, align 8
  store double %i.uf, ptr %.sroa.5334.0..1210.sroa_idx, align 8, !tbaa !27
  store <2 x double> %i.ul, ptr %i.oc, align 8
  store double %i.tl, ptr %.sroa.5331.0..sroa_idx, align 8, !tbaa !27
  %i.um = shufflevector <3 x double> %i.tp, <3 x double> %i.td, <2 x i32> <i32 2, i32 4>
  %i.un = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.tm, i64 1
  %i.uo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> zeroinitializer, <2 x double> %i.un) ; 3 uses
  %i.up = shufflevector <3 x double> %i.tp, <3 x double> %i.td, <2 x i32> <i32 1, i32 5>
  %i.uq = insertelement <2 x double> %i.uo, double 0.000000e+00, i64 1
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> zeroinitializer, <2 x double> %i.uq) ; 3 uses
  %i.us = shufflevector <3 x double> %i.tp, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ut = shufflevector <2 x double> %i.ur, <2 x double> %i.uo, <2 x i32> <i32 0, i32 2>
  %i.uu = fadd <2 x double> %i.us, %i.ut          ; 2 uses
  %i.uv = shufflevector <2 x double> %i.ud, <2 x double> %i.uu, <2 x i32> <i32 1, i32 3>
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> zeroinitializer, <2 x double> %i.uv)
  store <2 x double> %i.uw, ptr %i.od, align 8
  %i.ux = extractelement <2 x double> %i.uu, i64 0
  store double %i.ux, ptr %.sroa.5328.0..sroa_idx, align 8, !tbaa !27
  %i.uy = extractelement <2 x double> %i.ur, i64 1
  %i.uz = call double @llvm.fmuladd.f64(double %i.tg, double 0.000000e+00, double %i.uy)
  %i.va = shufflevector <3 x double> %i.td, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.vb = insertelement <2 x double> %i.ur, double %i.uz, i64 0
  %i.vc = fadd <2 x double> %i.va, %i.vb          ; 2 uses
  %i.vd = shufflevector <2 x double> %i.uo, <2 x double> %i.vc, <2 x i32> <i32 1, i32 3>
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> zeroinitializer, <2 x double> %i.vd)
  store <2 x double> %i.ve, ptr %i.oe, align 8
  %i.vf = extractelement <2 x double> %i.vc, i64 0
  store double %i.vf, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !27
  %i.vg = extractelement <2 x double> %i.qy, i64 1
  store double %i.vg, ptr %.sroa.6322.0..sroa_idx, align 8, !tbaa !27
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.ml, <2 x double> %i.vh)
  store <2 x double> %i.vi, ptr %i.of, align 8
  %i.vj = shufflevector <2 x double> %foldExtExtBinop782, <2 x double> %46, <2 x i32> <i32 0, i32 3>
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.vl = shufflevector <2 x double> %46, <2 x double> %foldExtExtBinop782, <2 x i32> <i32 0, i32 2>
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.vl, <2 x double> %i.vk)
  store <2 x double> %i.vm, ptr %.sroa.5.0..sroa_idx, align 8
  store <4 x double> %i.qt, ptr %i.og, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %.1210768, i64 216
  %i.vo = extractelement <2 x double> %i.qy, i64 0
  store double %i.vo, ptr %i.vn, align 8, !tbaa !167
  %i.vp = getelementptr inbounds nuw i8, ptr %.1210768, i64 48
  %58 = extractelement <2 x double> %51, i64 1
  store double %58, ptr %i.vp, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 56
  store double 0.000000e+00, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !27
  %i.vq = getelementptr inbounds nuw i8, ptr %.1210768, i64 176
  store double 0.000000e+00, ptr %i.vq, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 184
  store double %52, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !27
  %i.vr = getelementptr inbounds nuw i8, ptr %.1210768, i64 72
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.vr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 208
  store double 1.000000e+00, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %i.vs = getelementptr inbounds nuw i8, ptr %.1210768, i64 64
  store double %52, ptr %i.vs, align 8, !tbaa !168
  %i.vt = getelementptr inbounds nuw i8, ptr %.1210768, i64 192
  store <2 x double> zeroinitializer, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %.1210768, i64 256
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2211 = phi ptr [ %i.vu, %bb.cp ], [ %.1210768, %bb.co ]
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
  %i.c = load <2 x double>, ptr %i.b, align 8
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
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
  %i.cu = call double @sqrt(double noundef %i.ct) #22 ; 2 uses
  %i.cv = extractelement <2 x double> %i.ck, i64 0
  %i.cw = fadd double %i.au, %i.cv
  %i.cx = extractelement <2 x double> %i.ck, i64 1
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = fadd double %i.cy, -1.000000e+00
  %i.da = fmul double %i.cz, 5.000000e-01         ; 3 uses
  %i.db = fcmp ogt double %i.da, 1.000000e+00
  %i.dc = fcmp olt double %i.da, -1.000000e+00
  %i.dd = select i1 %i.dc, double -1.000000e+00, double %i.da
  %i.de = select i1 %i.db, double 1.000000e+00, double %i.dd ; 2 uses
  %i.df = call double @acos(double noundef %i.de) #22 ; 2 uses
  %i.dg = fcmp olt double %i.cu, 1.000000e-05
  br i1 %i.dg, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.dh = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.dh, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.di = fadd double %i.au, 1.000000e+00
  %i.dj = fmul double %i.di, 5.000000e-01         ; 2 uses
  %i.dk = fcmp olt double %i.dj, 0.000000e+00
  %.sroa.speculated67 = select i1 %i.dk, double 0.000000e+00, double %i.dj
  %i.dl = call double @sqrt(double noundef %.sroa.speculated67) #22 ; 4 uses
  %i.dm = fadd <2 x double> %i.ck, splat (double 1.000000e+00)
  %i.dn = fcmp olt double %i.cn, 0.000000e+00
  %i.do = fmul <2 x double> %i.dm, splat (double 5.000000e-01) ; 2 uses
  %i.dp = fcmp olt <2 x double> %i.do, zeroinitializer
  %i.dq = select <2 x i1> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.do ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = call double @sqrt(double noundef %i.dr) #22 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i, ptr noundef nonnull @.str.1, i32 noundef 364) #23
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

bb.bm:                                            ; preds = %bb.bj
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %28, align 8, !tbaa !26   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %bb.bm
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !27
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442, %bb.bl
  %.pn356 = phi { ptr, i32 } [ %i.de, %bb.bl ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442 ], [ %i.df, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.critedge394

bb.bn:                                            ; preds = %bb.bh, %bb.bg
  %i.dl = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.dm = icmp eq i32 %i.dl, 5
  br i1 %i.dm, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.dn = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !273
  %i.do = icmp eq i32 %i.dn, 65536
  br i1 %i.do, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !18, !noalias !273
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %i.dq)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.bq:                                            ; preds = %bb.bo
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.bp, %bb.bq
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.5") align 4 %30, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.dr = load float, ptr %30, align 4, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.dt = load <4 x float>, ptr %i.ds, align 4
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.dr, i64 1
  %i.dw = fpext <2 x float> %i.dv to <2 x double>
  %i.dx = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !36
  %i.eb = fpext float %i.dy to double
  %i.ec = fpext float %i.ea to double
  %i.ed = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !36
  %i.ef = fpext float %i.ee to double
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.by

bb.bs:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %.critedge394

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.eh = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !274
  %i.ei = icmp eq i32 %i.eh, 65536
  br i1 %i.ei, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !18, !noalias !274
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %i.ek)
  br label %_ZNK2cv11_InputArray6getMatEi.exit445

bb.bv:                                            ; preds = %bb.bt
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit445

_ZNK2cv11_InputArray6getMatEi.exit445:            ; preds = %bb.bu, %bb.bv
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.8") align 8 %32, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit445
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.el = load double, ptr %32, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.en = load <2 x double>, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !21
  %i.eq = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.er = load double, ptr %i.eq, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.eu = insertelement <2 x double> %i.en, double %i.el, i64 1
  br label %bb.by

bb.bx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit445
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.critedge394

bb.by:                                            ; preds = %bb.bw, %bb.br
  %.sroa.0558.0 = phi double [ %i.eb, %bb.br ], [ %i.ep, %bb.bw ] ; 2 uses
  %.sroa.8560.0 = phi double [ %i.ec, %bb.br ], [ %i.er, %bb.bw ] ; 2 uses
  %.0318 = phi double [ %i.ef, %bb.br ], [ %i.et, %bb.bw ] ; 2 uses
  %i.ew = phi <2 x double> [ %i.dw, %bb.br ], [ %i.eu, %bb.bw ] ; 2 uses
  %i.ex = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ex, label %.critedge392, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ey = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %.not = icmp eq i32 %i.ey, 5
  br i1 %.not, label %bb.ca, label %.noexc

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.ez = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !275
  %i.fa = icmp eq i32 %i.ez, 65536
  br i1 %i.fa, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !18, !noalias !275
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %34, ptr noundef nonnull align 8 dereferenceable(208) %i.fc)
  br label %.critedge400

bb.cc:                                            ; preds = %bb.ca
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %.critedge400

.noexc:                                           ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.fd = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.fe = icmp eq i32 %i.fd, 65536
  br i1 %i.fe, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.noexc
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18, !noalias !276
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %i.fg)
  br label %.critedge389

bb.ce:                                            ; preds = %.noexc
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %.critedge389

.critedge389:                                     ; preds = %bb.cd, %bb.ce
  %i.fh = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !34
  %i.fj = load <4 x double>, ptr %i.fi, align 8, !tbaa !21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %.critedge392

.critedge400:                                     ; preds = %bb.cc, %bb.cb
  %i.fk = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !34
  %i.fm = load <4 x float>, ptr %i.fl, align 4, !tbaa !36, !noalias !277
  %i.fn = fpext <4 x float> %i.fm to <4 x double>
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.critedge392

.critedge392:                                     ; preds = %.critedge400, %.critedge389, %bb.by
  %i.fo = phi <4 x double> [ zeroinitializer, %bb.by ], [ %i.fj, %.critedge389 ], [ %i.fn, %.critedge400 ] ; 9 uses
  %i.fp = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %.not362 = icmp eq i32 %i.fp, 5
  br i1 %.not362, label %bb.cf, label %.noexc451

bb.cf:                                            ; preds = %.critedge392
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.fq = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !278
  %i.fr = icmp eq i32 %i.fq, 65536
  br i1 %i.fr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !18, !noalias !278
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %i.ft)
  br label %.critedge401

bb.ch:                                            ; preds = %bb.cf
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %.critedge401

.noexc451:                                        ; preds = %.critedge392
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.fu = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.fv = icmp eq i32 %i.fu, 65536
  br i1 %i.fv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.noexc451
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !18, !noalias !279
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(208) %i.fx)
  br label %.critedge396

bb.cj:                                            ; preds = %.noexc451
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %.critedge396

.critedge396:                                     ; preds = %bb.ci, %bb.cj
  %i.fy = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !34
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.critedge399

.critedge401:                                     ; preds = %bb.ch, %bb.cg
  %i.gb = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !34
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !36
  %i.ge = fpext float %i.gd to double
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.critedge399

.critedge399:                                     ; preds = %.critedge396, %.critedge401
  %i.gf = phi double [ %i.ga, %.critedge396 ], [ %i.ge, %.critedge401 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %i.gg = getelementptr inbounds nuw i8, ptr %38, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, i8 0, i64 56, i1 false), !tbaa !21, !alias.scope !280
  store double 1.000000e+00, ptr %38, align 16, !tbaa !21, !alias.scope !280
  %i.gh = getelementptr inbounds nuw i8, ptr %38, i64 32
  store double 1.000000e+00, ptr %i.gh, align 16, !tbaa !21, !alias.scope !280
  %i.gi = getelementptr inbounds nuw i8, ptr %38, i64 64 ; 2 uses
  store double 1.000000e+00, ptr %i.gi, align 16, !tbaa !21, !alias.scope !280
  %i.gj = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.gj, label %bb.cv, label %bb.ck

bb.ck:                                            ; preds = %.critedge399
  %i.gk = call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.gl = call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul i64 %i.gk, %i.gm
  %i.go = icmp eq i64 %i.gn, 3
  br i1 %i.go, label %bb.cl, label %bb.cv

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false), !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.gp = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !281
  %i.gq = icmp eq i32 %i.gp, 65536
  br i1 %i.gq, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !18, !noalias !281
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(208) %i.gs)
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.gt = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 -1040056314, ptr %41, align 8, !tbaa !17
  store ptr %39, ptr %i.gt, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 12884901889, ptr %i.gu, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.gv = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 -1056833530, ptr %42, align 8, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %39, ptr %i.gw, align 8, !tbaa !18
  store i64 12884901889, ptr %i.gv, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.gx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 -1040056314, ptr %43, align 8, !tbaa !17
  store ptr %38, ptr %i.gx, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 12884901891, ptr %i.gy, align 8, !tbaa !19
  %i.gz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %.critedge

bb.cs:                                            ; preds = %bb.co
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn365.pn = phi { ptr, i32 } [ %i.hb, %bb.ct ], [ %i.ha, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.et

bb.cv:                                            ; preds = %bb.ck, %.critedge399
  %i.hc = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.hc, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hd = call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.he = icmp eq i64 %i.hd, 12884901891
  br i1 %i.he, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.hf = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !282
  %i.hg = icmp eq i32 %i.hf, 65536
  br i1 %i.hg, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !18, !noalias !282
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %i.hi)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.hj = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 -1040056314, ptr %45, align 8, !tbaa !17
  store ptr %38, ptr %i.hj, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 12884901891, ptr %i.hk, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.critedge

bb.dc:                                            ; preds = %bb.da
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.et

end_hunk_1
begin_hunk_2_@_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i:bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %53, i64 128
  %i.qx = shufflevector <4 x double> %i.fo, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.qy = fmul <2 x double> %i.qx, splat (double 2.000000e+00) ; 2 uses
  %i.qz = extractelement <2 x double> %i.mj, i64 0
  %i.ra = insertelement <2 x double> poison, double %.sroa.8560.0, i64 0
  %i.rb = extractelement <2 x double> %i.mj, i64 1
  %i.rc = extractelement <4 x double> %i.fo, i64 0
  %i.rd = extractelement <4 x double> %i.fo, i64 2
  %i.re = shufflevector <4 x double> %i.fo, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rf = extractelement <2 x double> %i.qy, i64 0
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph683, %._crit_edge681
  %indvars.iv694 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next695, %._crit_edge681 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  %i.rg = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !289
  %i.rh = icmp eq i32 %i.rg, 65536
  br i1 %i.rh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.ri = load ptr, ptr %i.qr, align 8, !tbaa !18, !noalias !289
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 8 dereferenceable(208) %i.ri)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

bb.dw:                                            ; preds = %bb.du
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

_ZNK2cv11_InputArray6getMatEi.exit462:            ; preds = %bb.dv, %bb.dw
  %i.rj = load ptr, ptr %i.qs, align 8, !tbaa !34
  %i.rk = load i64, ptr %i.qt, align 8, !tbaa !38
  %i.rl = mul i64 %i.rk, %indvars.iv694
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rl ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.rn = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !290
  %i.ro = icmp eq i32 %i.rn, 65536
  br i1 %i.ro, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  %i.rp = load ptr, ptr %i.qu, align 8, !tbaa !18, !noalias !290
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(208) %i.rp)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

bb.dy:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

_ZNK2cv11_InputArray6getMatEi.exit463:            ; preds = %bb.dx, %bb.dy
  %i.rq = load ptr, ptr %i.qv, align 8, !tbaa !34
  %i.rr = load i64, ptr %i.qw, align 8, !tbaa !38
  %i.rs = mul i64 %i.rr, %indvars.iv694
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rs ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  %i.ru = load i32, ptr %5, align 4, !tbaa !44    ; 2 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %_ZNK2cv11_InputArray6getMatEi.exit463
  %i.rw = trunc nuw nsw i64 %indvars.iv694 to i32
  %i.rx = uitofp nneg i32 %i.rw to double         ; 2 uses
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %i.mg, <2 x double> %i.mh)
  %i.sb = call double @llvm.fmuladd.f64(double %i.rx, double %i.qz, double %.sroa.6512.0)
  %wide.trip.count692 = zext nneg i32 %i.ru to i64
  br label %.lr.ph680

._crit_edge681:                                   ; preds = %bb.ec, %_ZNK2cv11_InputArray6getMatEi.exit463
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %i.sc = load i32, ptr %i.qo, align 4, !tbaa !43
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp slt i64 %indvars.iv.next695, %i.sd
  br i1 %i.se, label %bb.du, label %.loopexit, !llvm.loop !265

.lr.ph680:                                        ; preds = %.lr.ph680.preheader, %bb.ec
  %indvars.iv689 = phi i64 [ 0, %.lr.ph680.preheader ], [ %indvars.iv.next690, %bb.ec ] ; 5 uses
  %.0335676 = phi double [ %i.sb, %.lr.ph680.preheader ], [ %i.va, %bb.ec ] ; 4 uses
  %i.sf = phi <2 x double> [ %i.sa, %.lr.ph680.preheader ], [ %i.vb, %bb.ec ] ; 5 uses
  %foldExtExtBinop725 = fmul <2 x double> %i.sf, %i.sf
  %i.sg = extractelement <2 x double> %foldExtExtBinop725, i64 0
  %i.sh = call double @llvm.fmuladd.f64(double %.0335676, double %.0335676, double %i.sg)
  %i.si = extractelement <2 x double> %i.sf, i64 1 ; 3 uses
  %i.sj = call double @llvm.fmuladd.f64(double %i.si, double %i.si, double %i.sh)
  %sqrt = call double @llvm.sqrt.f64(double %i.sj) ; 2 uses
  %i.sk = fdiv double %i.si, %sqrt
  %i.sl = fadd double %i.gf, %i.sk
  %i.sm = insertelement <2 x double> %i.sf, double %.0335676, i64 1
  %i.sn = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sp = fdiv <2 x double> %i.sm, %i.so
  %i.sq = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.sr = shufflevector <2 x double> %i.sq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ss = fdiv <2 x double> %i.sp, %i.sr          ; 9 uses
  %i.st = extractelement <2 x double> %i.ss, i64 0 ; 2 uses
  %foldExtExtBinop727 = fmul <2 x double> %i.ss, %i.ss
  %i.su = extractelement <2 x double> %foldExtExtBinop727, i64 0
  %i.sv = extractelement <2 x double> %i.ss, i64 1 ; 4 uses
  %i.sw = call double @llvm.fmuladd.f64(double %i.sv, double %i.sv, double %i.su) ; 5 uses
  %i.sx = fmul double %i.sw, %i.sw
  %i.sy = call double @llvm.fmuladd.f64(double %i.rc, double %i.sw, double 1.000000e+00)
  %i.sz = fmul double %i.rf, %i.sv
  %i.ta = fmul double %i.st, %i.sz
  %i.tb = fmul double %i.sv, 2.000000e+00
  %i.tc = shufflevector <2 x double> %i.re, <2 x double> %i.ss, <2 x i32> <i32 0, i32 3>
  %i.td = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.te = insertelement <2 x double> %i.td, double %i.tb, i64 1
  %i.tf = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.tg = insertelement <2 x double> %i.tf, double %i.sw, i64 1
  %i.th = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.te, <2 x double> %i.tg) ; 2 uses
  %i.ti = fmul double %i.st, 2.000000e+00
  %i.tj = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.tk = insertelement <2 x double> %i.tj, double %i.ti, i64 0
  %i.tl = insertelement <2 x double> poison, double %i.sw, i64 0
  %i.tm = insertelement <2 x double> %i.tl, double %i.ta, i64 1
  %i.tn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %i.ss, <2 x double> %i.tm) ; 2 uses
  %i.to = extractelement <2 x double> %i.tn, i64 0
  %i.tp = fmul double %i.rd, %i.to
  %i.tq = shufflevector <2 x double> %i.ss, <2 x double> %i.qx, <2 x i32> <i32 0, i32 3>
  %i.tr = insertelement <2 x double> %i.tn, double %i.tp, i64 0
  %i.ts = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tq, <2 x double> %i.th, <2 x double> %i.tr)
  %foldExtExtBinop729 = fmul <2 x double> %i.qy, %i.ss
  %i.tt = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %foldExtExtBinop729, <2 x i32> <i32 3, i32 1>
  %i.tu = insertelement <2 x double> %i.ss, double -0.000000e+00, i64 1
  %i.tv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.tu, <2 x double> %i.ts) ; 2 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0
  %i.tx = fmul double %.0318, %i.tw
  %i.ty = insertelement <2 x double> %i.ra, double %i.tx, i64 1
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.tv, <2 x double> %i.ty) ; 3 uses
  %i.ua = extractelement <2 x double> %i.tz, i64 1
  %i.ub = fadd double %.sroa.0558.0, %i.ua        ; 2 uses
  br i1 %i.a, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph680
  %i.uc = fmul double %i.ub, 3.200000e+01
  %i.ud = insertelement <2 x double> poison, double %i.uc, i64 0
  %i.ue = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ud) ; 2 uses
  %i.uf = extractelement <2 x double> %i.tz, i64 0
  %i.ug = fmul double %i.uf, 3.200000e+01
  %i.uh = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.ui = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.uh) ; 2 uses
  %i.uj = lshr i32 %i.ue, 5
  %i.uk = trunc i32 %i.uj to i16
  %.idx721 = shl nuw nsw i64 %indvars.iv689, 2
  %i.ul = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.idx721 ; 2 uses
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !292
  %i.um = lshr i32 %i.ui, 5
  %i.un = trunc i32 %i.um to i16
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  store i16 %i.un, ptr %i.uo, align 2, !tbaa !292
  %i.up = shl i32 %i.ui, 5
  %i.uq = and i32 %i.up, 992
  %i.ur = and i32 %i.ue, 31
  %i.us = or disjoint i32 %i.uq, %i.ur
  %i.ut = trunc nuw nsw i32 %i.us to i16
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %indvars.iv689
  store i16 %i.ut, ptr %i.uu, align 2, !tbaa !292
  br label %bb.ec

bb.ea:                                            ; preds = %.lr.ph680
  br i1 %i.b, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.uv = fptrunc double %i.ub to float
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %indvars.iv689
  store float %i.uv, ptr %i.uw, align 4, !tbaa !36
  %i.ux = extractelement <2 x double> %i.tz, i64 0
  %i.uy = fptrunc double %i.ux to float
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv689
  store float %i.uy, ptr %i.uz, align 4, !tbaa !36
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb, %bb.dz
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %i.va = fadd double %i.rb, %.0335676
  %i.vb = fadd <2 x double> %i.mi, %i.sf
  %exitcond693.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count692
  br i1 %exitcond693.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !266

bb.ed:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461
  %i.vc = and i32 %9, 6
  %or.cond11 = icmp eq i32 %i.vc, 2
  %or.cond13 = or i1 %i.cp, %or.cond11
  br i1 %or.cond13, label %.preheader669, label %.loopexit

.preheader669:                                    ; preds = %bb.ed
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !43
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.lr.ph675, label %.loopexit

.lr.ph675:                                        ; preds = %.preheader669
  %i.vg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.vi = getelementptr inbounds nuw i8, ptr %54, i64 128
  %i.vj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vk = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.vl = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.vm = shufflevector <4 x double> %i.fo, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.vn = fmul <2 x double> %i.vm, splat (double 2.000000e+00) ; 2 uses
  %i.vo = insertelement <2 x double> poison, double %.sroa.8560.0, i64 0
  %i.vp = extractelement <4 x double> %i.fo, i64 0
  %i.vq = extractelement <4 x double> %i.fo, i64 1
  %56 = extractelement <4 x double> %i.fo, i64 2
  %57 = shufflevector <4 x double> %i.fo, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %58 = shufflevector <2 x double> <double poison, double 2.000000e+00>, <2 x double> %i.vn, <2 x i32> <i32 3, i32 1>
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph675, %._crit_edge
  %indvars.iv686 = phi i64 [ 0, %.lr.ph675 ], [ %indvars.iv.next687, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.vr = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !293
  %i.vs = icmp eq i32 %i.vr, 65536
  br i1 %i.vs, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.vt = load ptr, ptr %i.vg, align 8, !tbaa !18, !noalias !293
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(208) %i.vt)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

bb.eg:                                            ; preds = %bb.ee
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %54, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit464

_ZNK2cv11_InputArray6getMatEi.exit464:            ; preds = %bb.ef, %bb.eg
  %i.vu = load ptr, ptr %i.vh, align 8, !tbaa !34
  %i.vv = load i64, ptr %i.vi, align 8, !tbaa !38
  %i.vw = mul i64 %i.vv, %indvars.iv686
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vw ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.vy = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !294
  %i.vz = icmp eq i32 %i.vy, 65536
  br i1 %i.vz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  %i.wa = load ptr, ptr %i.vj, align 8, !tbaa !18, !noalias !294
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %55, ptr noundef nonnull align 8 dereferenceable(208) %i.wa)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

bb.ei:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit464
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit465

_ZNK2cv11_InputArray6getMatEi.exit465:            ; preds = %bb.eh, %bb.ei
  %i.wb = load ptr, ptr %i.vk, align 8, !tbaa !34
  %i.wc = load i64, ptr %i.vl, align 8, !tbaa !38
  %i.wd = mul i64 %i.wc, %indvars.iv686
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wd ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  %i.wf = load i32, ptr %5, align 4, !tbaa !44    ; 2 uses
  %i.wg = icmp sgt i32 %i.wf, 0
  br i1 %i.wg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2cv11_InputArray6getMatEi.exit465
  %i.wh = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.wi = uitofp nneg i32 %i.wh to double
  %i.wj = insertelement <2 x double> poison, double %i.wi, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wk, <2 x double> %i.oa, <2 x double> %i.ob)
  %wide.trip.count = zext nneg i32 %i.wf to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.er, %_ZNK2cv11_InputArray6getMatEi.exit465
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.wm = load i32, ptr %i.vd, align 4, !tbaa !43
  %i.wn = sext i32 %i.wm to i64
  %i.wo = icmp slt i64 %indvars.iv.next687, %i.wn
  br i1 %i.wo, label %bb.ee, label %.loopexit, !llvm.loop !271

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.er
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.er ] ; 5 uses
  %i.wp = phi <2 x double> [ %i.wl, %.lr.ph.preheader ], [ %i.aax, %bb.er ] ; 11 uses
  switch i32 %9, label %bb.el [
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.ej:                                            ; preds = %.lr.ph
  %i.wq = extractelement <2 x double> %i.wp, i64 0 ; 2 uses
  %i.wr = call double @cos(double noundef %i.wq) #22
  %i.ws = call double @sin(double noundef %i.wq) #22
  %i.wt = extractelement <2 x double> %i.wp, i64 1
  br label %bb.en

bb.ek:                                            ; preds = %.lr.ph
  %i.wu = extractelement <2 x double> %i.wp, i64 0 ; 3 uses
  %i.wv = call double @cos(double noundef %i.wu) #22
  %i.ww = fneg double %i.wv
  %i.wx = call double @sin(double noundef %i.wu) #22
  %i.wy = fneg double %i.wx
  %i.wz = extractelement <2 x double> %i.wp, i64 1 ; 2 uses
  %i.xa = call double @cos(double noundef %i.wz) #22
  %i.xb = fmul double %i.xa, %i.wy
  %i.xc = call double @sin(double noundef %i.wu) #22
  %i.xd = call double @sin(double noundef %i.wz) #22
  %i.xe = fmul double %i.xc, %i.xd
  br label %bb.en

bb.el:                                            ; preds = %.lr.ph
  br i1 %i.cp, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.xf = extractelement <2 x double> %i.wp, i64 1
  %i.xg = shufflevector <2 x double> %i.wp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xh = fmul <2 x double> %i.xg, <double 1.000000e+00, double -2.000000e+00>
  %i.xi = shufflevector <2 x double> %i.wp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xj = fmul <2 x double> %i.xi, <double 1.000000e+00, double 2.000000e+00>
  %i.xk = fneg <2 x double> %i.wp
  %i.xl = shufflevector <2 x double> %i.wp, <2 x double> %i.xk, <2 x i32> <i32 1, i32 3>
  %i.xm = fmul <2 x double> %i.xj, %i.xl
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xh, <2 x double> %i.xg, <2 x double> %i.xm) ; 2 uses
  %i.xo = extractelement <2 x double> %i.xn, i64 0 ; 2 uses
  %i.xp = fadd double %i.xo, 4.000000e+00         ; 2 uses
  %i.xq = fadd double %i.xo, -4.000000e+00
  %i.xr = extractelement <2 x double> %i.xn, i64 1 ; 3 uses
  %i.xs = fneg double %i.xr
  %i.xt = fmul double %i.xp, 4.000000e+00
  %i.xu = fneg double %i.xq
  %i.xv = fmul double %i.xt, %i.xu
  %i.xw = call double @llvm.fmuladd.f64(double %i.xr, double %i.xr, double %i.xv)
  %i.xx = call double @sqrt(double noundef %i.xw) #22
  %i.xy = fsub double %i.xs, %i.xx
  %i.xz = fmul double %i.xp, 2.000000e+00
  %i.ya = fdiv double %i.xy, %i.xz                ; 2 uses
  %i.yb = fsub double 1.000000e+00, %i.ya         ; 2 uses
  %i.yc = extractelement <2 x double> %i.wp, i64 0
  %i.yd = fmul double %i.yc, %i.yb
  %i.ye = fmul double %i.yd, 5.000000e-01
  %i.yf = fmul double %i.xf, %i.yb
  %i.yg = fmul double %i.yf, 5.000000e-01
  br label %bb.en

bb.en:                                            ; preds = %bb.ek, %bb.em, %bb.el, %bb.ej
  %.0325 = phi double [ %i.wr, %bb.ej ], [ %i.ww, %bb.ek ], [ %i.ye, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %.0324 = phi double [ %i.ws, %bb.ej ], [ %i.xb, %bb.ek ], [ %i.ya, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %.0323 = phi double [ %i.wt, %bb.ej ], [ %i.xe, %bb.ek ], [ %i.yg, %bb.em ], [ 0.000000e+00, %bb.el ] ; 2 uses
  %i.yh = insertelement <2 x double> poison, double %.0324, i64 0
  %i.yi = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yj = fmul <2 x double> %i.qm, %i.yi
  %i.yk = insertelement <2 x double> poison, double %.0325, i64 0
  %i.yl = shufflevector <2 x double> %i.yk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ym = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %i.yl, <2 x double> %i.yj)
  %i.yn = insertelement <2 x double> poison, double %.0323, i64 0
  %i.yo = shufflevector <2 x double> %i.yn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.yo, <2 x double> %i.ym) ; 5 uses
  %i.yq = shufflevector <2 x double> %i.qn, <2 x double> %i.yp, <2 x i32> <i32 0, i32 3>
  %i.yr = insertelement <2 x double> %i.yp, double %.0324, i64 0
  %i.ys = fmul <2 x double> %i.yq, %i.yr
  %i.yt = shufflevector <2 x double> %i.yp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.yu = shufflevector <2 x double> %i.qn, <2 x double> %i.yp, <2 x i32> <i32 1, i32 2>
  %i.yv = insertelement <2 x double> %i.yt, double %.0325, i64 0
  %i.yw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yu, <2 x double> %i.yv, <2 x double> %i.ys) ; 2 uses
  %i.yx = extractelement <2 x double> %i.yw, i64 0
  %i.yy = call double @llvm.fmuladd.f64(double %.sroa.12.0, double %.0323, double %i.yx) ; 3 uses
  %i.yz = extractelement <2 x double> %i.yw, i64 1
  %i.za = call double @llvm.fmuladd.f64(double %i.yy, double %i.yy, double %i.yz)
  %sqrt668 = call double @llvm.sqrt.f64(double %i.za) ; 2 uses
  %i.zb = insertelement <2 x double> poison, double %sqrt668, i64 0
  %i.zc = shufflevector <2 x double> %i.zb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zd = fdiv <2 x double> %i.yp, %i.zc
  %i.ze = fdiv double %i.yy, %sqrt668
  %i.zf = fadd double %i.gf, %i.ze
  %i.zg = insertelement <2 x double> poison, double %i.zf, i64 0
  %i.zh = shufflevector <2 x double> %i.zg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zi = fdiv <2 x double> %i.zd, %i.zh          ; 8 uses
  %i.zj = extractelement <2 x double> %i.zi, i64 1 ; 4 uses
  %i.zk = fmul double %i.zj, %i.zj
  %i.zl = extractelement <2 x double> %i.zi, i64 0
  %foldExtExtBinop731 = fmul <2 x double> %i.vn, %i.zi
  %59 = shufflevector <2 x double> %i.zi, <2 x double> %foldExtExtBinop731, <2 x i32> <i32 0, i32 2>
  %60 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.zk, i64 0
  %61 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zi, <2 x double> %59, <2 x double> %60) ; 5 uses
  %62 = extractelement <2 x double> %61, i64 0
  %foldExtExtBinop733 = fmul <2 x double> %61, %61
  %63 = extractelement <2 x double> %foldExtExtBinop733, i64 0
  %64 = fmul double %i.zl, 2.000000e+00
  %i.zm = insertelement <2 x double> poison, double %64, i64 0
  %65 = shufflevector <2 x double> %i.zi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zn = fmul <2 x double> %58, %i.zi            ; 2 uses
  %66 = shufflevector <2 x double> %57, <2 x double> %i.zn, <2 x i32> <i32 0, i32 3>
  %67 = call double @llvm.fmuladd.f64(double %i.vp, double %62, double 1.000000e+00)
  %68 = call double @llvm.fmuladd.f64(double %i.vq, double %63, double %67) ; 2 uses
  %i.zo = insertelement <2 x double> %i.zm, double %68, i64 1
  %i.zp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zo, <2 x double> %65, <2 x double> %61) ; 2 uses
  %i.zq = shufflevector <2 x double> %i.zp, <2 x double> %i.zi, <2 x i32> <i32 0, i32 3>
  %69 = shufflevector <2 x double> %i.zp, <2 x double> %61, <2 x i32> <i32 1, i32 2>
  %70 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %i.zq, <2 x double> %69) ; 2 uses
  %71 = extractelement <2 x double> %70, i64 1
  %72 = fmul double %56, %71
  %73 = call double @llvm.fmuladd.f64(double %68, double %i.zj, double %72)
  %i.zr = extractelement <2 x double> %i.zn, i64 0
  %i.zs = call double @llvm.fmuladd.f64(double %i.zr, double %i.zj, double %73) ; 2 uses
  %i.zt = fmul double %.0318, %i.zs
  %74 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.zu = insertelement <2 x double> %74, double %i.zs, i64 0
  %i.zv = insertelement <2 x double> %i.vo, double %i.zt, i64 1
  %i.zw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.zu, <2 x double> %i.zv) ; 3 uses
  %i.zx = extractelement <2 x double> %i.zw, i64 1
  %i.zy = fadd double %.sroa.0558.0, %i.zx        ; 2 uses
  br i1 %i.a, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.zz = fmul double %i.zy, 3.200000e+01
  %i.aaa = insertelement <2 x double> poison, double %i.zz, i64 0
  %i.aab = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aaa) ; 2 uses
  %i.aac = extractelement <2 x double> %i.zw, i64 0
  %i.aad = fmul double %i.aac, 3.200000e+01
  %i.aae = insertelement <2 x double> poison, double %i.aad, i64 0
  %i.aaf = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aae) ; 2 uses
  %i.aag = lshr i32 %i.aab, 5
  %i.aah = trunc i32 %i.aag to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.aai = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx ; 2 uses
  store i16 %i.aah, ptr %i.aai, align 2, !tbaa !292
  %i.aaj = lshr i32 %i.aaf, 5
  %i.aak = trunc i32 %i.aaj to i16
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  store i16 %i.aak, ptr %i.aal, align 2, !tbaa !292
  %i.aam = shl i32 %i.aaf, 5
  %i.aan = and i32 %i.aam, 992
  %i.aao = and i32 %i.aab, 31
  %i.aap = or disjoint i32 %i.aan, %i.aao
  %i.aaq = trunc nuw nsw i32 %i.aap to i16
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.we, i64 %indvars.iv
  store i16 %i.aaq, ptr %i.aar, align 2, !tbaa !292
  br label %bb.er

bb.ep:                                            ; preds = %bb.en
  br i1 %i.b, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aas = fptrunc double %i.zy to float
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %indvars.iv
  store float %i.aas, ptr %i.aat, align 4, !tbaa !36
  %i.aau = extractelement <2 x double> %i.zw, i64 0
  %i.aav = fptrunc double %i.aau to float
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv
  store float %i.aav, ptr %i.aaw, align 4, !tbaa !36
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq, %bb.eo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aax = fadd <2 x double> %i.oc, %i.wp
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge681, %.preheader669, %.preheader, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  ret void

bb.es:                                            ; preds = %bb.dp, %bb.dk
  %.pn373 = phi { ptr, i32 } [ %i.id, %bb.dp ], [ %.pn370.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.dc, %bb.cu
  %.pn373.pn = phi { ptr, i32 } [ %.pn373, %bb.es ], [ %i.hl, %bb.dc ], [ %.pn365.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.critedge394

.critedge394:                                     ; preds = %bb.bs, %bb.bx, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn373.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ], [ %i.ev, %bb.bx ], [ %i.eg, %bb.bs ], [ %.pn373.pn, %bb.et ]
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
  %i.a = load i32, ptr %7, align 4, !tbaa !44
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
  %i.h = load i64, ptr %7, align 4, !tbaa !19
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
  store i32 33619968, ptr %12, align 8, !tbaa !17
  store ptr %10, ptr %i.i, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !17
  store ptr %11, ptr %i.k, align 8, !tbaa !18
  invoke void @_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !43
  store i32 16842752, ptr %14, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %10, ptr %i.o, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !43
  store i32 16842752, ptr %15, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %11, ptr %i.r, align 8, !tbaa !18
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

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal21initializeCalibrationERKNS_11_InputArrayES4_NS_5Size_IiEERKNS_12_OutputArrayES9_S9_RdS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
end_hunk_2
