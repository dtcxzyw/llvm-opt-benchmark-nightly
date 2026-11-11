Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile9read_tileEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv:bb.a
  store i32 0, ptr %i.hw, align 8, !tbaa !891
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !892
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !894
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #5, !inline_history !5
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !894
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #5, !inline_history !5
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.ih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !721
  %.not.i.i.i122 = icmp eq i8 %i.ih, 0
  br i1 %.not.i.i.i122, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ii = add nsw i32 %i.hz, -1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ij = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i = phi i32 [ %i.hz, %bb.ba ], [ %i.ij, %bb.bb ]
  %i.ik = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ik, label %bb.bc, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !861

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #5
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.av
  %.pn100 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn95.pn, %bb.av ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn100

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d
  %.1 = phi i1 [ %i.ab, %bb.d ], [ %.0, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile13read_unmippedEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1922 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 14 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %7 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr", align 8 ; 7 uses
  %8 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr", align 8 ; 7 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1086 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1084 ; 2 uses
  %i.e = load <2 x i32>, ptr %2, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !1090 ; 2 uses
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.j = load i16, ptr %i.i, align 2, !tbaa !1091 ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1092
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = sext i32 %i.b to i64                     ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !902
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !902
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %i.o ; 3 uses
  %i.v = sext i32 %i.d to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !980
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !763  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %.not.i, ptr %i.aa, ptr %i.y  ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !784 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !783 ; 3 uses
  %i.ag = sub nsw i32 %i.k, %i.h                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag, i64 267) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef 1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 36 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !778
  %i.aj = load <2 x i32>, ptr %i.ab, align 4, !tbaa !104
  %i.ak = sub nsw <2 x i32> %i.e, %i.aj           ; 2 uses
  %i.al = load <2 x i32>, ptr %i.ac, align 4, !tbaa !104 ; 2 uses
  %i.am = srem <2 x i32> %i.ak, %i.al
  %i.an = sub nsw <2 x i32> %i.ak, %i.am          ; 3 uses
  %i.ao = add nsw <2 x i32> %i.an, %i.al          ; 2 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0
  %i.aq = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !780
  %i.at = extractelement <2 x i32> %i.ao, i64 1
  %i.au = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1099 ; 3 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !1099
  %.not.i115 = icmp eq ptr %i.aw, null
  br i1 %.not.i115, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = atomicrmw add ptr %i.aw, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1099 ; 3 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !1099
  %.not.i116 = icmp eq ptr %i.az, null
  br i1 %.not.i116, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit
  %i.ba = atomicrmw add ptr %i.az, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117: ; preds = %bb.d, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !907, !nonnull !908, !align !909
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !939
  %i.be = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.bd, i1 noundef zeroext false) #5
  %i.bf = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  br label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i: ; preds = %bb.e, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117
  %i.bh = load atomic i64, ptr %i.bg seq_cst, align 8 ; 2 uses
  %.not.i.i = icmp slt i64 %i.bh, %i.bf
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i
  %i.bi = cmpxchg weak ptr %i.bg, i64 %i.bh, i64 %i.bf seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %bb.f, label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i, %bb.e
  %i.bk = add nsw i32 %i.d, -1                    ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !980
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !763 ; 2 uses
  %.not.i118 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.z, align 8
  %i.bq = select i1 %.not.i118, ptr %i.bp, ptr %i.bo ; 2 uses
  %.not = icmp eq i16 %i.j, %i.g
  br i1 %.not, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = sext i32 %i.ag to i64
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.br = shl nsw i32 %i.ag, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2
  %i.bu = alloca i8, i64 %i.bt, align 16
  %i.bv = sext i32 %i.ag to i64                   ; 2 uses
  %i.bw = shl nsw i64 %i.bv, 2
  %i.bx = alloca i8, i64 %i.bw, align 16
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.bv, %bb.g ] ; 2 uses
  %i.by = phi ptr [ null, %..thread_crit_edge ], [ %i.bu, %bb.g ] ; 6 uses
  %i.bz = phi ptr [ null, %..thread_crit_edge ], [ %i.bx, %bb.g ] ; 3 uses
  %i.ca = extractelement <2 x i32> %i.an, i64 1   ; 3 uses
  %.not105.not160 = icmp slt i32 %i.ca, %i.au
  br i1 %.not105.not160, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cc = extractelement <2 x i32> %i.an, i64 0   ; 3 uses
  %.not106.not157 = icmp slt i32 %i.cc, %i.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.by, i64 %.pre-phi ; 2 uses
  %i.cf = shl nsw i32 %i.ag, 1
  %10 = sext i32 %i.cf to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %10 ; 2 uses
  %i.ch = mul nsw i32 %i.ag, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ci ; 2 uses
  %i.ck = icmp sgt i32 %i.ag, 0
  %wide.trip.count.i = zext i32 %i.ag to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.i

._crit_edge164.loopexit:                          ; preds = %._crit_edge
  %i.cl = trunc nuw i8 %.1.lcssa to i1
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge164.loopexit, %.thread
  %.092.lcssa = phi i1 [ true, %.thread ], [ %i.cl, %._crit_edge164.loopexit ]
  store i32 0, ptr %9, align 8, !tbaa !1098
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ad, ptr %i.cm, align 4, !tbaa !1100
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.cn, align 8, !tbaa !1101
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.af, ptr %i.co, align 4, !tbaa !1102
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.cp, align 8, !tbaa !1103
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 1, ptr %i.cq, align 4, !tbaa !1104
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 0, ptr %i.cr, align 8, !tbaa !1105
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %i.ag, ptr %i.cs, align 4, !tbaa !1106
  %.sroa.01.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %i.ct = mul i32 %i.ad, %i.ag
  %i.cu = mul i32 %i.ct, %i.af
  %i.cv = sext i32 %i.cu to i64
  %i.cw = lshr i64 %.sroa.01.0.copyload, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.cy = lshr i64 %.sroa.01.0.copyload, 8
  %i.cz = and i64 %i.cy, 255
  %i.da = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #5
  %i.db = mul nsw i64 %i.cz, %i.cv
  %i.dc = mul i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, %spec.select.i
  %i.de = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, i64 %.sroa.01.0.copyload, ptr %3, i64 %i.dd, ptr noundef null, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.a
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %.lr.ph163, %._crit_edge
  %.091162 = phi i32 [ %i.ca, %.lr.ph163 ], [ %i.dx, %._crit_edge ] ; 3 uses
  %.092161 = phi i8 [ 1, %.lr.ph163 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.dg = sitofp i32 %.091162 to float
  %i.dh = fadd nnan float %i.dg, 5.000000e-01
  %i.di = load i32, ptr %i.ar, align 4, !tbaa !780
  %i.dj = sitofp i32 %i.di to float
  %i.dk = fdiv float %i.dh, %i.dj
  %i.dl = load i32, ptr %i.cb, align 4, !tbaa !780
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fmul float %i.dk, %i.dm
  %i.do = fadd float %i.dn, -5.000000e-01         ; 2 uses
  %i.dp = call noundef float @llvm.floor.f32(float %i.do) ; 2 uses
  %i.dq = fptosi float %i.dp to i32               ; 2 uses
  %i.dr = fsub float %i.do, %i.dp                 ; 3 uses
  br i1 %.not106.not157, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ds = add nsw i32 %i.dq, 2
  %i.dt = fsub float 1.000000e+00, %i.dr          ; 2 uses
  %i.du = sub nsw i32 %.091162, %i.ca
  %i.dv = icmp ne i8 %.092161, 0
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.dr, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %i.dw = zext i1 %i.fq to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.1.lcssa = phi i8 [ %.092161, %bb.i ], [ %i.dw, %._crit_edge.loopexit ] ; 2 uses
  %i.dx = add nsw i32 %.091162, 1                 ; 2 uses
  %.not105.not = icmp slt i32 %i.dx, %i.au
  br i1 %.not105.not, label %bb.i, label %._crit_edge164.loopexit, !llvm.loop !1918

bb.j:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %.0159 = phi i32 [ %i.cc, %.lr.ph ], [ %i.fr, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ] ; 3 uses
  %.1158 = phi i1 [ %i.dv, %.lr.ph ], [ %i.fq, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ]
  %i.dy = sitofp i32 %.0159 to float
  %i.dz = fadd nnan float %i.dy, 5.000000e-01
  %i.ea = load i32, ptr %i.ah, align 4, !tbaa !778
  %i.eb = sitofp i32 %i.ea to float
  %i.ec = fdiv float %i.dz, %i.eb
  %i.ed = load i32, ptr %i.cd, align 4, !tbaa !778
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = fadd float %i.ef, -5.000000e-01         ; 2 uses
  %i.eh = call noundef float @llvm.floor.f32(float %i.eg) ; 2 uses
  %i.ei = fptosi float %i.eh to i32               ; 2 uses
  %i.ej = fsub float %i.eg, %i.eh                 ; 4 uses
  %i.ek = load ptr, ptr %i.bb, align 8, !tbaa !907, !nonnull !908, !align !909
  %i.el = add nsw i32 %i.ei, 2
  %i.em = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl10get_pixelsEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiiiiiiiiiNS0_8TypeDescEPvlllii(ptr noundef nonnull align 64 dereferenceable(25240) %i.ek, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %i.bk, i32 noundef %i.ei, i32 noundef %i.el, i32 noundef %i.dq, i32 noundef %i.ds, i32 noundef 0, i32 noundef 1, i32 noundef %i.h, i32 noundef %i.k, i64 267, ptr noundef %i.by, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 0, i32 noundef -1)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.en = fsub float 1.000000e+00, %i.ej          ; 3 uses
  br i1 %i.ck, label %.lr.ph.i.preheader, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat194 = shufflevector <4 x float> %broadcast.splatinsert193, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index
  %wide.load = load <4 x float>, ptr %i.eo, align 16, !tbaa !714
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index
  %wide.load199 = load <4 x float>, ptr %i.ep, align 4, !tbaa !714
  %i.eq = fmul <4 x float> %broadcast.splat, %wide.load199
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat194, <4 x float> %i.eq)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index
  %wide.load200 = load <4 x float>, ptr %i.es, align 8, !tbaa !714
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index
  %wide.load201 = load <4 x float>, ptr %i.et, align 4, !tbaa !714
  %i.eu = fmul <4 x float> %broadcast.splat, %wide.load201
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load200, <4 x float> %broadcast.splat194, <4 x float> %i.eu)
  %i.ew = fmul <4 x float> %broadcast.splat196, %i.ev
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat198, <4 x float> %i.er, <4 x float> %i.ew)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index
  store <4 x float> %i.ex, ptr %i.ey, align 16, !tbaa !714
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !1919

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader202, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader202 ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !714
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !714
  %i.fe = fmul float %i.ej, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.fb, float %i.en, float %i.fe)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !714
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !714
  %i.fk = fmul float %i.ej, %i.fj
  %i.fl = call float @llvm.fmuladd.f32(float %i.fh, float %i.en, float %i.fk)
  %i.fm = fmul float %i.dr, %i.fl
  %i.fn = call float @llvm.fmuladd.f32(float %i.dt, float %i.ff, float %i.fm)
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  store float %i.fn, ptr %i.fo, align 4, !tbaa !714
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1920

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.k
  %i.fp = sub nsw i32 %.0159, %i.cc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.fp, i32 noundef %i.du, i32 noundef 0, ptr %i.bz, i64 %.pre-phi)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  %i.fq = select i1 %i.em, i1 %.1158, i1 false    ; 2 uses
  %i.fr = add nsw i32 %.0159, 1                   ; 2 uses
  %.not106.not = icmp slt i32 %i.fr, %i.aq
  br i1 %.not106.not, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !1921

bb.l:                                             ; preds = %._crit_edge164
  %i.fs = load ptr, ptr %7, align 8, !tbaa !1099  ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i119, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ft = atomicrmw add ptr %i.fs, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i: ; preds = %bb.m, %bb.l
  %i.fu = load ptr, ptr %i.av, align 8, !tbaa !1099 ; 7 uses
  store ptr %i.fs, ptr %i.av, align 8, !tbaa !1099
  %.not.i2.i = icmp eq ptr %i.fu, null
end_hunk_0
