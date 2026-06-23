inline.NumInlined: 516
inline.NumDeleted: 160
begin_hunk_0_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE13_M_insert_auxISt15_Deque_iteratorIS4_RKS4_PS9_EEEvS8_IS4_RS4_PS4_ET_SG_m:bb.a
  %i.di = phi ptr [ %i.dv, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.12358.0, %_ZStplRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit35 ] ; 2 uses
  %i.dj = phi ptr [ %i.du, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.16.0, %_ZStplRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !63, !noalias !170
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %.sroa.7.0.i.i.i.i
  br i1 %i.dl, label %bb.u, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !27, !noalias !170 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %.sroa.04.1.i.i.i.i = phi ptr [ %i.dn, %bb.u ], [ %i.dk, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i.i.i = phi ptr [ %i.do, %bb.u ], [ %.sroa.7.0.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi ptr [ %i.dm, %bb.u ], [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.di
  br i1 %i.dq, label %bb.v, label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !27, !noalias !170 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.v, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i
  %i.du = phi ptr [ %i.dj, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i ], [ %i.dr, %bb.v ]
  %i.dv = phi ptr [ %i.di, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i ], [ %i.dt, %bb.v ]
  %i.dw = phi ptr [ %i.dp, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i ], [ %i.ds, %bb.v ]
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.04.1.i.i.i.i, %storemerge.i.i34
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !181

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit: ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i, %_ZStplRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit35
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8, !tbaa !27
  store ptr %.sroa.8354.0, ptr %i.aw, align 8, !tbaa !27
  store ptr %.sroa.12358.0, ptr %i.u, align 8, !tbaa !27
  store ptr %.sroa.16.0, ptr %i.d, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !185
  store ptr %storemerge.i.i34, ptr %25, align 8, !tbaa !31, !noalias !188
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.6334.0, ptr %i.dx, align 8, !tbaa !37, !noalias !188
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %.sroa.10336.0, ptr %i.dy, align 8, !tbaa !62, !noalias !188
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %.sroa.14338.0, ptr %i.dz, align 8, !tbaa !41, !noalias !188
  %i.ea = load <2 x ptr>, ptr %1, align 8, !tbaa !27
  store <2 x ptr> %i.ea, ptr %26, align 16, !tbaa !27, !noalias !188
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ec = load <2 x ptr>, ptr %.sroa.6342.0..sroa_idx, align 8, !tbaa !94
  store <2 x ptr> %i.ec, ptr %i.eb, align 16, !tbaa !94, !noalias !188
  store ptr %i.bg, ptr %27, align 8, !tbaa !31, !noalias !188
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.bf, ptr %i.ed, align 8, !tbaa !37, !noalias !188
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.be, ptr %i.ee, align 8, !tbaa !62, !noalias !188
  %i.ef = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.bd, ptr %i.ef, align 8, !tbaa !41, !noalias !188
  invoke void @_ZSt15__copy_move_ditILb1EN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_St15_Deque_iteratorIS4_S5_S6_EET3_S7_IT0_T1_T2_ESD_S9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %28, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26, ptr noundef nonnull dead_on_return %27)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !182
  %i.eg = load <2 x ptr>, ptr %2, align 8, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !94
  %i.ej = load <2 x ptr>, ptr %3, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !94
  %i.em = load ptr, ptr %1, align 8, !tbaa !31, !noalias !191 ; 2 uses
  %i.en = load ptr, ptr %i.n, align 8, !tbaa !37, !noalias !191 ; 2 uses
  %i.eo = load ptr, ptr %.sroa.6342.0..sroa_idx, align 8, !tbaa !62, !noalias !191
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !41, !noalias !191 ; 2 uses
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  %i.eu = sub nsw i64 %i.et, %4                   ; 5 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  br i1 %i.ev, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ew = icmp samesign ult i64 %i.eu, 32
  br i1 %i.ew, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.em, i64 %i.bh
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit

bb.z:                                             ; preds = %bb.x
  %i.ey = lshr i64 %i.eu, 5
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.ez = ashr i64 %i.eu, 5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fa = phi i64 [ %i.ey, %bb.z ], [ %i.ez, %bb.aa ] ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !27, !noalias !191 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 512
  %i.fe = shl nsw i64 %i.fa, 5
  %i.ff = sub nsw i64 %i.eu, %i.fe
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.ff
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit

_ZStmiRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit: ; preds = %bb.y, %bb.ab
  %.sroa.2289.0 = phi ptr [ %i.en, %bb.y ], [ %i.fc, %bb.ab ]
  %.sroa.5290.0 = phi ptr [ %i.eo, %bb.y ], [ %i.fd, %bb.ab ]
  %.sroa.8291.0 = phi ptr [ %i.ep, %bb.y ], [ %i.fb, %bb.ab ]
  %storemerge.i.i.i = phi ptr [ %i.ex, %bb.y ], [ %i.fg, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !197
  store <2 x ptr> %i.eg, ptr %21, align 16, !tbaa !27, !noalias !200
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x ptr> %i.ei, ptr %i.fh, align 16, !tbaa !94, !noalias !200
  store <2 x ptr> %i.ej, ptr %22, align 16, !tbaa !27, !noalias !200
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <2 x ptr> %i.el, ptr %i.fi, align 16, !tbaa !94, !noalias !200
  store ptr %storemerge.i.i.i, ptr %23, align 8, !tbaa !31, !noalias !200
  %i.fj = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.2289.0, ptr %i.fj, align 8, !tbaa !37, !noalias !200
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.sroa.5290.0, ptr %i.fk, align 8, !tbaa !62, !noalias !200
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %.sroa.8291.0, ptr %i.fl, align 8, !tbaa !41, !noalias !200
  invoke void @_ZSt15__copy_move_ditILb0EN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_St15_Deque_iteratorIS4_RS4_PS4_EET3_S8_IT0_T1_T2_ESG_SC_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %24, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !194
  br label %bb.cg

bb.ad:                                            ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.ae:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.af:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_El.exit
  %i.fo = load ptr, ptr %2, align 8, !tbaa !83    ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !88 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !89 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !90 ; 3 uses
  %i.fv = sub nsw i64 %4, %i.ab                   ; 2 uses
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fq to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 4
  %i.ga = add nsw i64 %i.fz, %i.fv                ; 5 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  br i1 %i.gb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gc = icmp samesign ult i64 %i.ga, 32
  br i1 %i.gc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.fv
  br label %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ge = lshr i64 %i.ga, 5
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.gf = ashr i64 %i.ga, 5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gg = phi i64 [ %i.ge, %bb.ai ], [ %i.gf, %bb.aj ] ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !27 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 512
  %i.gk = shl nsw i64 %i.gg, 5
  %i.gl = sub nsw i64 %i.ga, %i.gk
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.gi, i64 %i.gl
  br label %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.ak, %bb.ah
  %.sroa.0269.0 = phi ptr [ %i.gd, %bb.ah ], [ %i.gm, %bb.ak ] ; 3 uses
  %.sroa.10273.2 = phi ptr [ %i.fq, %bb.ah ], [ %i.gi, %bb.ak ]
  %.sroa.17276.2 = phi ptr [ %i.fs, %bb.ah ], [ %i.gj, %bb.ak ]
  %.sroa.24279.2 = phi ptr [ %i.fu, %bb.ah ], [ %i.gh, %bb.ak ]
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.gn, %storemerge.i.i
  br i1 %.not12.i.i.i.i.i.i, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !62
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.sroa.04.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = phi ptr [ %.sroa.7.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %i.go, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gq = phi ptr [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gr = phi ptr [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.12358.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gs = phi ptr [ %i.hd, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.16.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !63, !noalias !203
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %.sroa.7.0.i.i.i.i.i
  br i1 %i.gu, label %bb.al, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !27, !noalias !203 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i = phi ptr [ %i.gw, %bb.al ], [ %i.gt, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %i.gx, %bb.al ], [ %.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.10.1.i.i.i.i.i = phi ptr [ %i.gv, %bb.al ], [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gr
  br i1 %i.gz, label %bb.am, label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !27, !noalias !203 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.am, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i
  %i.hd = phi ptr [ %i.gs, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i ], [ %i.ha, %bb.am ] ; 2 uses
  %i.he = phi ptr [ %i.gr, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i ], [ %i.hc, %bb.am ] ; 2 uses
  %i.hf = phi ptr [ %i.gy, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_EEppEv.exit.i.i.i.i.i.i ], [ %i.hb, %bb.am ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.04.1.i.i.i.i.i, %storemerge.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !181

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i: ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit
  %.lcssa9.i.i.i.i.i.i = phi ptr [ %.sroa.16.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hd, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa7.i.i.i.i.i.i = phi ptr [ %.sroa.12358.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS5_PS6_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i.i ]
  %.not7.i.i.i.i.i = icmp eq ptr %i.fo, %.sroa.0269.0
  br i1 %.not7.i.i.i.i.i, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES0_IS5_RKS5_PS9_ES8_SaIS5_EET1_T_SF_T0_SG_SE_RT2_.exit, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43
  %.sroa.04.0.i.i.i.i37 = phi ptr [ %.sroa.04.1.i.i.i.i40, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %i.fo, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i38 = phi ptr [ %.sroa.7.1.i.i.i.i41, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %i.fs, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i39 = phi ptr [ %.sroa.10.1.i.i.i.i42, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %i.fu, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  %i.hg = phi ptr [ %i.hv, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %.lcssa.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  %i.hh = phi ptr [ %i.hu, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %.lcssa7.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  %i.hi = phi ptr [ %i.ht, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43 ], [ %.lcssa9.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i37, i64 16, i1 false), !tbaa.struct !63, !noalias !216
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i37, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %.sroa.7.0.i.i.i.i38
  br i1 %i.hk, label %bb.an, label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i36
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i39, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !27, !noalias !216 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i36
  %.sroa.04.1.i.i.i.i40 = phi ptr [ %i.hm, %bb.an ], [ %i.hj, %.lr.ph.i.i.i.i.i36 ] ; 2 uses
  %.sroa.7.1.i.i.i.i41 = phi ptr [ %i.hn, %bb.an ], [ %.sroa.7.0.i.i.i.i38, %.lr.ph.i.i.i.i.i36 ]
  %.sroa.10.1.i.i.i.i42 = phi ptr [ %i.hl, %bb.an ], [ %.sroa.10.0.i.i.i.i39, %.lr.ph.i.i.i.i.i36 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hh
  br i1 %i.hp, label %bb.ao, label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43

bb.ao:                                            ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !27, !noalias !216 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43

_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43: ; preds = %bb.ao, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i
  %i.ht = phi ptr [ %i.hi, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i ], [ %i.hq, %bb.ao ]
  %i.hu = phi ptr [ %i.hh, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i ], [ %i.hs, %bb.ao ]
  %i.hv = phi ptr [ %i.ho, %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_EppEv.exit.i.i.i.i.i ], [ %i.hr, %bb.ao ]
  %.not.i.i.i.i.i44 = icmp eq ptr %.sroa.04.1.i.i.i.i40, %.sroa.0269.0
  br i1 %.not.i.i.i.i.i44, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES0_IS5_RKS5_PS9_ES8_SaIS5_EET1_T_SF_T0_SG_SE_RT2_.exit, label %.lr.ph.i.i.i.i.i36, !llvm.loop !126

_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES0_IS5_RKS5_PS9_ES8_SaIS5_EET1_T_SF_T0_SG_SE_RT2_.exit: ; preds = %_ZNSt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS4_PS4_EppEv.exit.i.i.i.i.i43, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES8_SaIS5_EET0_T_SB_SA_RT1_.exit.i
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8, !tbaa !27
  store ptr %.sroa.8354.0, ptr %i.aw, align 8, !tbaa !27
  store ptr %.sroa.12358.0, ptr %i.u, align 8, !tbaa !27
  store ptr %.sroa.16.0, ptr %i.d, align 8, !tbaa !127
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !228
  store ptr %.sroa.0269.0, ptr %17, align 8, !tbaa !83, !noalias !231
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.10273.2, ptr %i.hx, align 8, !tbaa !88, !noalias !231
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.sroa.17276.2, ptr %i.hy, align 8, !tbaa !89, !noalias !231
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %.sroa.24279.2, ptr %i.hz, align 8, !tbaa !90, !noalias !231
  %i.ia = load <2 x ptr>, ptr %3, align 8, !tbaa !27
  store <2 x ptr> %i.ia, ptr %18, align 16, !tbaa !27, !noalias !231
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ic = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !94
  store <2 x ptr> %i.ic, ptr %i.ib, align 16, !tbaa !94, !noalias !231
  store ptr %i.bg, ptr %19, align 8, !tbaa !31, !noalias !231
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bf, ptr %i.id, align 8, !tbaa !37, !noalias !231
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.be, ptr %i.ie, align 8, !tbaa !62, !noalias !231
  %i.if = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.bd, ptr %i.if, align 8, !tbaa !41, !noalias !231
  invoke void @_ZSt15__copy_move_ditILb0EN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERKS4_PS5_St15_Deque_iteratorIS4_RS4_PS4_EET3_S8_IT0_T1_T2_ESG_SC_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %20, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES0_IS5_RKS5_PS9_ES8_SaIS5_EET1_T_SF_T0_SG_SE_RT2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !225
  br label %bb.cg

bb.aq:                                            ; preds = %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcERS5_PS5_ES0_IS5_RKS5_PS9_ES8_SaIS5_EET1_T_SF_T0_SG_SE_RT2_.exit
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ad, %bb.ae
  %.pn31.pn = phi { ptr, i32 } [ %i.ig, %bb.aq ], [ %i.fn, %bb.ae ], [ %i.fm, %bb.ad ]
  %.2 = extractvalue { ptr, i32 } %.pn31.pn, 0
  %i.ih = call ptr @__cxa_begin_catch(ptr %.2) #14 ; 0 uses
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.ij = icmp ult ptr %.sroa.16.0, %i.ii
  br i1 %i.ij, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.06.i = phi ptr [ %i.il, %.lr.ph.i ], [ %.sroa.16.0, %bb.ar ] ; 2 uses
  %i.ik = load ptr, ptr %.06.i, align 8, !tbaa !27
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef 512) #16
  %i.il = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.im = icmp ult ptr %i.il, %i.ii
  br i1 %i.im, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit, !llvm.loop !28

_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit: ; preds = %.lr.ph.i, %bb.ar
  invoke void @__cxa_rethrow() #18
          to label %bb.cj unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.at:                                            ; preds = %bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !71, !noalias !234 ; 2 uses
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.iq, %i.ao
  %i.is = ashr exact i64 %i.ir, 4
  %i.it = add nsw i64 %i.is, -1                   ; 2 uses
  %i.iu = icmp ugt i64 %4, %i.it
  br i1 %i.iu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iv = sub nuw i64 %4, %i.it
  tail call void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.iv), !noalias !234
  %.pre.i48 = load ptr, ptr %i.ac, align 8, !tbaa !31, !noalias !237 ; 2 uses
  %.pre6.i49 = load ptr, ptr %i.io, align 8, !tbaa !62, !noalias !237
  %.pre7.i50 = ptrtoint ptr %.pre.i48 to i64
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !37, !noalias !237 ; 2 uses
  %.pre376 = load ptr, ptr %i.ad, align 8, !tbaa !41, !noalias !237
  %.pre379 = ptrtoint ptr %.pre to i64            ; 2 uses
  %.pre380 = sub i64 %.pre7.i50, %.pre379
  %.pre382 = ashr exact i64 %.pre380, 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pre-phi383 = phi i64 [ %.pre382, %bb.au ], [ %i.ar, %bb.at ]
  %.pre-phi = phi i64 [ %.pre379, %bb.au ], [ %i.ap, %bb.at ]
  %i.iw = phi ptr [ %.pre376, %bb.au ], [ %i.ae, %bb.at ] ; 5 uses
  %i.ix = phi ptr [ %.pre, %bb.au ], [ %i.an, %bb.at ] ; 3 uses
  %i.iy = phi ptr [ %.pre6.i49, %bb.au ], [ %i.ip, %bb.at ] ; 3 uses
  %i.iz = phi ptr [ %.pre.i48, %bb.au ], [ %i.al, %bb.at ] ; 4 uses
  %i.ja = add nsw i64 %.pre-phi383, %4            ; 5 uses
  %i.jb = icmp sgt i64 %i.ja, -1
  br i1 %i.jb, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jc = icmp samesign ult i64 %i.ja, 32
end_hunk_0
