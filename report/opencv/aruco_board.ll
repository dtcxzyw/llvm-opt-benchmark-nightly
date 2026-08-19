inline.NumInlined: 1418
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv5aruco5Board4Impl13generateImageENS_5Size_IiEERKNS_12_OutputArrayEii:bb.a
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %.sroa.0164.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = icmp slt i32 %.sroa.0164.0.extract.trunc, 1
  %i.b = icmp slt i32 %.sroa.3.0.extract.trunc, 1
  %i.c = select i1 %i.a, i1 true, i1 %i.b
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv5aruco5Board4Impl13generateImageENS_5Size_IiEERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 76) #25
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
  %i.f = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn86 = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %3, -1
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
  %28 = and i64 %indvars.iv.next, 4294967295
  %i.bx = icmp ugt i64 %i.ak, %28
  br i1 %i.bx, label %.preheader173, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.preheader173
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false), !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !53
  %i.by = fsub <2 x float> %i.bw, %i.bo           ; 3 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not190 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not190, label %._crit_edge189, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa_idx123 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa_idx120 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.at
  %i.dc = phi ptr [ %i.ca, %.preheader.lr.ph ], [ %i.gg, %bb.at ]
  %i.dd = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ge, %bb.at ] ; 2 uses
  %.038188 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gd, %bb.at ]
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.dg = load <2 x float>, ptr %i.df, align 4, !tbaa !53
  %i.dh = fsub <2 x float> %i.dg, %i.bo
  %i.di = fdiv <2 x float> %i.dh, %i.by           ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.cb, align 8, !tbaa !35
  %i.dk = sitofp <2 x i32> %i.dj to <2 x float>
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.di, %i.dl ; 2 uses
  %i.dm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop211 = fmul <2 x float> %i.di, %i.dl ; 2 uses
  %i.dn = extractelement <2 x float> %foldExtExtBinop211, i64 1
  store float %i.dm, ptr %17, align 16
  store float %i.dn, ptr %i.ce, align 4
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !53
  %i.dr = fsub <2 x float> %i.dq, %i.bo
  %i.ds = fdiv <2 x float> %i.dr, %i.by
  %i.dt = fmul <2 x float> %i.ds, %i.dl           ; 3 uses
  store <2 x float> %i.dt, ptr %i.cc, align 8
  %i.du = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !53
  %i.dx = fsub <2 x float> %i.dw, %i.bo
  %i.dy = fdiv <2 x float> %i.dx, %i.by
  %i.dz = fmul <2 x float> %i.dy, %i.dl           ; 3 uses
  store <2 x float> %i.dz, ptr %i.cf, align 16
  %i.ea = shufflevector <2 x float> %i.dt, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.eb = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fsub <2 x float> %i.ea, %i.eb
  %i.ed = shufflevector <2 x float> %i.dt, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x float> %foldExtExtBinop211, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = fsub <2 x float> %i.ed, %i.ee
  %i.eg = fpext <2 x float> %i.ec to <2 x double> ; 2 uses
  %i.eh = fpext <2 x float> %i.ef to <2 x double> ; 2 uses
  %i.ei = fmul <2 x double> %i.eh, %i.eh
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.ei)
  %i.ek = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ej)
  %i.el = fptrunc <2 x double> %i.ek to <2 x float> ; 2 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.en = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.em)
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ep = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eo)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.en) ; 3 uses
  %i.eq = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.dd
  %i.es = load i32, ptr %i.er, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store i64 0, ptr %i.ci, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !86
  store ptr %16, ptr %i.ch, align 8, !tbaa !15
  invoke void @_ZNK2cv5aruco10Dictionary19generateImageMarkerEiiRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(216) %i.cj, i32 noundef %i.es, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %4)
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
  %i.et = load float, ptr %i.ce, align 4, !tbaa !89 ; 2 uses
  %i.eu = load float, ptr %i.cd, align 4, !tbaa !89
  %i.ev = fcmp oeq float %i.et, %i.eu
  br i1 %i.ev, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.ew = load float, ptr %i.cc, align 8, !tbaa !91
  %i.ex = load float, ptr %i.cf, align 16, !tbaa !91
  %i.ey = fcmp oeq float %i.ew, %i.ex
  br i1 %i.ey, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.ez = load <4 x float>, ptr %17, align 16
  %i.fa = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ez)
  %i.fb = insertelement <4 x float> poison, float %i.et, i64 0
  %i.fc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fb)
  store i32 %i.fa, ptr %22, align 4, !tbaa !92
  store i32 %i.fc, ptr %i.cx, align 4, !tbaa !94
  store i32 %.sroa.speculated, ptr %i.cy, align 4, !tbaa !95
  store i32 %.sroa.speculated, ptr %i.cz, align 4, !tbaa !96
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.db, align 8
  store i32 -1040121856, ptr %20, align 8, !tbaa !86
  store ptr %21, ptr %i.da, align 8, !tbaa !15
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.at

bb.af:                                            ; preds = %.preheader
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ac
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn79.pn = phi { ptr, i32 } [ %i.ff, %bb.ah ], [ %i.fe, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ab, %bb.aa
  store i32 -1090519040, ptr %18, align 16
  store i32 -1090519040, ptr %.sroa_idx123, align 4
  store i32 -1090519040, ptr %.sroa_idx120, align 4
  %i.fg = load <2 x i32>, ptr %i.cl, align 8, !tbaa !35
  %i.fh = sitofp <2 x i32> %i.fg to <2 x float>
  %i.fi = fadd <2 x float> %i.fh, splat (float -5.000000e-01) ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 1
  store float %i.fj, ptr %i.ck, align 8
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fk, ptr %i.cm, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZN2cv18getAffineTransformEPKNS_6Point_IfEES3_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull %18, ptr noundef nonnull %17)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store i32 0, ptr %i.cn, align 8, !tbaa !97
end_hunk_0
