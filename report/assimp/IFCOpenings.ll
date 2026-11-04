Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
  store ptr %i.ch, ptr %i.nw, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.qj, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ql = load ptr, ptr %i.qk, align 8            ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293: ; preds = %._crit_edge769
  %i.qo = load i64, ptr %i.qm, align 8
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit295

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit295: ; preds = %._crit_edge769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.qj, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qq) #27
  store ptr %i.cq, ptr %15, align 8
  %i.qr = load i64, ptr %i.cs, align 8
  %i.qs = getelementptr inbounds i8, ptr %15, i64 %i.qr
  store ptr %i.cr, ptr %i.qs, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.qt, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %15, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.qu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.qv = load ptr, ptr %i.ny, align 8
  %i.qw = load ptr, ptr %i.nz, align 8            ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %._crit_edge785, label %.lr.ph784

.lr.ph784:                                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit295
  %i.qy = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 21 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 18 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 9 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 10 uses
  %i.re = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 8 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 11 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 14 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 8 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.be

bb.ba:                                            ; preds = %._crit_edge763
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bb:                                            ; preds = %.noexc287, %.noexc286, %bb.az, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit284
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %16, align 8              ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.pd
  br i1 %i.rv, label %.body282, label %.body282.sink.split

.body282.sink.split:                              ; preds = %bb.bb, %bb.ax
  %.sink1052 = phi ptr [ %i.pr, %bb.ax ], [ %i.ru, %bb.bb ]
  %.pn129.ph = phi { ptr, i32 } [ %i.pq, %bb.ax ], [ %i.rt, %bb.bb ]
  %i.rw = load i64, ptr %i.pd, align 8
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %.sink1052, i64 noundef %i.rx) #26
  br label %.body282

.body282:                                         ; preds = %.body282.sink.split, %bb.bb, %bb.ax
  %.pn129 = phi { ptr, i32 } [ %i.pq, %bb.ax ], [ %i.rt, %bb.bb ], [ %.pn129.ph, %.body282.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  br label %.loopexit.split-lp611

.lr.ph768:                                        ; preds = %.lr.ph768.preheader, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit
  %.sroa.0506.0767 = phi ptr [ %.sroa.0506.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit ], [ %i.qc, %.lr.ph768.preheader ] ; 2 uses
  %.sroa.11510.0766 = phi ptr [ %.sroa.11510.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit ], [ %i.qg, %.lr.ph768.preheader ] ; 2 uses
  %.sroa.14511.0765 = phi ptr [ %.sroa.14511.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit ], [ %i.qf, %.lr.ph768.preheader ] ; 2 uses
  invoke fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef nonnull byval(%"struct.std::pair.3") align 8 %.sroa.0506.0767)
          to label %bb.bc unwind label %.loopexit.split-lp611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.lr.ph768
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0506.0767, i64 32 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %.sroa.11510.0766
  br i1 %i.rz, label %bb.bd, label %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.14511.0765, i64 8 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 512
  br label %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEv.exit: ; preds = %bb.bc, %bb.bd
  %.sroa.14511.1 = phi ptr [ %i.sa, %bb.bd ], [ %.sroa.14511.0765, %bb.bc ]
  %.sroa.11510.1 = phi ptr [ %i.sc, %bb.bd ], [ %.sroa.11510.0766, %bb.bc ]
  %.sroa.0506.1 = phi ptr [ %i.sb, %bb.bd ], [ %i.ry, %bb.bc ] ; 2 uses
  %.not584 = icmp eq ptr %.sroa.0506.1, %i.qe
  br i1 %.not584, label %._crit_edge769, label %.lr.ph768

.loopexit.split-lp611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph768, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271, %_ZNSolsEm.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp611

bb.be:                                            ; preds = %.lr.ph784, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.sd = phi ptr [ %i.qw, %.lr.ph784 ], [ %i.ama, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.sd, i64 16, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qy, ptr noundef nonnull align 8 dereferenceable(16) %i.se, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %17, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %17, i64 noundef 2)
          to label %.noexc411 unwind label %.body299

.noexc411:                                        ; preds = %bb.be
  %i.sf = load ptr, ptr %i.rb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.sg = load ptr, ptr %i.nz, align 8            ; 2 uses
  %i.sh = load ptr, ptr %i.ot, align 8
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 -32
  %.not.i301 = icmp eq ptr %i.sg, %i.si
  br i1 %.not.i301, label %bb.bg, label %bb.bf

.body299:                                         ; preds = %bb.be
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit351

bb.bf:                                            ; preds = %.noexc411
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit

bb.bg:                                            ; preds = %.noexc411
  %i.sl = load ptr, ptr %i.qd, align 8
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef 512) #26
  %i.sm = load ptr, ptr %i.oc, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 2 uses
  store ptr %i.sn, ptr %i.oc, align 8
  %i.so = load ptr, ptr %i.sn, align 8            ; 3 uses
  store ptr %i.so, ptr %i.qd, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 512
  store ptr %i.sp, ptr %i.ot, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit: ; preds = %bb.bf, %bb.bg
  %storemerge.i = phi ptr [ %i.sk, %bb.bf ], [ %i.so, %bb.bg ] ; 2 uses
  store ptr %storemerge.i, ptr %i.nz, align 8
  %i.sq = load ptr, ptr %i.ny, align 8, !noalias !402
  %i.sr = icmp eq ptr %storemerge.i, %i.sq
  br i1 %i.sr, label %.critedge, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader: ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit
  %i.ss = load ptr, ptr %i.nz, align 8, !noalias !403 ; 2 uses
  %i.st = load ptr, ptr %i.ny, align 8, !noalias !402 ; 2 uses
  %.not5867701043 = icmp eq ptr %i.ss, %i.st
  br i1 %.not5867701043, label %.critedge, label %.lr.ph775

.lr.ph775:                                        ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader, %.loopexit592
  %i.su = phi ptr [ %i.aig, %.loopexit592 ], [ %i.st, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader ]
  %i.sv = phi ptr [ %i.aif, %.loopexit592 ], [ %i.ss, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader ]
  %i.sw = load ptr, ptr %i.oc, align 8, !noalias !403
  %i.sx = load ptr, ptr %i.ot, align 8, !noalias !403
  %i.sy = load ptr, ptr %i.rc, align 8, !noalias !404 ; 9 uses
  %i.sz = load <2 x double>, ptr %i.sy, align 8   ; 3 uses
  %i.ta = load ptr, ptr %i.rd, align 8            ; 13 uses
  %i.tb = load ptr, ptr %i.rb, align 8            ; 5 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb                ; 4 uses
  %i.td = load ptr, ptr %i.ra, align 8            ; 13 uses
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 -8 ; 4 uses
  br label %bb.bi

.loopexit.split-lp611:                            ; preds = %.loopexit.split-lp611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body282
  %.pn144 = phi { ptr, i32 } [ %.pn129, %.body282 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp611.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15) #27
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp611, %bb.ba
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %.loopexit.split-lp611 ], [ %i.rs, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.bi:                                            ; preds = %.lr.ph775, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit
  %.sroa.0479.0773 = phi ptr [ %i.sv, %.lr.ph775 ], [ %.sroa.0479.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 12 uses
  %.sroa.27.0772 = phi ptr [ %i.sx, %.lr.ph775 ], [ %.sroa.27.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 2 uses
  %.sroa.32.0771 = phi ptr [ %i.sw, %.lr.ph775 ], [ %.sroa.32.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 6 uses
  %i.tf = load <2 x double>, ptr %.sroa.0479.0773, align 8 ; 3 uses
  %i.tg = fsub <2 x double> %i.tf, %i.sz
  %.fr1058 = freeze <2 x double> %i.tg
  %24 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1058)
  %25 = fcmp uge <2 x double> %24, splat (double f0x3EB0C6F7A0000000)
  %26 = bitcast <2 x i1> %25 to i2
  %27 = icmp eq i2 %26, 0                         ; 2 uses
  br i1 %27, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.tc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.th = load ptr, ptr %i.te, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 512
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.tj = phi ptr [ %i.ti, %bb.bk ], [ %i.ta, %bb.bj ]
  %i.tk = getelementptr inbounds i8, ptr %i.tj, i64 -16
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0479.0773, i64 16
  %i.tm = load <2 x double>, ptr %i.tk, align 8
  %i.tn = load <2 x double>, ptr %i.tl, align 8
  %i.to = fsub <2 x double> %i.tn, %i.tm
  %.fr1059 = freeze <2 x double> %i.to
  %28 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1059)
  %29 = fcmp uge <2 x double> %28, splat (double f0x3EB0C6F7A0000000)
  %30 = bitcast <2 x i1> %29 to i2
  %31 = icmp eq i2 %30, 0
  br i1 %31, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  br i1 %i.tc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.tp = load ptr, ptr %i.te, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 512
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.tr = phi ptr [ %i.tq, %bb.bn ], [ %i.ta, %bb.bm ]
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 -16
  %i.tt = load <2 x double>, ptr %i.ts, align 8
  %i.tu = fsub <2 x double> %i.tf, %i.tt
  %.fr1060 = freeze <2 x double> %i.tu
  %32 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1060)
  %33 = fcmp uge <2 x double> %32, splat (double f0x3EB0C6F7A0000000)
  %34 = bitcast <2 x i1> %33 to i2
  %35 = icmp eq i2 %34, 0
  br i1 %35, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0479.0773, i64 16
  %i.tw = load <2 x double>, ptr %i.tv, align 8
  %i.tx = fsub <2 x double> %i.tw, %i.sz
  %.fr1061 = freeze <2 x double> %i.tx
  %36 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1061)
  %37 = fcmp uge <2 x double> %36, splat (double f0x3EB0C6F7A0000000)
  %38 = bitcast <2 x i1> %37 to i2
  %39 = icmp eq i2 %38, 0
  br i1 %39, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  store ptr %.sroa.0479.0773, ptr %5, align 8, !alias.scope !405, !noalias !406
  %i.ty = load ptr, ptr %.sroa.32.0771, align 8, !noalias !407 ; 2 uses
  store ptr %i.ty, ptr %i.rl, align 8, !alias.scope !405, !noalias !406
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 512
  store ptr %i.tz, ptr %i.rm, align 8, !alias.scope !405, !noalias !406
  store ptr %.sroa.32.0771, ptr %i.rn, align 8, !alias.scope !405, !noalias !406
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %19, ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull dead_on_return %5)
          to label %.split.us.thread unwind label %bb.br

.split.us.thread:                                 ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit

bb.br:                                            ; preds = %bb.bq
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.loopexit.split-lp598

bb.bs:                                            ; preds = %bb.bo, %bb.bp
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0479.0773, i64 16 ; 3 uses
  br i1 %27, label %bb.bt, label %bb.ch

bb.bt:                                            ; preds = %bb.bs
  %i.uc = load ptr, ptr %i.rh, align 8
  %.not.i304 = icmp eq ptr %i.sy, %i.uc
  br i1 %.not.i304, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ud = getelementptr inbounds i8, ptr %i.sy, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ud, ptr noundef nonnull align 8 dereferenceable(16) %i.ub, i64 16, i1 false)
  %i.ue = load ptr, ptr %i.rc, align 8
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -16
  store ptr %i.uf, ptr %i.rc, align 8
  br label %bb.eo

bb.bv:                                            ; preds = %bb.bt
  %i.ug = load ptr, ptr %i.qz, align 8            ; 4 uses
  %i.uh = ptrtoint ptr %i.td to i64
  %i.ui = ptrtoint ptr %i.ug to i64               ; 2 uses
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = ashr exact i64 %i.uj, 3                 ; 3 uses
  %i.ul = icmp ne ptr %i.td, null
  %.neg.i.i.i.i = sext i1 %i.ul to i64
  %i.um = add nsw i64 %i.uk, %.neg.i.i.i.i
  %i.un = shl nsw i64 %i.um, 5
  %i.uo = ptrtoint ptr %i.ta to i64
  %i.up = ptrtoint ptr %i.tb to i64
  %i.uq = sub i64 %i.uo, %i.up
  %i.ur = ashr exact i64 %i.uq, 4
  %i.us = load ptr, ptr %i.rf, align 8
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = ptrtoint ptr %i.sy to i64
  %i.uv = sub i64 %i.ut, %i.uu
  %i.uw = ashr exact i64 %i.uv, 4
  %i.ux = add nsw i64 %i.uw, %i.ur
  %i.uy = add i64 %i.ux, %i.un
  %i.uz = icmp eq i64 %i.uy, 576460752303423487
  br i1 %i.uz, label %.invoke, label %bb.bw

.invoke:                                          ; preds = %bb.dx, %bb.db, %bb.ck, %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.cont unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.va = load ptr, ptr %17, align 8              ; 2 uses
  %i.vb = icmp eq ptr %i.ug, %i.va
  br i1 %i.vb, label %bb.bx, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.vc = add nsw i64 %i.uk, 1                    ; 2 uses
  %i.vd = add nsw i64 %i.uk, 2                    ; 3 uses
  %i.ve = load i64, ptr %i.rg, align 8            ; 4 uses
  %i.vf = shl nsw i64 %i.vd, 1
  %i.vg = icmp ugt i64 %i.ve, %i.vf
  br i1 %i.vg, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.vh = sub i64 %i.ve, %i.vd
  %i.vi = lshr i64 %i.vh, 1
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8 ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.vc ; 2 uses
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vn, %i.ui                    ; 3 uses
  %i.vp = ashr exact i64 %i.vo, 3                 ; 2 uses
  %i.vq = icmp sgt i64 %i.vp, 1
  br i1 %i.vq, label %bb.bz, label %bb.ca, !prof !20

bb.bz:                                            ; preds = %bb.by
  %i.vr = sub nsw i64 0, %i.vp
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.vm, i64 %i.vr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vs, ptr align 8 %i.ug, i64 %i.vo, i1 false)
  br label %.noexc306

bb.ca:                                            ; preds = %bb.by
  %i.vt = icmp eq i64 %i.vo, 8
  br i1 %i.vt, label %bb.cb, label %.noexc306

bb.cb:                                            ; preds = %bb.ca
  %i.vu = getelementptr inbounds i8, ptr %i.vm, i64 -8
  %i.vv = load ptr, ptr %i.ug, align 8
  store ptr %i.vv, ptr %i.vu, align 8
  br label %.noexc306

bb.cc:                                            ; preds = %bb.bx
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ve, i64 1)
  %i.vw = add i64 %i.ve, 2
  %i.vx = add i64 %i.vw, %.sroa.speculated.i      ; 5 uses
  %i.vy = icmp ugt i64 %i.vx, 1152921504606846975
  br i1 %i.vy, label %bb.cd, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !26

bb.cd:                                            ; preds = %bb.cc
  %i.vz = icmp ugt i64 %i.vx, 2305843009213693951
  br i1 %i.vz, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

.noexc.i.i.invoke:                                ; preds = %bb.ek, %bb.do, %bb.cs, %bb.cd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

.noexc3.i.i.invoke:                               ; preds = %bb.ek, %bb.do, %bb.cs, %bb.cd
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i.cont unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3.i.i.cont:                                 ; preds = %.noexc3.i.i.invoke
  unreachable

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.cc
  %i.wa = shl nuw nsw i64 %i.vx, 3
  %i.wb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wa) #25
          to label %.noexc414 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc414:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i
  %i.wc = sub nsw i64 %i.vx, %i.vd
  %i.wd = lshr i64 %i.wc, 1
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 3 uses
  %i.wg = load ptr, ptr %i.qz, align 8            ; 3 uses
  %i.wh = load ptr, ptr %i.ra, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wg to i64
  %i.wl = sub i64 %i.wj, %i.wk                    ; 3 uses
  %i.wm = icmp sgt i64 %i.wl, 8
  br i1 %i.wm, label %bb.ce, label %bb.cf, !prof !20

bb.ce:                                            ; preds = %.noexc414
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wf, ptr align 8 %i.wg, i64 %i.wl, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cf:                                            ; preds = %.noexc414
  %i.wn = icmp eq i64 %i.wl, 8
  br i1 %i.wn, label %bb.cg, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cg:                                            ; preds = %bb.cf
  %i.wo = load ptr, ptr %i.wg, align 8
  store ptr %i.wo, ptr %i.wf, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.wp = load ptr, ptr %17, align 8
  %i.wq = load i64, ptr %i.rg, align 8
  %i.wr = shl i64 %i.wq, 3
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.wr) #26
  store ptr %i.wb, ptr %17, align 8
  store i64 %i.vx, ptr %i.rg, align 8
  br label %.noexc306

.noexc306:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i, %bb.cb, %bb.ca, %bb.bz
  %.0.i = phi ptr [ %i.wf, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i ], [ %i.vk, %bb.ca ], [ %i.vk, %bb.bz ], [ %i.vk, %bb.cb ] ; 3 uses
  store ptr %.0.i, ptr %i.qz, align 8
  %i.ws = load ptr, ptr %.0.i, align 8            ; 2 uses
  store ptr %i.ws, ptr %i.rh, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 512
  store ptr %i.wt, ptr %i.rf, align 8
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.vc
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -8 ; 2 uses
  store ptr %i.wv, ptr %i.ra, align 8
  %i.ww = load ptr, ptr %i.wv, align 8            ; 2 uses
  store ptr %i.ww, ptr %i.rb, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 512
  store ptr %i.wx, ptr %i.re, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i: ; preds = %.noexc306, %bb.bw
  %i.wy = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc307 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc307:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i
  %i.wz = load ptr, ptr %i.qz, align 8
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 -8
  store ptr %i.wy, ptr %i.xa, align 8
  %i.xb = load ptr, ptr %i.qz, align 8
  %i.xc = getelementptr inbounds i8, ptr %i.xb, i64 -8 ; 2 uses
  store ptr %i.xc, ptr %i.qz, align 8
  %i.xd = load ptr, ptr %i.xc, align 8            ; 3 uses
  store ptr %i.xd, ptr %i.rh, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 512
  store ptr %i.xe, ptr %i.rf, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 496 ; 2 uses
  store ptr %i.xf, ptr %i.rc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, ptr noundef nonnull align 8 dereferenceable(16) %i.ub, i64 16, i1 false)
  br label %bb.eo

bb.ch:                                            ; preds = %bb.bs
  %i.xg = load <2 x double>, ptr %i.ub, align 8   ; 2 uses
  %i.xh = fsub <2 x double> %i.xg, %i.sz
  %.fr1062 = freeze <2 x double> %i.xh
  %40 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1062)
  %41 = fcmp uge <2 x double> %40, splat (double f0x3EB0C6F7A0000000)
  %42 = bitcast <2 x i1> %41 to i2
  %43 = icmp eq i2 %42, 0
  br i1 %43, label %bb.ci, label %bb.cw

bb.ci:                                            ; preds = %bb.ch
  %i.xi = load ptr, ptr %i.rh, align 8
  %.not.i308 = icmp eq ptr %i.sy, %i.xi
  br i1 %.not.i308, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xj = getelementptr inbounds i8, ptr %i.sy, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0773, i64 16, i1 false)
  %i.xk = load ptr, ptr %i.rc, align 8
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 -16
  store ptr %i.xl, ptr %i.rc, align 8
  br label %bb.eo

bb.ck:                                            ; preds = %bb.ci
  %i.xm = load ptr, ptr %i.qz, align 8            ; 4 uses
  %i.xn = ptrtoint ptr %i.td to i64
  %i.xo = ptrtoint ptr %i.xm to i64               ; 2 uses
  %i.xp = sub i64 %i.xn, %i.xo
  %i.xq = ashr exact i64 %i.xp, 3                 ; 3 uses
  %i.xr = icmp ne ptr %i.td, null
  %.neg.i.i.i.i309 = sext i1 %i.xr to i64
  %i.xs = add nsw i64 %i.xq, %.neg.i.i.i.i309
  %i.xt = shl nsw i64 %i.xs, 5
  %i.xu = ptrtoint ptr %i.ta to i64
  %i.xv = ptrtoint ptr %i.tb to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = ashr exact i64 %i.xw, 4
  %i.xy = load ptr, ptr %i.rf, align 8
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.sy to i64
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = ashr exact i64 %i.yb, 4
  %i.yd = add nsw i64 %i.yc, %i.xx
  %i.ye = add i64 %i.yd, %i.xt
  %i.yf = icmp eq i64 %i.ye, 576460752303423487
  br i1 %i.yf, label %.invoke, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yg = load ptr, ptr %17, align 8              ; 2 uses
  %i.yh = icmp eq ptr %i.xm, %i.yg
  br i1 %i.yh, label %bb.cm, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

bb.cm:                                            ; preds = %bb.cl
  %i.yi = add nsw i64 %i.xq, 1                    ; 2 uses
  %i.yj = add nsw i64 %i.xq, 2                    ; 3 uses
  %i.yk = load i64, ptr %i.rg, align 8            ; 4 uses
  %i.yl = shl nsw i64 %i.yj, 1
  %i.ym = icmp ugt i64 %i.yk, %i.yl
  br i1 %i.ym, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.yn = sub i64 %i.yk, %i.yj
  %i.yo = lshr i64 %i.yn, 1
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yo
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.yi ; 2 uses
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.yt, %i.xo                    ; 3 uses
  %i.yv = ashr exact i64 %i.yu, 3                 ; 2 uses
  %i.yw = icmp sgt i64 %i.yv, 1
  br i1 %i.yw, label %bb.co, label %bb.cp, !prof !20

bb.co:                                            ; preds = %bb.cn
  %i.yx = sub nsw i64 0, %i.yv
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.ys, i64 %i.yx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yy, ptr align 8 %i.xm, i64 %i.yu, i1 false)
  br label %.noexc312

bb.cp:                                            ; preds = %bb.cn
  %i.yz = icmp eq i64 %i.yu, 8
  br i1 %i.yz, label %bb.cq, label %.noexc312

bb.cq:                                            ; preds = %bb.cp
  %i.za = getelementptr inbounds i8, ptr %i.ys, i64 -8
  %i.zb = load ptr, ptr %i.xm, align 8
  store ptr %i.zb, ptr %i.za, align 8
  br label %.noexc312

bb.cr:                                            ; preds = %bb.cm
  %.sroa.speculated.i415 = call i64 @llvm.umax.i64(i64 %i.yk, i64 1)
  %i.zc = add i64 %i.yk, 2
  %i.zd = add i64 %i.zc, %.sroa.speculated.i415   ; 5 uses
  %i.ze = icmp ugt i64 %i.zd, 1152921504606846975
  br i1 %i.ze, label %bb.cs, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416, !prof !26

bb.cs:                                            ; preds = %bb.cr
  %i.zf = icmp ugt i64 %i.zd, 2305843009213693951
  br i1 %i.zf, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416: ; preds = %bb.cr
  %i.zg = shl nuw nsw i64 %i.zd, 3
  %i.zh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zg) #25
          to label %.noexc423 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc423:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416
  %i.zi = sub nsw i64 %i.zd, %i.yj
  %i.zj = lshr i64 %i.zi, 1
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8 ; 3 uses
  %i.zm = load ptr, ptr %i.qz, align 8            ; 3 uses
  %i.zn = load ptr, ptr %i.ra, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zm to i64
  %i.zr = sub i64 %i.zp, %i.zq                    ; 3 uses
  %i.zs = icmp sgt i64 %i.zr, 8
  br i1 %i.zs, label %bb.ct, label %bb.cu, !prof !20

bb.ct:                                            ; preds = %.noexc423
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zl, ptr align 8 %i.zm, i64 %i.zr, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

bb.cu:                                            ; preds = %.noexc423
  %i.zt = icmp eq i64 %i.zr, 8
  br i1 %i.zt, label %bb.cv, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

bb.cv:                                            ; preds = %bb.cu
  %i.zu = load ptr, ptr %i.zm, align 8
  store ptr %i.zu, ptr %i.zl, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.zv = load ptr, ptr %17, align 8
  %i.zw = load i64, ptr %i.rg, align 8
  %i.zx = shl i64 %i.zw, 3
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zx) #26
  store ptr %i.zh, ptr %17, align 8
  store i64 %i.zd, ptr %i.rg, align 8
  br label %.noexc312

.noexc312:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417, %bb.cq, %bb.cp, %bb.co
  %.0.i418 = phi ptr [ %i.zl, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417 ], [ %i.yq, %bb.cp ], [ %i.yq, %bb.co ], [ %i.yq, %bb.cq ] ; 3 uses
  store ptr %.0.i418, ptr %i.qz, align 8
  %i.zy = load ptr, ptr %.0.i418, align 8         ; 2 uses
  store ptr %i.zy, ptr %i.rh, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 512
  store ptr %i.zz, ptr %i.rf, align 8
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %.0.i418, i64 %i.yi
  %i.aab = getelementptr inbounds i8, ptr %i.aaa, i64 -8 ; 2 uses
  store ptr %i.aab, ptr %i.ra, align 8
  %i.aac = load ptr, ptr %i.aab, align 8          ; 2 uses
  store ptr %i.aac, ptr %i.rb, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 512
  store ptr %i.aad, ptr %i.re, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310: ; preds = %.noexc312, %bb.cl
  %i.aae = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc313 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc313:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310
  %i.aaf = load ptr, ptr %i.qz, align 8
  %i.aag = getelementptr inbounds i8, ptr %i.aaf, i64 -8
  store ptr %i.aae, ptr %i.aag, align 8
  %i.aah = load ptr, ptr %i.qz, align 8
  %i.aai = getelementptr inbounds i8, ptr %i.aah, i64 -8 ; 2 uses
  store ptr %i.aai, ptr %i.qz, align 8
  %i.aaj = load ptr, ptr %i.aai, align 8          ; 3 uses
  store ptr %i.aaj, ptr %i.rh, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 512
  store ptr %i.aak, ptr %i.rf, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 496 ; 2 uses
  store ptr %i.aal, ptr %i.rc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aal, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0773, i64 16, i1 false)
  br label %bb.eo

bb.cw:                                            ; preds = %bb.ch
  br i1 %i.tc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aam = load ptr, ptr %i.te, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 512
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.aao = phi ptr [ %i.aan, %bb.cx ], [ %i.ta, %bb.cw ]
  %i.aap = getelementptr inbounds i8, ptr %i.aao, i64 -16
  %i.aaq = load <2 x double>, ptr %i.aap, align 8
  %i.aar = fsub <2 x double> %i.tf, %i.aaq
  %.fr1063 = freeze <2 x double> %i.aar
  %44 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1063)
  %45 = fcmp uge <2 x double> %44, splat (double f0x3EB0C6F7A0000000)
  %46 = bitcast <2 x i1> %45 to i2
  %47 = icmp eq i2 %46, 0
  br i1 %47, label %bb.cz, label %bb.ds

bb.cz:                                            ; preds = %bb.cy
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0479.0773, i64 16 ; 2 uses
  %i.aat = load ptr, ptr %i.re, align 8
  %i.aau = getelementptr inbounds i8, ptr %i.aat, i64 -16
  %.not.i316 = icmp eq ptr %i.ta, %i.aau
  br i1 %.not.i316, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ta, ptr noundef nonnull align 8 dereferenceable(16) %i.aas, i64 16, i1 false)
  %i.aav = load ptr, ptr %i.rd, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store ptr %i.aaw, ptr %i.rd, align 8
  br label %bb.eo

bb.db:                                            ; preds = %bb.cz
  %i.aax = load ptr, ptr %i.qz, align 8           ; 6 uses
  %i.aay = ptrtoint ptr %i.td to i64              ; 2 uses
  %i.aaz = ptrtoint ptr %i.aax to i64             ; 3 uses
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = ashr exact i64 %i.aba, 3               ; 3 uses
  %i.abc = icmp ne ptr %i.td, null
  %.neg.i.i.i425 = sext i1 %i.abc to i64
  %i.abd = add nsw i64 %i.abb, %.neg.i.i.i425
  %i.abe = shl nsw i64 %i.abd, 5
  %i.abf = ptrtoint ptr %i.ta to i64
  %i.abg = ptrtoint ptr %i.tb to i64
  %i.abh = sub i64 %i.abf, %i.abg
  %i.abi = ashr exact i64 %i.abh, 4
  %i.abj = load ptr, ptr %i.rf, align 8
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = ptrtoint ptr %i.sy to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = ashr exact i64 %i.abm, 4
  %i.abo = add nsw i64 %i.abn, %i.abi
  %i.abp = add i64 %i.abo, %i.abe
  %i.abq = icmp eq i64 %i.abp, 576460752303423487
  br i1 %i.abq, label %.invoke, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abr = load i64, ptr %i.rg, align 8           ; 5 uses
  %i.abs = load ptr, ptr %17, align 8             ; 2 uses
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = sub i64 %i.aay, %i.abt
  %i.abv = ashr exact i64 %i.abu, 3
  %i.abw = sub i64 %i.abr, %i.abv
  %i.abx = icmp ult i64 %i.abw, 2
  br i1 %i.abx, label %bb.dd, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.dd:                                            ; preds = %bb.dc
  %i.aby = add nsw i64 %i.abb, 1                  ; 2 uses
  %i.abz = add nsw i64 %i.abb, 2                  ; 3 uses
  %i.aca = shl nsw i64 %i.abz, 1
  %i.acb = icmp ugt i64 %i.abr, %i.aca
  br i1 %i.acb, label %bb.de, label %bb.dn

bb.de:                                            ; preds = %bb.dd
  %i.acc = sub i64 %i.abr, %i.abz
  %i.acd = lshr i64 %i.acc, 1
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acd ; 10 uses
  %i.acf = icmp ult ptr %i.ace, %i.aax
  %i.acg = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  br i1 %i.acf, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = sub i64 %i.ach, %i.aaz                 ; 3 uses
  %i.acj = icmp sgt i64 %i.aci, 8
  br i1 %i.acj, label %bb.dg, label %bb.dh, !prof !20

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ace, ptr nonnull align 8 %i.aax, i64 %i.aci, i1 false)
  br label %.noexc427

bb.dh:                                            ; preds = %bb.df
  %i.ack = icmp eq i64 %i.aci, 8
  br i1 %i.ack, label %bb.di, label %.noexc427

bb.di:                                            ; preds = %bb.dh
  %i.acl = load ptr, ptr %i.aax, align 8
  store ptr %i.acl, ptr %i.ace, align 8
  br label %.noexc427

bb.dj:                                            ; preds = %bb.de
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.aby ; 2 uses
  %i.acn = ptrtoint ptr %i.acg to i64
  %i.aco = sub i64 %i.acn, %i.aaz                 ; 3 uses
  %i.acp = ashr exact i64 %i.aco, 3               ; 2 uses
  %i.acq = icmp sgt i64 %i.acp, 1
  br i1 %i.acq, label %bb.dk, label %bb.dl, !prof !20

bb.dk:                                            ; preds = %bb.dj
  %i.acr = sub nsw i64 0, %i.acp
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.acm, i64 %i.acr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acs, ptr align 8 %i.aax, i64 %i.aco, i1 false)
  br label %.noexc427

bb.dl:                                            ; preds = %bb.dj
  %i.act = icmp eq i64 %i.aco, 8
  br i1 %i.act, label %bb.dm, label %.noexc427

bb.dm:                                            ; preds = %bb.dl
  %i.acu = getelementptr inbounds i8, ptr %i.acm, i64 -8
  %i.acv = load ptr, ptr %i.aax, align 8
  store ptr %i.acv, ptr %i.acu, align 8
  br label %.noexc427

bb.dn:                                            ; preds = %bb.dd
  %.sroa.speculated.i435 = call i64 @llvm.umax.i64(i64 %i.abr, i64 1)
  %i.acw = add i64 %i.abr, 2
  %i.acx = add i64 %i.acw, %.sroa.speculated.i435 ; 5 uses
  %i.acy = icmp ugt i64 %i.acx, 1152921504606846975
  br i1 %i.acy, label %bb.do, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436, !prof !26

bb.do:                                            ; preds = %bb.dn
  %i.acz = icmp ugt i64 %i.acx, 2305843009213693951
  br i1 %i.acz, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436: ; preds = %bb.dn
  %i.ada = shl nuw nsw i64 %i.acx, 3
  %i.adb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ada) #25
          to label %.noexc443 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc443:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436
  %i.adc = sub nsw i64 %i.acx, %i.abz
  %i.add = lshr i64 %i.adc, 1
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.add ; 3 uses
  %i.adf = load ptr, ptr %i.qz, align 8           ; 3 uses
  %i.adg = load ptr, ptr %i.ra, align 8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = ptrtoint ptr %i.adf to i64
  %i.adk = sub i64 %i.adi, %i.adj                 ; 3 uses
  %i.adl = icmp sgt i64 %i.adk, 8
  br i1 %i.adl, label %bb.dp, label %bb.dq, !prof !20

bb.dp:                                            ; preds = %.noexc443
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ade, ptr align 8 %i.adf, i64 %i.adk, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

bb.dq:                                            ; preds = %.noexc443
  %i.adm = icmp eq i64 %i.adk, 8
  br i1 %i.adm, label %bb.dr, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

bb.dr:                                            ; preds = %bb.dq
  %i.adn = load ptr, ptr %i.adf, align 8
  store ptr %i.adn, ptr %i.ade, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437: ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.ado = load ptr, ptr %17, align 8
  %i.adp = load i64, ptr %i.rg, align 8
  %i.adq = shl i64 %i.adp, 3
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adq) #26
  store ptr %i.adb, ptr %17, align 8
  store i64 %i.acx, ptr %i.rg, align 8
  br label %.noexc427

.noexc427:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437, %bb.dm, %bb.dl, %bb.dk, %bb.di, %bb.dh, %bb.dg
  %.0.i438 = phi ptr [ %i.ade, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437 ], [ %i.ace, %bb.di ], [ %i.ace, %bb.dg ], [ %i.ace, %bb.dh ], [ %i.ace, %bb.dk ], [ %i.ace, %bb.dl ], [ %i.ace, %bb.dm ] ; 3 uses
  store ptr %.0.i438, ptr %i.qz, align 8
  %i.adr = load ptr, ptr %.0.i438, align 8        ; 2 uses
  store ptr %i.adr, ptr %i.rh, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 512
  store ptr %i.ads, ptr %i.rf, align 8
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %.0.i438, i64 %i.aby
  %i.adu = getelementptr inbounds i8, ptr %i.adt, i64 -8 ; 2 uses
  store ptr %i.adu, ptr %i.ra, align 8
  %i.adv = load ptr, ptr %i.adu, align 8          ; 2 uses
  store ptr %i.adv, ptr %i.rb, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 512
  store ptr %i.adw, ptr %i.re, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i

_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %.noexc427, %bb.dc
  %i.adx = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc317 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc317:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i
  %i.ady = load ptr, ptr %i.ra, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store ptr %i.adx, ptr %i.adz, align 8
  %i.aea = load ptr, ptr %i.rd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, ptr noundef nonnull align 8 dereferenceable(16) %i.aas, i64 16, i1 false)
  %i.aeb = load ptr, ptr %i.ra, align 8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8 ; 2 uses
  store ptr %i.aec, ptr %i.ra, align 8
  %i.aed = load ptr, ptr %i.aec, align 8          ; 3 uses
  store ptr %i.aed, ptr %i.rb, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 512
  store ptr %i.aee, ptr %i.re, align 8
  store ptr %i.aed, ptr %i.rd, align 8
  br label %bb.eo

bb.ds:                                            ; preds = %bb.cy
  br i1 %i.tc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aef = load ptr, ptr %i.te, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 512
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.aeh = phi ptr [ %i.aeg, %bb.dt ], [ %i.ta, %bb.ds ]
  %i.aei = getelementptr inbounds i8, ptr %i.aeh, i64 -16
  %i.aej = load <2 x double>, ptr %i.aei, align 8
  %i.aek = fsub <2 x double> %i.xg, %i.aej
  %.fr1064 = freeze <2 x double> %i.aek
  %48 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr1064)
  %49 = fcmp uge <2 x double> %48, splat (double f0x3EB0C6F7A0000000)
  %50 = bitcast <2 x i1> %49 to i2
  %51 = icmp eq i2 %50, 0
  br i1 %51, label %bb.dv, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit

bb.dv:                                            ; preds = %bb.du
  %i.ael = load ptr, ptr %i.re, align 8
  %i.aem = getelementptr inbounds i8, ptr %i.ael, i64 -16
  %.not.i319 = icmp eq ptr %i.ta, %i.aem
  br i1 %.not.i319, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ta, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0773, i64 16, i1 false)
  %i.aen = load ptr, ptr %i.rd, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  store ptr %i.aeo, ptr %i.rd, align 8
  br label %bb.eo

bb.dx:                                            ; preds = %bb.dv
  %i.aep = load ptr, ptr %i.qz, align 8           ; 6 uses
  %i.aeq = ptrtoint ptr %i.td to i64              ; 2 uses
  %i.aer = ptrtoint ptr %i.aep to i64             ; 3 uses
  %i.aes = sub i64 %i.aeq, %i.aer
  %i.aet = ashr exact i64 %i.aes, 3               ; 3 uses
  %i.aeu = icmp ne ptr %i.td, null
  %.neg.i.i.i429 = sext i1 %i.aeu to i64
  %i.aev = add nsw i64 %i.aet, %.neg.i.i.i429
  %i.aew = shl nsw i64 %i.aev, 5
  %i.aex = ptrtoint ptr %i.ta to i64
  %i.aey = ptrtoint ptr %i.tb to i64
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = ashr exact i64 %i.aez, 4
  %i.afb = load ptr, ptr %i.rf, align 8
  %i.afc = ptrtoint ptr %i.afb to i64
  %i.afd = ptrtoint ptr %i.sy to i64
  %i.afe = sub i64 %i.afc, %i.afd
  %i.aff = ashr exact i64 %i.afe, 4
  %i.afg = add nsw i64 %i.aff, %i.afa
  %i.afh = add i64 %i.afg, %i.aew
  %i.afi = icmp eq i64 %i.afh, 576460752303423487
  br i1 %i.afi, label %.invoke, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.afj = load i64, ptr %i.rg, align 8           ; 5 uses
  %i.afk = load ptr, ptr %17, align 8             ; 2 uses
  %i.afl = ptrtoint ptr %i.afk to i64
  %i.afm = sub i64 %i.aeq, %i.afl
  %i.afn = ashr exact i64 %i.afm, 3
  %i.afo = sub i64 %i.afj, %i.afn
  %i.afp = icmp ult i64 %i.afo, 2
  br i1 %i.afp, label %bb.dz, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i430

bb.dz:                                            ; preds = %bb.dy
  %i.afq = add nsw i64 %i.aet, 1                  ; 2 uses
  %i.afr = add nsw i64 %i.aet, 2                  ; 3 uses
  %i.afs = shl nsw i64 %i.afr, 1
  %i.aft = icmp ugt i64 %i.afj, %i.afs
  br i1 %i.aft, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.afu = sub i64 %i.afj, %i.afr
  %i.afv = lshr i64 %i.afu, 1
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.afv ; 10 uses
  %i.afx = icmp ult ptr %i.afw, %i.aep
  %i.afy = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  br i1 %i.afx, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = sub i64 %i.afz, %i.aer                 ; 3 uses
  %i.agb = icmp sgt i64 %i.aga, 8
  br i1 %i.agb, label %bb.ec, label %bb.ed, !prof !20

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.afw, ptr nonnull align 8 %i.aep, i64 %i.aga, i1 false)
  br label %.noexc432

bb.ed:                                            ; preds = %bb.eb
  %i.agc = icmp eq i64 %i.aga, 8
  br i1 %i.agc, label %bb.ee, label %.noexc432

bb.ee:                                            ; preds = %bb.ed
  %i.agd = load ptr, ptr %i.aep, align 8
  store ptr %i.agd, ptr %i.afw, align 8
  br label %.noexc432

bb.ef:                                            ; preds = %bb.ea
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.afq ; 2 uses
  %i.agf = ptrtoint ptr %i.afy to i64
  %i.agg = sub i64 %i.agf, %i.aer                 ; 3 uses
  %i.agh = ashr exact i64 %i.agg, 3               ; 2 uses
  %i.agi = icmp sgt i64 %i.agh, 1
  br i1 %i.agi, label %bb.eg, label %bb.eh, !prof !20

bb.eg:                                            ; preds = %bb.ef
  %i.agj = sub nsw i64 0, %i.agh
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.age, i64 %i.agj
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agk, ptr align 8 %i.aep, i64 %i.agg, i1 false)
  br label %.noexc432

bb.eh:                                            ; preds = %bb.ef
  %i.agl = icmp eq i64 %i.agg, 8
  br i1 %i.agl, label %bb.ei, label %.noexc432

bb.ei:                                            ; preds = %bb.eh
  %i.agm = getelementptr inbounds i8, ptr %i.age, i64 -8
  %i.agn = load ptr, ptr %i.aep, align 8
  store ptr %i.agn, ptr %i.agm, align 8
  br label %.noexc432

bb.ej:                                            ; preds = %bb.dz
  %.sroa.speculated.i445 = call i64 @llvm.umax.i64(i64 %i.afj, i64 1)
  %i.ago = add i64 %i.afj, 2
  %i.agp = add i64 %i.ago, %.sroa.speculated.i445 ; 5 uses
  %i.agq = icmp ugt i64 %i.agp, 1152921504606846975
  br i1 %i.agq, label %bb.ek, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i446, !prof !26

bb.ek:                                            ; preds = %bb.ej
  %i.agr = icmp ugt i64 %i.agp, 2305843009213693951
  br i1 %i.agr, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i446: ; preds = %bb.ej
  %i.ags = shl nuw nsw i64 %i.agp, 3
  %i.agt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ags) #25
          to label %.noexc453 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc453:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i446
  %i.agu = sub nsw i64 %i.agp, %i.afr
  %i.agv = lshr i64 %i.agu, 1
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.agv ; 3 uses
  %i.agx = load ptr, ptr %i.qz, align 8           ; 3 uses
  %i.agy = load ptr, ptr %i.ra, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aha = ptrtoint ptr %i.agz to i64
  %i.ahb = ptrtoint ptr %i.agx to i64
  %i.ahc = sub i64 %i.aha, %i.ahb                 ; 3 uses
  %i.ahd = icmp sgt i64 %i.ahc, 8
  br i1 %i.ahd, label %bb.el, label %bb.em, !prof !20

bb.el:                                            ; preds = %.noexc453
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agw, ptr align 8 %i.agx, i64 %i.ahc, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447

bb.em:                                            ; preds = %.noexc453
  %i.ahe = icmp eq i64 %i.ahc, 8
  br i1 %i.ahe, label %bb.en, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447

bb.en:                                            ; preds = %bb.em
  %i.ahf = load ptr, ptr %i.agx, align 8
  store ptr %i.ahf, ptr %i.agw, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447: ; preds = %bb.en, %bb.em, %bb.el
  %i.ahg = load ptr, ptr %17, align 8
  %i.ahh = load i64, ptr %i.rg, align 8
  %i.ahi = shl i64 %i.ahh, 3
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahi) #26
  store ptr %i.agt, ptr %17, align 8
  store i64 %i.agp, ptr %i.rg, align 8
  br label %.noexc432

.noexc432:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447, %bb.ei, %bb.eh, %bb.eg, %bb.ee, %bb.ed, %bb.ec
  %.0.i448 = phi ptr [ %i.agw, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i447 ], [ %i.afw, %bb.ee ], [ %i.afw, %bb.ec ], [ %i.afw, %bb.ed ], [ %i.afw, %bb.eg ], [ %i.afw, %bb.eh ], [ %i.afw, %bb.ei ] ; 3 uses
  store ptr %.0.i448, ptr %i.qz, align 8
  %i.ahj = load ptr, ptr %.0.i448, align 8        ; 2 uses
  store ptr %i.ahj, ptr %i.rh, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 512
  store ptr %i.ahk, ptr %i.rf, align 8
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %.0.i448, i64 %i.afq
  %i.ahm = getelementptr inbounds i8, ptr %i.ahl, i64 -8 ; 2 uses
  store ptr %i.ahm, ptr %i.ra, align 8
  %i.ahn = load ptr, ptr %i.ahm, align 8          ; 2 uses
  store ptr %i.ahn, ptr %i.rb, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 512
  store ptr %i.aho, ptr %i.re, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i430

_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i430: ; preds = %.noexc432, %bb.dy
  %i.ahp = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc320 unwind label %.loopexit.split-lp598.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc320:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i430
  %i.ahq = load ptr, ptr %i.ra, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store ptr %i.ahp, ptr %i.ahr, align 8
  %i.ahs = load ptr, ptr %i.rd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0773, i64 16, i1 false)
  %i.aht = load ptr, ptr %i.ra, align 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8 ; 2 uses
  store ptr %i.ahu, ptr %i.ra, align 8
  %i.ahv = load ptr, ptr %i.ahu, align 8          ; 3 uses
  store ptr %i.ahv, ptr %i.rb, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 512
  store ptr %i.ahw, ptr %i.re, align 8
  store ptr %i.ahv, ptr %i.rd, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc307, %.noexc313, %.noexc317, %bb.bu, %bb.cj, %bb.da, %bb.dw, %.noexc320
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  store ptr %.sroa.0479.0773, ptr %4, align 8, !alias.scope !408, !noalias !409
  %i.ahx = load ptr, ptr %.sroa.32.0771, align 8, !noalias !410 ; 2 uses
  store ptr %i.ahx, ptr %i.ri, align 8, !alias.scope !408, !noalias !409
end_hunk_0
