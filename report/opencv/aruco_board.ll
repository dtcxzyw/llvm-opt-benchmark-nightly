Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_board?download=true
inline.NumInlined: 1418
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv5aruco5Board4Impl13generateImageENS_5Size_IiEERKNS_12_OutputArrayEii:bb.a
  br i1 %i.k, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv5aruco5Board4Impl13generateImageENS_5Size_IiEERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 77) #25
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %9, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.k
  %.pn = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ba

bb.m:                                             ; preds = %bb.g
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %1, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.s = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !78
  %i.t = icmp eq i32 %i.s, 65536
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15, !noalias !78
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.v)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store <2 x double> splat (double 2.550000e+02), ptr %13, align 16, !tbaa !81, !alias.scope !83
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> splat (double 2.550000e+02), ptr %i.w, align 16, !tbaa !81, !alias.scope !83
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 -1056833530, ptr %12, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %13, ptr %i.y, align 8, !tbaa !15
  store i64 17179869185, ptr %i.x, align 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aa = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ab = sub nsw i32 0, %3                       ; 4 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.ab, i32 noundef %i.ab, i32 noundef %i.ab, i32 noundef %i.ab)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 4 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.v, label %.preheader173.preheader

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.az

bb.u:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv5aruco5Board4Impl13generateImageENS_5Size_IiEERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 85) #25
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.z:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.z
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.y
  %.pn64 = phi { ptr, i32 } [ %i.an, %bb.y ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.ao, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.az

.preheader173.preheader:                          ; preds = %bb.s
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !53 ; 2 uses
  br label %.preheader173

.preheader173:                                    ; preds = %.preheader173.preheader, %.preheader173
  %indvars.iv = phi i64 [ 0, %.preheader173.preheader ], [ %indvars.iv.next, %.preheader173 ] ; 2 uses
  %i.aw = phi <2 x float> [ %i.av, %.preheader173.preheader ], [ %i.bo, %.preheader173 ] ; 2 uses
  %i.ax = phi <2 x float> [ %i.av, %.preheader173.preheader ], [ %i.bw, %.preheader173 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !53 ; 4 uses
  %i.be = fcmp olt <2 x float> %i.bd, %i.aw
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.bd, <2 x float> %i.aw ; 2 uses
  %i.bg = load <2 x float>, ptr %i.ba, align 4, !tbaa !53 ; 4 uses
  %i.bh = fcmp olt <2 x float> %i.bg, %i.bf
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> %i.bf ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bb, align 4, !tbaa !53 ; 4 uses
  %i.bk = fcmp olt <2 x float> %i.bj, %i.bi
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> %i.bi ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bc, align 4, !tbaa !53 ; 4 uses
  %i.bn = fcmp olt <2 x float> %i.bm, %i.bl
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.bm, <2 x float> %i.bl ; 5 uses
  %i.bp = fcmp olt <2 x float> %i.ax, %i.bd
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.bd, <2 x float> %i.ax ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bq, %i.bg
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bg, <2 x float> %i.bq ; 2 uses
  %i.bt = fcmp olt <2 x float> %i.bs, %i.bj
  %i.bu = select <2 x i1> %i.bt, <2 x float> %i.bj, <2 x float> %i.bs ; 2 uses
  %i.bv = fcmp olt <2 x float> %i.bu, %i.bm
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.bm, <2 x float> %i.bu ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bx = and i64 %indvars.iv.next, 4294967295
  %i.by = icmp ugt i64 %i.ak, %i.bx
  br i1 %i.by, label %.preheader173, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.preheader173
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false), !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !53
  %i.bz = fsub <2 x float> %i.bw, %i.bo           ; 3 uses
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.cb = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not190 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not190, label %._crit_edge189, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa_idx123 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa_idx120 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.at
  %i.dd = phi ptr [ %i.cb, %.preheader.lr.ph ], [ %i.gc, %bb.at ]
  %i.de = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ga, %bb.at ] ; 2 uses
  %.038188 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fz, %bb.at ]
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.de ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dh = load <2 x i32>, ptr %i.cc, align 8, !tbaa !35
  %i.di = sitofp <2 x i32> %i.dh to <2 x float>
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %28 = load <2 x float>, ptr %i.dg, align 4, !tbaa !53
  %29 = fsub <2 x float> %28, %i.bo
  %30 = fdiv <2 x float> %29, %i.bz
  %31 = fmul <2 x float> %30, %i.dj               ; 3 uses
  store <2 x float> %31, ptr %17, align 16
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !53
  %i.dn = fsub <2 x float> %i.dm, %i.bo
  %i.do = fdiv <2 x float> %i.dn, %i.bz
  %i.dp = fmul <2 x float> %i.do, %i.dj           ; 3 uses
  store <2 x float> %i.dp, ptr %i.cd, align 8
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !53
  %i.dt = fsub <2 x float> %i.ds, %i.bo
  %i.du = fdiv <2 x float> %i.dt, %i.bz
  %i.dv = fmul <2 x float> %i.du, %i.dj           ; 3 uses
  store <2 x float> %i.dv, ptr %i.cg, align 16
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.dx = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fsub <2 x float> %i.dw, %i.dx
  %i.dz = shufflevector <2 x float> %i.dp, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.ea = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fsub <2 x float> %i.dz, %i.ea
  %i.ec = fpext <2 x float> %i.dy to <2 x double> ; 2 uses
  %i.ed = fpext <2 x float> %i.eb to <2 x double> ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, %i.ed
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ec, <2 x double> %i.ee)
  %i.eg = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ef)
  %i.eh = fptrunc <2 x double> %i.eg to <2 x float> ; 2 uses
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ej = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ei)
  %i.ek = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.el = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ek)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.el, i32 %i.ej) ; 3 uses
  %i.em = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.de
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store i64 0, ptr %i.cj, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !86
  store ptr %16, ptr %i.ci, align 8, !tbaa !15
  invoke void @_ZNK2cv5aruco10Dictionary19generateImageMarkerEiiRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(216) %i.ck, i32 noundef %i.eo, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %4)
          to label %bb.aa unwind label %bb.af

._crit_edge189:                                   ; preds = %bb.at, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void

bb.aa:                                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.ep = load float, ptr %i.cf, align 4, !tbaa !89 ; 2 uses
  %i.eq = load float, ptr %i.ce, align 4, !tbaa !89
  %i.er = fcmp oeq float %i.ep, %i.eq
  br i1 %i.er, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.es = load float, ptr %i.cd, align 8, !tbaa !91
  %i.et = load float, ptr %i.cg, align 16, !tbaa !91
  %i.eu = fcmp oeq float %i.es, %i.et
  br i1 %i.eu, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.ev = load <4 x float>, ptr %17, align 16
  %i.ew = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ev)
  %i.ex = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.ey = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ex)
  store i32 %i.ew, ptr %22, align 4, !tbaa !92
  store i32 %i.ey, ptr %i.cy, align 4, !tbaa !94
  store i32 %.sroa.speculated, ptr %i.cz, align 4, !tbaa !95
  store i32 %.sroa.speculated, ptr %i.da, align 4, !tbaa !96
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.dc, align 8
  store i32 -1040121856, ptr %20, align 8, !tbaa !86
  store ptr %21, ptr %i.db, align 8, !tbaa !15
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.at

bb.af:                                            ; preds = %.preheader
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ac
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn79.pn = phi { ptr, i32 } [ %i.fb, %bb.ah ], [ %i.fa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ab, %bb.aa
  store i32 -1090519040, ptr %18, align 16
  store i32 -1090519040, ptr %.sroa_idx123, align 4
  store i32 -1090519040, ptr %.sroa_idx120, align 4
  %i.fc = load <2 x i32>, ptr %i.cm, align 8, !tbaa !35
  %i.fd = sitofp <2 x i32> %i.fc to <2 x float>
  %i.fe = fadd <2 x float> %i.fd, splat (float -5.000000e-01) ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  store float %i.ff, ptr %i.cl, align 8
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fg, ptr %i.cn, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZN2cv18getAffineTransformEPKNS_6Point_IfEES3_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull %18, ptr noundef nonnull %17)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store i32 0, ptr %i.co, align 8, !tbaa !97
  store i32 0, ptr %i.cp, align 4, !tbaa !98
  store i32 16842752, ptr %24, align 8, !tbaa !86
  store ptr %16, ptr %i.cq, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store i64 0, ptr %i.cs, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !86
  store ptr %11, ptr %i.cr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  store i32 0, ptr %i.ct, align 8, !tbaa !97
  store i32 0, ptr %i.cu, align 4, !tbaa !98
  store i32 16842752, ptr %26, align 8, !tbaa !86
  store ptr %23, ptr %i.cv, align 8, !tbaa !15
  %i.fh = load i32, ptr %i.cw, align 8, !tbaa !99 ; 6 uses
  %i.fi = icmp slt i32 %i.fh, 3
  br i1 %i.fi, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #25
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.noexc
  unreachable

bb.an:                                            ; preds = %.noexc
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.an
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !14
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.ao:                                            ; preds = %bb.ak
  %i.fp = icmp sgt i32 %i.fh, 0
  br i1 %i.fp, label %bb.ap, label %.thread.i

.thread.i:                                        ; preds = %bb.ao
  %i.fq = icmp eq i32 %i.fh, 0
  %i.fr = zext i1 %i.fq to i32
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fs = icmp eq i32 %i.fh, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val171 = load i32, ptr %i.cx, align 4         ; 2 uses
  %i.ft = select i1 %i.fs, i32 %.sroa.gep.val, i32 %.val171 ; 2 uses
  %.not.i = icmp eq i32 %i.fh, 1
  br i1 %.not.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.thread.i
  %i.fu = phi i32 [ %i.fr, %.thread.i ], [ %i.ft, %bb.ap ]
  %i.fv = icmp sgt i32 %i.fh, -1
  %i.fw = zext i1 %i.fv to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.fx = phi i32 [ %i.fu, %bb.aq ], [ %i.ft, %bb.ap ]
  %i.fy = phi i32 [ %i.fw, %bb.aq ], [ %.val171, %bb.ap ]
  %.sroa.2.0.insert.ext.i115 = zext i32 %i.fy to i64
  %.sroa.2.0.insert.shift.i116 = shl nuw i64 %.sroa.2.0.insert.ext.i115, 32
  %.sroa.0.0.insert.ext.i117 = zext i32 %i.fx to i64
  %.sroa.0.0.insert.insert.i118 = or disjoint i64 %.sroa.2.0.insert.shift.i116, %.sroa.0.0.insert.ext.i117
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 %.sroa.0.0.insert.insert.i118, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 0)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
end_hunk_0
