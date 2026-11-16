Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/descriptor?download=true
inline.NumInlined: 249
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_:bb.a

bb.r:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !19
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br label %common.resume

bb.s:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit111
  %i.bg = and i32 %2, 1
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 131) #11
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.x:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.x
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.w
  %.pn78 = phi { ptr, i32 } [ %i.bh, %bb.w ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %0, align 8, !tbaa !25
  %i.bp = and i32 %i.bo, 4095
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = load i32, ptr %1, align 8, !tbaa !25
  %i.bs = and i32 %i.br, 4095
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 132) #11
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.ae:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ae
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.ad
  %.pn80 = phi { ptr, i32 } [ %i.bu, %bb.ad ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.bv, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  br label %common.resume

bb.af:                                            ; preds = %bb.z
  %i.cb = and i32 %5, -2
  %or.cond = icmp eq i32 %i.cb, 4
  br i1 %or.cond, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 133) #11
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.ak:                                            ; preds = %bb.ah
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ak
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.aj
  %.pn82 = phi { ptr, i32 } [ %i.cc, %bb.aj ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.cd, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  br label %common.resume

bb.al:                                            ; preds = %bb.af
  %i.cj = icmp slt i32 %2, 10
  br i1 %i.cj, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 134) #11
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.aq:                                            ; preds = %bb.an
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.aq
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !19
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ap
  %.pn84 = phi { ptr, i32 } [ %i.ck, %bb.ap ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.cl, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  br label %common.resume

bb.ar:                                            ; preds = %bb.al
  %35 = add nsw i32 %2, -1
  %i.cr = ashr exact i32 %35, 1                   ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !26 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !26 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !26 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32 ; 3 uses
  %i.dc = icmp eq i32 %5, 4
  br i1 %i.dc, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !28 ; 2 uses
  store i32 0, ptr %23, align 4, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6stereo18CombinedDescriptorILi2ELi4ELi2ELi2ENS0_9MCTKernelILi2EEEEE, i64 16), ptr %24, align 8, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %i.db, ptr %i.dg, align 8, !tbaa !75
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 %i.cr, ptr %i.di, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 %i.db, ptr %i.dj, align 4, !tbaa !78
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.cx, ptr %i.dk, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.cz, ptr %i.dl, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.ct, ptr %i.dm, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.cv, ptr %.sroa.4155.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 56
  store i32 %6, ptr %.sroa.5156.0..sroa_idx, align 8, !tbaa !20
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 60
  store i32 2, ptr %.sroa.6157.0..sroa_idx, align 4, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 64
  store i32 %i.cr, ptr %i.dn, align 8, !tbaa !79
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, double noundef -1.000000e+00)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  br label %bb.ci

bb.au:                                            ; preds = %bb.as
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  br label %common.resume

bb.av:                                            ; preds = %bb.ar
  %i.dp = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
  br i1 %i.dp, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 148) #11
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.ba:                                            ; preds = %bb.ax
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %25, align 8, !tbaa !18   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.ba
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.az
  %.pn96 = phi { ptr, i32 } [ %i.dq, %bb.az ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.dr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  br label %common.resume

bb.bb:                                            ; preds = %bb.av
  %i.dx = load i32, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dy = and i32 %i.dx, 16384
  %.not162 = icmp eq i32 %i.dy, 0
  br i1 %.not162, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 149) #11
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.bg:                                            ; preds = %bb.bd
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %27, align 8, !tbaa !18   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.bg
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !19
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.bf
  %.pn94 = phi { ptr, i32 } [ %i.dz, %bb.bf ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ea, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  br label %common.resume

bb.bh:                                            ; preds = %bb.bb
  %i.eg = and i32 %i.dx, 4095                     ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 4
  br i1 %i.eh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.eg, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_E15__cv_check__150) #11
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32 ; 2 uses
  %i.ek = load i32, ptr %i.da, align 4, !tbaa !32 ; 2 uses
  %.not86 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not86, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ej, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_E15__cv_check__151) #11
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !28 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !28 ; 2 uses
  %.not87 = icmp slt i32 %i.em, %i.eo
  br i1 %.not87, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.em, i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_E15__cv_check__152) #11
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ep = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %8)
  br i1 %i.ep, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 153) #11
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
end_hunk_0
begin_hunk_1_@_ZN2cv6stereo23modifiedCensusTransformERKNS_3MatEiRS1_iiS3_:bb.a
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !19
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %common.resume

bb.s:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit83
  %i.bg = and i32 %1, 1
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 169) #11
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.x:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.x
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.w
  %.pn56 = phi { ptr, i32 } [ %i.bh, %bb.w ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %0, align 8, !tbaa !25
  %i.bp = and i32 %i.bo, 4095
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 170) #11
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ad:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ad
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !19
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ac
  %.pn58 = phi { ptr, i32 } [ %i.br, %bb.ac ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.bs, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %common.resume

bb.ae:                                            ; preds = %bb.y
  %i.by = and i32 %3, -2
  %or.cond = icmp eq i32 %i.by, 4
  br i1 %or.cond, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 171) #11
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.aj:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.aj
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.bz, %bb.ai ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.ca, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %common.resume

bb.ak:                                            ; preds = %bb.ae
  %i.cg = icmp slt i32 %1, 10
  br i1 %i.cg, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 172) #11
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.ap:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.ap
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.ao
  %.pn62 = phi { ptr, i32 } [ %i.ch, %bb.ao ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.ci, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %common.resume

bb.aq:                                            ; preds = %bb.ak
  %28 = add nsw i32 %1, -1
  %i.co = ashr exact i32 %28, 1                   ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !27
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = icmp eq i32 %3, 4
  br i1 %i.cw, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  store i32 0, ptr %20, align 4, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6stereo18CombinedDescriptorILi2ELi4ELi2ELi1ENS0_9MCTKernelILi1EEEEE, i64 16), ptr %21, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %i.db, ptr %i.dd, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 %i.cy, ptr %i.de, align 4, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 %i.co, ptr %i.df, align 8, !tbaa !91
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 %i.cv, ptr %i.dg, align 4, !tbaa !92
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %i.cs, ptr %i.dh, align 8, !tbaa !43
  store ptr %i.cq, ptr %i.dc, align 8, !tbaa !19
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %4, ptr %.sroa.4115.0..sroa_idx, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 44
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 48
  store i32 %i.co, ptr %i.di, align 8, !tbaa !93
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21, double noundef -1.000000e+00)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  br label %bb.bp

bb.at:                                            ; preds = %bb.ar
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  br label %common.resume

bb.au:                                            ; preds = %bb.aq
  %i.dk = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
  br i1 %i.dk, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 186) #11
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.az:                                            ; preds = %bb.aw
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %22, align 8, !tbaa !18   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.az
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !19
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ay
  %.pn68 = phi { ptr, i32 } [ %i.dl, %bb.ay ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.dm, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  br label %common.resume

bb.ba:                                            ; preds = %bb.au
  %i.ds = load i32, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.dt = and i32 %i.ds, 16384
  %.not119 = icmp eq i32 %i.dt, 0
  br i1 %.not119, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv6stereo23modifiedCensusTransformERKNS_3MatES3_iRS1_S4_iiS3_S3_, ptr noundef nonnull @.str.1, i32 noundef 187) #11
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.bf:                                            ; preds = %bb.bc
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %24, align 8, !tbaa !18   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bf
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !19
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.du, %bb.be ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.dv, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  br label %common.resume

bb.bg:                                            ; preds = %bb.ba
  %i.eb = and i32 %i.ds, 4095                     ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 4
  br i1 %i.ec, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.eb, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatEiRS1_iiS3_E15__cv_check__188) #11
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32 ; 3 uses
  %.not64 = icmp slt i32 %i.ee, %i.eg
  br i1 %.not64, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ee, i32 noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatEiRS1_iiS3_E15__cv_check__189) #11
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !28 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !28 ; 4 uses
  %.not65 = icmp slt i32 %i.ei, %i.ek
  br i1 %.not65, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ei, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv6stereo23modifiedCensusTransformERKNS_3MatEiRS1_iiS3_E15__cv_check__190) #11
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  store i32 0, ptr %26, align 4, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %i.ek, ptr %i.en, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6stereo18CombinedDescriptorILi2ELi3ELi2ELi1ENS0_8MVKernelILi1EEEEE, i64 16), ptr %27, align 8, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %i.eg, ptr %i.ep, align 8, !tbaa !96
  %i.eq = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 %i.ek, ptr %i.eq, align 4, !tbaa !97
  %i.er = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 %i.co, ptr %i.er, align 8, !tbaa !98
  %i.es = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 %i.cv, ptr %i.es, align 4, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.cs, ptr %i.et, align 8, !tbaa !43
  store ptr %i.cq, ptr %i.eo, align 8, !tbaa !19
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr %i.em, ptr %.sroa.4117.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i32 1, ptr %.sroa.5118.0..sroa_idx, align 8, !tbaa !20
end_hunk_1
