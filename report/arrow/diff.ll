inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4DiffEv:bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !517 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !565
  %i.hu = add nsw i64 %i.hr, 1                    ; 3 uses
  store i64 %i.hu, ptr %i.a, align 8, !tbaa !408, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !565
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.788") align 8 %3, i64 noundef %i.hu, ptr noundef %i.ht)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %._crit_edge
  %i.hv = load ptr, ptr %3, align 8, !tbaa !58, !noalias !565
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.aa, label %bb.z, !prof !61

bb.z:                                             ; preds = %.noexc27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %bb.ez

bb.aa:                                            ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ia = load <2 x ptr>, ptr %i.hx, align 8, !tbaa !237, !noalias !574
  store ptr null, ptr %i.hz, align 8, !tbaa !378, !noalias !574
  store <2 x ptr> %i.ia, ptr %4, align 16, !tbaa !237, !alias.scope !575, !noalias !565
  store ptr null, ptr %i.hx, align 8, !tbaa !576, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !565
  %i.ib = shl i64 %i.hu, 3
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.303") align 8 %5, i64 noundef %i.ib, ptr noundef %i.ht)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ic = load ptr, ptr %5, align 8, !tbaa !58, !noalias !565
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.ae, label %bb.ac, !prof !61

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.ep

bb.ad:                                            ; preds = %bb.aa
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !585, !noalias !586 ; 2 uses
  store i64 %i.ig, ptr %6, align 8, !tbaa !585, !alias.scope !587, !noalias !565
  store ptr null, ptr %i.if, align 8, !tbaa !585, !noalias !586
  %.cast.i = inttoptr i64 %i.ig to ptr
  %i.ih = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %i.ij = load i64, ptr %i.ab, align 8, !tbaa !541, !noalias !565 ; 3 uses
  %i.ik = load i64, ptr %i.ac, align 8, !tbaa !555, !noalias !565 ; 5 uses
  %i.il = load ptr, ptr %i.am, align 8, !tbaa !558, !noalias !565
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ij
  %i.in = load i64, ptr %i.im, align 8, !tbaa !408 ; 3 uses
  %i.io = icmp sgt i64 %i.ik, 0
  br i1 %i.io, label %.lr.ph.i22, label %._crit_edge.i16

.lr.ph.i22:                                       ; preds = %bb.ae
  %i.ip = load i64, ptr %i.r, align 8, !tbaa !408, !noalias !565
  %i.iq = load i64, ptr %i.k, align 8, !tbaa !538, !noalias !565
  %i.ir = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565
  %i.is = add nuw nsw i64 %i.ik, 1
  %i.it = mul nuw nsw i64 %i.is, %i.ik
  %.neg.i266.i = lshr i64 %i.it, 1
  %i.iu = sub i64 %i.ij, %.neg.i266.i
  %i.iv = shl nsw i64 %i.iu, 1
  %.neg42 = sub i64 %i.in, %i.ik
  %i.iw = add i64 %.neg42, %i.iv
  %i.ix = add i64 %i.iw, %i.iq
  %i.iy = sub i64 %i.ix, %i.ir
  %.sroa.speculated.i.i23 = call i64 @llvm.smin.i64(i64 %i.ip, i64 %i.iy)
  br label %bb.af

._crit_edge.i16:                                  ; preds = %bb.af, %bb.ae
  %.sroa.023.0.lcssa.i = phi i64 [ %i.in, %bb.ae ], [ %i.kw, %bb.af ]
  %i.iz = load ptr, ptr %4, align 16, !tbaa !576, !noalias !565
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !70
  %i.jd = and i8 %i.jc, -2
  store i8 %i.jd, ptr %i.jb, align 1, !tbaa !70
  %i.je = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565
  %i.jf = sub nsw i64 %.sroa.023.0.lcssa.i, %i.je
  store i64 %i.jf, ptr %i.ii, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !591
  store ptr null, ptr %9, align 16, !tbaa !481, !alias.scope !588, !noalias !565
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRlSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ag unwind label %.thread.i

bb.af:                                            ; preds = %bb.af, %.lr.ph.i22
  %.067217.i = phi i64 [ %i.ij, %.lr.ph.i22 ], [ %i.ks, %bb.af ] ; 3 uses
  %.sroa.speculated.i.pn216.i = phi i64 [ %.sroa.speculated.i.i23, %.lr.ph.i22 ], [ %.sroa.speculated.i90.i, %bb.af ]
  %.sroa.023.0215.i = phi i64 [ %i.in, %.lr.ph.i22 ], [ %i.kw, %bb.af ] ; 2 uses
  %.069214.i = phi i64 [ %i.ik, %.lr.ph.i22 ], [ %i.kn, %bb.af ] ; 7 uses
  %i.jh = load ptr, ptr %i.bf, align 8, !tbaa !542, !noalias !565
  %i.ji = sdiv i64 %.067217.i, 64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = and i64 %.067217.i, -9223372036854775745
  %i.jl = icmp ugt i64 %i.jk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i24 = select i1 %i.jl, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i25 = getelementptr inbounds i8, ptr %i.jj, i64 %storemerge.idx.i.i.i.i.i.i24
  %i.jm = and i64 %.067217.i, 63
  %i.jn = shl nuw i64 1, %i.jm
  %i.jo = load i64, ptr %storemerge.i.i.i.i.i.i25, align 8, !tbaa !408
  %i.jp = and i64 %i.jo, %i.jn
  %i.jq = icmp ne i64 %i.jp, 0                    ; 3 uses
  %i.jr = load ptr, ptr %4, align 16, !tbaa !576, !noalias !565 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 9
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !592, !range !86, !noundef !87
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jw = load i8, ptr %i.jv, align 8, !range !86
  %i.jx = trunc nuw i8 %i.jw to i1
  %i.jy = select i1 %i.ju, i1 %i.jx, i1 false, !prof !61
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = select i1 %i.jy, ptr %i.ka, ptr null, !prof !61
  %.neg.i88.i = sext i1 %i.jq to i8
  %i.kc = lshr i64 %.069214.i, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kc ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !70  ; 2 uses
  %i.kf = xor i8 %i.ke, %.neg.i88.i
  %i.kg = and i64 %.069214.i, 7
  %i.kh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !70, !noalias !565
  %i.kj = and i8 %i.kf, %i.ki
  %i.kk = xor i8 %i.kj, %i.ke
  store i8 %i.kk, ptr %i.kd, align 1, !tbaa !70
  %i.kl = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565 ; 2 uses
  %i.km = load i64, ptr %i.k, align 8, !tbaa !538, !noalias !565 ; 2 uses
  %.068.v.neg.i = select i1 %i.jq, i64 -1, i64 1
  %i.kn = add nsw i64 %.069214.i, -1              ; 3 uses
  %.neg.neg.i = sub i64 %.sroa.speculated.i.pn216.i, %.sroa.023.0215.i
  %.neg203.i = add i64 %.neg.neg.i, %i.kn
  %.neg204.i = add i64 %.neg203.i, %.068.v.neg.i
  %.068.neg.i = add i64 %.neg204.i, %i.kl
  %i.ko = sub i64 %.068.neg.i, %i.km
  %i.kp = sdiv i64 %i.ko, 2                       ; 2 uses
  %i.kq = mul nsw i64 %i.kn, %.069214.i
  %i.kr = lshr i64 %i.kq, 1
  %i.ks = add nsw i64 %i.kp, %i.kr                ; 2 uses
  %i.kt = shl nsw i64 %i.kp, 1
  %i.ku = load ptr, ptr %i.am, align 8, !tbaa !558, !noalias !565
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.ks
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !408 ; 4 uses
  %i.kx = add i64 %.069214.i, %i.kl
  %reass.sub64 = sub i64 %i.km, %i.kx
  %i.ky = add i64 %reass.sub64, 1
  %i.kz = add i64 %i.ky, %i.kw
  %i.la = add i64 %i.kz, %i.kt
  %i.lb = load i64, ptr %i.r, align 8, !tbaa !408, !noalias !565
  %.sroa.speculated.i90.i = call i64 @llvm.smin.i64(i64 %i.lb, i64 %i.la)
  %i.lc = xor i1 %i.jq, true
  %.neg87.i = sext i1 %i.lc to i64
  %i.ld = add i64 %.sroa.023.0215.i, %.neg87.i
  %i.le = sub i64 %i.ld, %i.kw
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.069214.i
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !408
  %i.lg = icmp samesign ugt i64 %.069214.i, 1
  br i1 %i.lg, label %bb.af, label %._crit_edge.i16, !llvm.loop !599

bb.ag:                                            ; preds = %._crit_edge.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !591
  %i.lh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.li = load <2 x ptr>, ptr %9, align 16, !tbaa !237, !noalias !565
  store ptr null, ptr %i.jg, align 8, !tbaa !378, !noalias !565
  store <2 x ptr> %i.li, ptr %8, align 16, !tbaa !237, !noalias !565
  store ptr null, ptr %9, align 16, !tbaa !481, !noalias !565
  %i.lj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !565
  %i.lk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %.noexc.i unwind label %bb.ef  ; 8 uses

.noexc.i:                                         ; preds = %bb.ag
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 1, ptr %i.ll, align 8, !tbaa !443, !noalias !600
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 1, ptr %i.lm, align 4, !tbaa !445, !noalias !600
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lk, align 8, !tbaa !446, !noalias !600
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow12NumericArrayINS0_9Int64TypeEEEJRlSt10unique_ptrINS0_6BufferESt14default_deleteIS6_EEEEvPT_DpOT0_(ptr noundef nonnull %i.ln, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ah unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !600

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef 64) #29, !noalias !600
  br label %.loopexit212.loopexit.i

bb.ah:                                            ; preds = %.noexc.i
  %i.lp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.ln, ptr %i.lj, align 16, !tbaa !386, !noalias !565
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr null, ptr %i.lp, align 8, !tbaa !378, !noalias !565
  store ptr %i.lk, ptr %i.lq, align 8, !tbaa !378, !noalias !565
  store ptr null, ptr %10, align 8, !tbaa !396, !noalias !565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !565
  %i.lr = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc93.i unwind label %bb.eg ; 6 uses

.noexc93.i:                                       ; preds = %bb.ah
  store ptr %i.lr, ptr %7, align 8, !tbaa !488, !noalias !565
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !491, !noalias !565
  %i.lu = load ptr, ptr %i.lh, align 8, !tbaa !378, !noalias !565 ; 2 uses
  %i.lv = load <2 x ptr>, ptr %8, align 16, !tbaa !237, !noalias !565
  store <2 x ptr> %i.lv, ptr %i.lr, align 8, !tbaa !237
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc93.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 3 uses
  %i.lx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !565
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ly = load i32, ptr %i.lw, align 4, !tbaa !3
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lw, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread.i: ; preds = %bb.aj, %.noexc93.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store ptr %i.ln, ptr %i.ma, align 8, !tbaa !386
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store ptr %i.lk, ptr %i.mb, align 8, !tbaa !378
  br label %bb.ak

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.mc = atomicrmw volatile add ptr %i.lw, i32 1 acq_rel, align 4 ; 0 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %.pre220.i = load ptr, ptr %i.lq, align 8, !tbaa !378, !noalias !565 ; 2 uses
  %i.me = load <2 x ptr>, ptr %i.lj, align 16, !tbaa !237, !noalias !565
  store <2 x ptr> %i.me, ptr %i.md, align 8, !tbaa !237
  %.not.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %.pre220.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread.i
  %i.mf = phi ptr [ %i.lk, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread.i ], [ %.pre220.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 3 uses
  %i.mh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !565
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i = icmp eq i8 %i.mh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mi = load i32, ptr %i.mg, align 4, !tbaa !3
  %i.mj = add nsw i32 %i.mi, 1
  store i32 %i.mj, ptr %i.mg, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i

bb.am:                                            ; preds = %bb.ak
  %i.mk = atomicrmw volatile add ptr %i.mg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i: ; preds = %bb.am, %bb.al, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ls, ptr %i.ml, align 8, !tbaa !492, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !565
  %i.mm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.mm, ptr %13, align 8, !tbaa !176, !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.mm, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false), !noalias !565
  %i.mn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.mn, align 8, !tbaa !177, !noalias !565
  %i.mo = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i8 0, ptr %i.mo, align 2, !tbaa !70, !noalias !565
  %i.mp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv()
          to label %bb.an unwind label %bb.eh     ; 2 uses

bb.an:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i
  %i.mq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !378 ; 2 uses
  %i.mt = load <2 x ptr>, ptr %i.mp, align 8, !tbaa !237
  store <2 x ptr> %i.mt, ptr %14, align 16, !tbaa !237, !noalias !565
  %.not.i.i.i.i18 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !565
  %.not.i.i.i.i.i = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !3
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mu, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.my = atomicrmw volatile add ptr %i.mu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.aq, %bb.ap, %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !noalias !565
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i1 noundef zeroext true, ptr noundef nonnull %15)
          to label %._crit_edge.i.i97.i unwind label %bb.ei

._crit_edge.i.i97.i:                              ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.mz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.na, ptr %16, align 8, !tbaa !176, !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.na, ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false), !noalias !565
  %i.nb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.nb, align 8, !tbaa !177, !noalias !565
  %i.nc = getelementptr inbounds nuw i8, ptr %16, i64 26
  store i8 0, ptr %i.nc, align 2, !tbaa !70, !noalias !565
  %i.nd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %bb.ar unwind label %bb.ej     ; 2 uses

bb.ar:                                            ; preds = %._crit_edge.i.i97.i
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !378 ; 2 uses
  %i.nh = load <2 x ptr>, ptr %i.nd, align 8, !tbaa !237
  store <2 x ptr> %i.nh, ptr %17, align 16, !tbaa !237, !noalias !565
  %.not.i.i.i105.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i105.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 3 uses
  %i.nj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !565
  %.not.i.i.i.i106.i = icmp eq i8 %i.nj, 0
  br i1 %.not.i.i.i.i106.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nk = load i32, ptr %i.ni, align 4, !tbaa !3
  %i.nl = add nsw i32 %i.nk, 1
  store i32 %i.nl, ptr %i.ni, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107.i

bb.au:                                            ; preds = %bb.as
  %i.nm = atomicrmw volatile add ptr %i.ni, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107.i: ; preds = %bb.au, %bb.at, %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !noalias !565
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %i.mz, ptr noundef nonnull %16, ptr noundef nonnull %17, i1 noundef zeroext true, ptr noundef nonnull %18)
          to label %bb.av unwind label %bb.ek

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit107.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !565
  %i.nn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc114.i unwind label %bb.el ; 4 uses

.noexc114.i:                                      ; preds = %bb.av
  store ptr %i.nn, ptr %11, align 8, !tbaa !221, !noalias !565
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.no, ptr %i.np, align 8, !tbaa !450, !noalias !565
  %i.nq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !378, !noalias !565 ; 2 uses
  %i.ns = load <2 x ptr>, ptr %12, align 16, !tbaa !237, !noalias !565
  store <2 x ptr> %i.ns, ptr %i.nn, align 8, !tbaa !237
  %.not.i.i.i.i.i.i.i.i.i.i111.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i111.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc114.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 3 uses
  %i.nu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !565
  %.not.i.i.i.i.i.i.i.i.i.i.i112.i = icmp eq i8 %i.nu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i112.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nv = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nt, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.nx = atomicrmw volatile add ptr %i.nt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax, %.noexc114.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(76) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::time_point", align 4 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !674
  %.val4 = load i64, ptr %2, align 8, !tbaa !408
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds [4 x i8], ptr %.val, i64 %.val4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %i.c, ptr %5, align 4
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIiSt5ratioILl86400ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIiSt5ratioILl86400ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !684
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !684
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !684
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !684 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !684 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !687, !noalias !684 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !684 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !684
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !446
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %2, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.g = add nsw i32 %.sroa.0.0.copyload.i.i, 719468 ; 2 uses
  %i.h = icmp sgt i32 %.sroa.0.0.copyload.i.i, -719469
  %i.i = add nsw i32 %.sroa.0.0.copyload.i.i, 573372
  %i.j = select i1 %i.h, i32 %i.g, i32 %i.i
  %i.k = sdiv i32 %i.j, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.k, -146097
  %i.l = add i32 %.neg.i.i, %i.g                  ; 5 uses
  %i.m = udiv i32 %i.l, 1460
  %i.n = udiv i32 %i.l, 36524
  %i.o = udiv i32 %i.l, 146096
  %.neg94 = add i32 %i.n, %i.l
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = sub i32 %.neg94, %i.p                    ; 3 uses
  %i.r = udiv i32 %i.q, 365                       ; 2 uses
  %i.s = mul nsw i32 %i.k, 400
  %i.t = add nsw i32 %i.r, %i.s
  %i.u = udiv i32 %i.q, 1460
  %i.v = udiv i32 %i.q, 36500
  %.neg36.i.i = mul i32 %i.r, -365
  %.neg37.i.i = sub i32 %i.l, %i.u
  %.neg25.i.i = add i32 %.neg37.i.i, %i.v
  %i.w = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.x = mul i32 %i.w, 5
  %i.y = add i32 %i.x, 2                          ; 2 uses
  %i.z = udiv i32 %i.y, 153                       ; 2 uses
  %i.aa = mul nuw i32 %i.z, 153
  %i.ab = add nuw i32 %i.aa, 2
  %i.ac = udiv i32 %i.ab, 5
  %i.ad = sub i32 %i.w, %i.ac
  %i.ae = icmp ult i32 %i.y, 1530
  %.v.i.i = select i1 %i.ae, i32 3, i32 -9
  %i.af = add nsw i32 %.v.i.i, %i.z               ; 2 uses
  %i.ag = icmp ult i32 %i.af, 3
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add nsw i32 %i.t, %i.ah
  %i.aj = shl i32 %i.ad, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.aj, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.af, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ai, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  store i32 %.sroa.030.0.insert.insert.i.i, ptr %5, align 8
  store i8 8, ptr %i.d, align 4, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !560
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.am = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ao = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %i.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.a
  %i.as = load i64, ptr %i.a, align 8, !tbaa !70
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 4 uses
  %i.ac = alloca i8, align 1                      ; 4 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %i.ae = alloca i8, align 1                      ; 4 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %i.ag = alloca i8, align 1                      ; 4 uses
  %i.ah = alloca i8, align 1                      ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %i.aj = alloca i8, align 1                      ; 4 uses
  %i.ak = alloca i8, align 1                      ; 4 uses
  %i.al = alloca i8, align 1                      ; 4 uses
  %i.am = alloca i8, align 1                      ; 4 uses
  %i.an = alloca i8, align 1                      ; 4 uses
  %i.ao = alloca i8, align 1                      ; 4 uses
  %i.ap = alloca i8, align 1                      ; 4 uses
  %i.aq = alloca i8, align 1                      ; 4 uses
  %i.ar = alloca i8, align 1                      ; 4 uses
  %i.as = alloca i8, align 1                      ; 4 uses
  %i.at = alloca i8, align 1                      ; 4 uses
  %i.au = alloca i8, align 1                      ; 4 uses
  %i.av = alloca i8, align 1                      ; 4 uses
  %i.aw = alloca i8, align 1                      ; 4 uses
  %i.ax = alloca i8, align 1                      ; 4 uses
  %i.ay = alloca i8, align 1                      ; 4 uses
  %i.az = alloca i8, align 1                      ; 4 uses
  %i.ba = alloca i8, align 1                      ; 4 uses
  %i.bb = alloca i8, align 1                      ; 4 uses
  %i.bc = alloca i8, align 1                      ; 4 uses
  %i.bd = alloca i8, align 1                      ; 4 uses
  %i.be = alloca i8, align 1                      ; 4 uses
  %i.bf = alloca i8, align 1                      ; 4 uses
  %i.bg = alloca i8, align 1                      ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !102
  store i64 %.0, ptr %i.d, align 8, !tbaa !70
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !177
  store i8 0, ptr %i.c, align 1, !tbaa !70
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !70
  store i8 %i.s, ptr %i.q, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !177
  %i.u = load ptr, ptr %0, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::time_point.174", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !752
  %.val4 = load i64, ptr %2, align 8, !tbaa !408
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds [8 x i8], ptr %.val, i64 %.val4
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.c, ptr %5, align 8
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !760
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !760
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !760
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !760 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !760 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !687, !noalias !760 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !760 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !760
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !446
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields.175", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !408 ; 4 uses
  %i.d = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %sext = shl i64 %i.d, 32
  %i.i = ashr exact i64 %sext, 32                 ; 3 uses
  %i.j = mul nsw i64 %i.i, 86400000
  %.not = icmp sgt i64 %i.j, %.sroa.0.0.copyload.i.i
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = add nsw i32 %i.e, 719468                 ; 2 uses
  %i.l = icmp sgt i32 %i.e, -719469
  %i.m = add nsw i32 %i.e, 573372
  %i.n = select i1 %i.l, i32 %i.k, i32 %i.m
  %i.o = sdiv i32 %i.n, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.o, -146097
  %i.p = add i32 %.neg.i.i, %i.k                  ; 5 uses
  %i.q = udiv i32 %i.p, 1460
  %i.r = udiv i32 %i.p, 36524
  %i.s = udiv i32 %i.p, 146096
  %.neg97 = add i32 %i.r, %i.p
  %i.t = add nuw nsw i32 %i.s, %i.q
  %i.u = sub i32 %.neg97, %i.t                    ; 3 uses
  %i.v = udiv i32 %i.u, 365                       ; 2 uses
  %i.w = mul nsw i32 %i.o, 400
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = udiv i32 %i.u, 1460
  %i.z = udiv i32 %i.u, 36500
  %.neg36.i.i = mul i32 %i.v, -365
  %.neg37.i.i = sub i32 %i.p, %i.y
  %.neg25.i.i = add i32 %.neg37.i.i, %i.z
  %i.aa = add i32 %.neg25.i.i, %.neg36.i.i        ; 2 uses
  %i.ab = mul i32 %i.aa, 5
  %i.ac = add i32 %i.ab, 2                        ; 2 uses
  %i.ad = udiv i32 %i.ac, 153                     ; 2 uses
  %i.ae = mul nuw i32 %i.ad, 153
  %i.af = add nuw i32 %i.ae, 2
  %i.ag = udiv i32 %i.af, 5
  %i.ah = sub i32 %i.aa, %i.ag
  %i.ai = icmp ult i32 %i.ac, 1530
  %.v.i.i = select i1 %i.ai, i32 3, i32 -9
  %i.aj = add nsw i32 %.v.i.i, %i.ad              ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 3
  %i.al = zext i1 %i.ak to i32
  %i.am = add nsw i32 %i.x, %i.al
  %i.an = shl i32 %i.ah, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.an, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.aj, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.am, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i27 = mul nsw i64 %i.i, -86400000
  %i.ao = add i64 %.neg.i.i27, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aq = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.as = add nsw i32 %i.e, 719467                ; 2 uses
  %i.at = icmp sgt i32 %i.e, -719468
  %i.au = add nsw i32 %i.e, 573371
  %i.av = select i1 %i.at, i32 %i.as, i32 %i.au
  %i.aw = sdiv i32 %i.av, 146097                  ; 2 uses
  %.neg.i.i30 = mul nsw i32 %i.aw, -146097
  %i.ax = add i32 %.neg.i.i30, %i.as              ; 5 uses
  %i.ay = udiv i32 %i.ax, 1460
  %i.az = udiv i32 %i.ax, 36524
  %i.ba = udiv i32 %i.ax, 146096
  %.neg101 = add i32 %i.az, %i.ax
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = sub i32 %.neg101, %i.bb                 ; 3 uses
  %i.bd = udiv i32 %i.bc, 365                     ; 2 uses
  %i.be = mul nsw i32 %i.aw, 400
  %i.bf = add nsw i32 %i.bd, %i.be
  %i.bg = udiv i32 %i.bc, 1460
  %i.bh = udiv i32 %i.bc, 36500
  %.neg36.i.i32 = mul i32 %i.bd, -365
  %.neg37.i.i33 = sub i32 %i.ax, %i.bg
  %.neg25.i.i34 = add i32 %.neg37.i.i33, %i.bh
  %i.bi = add i32 %.neg25.i.i34, %.neg36.i.i32    ; 2 uses
  %i.bj = mul i32 %i.bi, 5
  %i.bk = add i32 %i.bj, 2                        ; 2 uses
  %i.bl = udiv i32 %i.bk, 153                     ; 2 uses
  %i.bm = mul nuw i32 %i.bl, 153
  %i.bn = add nuw i32 %i.bm, 2
  %i.bo = udiv i32 %i.bn, 5
  %i.bp = sub i32 %i.bi, %i.bo
  %i.bq = icmp ult i32 %i.bk, 1530
  %.v.i.i35 = select i1 %i.bq, i32 3, i32 -9
  %i.br = add nsw i32 %.v.i.i35, %i.bl            ; 2 uses
  %i.bs = icmp ult i32 %i.br, 3
  %i.bt = zext i1 %i.bs to i32
  %i.bu = add nsw i32 %i.bf, %i.bt
  %i.bv = shl i32 %i.bp, 24
  %.sroa.3.0.insert.ext.i.i36 = add i32 %i.bv, 16777216
  %.sroa.2.0.insert.ext.i.i37 = shl i32 %i.br, 16
  %.sroa.2.0.insert.shift.i.i38 = and i32 %.sroa.2.0.insert.ext.i.i37, 16711680
  %.sroa.2.0.insert.insert.i.i39 = or disjoint i32 %.sroa.3.0.insert.ext.i.i36, %.sroa.2.0.insert.shift.i.i38
  %.sroa.030.0.insert.ext.i.i40 = and i32 %i.bu, 65535
  %.sroa.030.0.insert.insert.i.i41 = or disjoint i32 %.sroa.2.0.insert.insert.i.i39, %.sroa.030.0.insert.ext.i.i40
  %.neg94 = mul nsw i64 %i.i, -86400000
  %.neg = add nsw i64 %.sroa.0.0.copyload.i.i, 86400000
  %i.bw = add i64 %.neg, %.neg94
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sink119 = phi i64 [ %i.bw, %bb.c ], [ %i.ao, %bb.a ] ; 2 uses
  %.sroa.030.0.insert.insert.i.i41.sink = phi i32 [ %.sroa.030.0.insert.insert.i.i41, %bb.c ], [ %.sroa.030.0.insert.insert.i.i, %bb.a ]
  %spec.select.i.i45 = call i64 @llvm.abs.i64(i64 %.sink119, i1 true) ; 3 uses
  %i.bx = udiv i64 %spec.select.i.i45, 3600000    ; 3 uses
  %i.by = udiv i64 %spec.select.i.i45, 60000
  %.neg.i.i46 = mul nsw i64 %i.bx, -60
  %i.bz = add nsw i64 %.neg.i.i46, %i.by          ; 2 uses
  %.neg.i7.i47 = mul nsw i64 %i.bx, -3600000
  %i.ca = add nsw i64 %.neg.i7.i47, %spec.select.i.i45
  %.neg.i8.i48 = mul nsw i64 %i.bz, -60000
  %i.cb = add i64 %i.ca, %.neg.i8.i48             ; 2 uses
  %i.cc = sdiv i64 %i.cb, 1000                    ; 2 uses
  %.neg.i.i.i49 = mul nsw i64 %i.cc, -1000
  %i.cd = add i64 %.neg.i.i.i49, %i.cb
  store i32 %.sroa.030.0.insert.insert.i.i41.sink, ptr %5, align 8
  store i8 8, ptr %i.f, align 4, !tbaa !70
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !408
  %.sroa.662.sroa.5.0..sroa.662.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bz, ptr %.sroa.662.sroa.5.0..sroa.662.0..sroa_idx.sroa_idx, align 8, !tbaa !408
  %.sink.in = lshr i64 %.sink119, 63
  %.sink = trunc nuw nsw i64 %.sink.in to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !408
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !408
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !560
  store i8 1, ptr %i.h, align 8, !tbaa !560
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ci = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.a
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !70
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_:bb.a
  %.pn.i.i.i = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i ]
  resume { ptr, i32 } %.pn.i.i.i

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.j
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS7_lS8_E_, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %.val, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %.val7.i = load ptr, ptr %.val6, align 8        ; 2 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val8.i = load i64, ptr %i.a, align 8          ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !176
  %i.d = icmp ugt i64 %.val8.i, 15
  br i1 %i.d, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.e = icmp slt i64 %.val8.i, 0
  br i1 %i.e, label %.noexc.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
          to label %.noexc.i.i.i unwind label %bb.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.f = add nuw i64 %.val8.i, 1                  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !376

.noexc6.i.i.i.i.i:                                ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc3.i.i.i unwind label %bb.i

.noexc3.i.i.i:                                    ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc4.i.i.i unwind label %bb.i ; 2 uses

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !102
  store i64 %.val8.i, ptr %i.c, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4.i.i.i, %bb.d
  %i.i = phi ptr [ %i.h, %.noexc4.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  switch i64 %.val8.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = load i8, ptr %.val7.i, align 1, !tbaa !70
  store i8 %i.j, ptr %i.i, align 1, !tbaa !70
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.val7.i, i64 %.val8.i, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #29
  resume { ptr, i32 } %i.k

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val8.i, ptr %i.l, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.val8.i
  store i8 0, ptr %i.m, align 1, !tbaa !70
  store ptr %i.b, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.j:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !237 ; 4 uses
  %i.n = icmp eq ptr %.val9.i, null
  br i1 %i.n, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr %.val9.i, align 8, !tbaa !102 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !70
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_13TimestampTypeELb1EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !785
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !785
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !785
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !785 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !785 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !687, !noalias !785 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !785 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !785
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !446
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !792
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !792
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !792
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !792 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !792 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !687, !noalias !792 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !792 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !792
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !446
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !799
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !799
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !799
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !799 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !799 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !687, !noalias !799 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !799 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !70, !alias.scope !799
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !446
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !446
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %5 = alloca %"struct.arrow_vendored::date::fields.188", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !408 ; 4 uses
  %i.d = sdiv i64 %.sroa.0.0.copyload.i.i, 86400000000000 ; 4 uses
  %i.e = trunc nsw i64 %i.d to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = mul nsw i64 %i.d, 86400000000000
  %.not = icmp sgt i64 %i.i, %.sroa.0.0.copyload.i.i
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = add nsw i32 %i.e, 719468                 ; 2 uses
  %i.k = udiv i32 %i.j, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.k, -146097
  %i.l = add nsw i32 %.neg.i.i, %i.j              ; 5 uses
  %i.m = udiv i32 %i.l, 1460
  %i.n = udiv i32 %i.l, 36524
  %i.o = udiv i32 %i.l, 146096
  %.neg97 = add nsw i32 %i.n, %i.l
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = sub nsw i32 %.neg97, %i.p                ; 3 uses
  %i.r = udiv i32 %i.q, 365                       ; 2 uses
  %i.s = mul nuw nsw i32 %i.k, 400
  %i.t = add nuw nsw i32 %i.r, %i.s
  %i.u = udiv i32 %i.q, 1460
  %i.v = udiv i32 %i.q, 36500
  %.neg36.i.i = mul i32 %i.r, -365
  %.neg37.i.i = sub nsw i32 %i.l, %i.u
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.v
  %i.w = add i32 %.neg25.i.i, %.neg36.i.i         ; 2 uses
  %i.x = mul i32 %i.w, 5
  %i.y = add i32 %i.x, 2                          ; 2 uses
  %i.z = udiv i32 %i.y, 153                       ; 2 uses
  %i.aa = mul nuw i32 %i.z, 153
  %i.ab = add nuw i32 %i.aa, 2
  %i.ac = udiv i32 %i.ab, 5
  %i.ad = sub i32 %i.w, %i.ac
  %i.ae = icmp ult i32 %i.y, 1530
  %.v.i.i = select i1 %i.ae, i32 3, i32 -9
  %i.af = add nsw i32 %.v.i.i, %i.z               ; 2 uses
  %i.ag = icmp ult i32 %i.af, 3
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.t, %i.ah
  %i.aj = shl i32 %i.ad, 24
  %.sroa.3.0.insert.ext.i.i = add i32 %i.aj, 16777216
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.af, 16
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.030.0.insert.ext.i.i = and i32 %i.ai, 65535
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.030.0.insert.ext.i.i
  %.neg.i.i27 = mul nsw i64 %i.d, -86400000000000
  %i.ak = add i64 %.neg.i.i27, %.sroa.0.0.copyload.i.i
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.am = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ao = add nsw i32 %i.e, 719467                ; 2 uses
  %i.ap = udiv i32 %i.ao, 146097                  ; 2 uses
  %.neg.i.i30 = mul nsw i32 %i.ap, -146097
  %i.aq = add nsw i32 %.neg.i.i30, %i.ao          ; 5 uses
  %i.ar = udiv i32 %i.aq, 1460
  %i.as = udiv i32 %i.aq, 36524
  %i.at = udiv i32 %i.aq, 146096
  %.neg101 = add nsw i32 %i.as, %i.aq
  %i.au = add nuw nsw i32 %i.at, %i.ar
  %i.av = sub nsw i32 %.neg101, %i.au             ; 3 uses
  %i.aw = udiv i32 %i.av, 365                     ; 2 uses
  %i.ax = mul nuw nsw i32 %i.ap, 400
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = udiv i32 %i.av, 1460
  %i.ba = udiv i32 %i.av, 36500
  %.neg36.i.i32 = mul i32 %i.aw, -365
  %.neg37.i.i33 = sub nsw i32 %i.aq, %i.az
  %.neg25.i.i34 = add nsw i32 %.neg37.i.i33, %i.ba
  %i.bb = add i32 %.neg25.i.i34, %.neg36.i.i32    ; 2 uses
  %i.bc = mul i32 %i.bb, 5
  %i.bd = add i32 %i.bc, 2                        ; 2 uses
  %i.be = udiv i32 %i.bd, 153                     ; 2 uses
  %i.bf = mul nuw i32 %i.be, 153
  %i.bg = add nuw i32 %i.bf, 2
  %i.bh = udiv i32 %i.bg, 5
  %i.bi = sub i32 %i.bb, %i.bh
  %i.bj = icmp ult i32 %i.bd, 1530
  %.v.i.i35 = select i1 %i.bj, i32 3, i32 -9
  %i.bk = add nsw i32 %.v.i.i35, %i.be            ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 3
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.ay, %i.bm
  %i.bo = shl i32 %i.bi, 24
  %.sroa.3.0.insert.ext.i.i36 = add i32 %i.bo, 16777216
  %.sroa.2.0.insert.ext.i.i37 = shl i32 %i.bk, 16
  %.sroa.2.0.insert.shift.i.i38 = and i32 %.sroa.2.0.insert.ext.i.i37, 16711680
  %.sroa.2.0.insert.insert.i.i39 = or disjoint i32 %.sroa.3.0.insert.ext.i.i36, %.sroa.2.0.insert.shift.i.i38
  %.sroa.030.0.insert.ext.i.i40 = and i32 %i.bn, 65535
  %.sroa.030.0.insert.insert.i.i41 = or disjoint i32 %.sroa.2.0.insert.insert.i.i39, %.sroa.030.0.insert.ext.i.i40
  %.neg94 = mul nsw i64 %i.d, -86400000000000
  %.neg = add i64 %.sroa.0.0.copyload.i.i, 86400000000000
  %i.bp = add i64 %.neg, %.neg94
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sink119 = phi i64 [ %i.bp, %bb.c ], [ %i.ak, %bb.a ] ; 2 uses
  %.sroa.030.0.insert.insert.i.i41.sink = phi i32 [ %.sroa.030.0.insert.insert.i.i41, %bb.c ], [ %.sroa.030.0.insert.insert.i.i, %bb.a ]
  %spec.select.i.i45 = call i64 @llvm.abs.i64(i64 %.sink119, i1 true) ; 3 uses
  %i.bq = udiv i64 %spec.select.i.i45, 3600000000000 ; 3 uses
  %i.br = udiv i64 %spec.select.i.i45, 60000000000
  %.neg.i.i46 = mul nsw i64 %i.bq, -60
  %i.bs = add nsw i64 %.neg.i.i46, %i.br          ; 2 uses
  %.neg.i7.i47 = mul nsw i64 %i.bq, -3600000000000
  %i.bt = add nsw i64 %.neg.i7.i47, %spec.select.i.i45
  %.neg.i8.i48 = mul nsw i64 %i.bs, -60000000000
  %i.bu = add i64 %i.bt, %.neg.i8.i48             ; 2 uses
  %i.bv = sdiv i64 %i.bu, 1000000000              ; 2 uses
  %.neg.i.i.i49 = mul nsw i64 %i.bv, -1000000000
  %i.bw = add i64 %.neg.i.i.i49, %i.bu
  store i32 %.sroa.030.0.insert.insert.i.i41.sink, ptr %5, align 8
  store i8 8, ptr %i.f, align 4, !tbaa !70
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !408
  %.sroa.662.sroa.5.0..sroa.662.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bs, ptr %.sroa.662.sroa.5.0..sroa.662.0..sroa_idx.sroa_idx, align 8, !tbaa !408
  %.sink.in = lshr i64 %.sink119, 63
  %.sink = trunc nuw nsw i64 %.sink.in to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !408
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !408
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 %.sink, ptr %i.bz, align 8, !tbaa !560
  store i8 1, ptr %i.h, align 8, !tbaa !560
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cb = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.a
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !70
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %i.ca

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.b
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !70
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.cg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation:bb.a
  store ptr %i.c, ptr %i.b, align 8, !tbaa !176
  %i.d = icmp ugt i64 %.val8.i, 15
  br i1 %i.d, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.e = icmp slt i64 %.val8.i, 0
  br i1 %i.e, label %.noexc.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
          to label %.noexc.i.i.i unwind label %bb.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.f = add nuw i64 %.val8.i, 1                  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !376

.noexc6.i.i.i.i.i:                                ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc3.i.i.i unwind label %bb.i

.noexc3.i.i.i:                                    ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc4.i.i.i unwind label %bb.i ; 2 uses

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !102
  store i64 %.val8.i, ptr %i.c, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4.i.i.i, %bb.d
  %i.i = phi ptr [ %i.h, %.noexc4.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  switch i64 %.val8.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = load i8, ptr %.val7.i, align 1, !tbaa !70
  store i8 %i.j, ptr %i.i, align 1, !tbaa !70
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.val7.i, i64 %.val8.i, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #29
  resume { ptr, i32 } %i.k

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val8.i, ptr %i.l, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.val8.i
  store i8 0, ptr %i.m, align 1, !tbaa !70
  store ptr %i.b, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.j:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !237 ; 4 uses
  %i.n = icmp eq ptr %.val9.i, null
  br i1 %i.n, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr %.val9.i, align 8, !tbaa !102 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !70
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlS7_lS8_E_D2Ev.exit.i.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS1_10Time32TypeELb0EEESt8functionIFvRKNS1_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS9_lSA_E_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.188", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000000000 ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000000000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000000000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000000000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000000                ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000000000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !800
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !826
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !826
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !826
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !826 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !826 ; 2 uses
  %i.z = icmp ugt ptr %i.w, %i.y
  %.08.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.y ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !687, !noalias !826 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !826 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !826
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !446
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %4, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !446
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !70
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.194", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000000  ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000                   ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !808
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !833
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !833
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !833
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !833 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !833 ; 2 uses
  %i.z = icmp ugt ptr %i.w, %i.y
  %.08.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.y ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !687, !noalias !833 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !833 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !833
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !446
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %4, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !446
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !70
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields.175", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600000     ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60000
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600000
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60000
  %i.l = add i64 %i.k, %.neg.i8.i.i               ; 2 uses
  %i.m = sdiv i64 %i.l, 1000                      ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.m, -1000
  %i.n = add i64 %.neg.i.i.i.i, %i.l
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.o = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.p, align 4, !tbaa !746
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.r, align 8, !tbaa !761
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !176, !alias.scope !840
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !177, !alias.scope !840
  store i8 0, ptr %i.t, align 8, !tbaa !70, !alias.scope !840
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !685, !noalias !840 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !840 ; 2 uses
  %i.z = icmp ugt ptr %i.w, %i.y
  %.08.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.y ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !687, !noalias !840 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !840 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !70, !alias.scope !840
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !446
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %4, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !446
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !70
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !446
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::fields", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = load ptr, ptr %4, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !408 ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.0.0.copyload.i, i1 true) ; 3 uses
  %i.h = udiv i64 %spec.select.i.i.i, 3600        ; 3 uses
  %i.i = udiv i64 %spec.select.i.i.i, 60
  %.neg.i.i.i = mul nsw i64 %i.h, -60
  %i.j = add nsw i64 %.neg.i.i.i, %i.i            ; 2 uses
  %.neg.i7.i.i = mul nsw i64 %i.h, -3600
  %i.k = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i8.i.i = mul nsw i64 %i.j, -60
  %i.l = add i64 %i.k, %.neg.i8.i.i
  %.lobit.i.i = lshr i64 %.sroa.0.0.copyload.i, 63
  %i.m = trunc nuw nsw i64 %.lobit.i.i to i8
  store i32 32768, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 8, ptr %i.n, align 4, !tbaa !746
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.o, align 8, !tbaa !408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.l, ptr %.sroa.56.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !408
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !560
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.p, align 8, !tbaa !702
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef null, ptr noundef null)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !176, !alias.scope !847
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !177, !alias.scope !847
  store i8 0, ptr %i.r, align 8, !tbaa !70, !alias.scope !847
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !685, !noalias !847 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !847 ; 2 uses
  %i.x = icmp ugt ptr %i.u, %i.w
  %.08.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.w ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !687, !noalias !847 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !102, !alias.scope !847 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !70, !alias.scope !847
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !446
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %4, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !446
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !446
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !102 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !70
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !446
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ax) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit, %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ae, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::duration.185", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::chrono::duration.187", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::chrono::duration.172", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::chrono::duration.160", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !237
  %.val4 = load ptr, ptr %.val, align 8, !tbaa !102 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.b = getelementptr i8, ptr %1, i64 40
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !848
  %.val7 = load i64, ptr %2, align 8, !tbaa !408
  %.val8 = load ptr, ptr %3, align 8, !tbaa !52   ; 4 uses
  %.val5.val = load ptr, ptr %.val5, align 8, !tbaa !225
  %i.c = getelementptr i8, ptr %.val5.val, i64 72
  %.val5.val.val = load i32, ptr %i.c, align 8, !tbaa !818
  %i.d = getelementptr inbounds [8 x i8], ptr %.val6, i64 %.val7
  %i.e = load i64, ptr %i.d, align 8, !tbaa !408  ; 4 uses
  switch i32 %.val5.val.val, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.e, ptr %5, align 8, !tbaa !807
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.f = load ptr, ptr %4, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !177
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !70
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !70
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %i.e, ptr %7, align 8, !tbaa !815
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.u = load ptr, ptr %6, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !177
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %6, align 8, !tbaa !102    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !70
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !70
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i64 %i.e, ptr %9, align 8, !tbaa !769
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.aj = load ptr, ptr %8, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !177
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.i.i.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.i.i.i: ; preds = %bb.f
  %i.an = load ptr, ptr %8, align 8, !tbaa !102   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.i.i.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIFvRKNS0_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS8_lS9_E_JS8_lS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %8, align 8, !tbaa !102   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i: ; preds = %bb.g
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !70
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store i64 %i.e, ptr %11, align 8, !tbaa !744
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsIS8_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringIS8_SA_SaIS8_EEEEEPKS8_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ay = load ptr, ptr %10, align 8, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !177
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val8, ptr noundef %i.ay, i64 noundef %i.ba)
end_hunk_4
begin_hunk_5_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !910
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !376

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %6, align 8, !tbaa !908   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !446
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #26, !inline_history !911
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !61

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !908 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !446
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #26, !inline_history !912
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !74

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !908   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !446
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #26, !inline_history !911
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !901   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !913
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !469
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !592, !range !86, !noundef !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !86
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !61
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !464
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !914
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.283") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !908  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #26, !inline_history !917
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !74

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !75, !range !86, !noundef !87
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !908    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !901
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !378
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !908
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !918
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !378 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !443
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !445
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !446
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !920
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !920
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !376

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !378
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !443
  store i32 0, ptr %i.f, align 4, !tbaa !445
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !454
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !454
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !921  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #26, !inline_history !923
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !924  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"class.std::__shared_ptr.275", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result.303", align 8 ; 12 uses
  %7 = alloca %"class.std::unique_ptr.307", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !473
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.b, i1 noundef zeroext %3)
  %i.c = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.a, label %bb.aj

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.e = load i64, ptr %i.a, align 8, !tbaa !473
  %.not = icmp eq i64 %i.e, 0
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !901 ; 7 uses
  br i1 %.not, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.b
end_hunk_5
begin_hunk_6_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bx = load ptr, ptr %7, align 8, !tbaa !585   ; 3 uses
  %.not.i30 = icmp eq ptr %i.bx, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !446
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bx) #26, !inline_history !936
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.o, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.cb = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !61

bb.y:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !585 ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i31, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !446
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ce) #26, !inline_history !937
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !74

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ci = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.cb, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !75, !range !86, !noundef !87
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.bb, label %bb.ac, label %bb.aj

bb.aa:                                            ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %7, align 8, !tbaa !585   ; 3 uses
  %.not.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33: ; preds = %bb.aa
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !446
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cn) #26, !inline_history !936
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34, %bb.p
  %.pn19 = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.cm, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn19

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit
  store ptr null, ptr %1, align 8, !tbaa !908
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !378 ; 8 uses
  store ptr null, ptr %i.w, align 8, !tbaa !378
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i35, label %_ZN5arrow13BufferBuilder5ResetEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !443
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !445
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !446
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !938
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !446
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !938
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ai, label %_ZN5arrow13BufferBuilder5ResetEv.exit, !prof !376

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

_ZN5arrow13BufferBuilder5ResetEv.exit:            ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !939
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow13BufferBuilder5ResetEv.exit
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.303") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !585  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #26, !inline_history !942
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !74

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !75, !range !86, !noundef !87
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !585    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !576
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !378
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !585
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !943
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !378 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !443
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !445
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !446
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !920
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !920
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !376

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !378
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !443
  store i32 0, ptr %i.f, align 4, !tbaa !445
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !454
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !454
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !945  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #26, !inline_history !947
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !924  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !948 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !443
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !443
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !445
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !951
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !951
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  resume { ptr, i32 } %i.w

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.a, ptr %0, align 8, !tbaa !378
  store ptr %i.d, ptr %1, align 8, !tbaa !952
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12BooleanArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26, !inline_history !953
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !924  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12NumericArrayINS4_9Int64TypeEEESaIvEJlRSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !954 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !443
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12NumericArrayINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueElE4typeERKSt10shared_ptrINS_6BufferEESC_ll(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !443
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !445
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !957
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !957
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #29
  resume { ptr, i32 } %i.w

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.a, ptr %0, align 8, !tbaa !378
  store ptr %i.d, ptr %1, align 8, !tbaa !958
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12NumericArrayINS3_9Int64TypeEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #26, !inline_history !959
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS1_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12NumericArrayINS0_9Int64TypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !924  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12NumericArrayINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueElE4typeERKSt10shared_ptrINS_6BufferEESC_ll(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.24", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %8 = alloca %"class.std::vector.232", align 8   ; 8 uses
  %9 = alloca [2 x %"class.std::shared_ptr.274"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !428
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow12NumericArrayINS_9Int64TypeEEE, i64 16), ptr %0, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc unwind label %bb.bm    ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !378, !noalias !960 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237, !noalias !960
  store <2 x ptr> %i.g, ptr %7, align 16, !tbaa !237, !alias.scope !960
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70, !noalias !960
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !960
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !960
  br label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !960 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit: ; preds = %bb.d, %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !378  ; 2 uses
  %i.p = load <2 x ptr>, ptr %3, align 8, !tbaa !237
  store <2 x ptr> %i.p, ptr %9, align 16, !tbaa !237
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i13 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit, %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !378  ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !237
  store <2 x ptr> %i.y, ptr %i.v, align 16, !tbaa !237
  %.not.i.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i14, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i15 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc17 unwind label %bb.bn  ; 5 uses

.noexc17:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16
  store ptr %i.ae, ptr %8, align 8, !tbaa !963
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !964
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !378 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %9, align 16, !tbaa !237
  store <2 x ptr> %i.ai, ptr %i.ae, align 8, !tbaa !237
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.noexc17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !378 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.v, align 16, !tbaa !237
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !237
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.p:                                             ; preds = %bb.n
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.p, %bb.o, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !965
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.24") align 8 %6, ptr noundef nonnull %7, i64 noundef %1, ptr noundef nonnull %8, i64 noundef %4, i64 noundef %5)
          to label %bb.q unwind label %bb.bo

bb.q:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.az = load ptr, ptr %6, align 8, !tbaa !409   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !965
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !963 ; 3 uses
  %.not.i30 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i30, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !576 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.be, null
  br i1 %.not.i.i31, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !592, !range !86, !noundef !87
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.t, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ null, %bb.r ], [ %i.bj, %bb.t ], [ null, %bb.s ], [ null, %bb.q ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink.i, ptr %i.bk, align 8, !tbaa !873
  store ptr %i.az, ptr %i.a, align 8, !tbaa !409
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !378 ; 4 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i.i32, label %.noexc19, label %bb.u

bb.u:                                             ; preds = %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i33 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow12NumericArrayINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueElE4typeERKSt10shared_ptrINS_6BufferEESC_ll:bb.a
  %.0.i.i.i.i25.1 = phi i32 [ %i.fj, %bb.bc ], [ %i.fm, %bb.bd ]
  %i.fn = icmp eq i32 %.0.i.i.i.i25.1, 1
  br i1 %i.fn, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !376

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #26
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.bf:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fg, align 8, !tbaa !443
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !445
  %i.fp = load ptr, ptr %i.ff, align 8, !tbaa !446
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #26, !inline_history !970
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !446
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #26, !inline_history !970
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.bf, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24.1, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !378 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %i.fx = load atomic i64, ptr %i.fw acquire, align 8 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 4294967297
  %i.fz = trunc i64 %i.fx to i32                  ; 2 uses
  br i1 %i.fy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fw, align 8, !tbaa !443
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !445
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !446
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26, !inline_history !971
  %i.ge = load ptr, ptr %i.fv, align 8, !tbaa !446
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26, !inline_history !971
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i27 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i27, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gi = add nsw i32 %i.fz, -1
  store i32 %i.gi, ptr %i.fw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.bk:                                            ; preds = %bb.bi
  %i.gj = atomicrmw volatile add ptr %i.fw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i29 = phi i32 [ %i.fz, %bb.bj ], [ %i.gj, %bb.bk ]
  %i.gk = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.gk, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.bm:                                            ; preds = %bb.a
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.bo ], [ %i.gm, %bb.bn ]
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #26
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bp ], [ %i.gl, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #26
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !963    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !965  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !443
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !445
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !972
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !446
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !972
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !969

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !963
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !964
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !445
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !967
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !967
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12NumericArrayINS_9Int64TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !445
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !973
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !973
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !974
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !445
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !973
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !973
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !974
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ValueComparatorFactory6CreateERKNS_8DataTypeERKNS_5ArrayES7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.339", align 8 ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33, !noalias !975
  switch i32 %i.b, label %bb.aa [
    i32 0, label %bb.b
    i32 1, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 3, label %.noexc10
    i32 2, label %.noexc11
    i32 5, label %.noexc12
    i32 4, label %.noexc13
    i32 7, label %.noexc14
    i32 6, label %.noexc15
    i32 9, label %.noexc16
    i32 8, label %.noexc17
    i32 10, label %.noexc18
    i32 11, label %.noexc19
    i32 12, label %.noexc20
    i32 13, label %.noexc21
    i32 39, label %.noexc22
    i32 14, label %.noexc23
    i32 40, label %.noexc24
    i32 34, label %.noexc25
    i32 35, label %.noexc26
    i32 15, label %.noexc27
    i32 33, label %.noexc28
    i32 16, label %.noexc29
    i32 17, label %.noexc30
    i32 18, label %.noexc31
    i32 19, label %.noexc32
    i32 20, label %.noexc33
    i32 37, label %.noexc34
    i32 21, label %.noexc35
    i32 22, label %.noexc36
    i32 43, label %.noexc37
    i32 44, label %.noexc38
    i32 23, label %.noexc39
    i32 24, label %.noexc40
    i32 25, label %.noexc41
    i32 36, label %.noexc42
    i32 41, label %bb.c
    i32 42, label %bb.d
    i32 30, label %.noexc45
    i32 32, label %.noexc46
    i32 26, label %.noexc47
    i32 27, label %.noexc48
    i32 28, label %.noexc49
    i32 29, label %bb.e
    i32 38, label %.noexc68
    i32 31, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA10_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(10) @.str.40)
  br label %_ZN5arrow6StatusD2Ev.exit

.noexc10:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc11:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc12:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc13:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc14:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc15:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc16:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc17:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc18:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc19:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc20:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc21:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc22:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc23:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc24:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc25:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc26:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc27:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc28:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc29:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc30:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc31:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc32:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc33:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc34:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc35:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc36:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc37:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc38:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc39:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc40:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc41:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc42:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA15_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(15) @.str.41)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA15_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(15) @.str.41)
  br label %_ZN5arrow6StatusD2Ev.exit

.noexc45:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc46:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc47:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc48:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

.noexc49:                                         ; preds = %bb.a
  br label %_ZN5arrow6StatusD2Ev.exit.thread

bb.e:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(16) @.str.42)
  br label %_ZN5arrow6StatusD2Ev.exit

.noexc68:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !978
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221, !noalias !978
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !222, !noalias !978
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225, !noalias !978
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !386, !noalias !978
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !386, !noalias !978
  call fastcc void @_ZN5arrow12_GLOBAL__N_122ValueComparatorFactory6CreateERKNS_8DataTypeERKNS_5ArrayES7_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l), !inline_history !981
  %.val.i = load ptr, ptr %4, align 8, !tbaa !58, !noalias !978
  %i.m = icmp eq ptr %.val.i, null
  br i1 %i.m, label %bb.h, label %bb.f, !prof !61

bb.f:                                             ; preds = %.noexc68
  store ptr null, ptr %6, align 8, !tbaa !58, !alias.scope !978
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.g, !inline_history !981

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i

bb.h:                                             ; preds = %.noexc68
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i65 = load i64, ptr %i.o, align 8, !tbaa !548, !noalias !982 ; 5 uses
  %i.p = inttoptr i64 %.val.i.i.i.i.i.i65 to ptr  ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !548, !noalias !982
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !221, !noalias !978
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222, !noalias !978
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !225, !noalias !978
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33, !noalias !978
  switch i32 %i.v, label %bb.u [
    i32 5, label %bb.i
    i32 7, label %bb.m
    i32 9, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #27
          to label %bb.j unwind label %bb.w, !noalias !978, !inline_history !981 ; 18 uses

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIsEE, i64 16), ptr %i.w, align 8, !tbaa !446, !noalias !978
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !987, !noalias !978
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %3, ptr %i.y, align 8, !tbaa !987, !noalias !978
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store i64 %.val.i.i.i.i.i.i65, ptr %i.z, align 8, !tbaa !548, !noalias !978
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !409, !noalias !978
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.ad, align 8, !tbaa !989, !noalias !978
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, ptr noundef nonnull align 8 dereferenceable(120) %i.ac)
          to label %bb.l unwind label %bb.k, !noalias !978, !inline_history !981

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #26, !noalias !978, !inline_history !981
  br label %.body.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !997, !noalias !978
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !998, !noalias !978
  %i.an = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1000, !noalias !978
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  store i64 0, ptr %i.ap, align 8, !tbaa !1002, !noalias !978
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 176 ; 2 uses
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !1003, !noalias !978, !nonnull !87, !align !546
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !409, !noalias !978
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aq, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.au, align 8, !tbaa !989, !noalias !978
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.av, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noundef nonnull align 8 dereferenceable(120) %i.at)
          to label %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i unwind label %.body7.i.i, !noalias !978, !inline_history !981

.body7.i.i:                                       ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #26, !noalias !978, !inline_history !981
  call void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.aa) #26, !noalias !978, !inline_history !981
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body7.i.i, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.aw, %.body7.i.i ], [ %i.af, %bb.k ]
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !548, !noalias !978 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i: ; preds = %.body.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !446, !noalias !978
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !978
  call void %i.bb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #26, !noalias !978, !inline_history !1006
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i, %.body.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 320) #29, !noalias !978, !inline_history !981
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i

_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i: ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !997, !noalias !978
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !998, !noalias !978
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bf
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i

bb.m:                                             ; preds = %bb.h
  %i.bj = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #27
          to label %bb.n unwind label %bb.w, !noalias !978, !inline_history !981 ; 18 uses

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIiEE, i64 16), ptr %i.bj, align 8, !tbaa !446, !noalias !978
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %2, ptr %i.bk, align 8, !tbaa !987, !noalias !978
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store ptr %3, ptr %i.bl, align 8, !tbaa !987, !noalias !978
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  store i64 %.val.i.i.i.i.i.i65, ptr %i.bm, align 8, !tbaa !548, !noalias !978
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !409, !noalias !978
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bn, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.bq, align 8, !tbaa !989, !noalias !978
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.br, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.bn, ptr noundef nonnull align 8 dereferenceable(120) %i.bp)
          to label %bb.p unwind label %bb.o, !noalias !978, !inline_history !981

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #26, !noalias !978, !inline_history !981
  br label %.body.i27.i

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !997, !noalias !978
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !998, !noalias !978
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !1007, !noalias !978
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  store i64 0, ptr %i.cc, align 8, !tbaa !1009, !noalias !978
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 176 ; 2 uses
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !1010, !noalias !978, !nonnull !87, !align !546
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !409, !noalias !978
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cd, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.ch, align 8, !tbaa !989, !noalias !978
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ci, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.cd, ptr noundef nonnull align 8 dereferenceable(120) %i.cg)
          to label %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i unwind label %.body7.i32.i, !noalias !978, !inline_history !981

.body7.i32.i:                                     ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #26, !noalias !978, !inline_history !981
  call void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bn) #26, !noalias !978, !inline_history !981
  br label %.body.i27.i

.body.i27.i:                                      ; preds = %.body7.i32.i, %bb.o
  %.pn.i28.i = phi { ptr, i32 } [ %i.cj, %.body7.i32.i ], [ %i.bs, %bb.o ]
  %i.cl = load ptr, ptr %i.bm, align 8, !tbaa !548, !noalias !978 ; 3 uses
  %.not.i.i29.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i29.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i31.i, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i30.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i30.i: ; preds = %.body.i27.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !446, !noalias !978
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !978
  call void %i.co(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #26, !noalias !978, !inline_history !1012
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i31.i

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i31.i: ; preds = %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i30.i, %.body.i27.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 320) #29, !noalias !978, !inline_history !981
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i

_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i: ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !997, !noalias !978
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !998, !noalias !978
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cs
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i

bb.q:                                             ; preds = %bb.h
  %i.cw = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #27
          to label %bb.r unwind label %bb.w, !noalias !978, !inline_history !981 ; 18 uses

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIlEE, i64 16), ptr %i.cw, align 8, !tbaa !446, !noalias !978
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %2, ptr %i.cx, align 8, !tbaa !987, !noalias !978
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %3, ptr %i.cy, align 8, !tbaa !987, !noalias !978
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  store i64 %.val.i.i.i.i.i.i65, ptr %i.cz, align 8, !tbaa !548, !noalias !978
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !409, !noalias !978
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.da, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.dd, align 8, !tbaa !989, !noalias !978
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.de, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.da, ptr noundef nonnull align 8 dereferenceable(120) %i.dc)
          to label %bb.t unwind label %bb.s, !noalias !978, !inline_history !981

bb.s:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 136
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dg) #26, !noalias !978, !inline_history !981
  br label %.body.i36.i

bb.t:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 136
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !997, !noalias !978
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !998, !noalias !978
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1013, !noalias !978
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 168
  store i64 0, ptr %i.dp, align 8, !tbaa !1015, !noalias !978
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 176 ; 2 uses
  %i.dr = load ptr, ptr %i.cy, align 8, !tbaa !1016, !noalias !978, !nonnull !87, !align !546
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !409, !noalias !978
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dq, i8 0, i64 16, i1 false), !noalias !978
  store i64 -1, ptr %i.du, align 8, !tbaa !989, !noalias !978
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dv, i8 0, i64 104, i1 false), !noalias !978
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(144) %i.dq, ptr noundef nonnull align 8 dereferenceable(120) %i.dt)
          to label %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i unwind label %.body7.i41.i, !noalias !978, !inline_history !981

.body7.i41.i:                                     ; preds = %bb.t
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #26, !noalias !978, !inline_history !981
  call void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.da) #26, !noalias !978, !inline_history !981
  br label %.body.i36.i

.body.i36.i:                                      ; preds = %.body7.i41.i, %bb.s
  %.pn.i37.i = phi { ptr, i32 } [ %i.dw, %.body7.i41.i ], [ %i.df, %bb.s ]
  %i.dy = load ptr, ptr %i.cz, align 8, !tbaa !548, !noalias !978 ; 3 uses
  %.not.i.i38.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i38.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i40.i, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i39.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i39.i: ; preds = %.body.i36.i
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !446, !noalias !978
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !978
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dy) #26, !noalias !978, !inline_history !1018
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i40.i

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i40.i: ; preds = %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i39.i, %.body.i36.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 320) #29, !noalias !978, !inline_history !981
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i

_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i: ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !996, !noalias !978 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !997, !noalias !978
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !998, !noalias !978
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ef
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i

bb.u:                                             ; preds = %bb.h
  invoke void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.43) #30
          to label %bb.v unwind label %bb.w, !noalias !978, !inline_history !981

bb.v:                                             ; preds = %bb.u
  unreachable

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i
  %.sink247 = phi ptr [ %i.cw, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ], [ %i.bj, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ], [ %i.w, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ] ; 3 uses
  %.sink = phi ptr [ %i.ei, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ], [ %i.cv, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ], [ %i.bi, %_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsEC2ERKNS_18RunEndEncodedArrayES5_OSt10unique_ptrINS0_15ValueComparatorESt14default_deleteIS7_EE.exit.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sink247, i64 304
  store ptr %.sink, ptr %i.ej, align 8, !tbaa !237, !noalias !978
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink247, i64 312
  store i64 0, ptr %i.ek, align 8, !tbaa !408, !noalias !978
  store ptr null, ptr %6, align 8, !tbaa !58, !alias.scope !1019
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.w:                                             ; preds = %bb.i, %bb.m, %bb.q, %bb.u
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i46.i = icmp eq i64 %.val.i.i.i.i.i.i65, 0
  br i1 %.not.i46.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i47.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i47.i: ; preds = %bb.w
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !446, !noalias !978
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !978
  call void %i.eo(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #26, !noalias !978, !inline_history !1022
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.f, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i
  %.sroa.0.2 = phi ptr [ %.sink247, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i ], [ null, %bb.f ]
  %.val.i.i = load ptr, ptr %4, align 8, !tbaa !58, !noalias !978 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val1.i.i = load ptr, ptr %i.ep, align 8, !noalias !978 ; 3 uses
  %i.eq = icmp ne ptr %.val.i.i, null
  %.not.i.i.i.i.i = icmp eq ptr %.val1.i.i, null
  %or.cond.i.i.i = select i1 %i.eq, i1 true, i1 %.not.i.i.i.i.i, !prof !615
  br i1 %or.cond.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit.i.i, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i, !prof !615

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.er = load ptr, ptr %.val1.i.i, align 8, !tbaa !446
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.val1.i.i) #26, !inline_history !1023
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !58, !noalias !978
  br label %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.eu = phi ptr [ %.val.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i49.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i49.i, label %.noexc51, label %bb.x, !prof !61

bb.x:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.noexc51, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #26, !inline_history !981
  br label %.noexc51

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit48.i: ; preds = %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i40.i, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i31.i, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i.i, %bb.w, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i47.i, %bb.g
  %.pn24.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.el, %bb.w ], [ %i.el, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i47.i ], [ %.pn.i37.i, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i40.i ], [ %.pn.i28.i, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i31.i ], [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit.i.i ]
  call fastcc void @_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26, !inline_history !981
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn24.i

.noexc51:                                         ; preds = %bb.y, %bb.x, %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !978
  br label %_ZN5arrow6StatusD2Ev.exit

bb.z:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA15_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(15) @.str.44)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.aa:                                            ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.4)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %.noexc49, %.noexc48, %.noexc47, %.noexc46, %.noexc45, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %.noexc36, %.noexc35, %.noexc34, %.noexc33, %.noexc32, %.noexc31, %.noexc30, %.noexc29, %.noexc28, %.noexc27, %.noexc26, %.noexc25, %.noexc24, %.noexc23, %.noexc22, %.noexc21, %.noexc20, %.noexc19, %.noexc18, %.noexc17, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc10
  %.sink252 = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15DenseUnionArrayEEE, i64 16), %.noexc49 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_16SparseUnionArrayEEE, i64 16), %.noexc48 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_11StructArrayEEE, i64 16), %.noexc47 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_18FixedSizeListArrayEEE, i64 16), %.noexc46 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_8MapArrayEEE, i64 16), %.noexc45 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_14LargeListArrayEEE, i64 16), %.noexc42 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_9ListArrayEEE, i64 16), %.noexc41 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15Decimal256ArrayEEE, i64 16), %.noexc40 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15Decimal128ArrayEEE, i64 16), %.noexc39 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_14Decimal64ArrayEEE, i64 16), %.noexc38 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_14Decimal32ArrayEEE, i64 16), %.noexc37 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_20DayTimeIntervalArrayEEE, i64 16), %.noexc36 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_17MonthIntervalTypeEEEEE, i64 16), %.noexc35 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_25MonthDayNanoIntervalArrayEEE, i64 16), %.noexc34 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10Time64TypeEEEEE, i64 16), %.noexc33 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10Time32TypeEEEEE, i64 16), %.noexc32 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_13TimestampTypeEEEEE, i64 16), %.noexc31 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10Date64TypeEEEEE, i64 16), %.noexc30 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10Date32TypeEEEEE, i64 16), %.noexc29 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_12DurationTypeEEEEE, i64 16), %.noexc28 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_20FixedSizeBinaryArrayEEE, i64 16), %.noexc27 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_16LargeBinaryArrayEEE, i64 16), %.noexc26 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_16LargeStringArrayEEE, i64 16), %.noexc25 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15BinaryViewArrayEEE, i64 16), %.noexc24 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_11BinaryArrayEEE, i64 16), %.noexc23 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15StringViewArrayEEE, i64 16), %.noexc22 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_11StringArrayEEE, i64 16), %.noexc21 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10DoubleTypeEEEEE, i64 16), %.noexc20 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_9FloatTypeEEEEE, i64 16), %.noexc19 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_13HalfFloatTypeEEEEE, i64 16), %.noexc18 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10UInt64TypeEEEEE, i64 16), %.noexc17 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_9Int64TypeEEEEE, i64 16), %.noexc16 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10UInt32TypeEEEEE, i64 16), %.noexc15 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_9Int32TypeEEEEE, i64 16), %.noexc14 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_10UInt16TypeEEEEE, i64 16), %.noexc13 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_9Int16TypeEEEEE, i64 16), %.noexc12 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_9UInt8TypeEEEEE, i64 16), %.noexc11 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12NumericArrayINS_8Int8TypeEEEEE, i64 16), %.noexc10 ], [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_12BooleanArrayEEE, i64 16), %bb.a ]
  %i.ey = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr %.sink252, ptr %i.ey, align 8, !tbaa !446, !noalias !87
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %2, ptr %i.ez, align 8, !tbaa !237, !noalias !87
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %3, ptr %i.fa, align 8, !tbaa !237, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread238

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.aa, %bb.z, %bb.e, %bb.d, %bb.c, %bb.b, %.noexc51
  %.sroa.0.1.ph = phi ptr [ null, %bb.aa ], [ %.sroa.0.2, %.noexc51 ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.z ] ; 4 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %5, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = icmp eq ptr %.pr, null
  br i1 %i.fb, label %.thread238, label %bb.ab, !prof !1024

bb.ab:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call fastcc void @_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.fc = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %.not.i54 = icmp eq ptr %i.fc, null
  br i1 %.not.i54, label %bb.ae, label %bb.ac, !prof !61

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.ae

.thread238:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.0.1237 = phi ptr [ %i.ey, %_ZN5arrow6StatusD2Ev.exit.thread ], [ %.sroa.0.1.ph, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = ptrtoint ptr %.sroa.0.1237 to i64
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !548
  br label %_ZN5arrow12_GLOBAL__N_122ValueComparatorFactoryD2Ev.exit62

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not.i.i60 = icmp eq ptr %.sroa.0.1.ph, null
  br i1 %.not.i.i60, label %_ZN5arrow12_GLOBAL__N_122ValueComparatorFactoryD2Ev.exit62, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i61

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i61: ; preds = %bb.ae
  %i.fi = load ptr, ptr %.sroa.0.1.ph, align 8, !tbaa !446
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.0.1.ph) #26, !inline_history !1025
  br label %_ZN5arrow12_GLOBAL__N_122ValueComparatorFactoryD2Ev.exit62

_ZN5arrow12_GLOBAL__N_122ValueComparatorFactoryD2Ev.exit62: ; preds = %.thread238, %bb.ae, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = icmp ne ptr %.val, null
  %.not.i.i.i = icmp eq ptr %.val1, null
  %or.cond.i = select i1 %i.b, i1 true, i1 %.not.i.i.i, !prof !615
  br i1 %or.cond.i, label %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i, !prof !615

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %.val1, align 8, !tbaa !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.val1) #26, !inline_history !1026
  %.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i
  %i.f = phi ptr [ %.val, %bb.a ], [ %.pre, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !75, !range !86, !noundef !87
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEE7DestroyEv.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow6ResultISt10unique_ptrINS_12_GLOBAL__N_115ValueComparatorESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !376

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !70
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA10_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(10) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1027
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1027
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !noalias !1027, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %2) #26, !noalias !1027
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1027 ; 0 uses

end_hunk_7
begin_hunk_8_@_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15DenseUnionArrayEE6EqualsEll:bb.a
bb.h:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !429
  %i.an = add nsw i64 %i.am, %2                   ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  %i.ar = trunc i64 %i.an to i8
  %i.as = and i8 %i.ar, 7
  %i.at = lshr i8 %i.aq, %i.as
  %i.au = trunc i8 %i.at to i1
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.i:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !225
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !33
  switch i32 %i.ax, label %bb.m [
    i32 27, label %bb.j
    i32 28, label %bb.k
    i32 38, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.az = xor i1 %i.ay, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bb = xor i1 %i.ba, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.l:                                             ; preds = %bb.i
  %i.bc = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bd = xor i1 %i.bc, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.m:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !410
  %i.bj = icmp ne i64 %i.bf, %i.bi
  br label %_ZNK5arrow5Array7IsValidEl.exit15

_ZNK5arrow5Array7IsValidEl.exit15:                ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i14 = phi i1 [ %i.au, %bb.h ], [ %i.az, %bb.j ], [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bj, %bb.m ] ; 2 uses
  %or.cond = and i1 %.0.i, %.0.i14
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1233, !nonnull !87, !align !546
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !1236, !nonnull !87, !align !546
  %i.bm = add nsw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.bn, align 8, !alias.scope !1237
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1174, !alias.scope !1237
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !1176, !alias.scope !1237
  %i.bp = call noundef zeroext i1 @_ZNK5arrow5Array11RangeEqualsElllRKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %1, i64 noundef %i.bm, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bq = xor i1 %.0.i, %.0.i14
  %i.br = xor i1 %i.bq, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1240
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1240
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !noalias !1240, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %2) #26, !noalias !1240
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1240 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1240
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1240
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN5arrow11UnreachableEPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIsEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.an, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.ao, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.aj, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]  ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !1248
  %i.j = getelementptr inbounds [2 x i8], ptr %.val, i64 %.030
  %i.k = load i16, ptr %i.j, align 2, !tbaa !634
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1249, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val42 = load ptr, ptr %i.g, align 8, !tbaa !1250
  %i.q = getelementptr inbounds [2 x i8], ptr %.val42, i64 %.028
  %i.r = load i16, ptr %i.q, align 2, !tbaa !634
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1003, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val43, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val43, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sext i16 %i.r to i64
  %i.ac = sub nsw i64 %i.ab, %i.w
  %i.ad = sext i16 %i.k to i64
  %i.ae = sub nsw i64 %i.ad, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ae)
  %i.af = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ac)
  %i.ag = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = icmp sle i64 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nsw i64 %.030, %i.ai
  %i.ak = icmp sle i64 %i.ag, %i.af
  %i.al = zext i1 %i.ak to i64
  %i.am = add nsw i64 %.028, %i.al
  %i.an = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.ao = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.ap = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.an, %2
  %.not40 = icmp slt i64 %i.ao, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond41, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ap, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !996    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1243 ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !1251
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1246
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i2), !inline_history !1252
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !1245

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1253
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, %bb.b
  ret void
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIiEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIiED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIiE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.an, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.ao, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.aj, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]  ; 2 uses
  %.val42 = load ptr, ptr %i.e, align 8, !tbaa !1254
  %i.j = getelementptr inbounds [4 x i8], ptr %.val42, i64 %.030
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1255, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.g, align 8, !tbaa !1256
  %i.q = getelementptr inbounds [4 x i8], ptr %.val43, i64 %.028
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1010, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sext i32 %i.r to i64
  %i.ac = sub nsw i64 %i.ab, %i.w
  %i.ad = sext i32 %i.k to i64
  %i.ae = sub nsw i64 %i.ad, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ae)
  %i.af = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ac)
  %i.ag = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = icmp sle i64 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nsw i64 %.030, %i.ai
  %i.ak = icmp sle i64 %i.ag, %i.af
  %i.al = zext i1 %i.ak to i64
  %i.am = add nsw i64 %.028, %i.al
  %i.an = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.ao = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.ap = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.an, %2
  %.not40 = icmp slt i64 %i.ao, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond41, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ap, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl32ERNS1_19PhysicalIndexFinderIiEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIlEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIlED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIlE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.al, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.am, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.ah, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.ak, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.an, %bb.d ]  ; 2 uses
  %.val42 = load ptr, ptr %i.e, align 8, !tbaa !1257
  %i.j = getelementptr inbounds [8 x i8], ptr %.val42, i64 %.030
  %i.k = load i64, ptr %i.j, align 8, !tbaa !408
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1258, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.g, align 8, !tbaa !1259
  %i.q = getelementptr inbounds [8 x i8], ptr %.val43, i64 %.028
  %i.r = load i64, ptr %i.q, align 8, !tbaa !408
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1016, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i64 %i.r, %i.w
  %i.ac = sub nsw i64 %i.k, %i.p
  %.sroa.speculated56 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.ac)
  %i.ad = sub nsw i64 %.sroa.speculated56, %.034  ; 3 uses
  %.sroa.speculated52 = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.ab)
  %i.ae = sub nsw i64 %.sroa.speculated52, %.032  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ad) ; 3 uses
  %i.af = icmp sle i64 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i64
  %i.ah = add nsw i64 %.030, %i.ag
  %i.ai = icmp sle i64 %i.ae, %i.ad
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nsw i64 %.028, %i.aj
  %i.al = add nsw i64 %.sroa.speculated, %.034    ; 2 uses
  %i.am = add nsw i64 %.sroa.speculated, %.032    ; 2 uses
  %i.an = add nsw i64 %.sroa.speculated, %.026    ; 2 uses
  %.not39 = icmp slt i64 %i.al, %2
  %.not40 = icmp slt i64 %i.am, %4
  %or.cond41 = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond41, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ], [ %.026, %bb.c ]
  ret i64 %.0
}

declare noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl64ERNS1_19PhysicalIndexFinderIlEEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeIPKbEEvSt13_Bit_iteratorT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %3, %4
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %4 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !544  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !542    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !408
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !408
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !408
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.516.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.59.021.i.i.i.i.i119 = phi i32 [ %.sroa.59.1.i.i.i.i.i129, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.07.020.i.i.i.i.i120 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %i.fp = zext nneg i32 %.sroa.516.023.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.021.i.i.i.i.i119 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.022.i.i.i.i.i, align 8, !tbaa !408
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !408
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !408
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.020.i.i.i.i.i120, align 8, !tbaa !408
  %i.ga = add i32 %.sroa.516.023.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.023.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i124 = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i125 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i124
  %spec.select19.i.i.i.i.i126 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.021.i.i.i.i.i119, 1
  %i.gd = icmp eq i32 %.sroa.59.021.i.i.i.i.i119, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i120, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 2 uses
  %.sroa.59.1.i.i.i.i.i129 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i118, -1
  %i.gf = icmp sgt i64 %.024.i.i.i.i.i118, 1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1263

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.07.0.lcssa.i.i.i.i.i114 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.59.0.lcssa.i.i.i.i.i115 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i129, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gg = load ptr, ptr %0, align 8, !tbaa !542   ; 2 uses
  %.not.i130 = icmp eq ptr %i.gg, null
  br i1 %.not.i130, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !544 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #29
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !544
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5138.0..sroa_idx139, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i114, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i115.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i115, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i115.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.788") align 8, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.303") align 8, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !443
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !445
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !1274
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !1274
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !74

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !75, !range !86, !noundef !87
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRlSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1275 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !443
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !443
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !445
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !1278
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !1278
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  resume { ptr, i32 } %i.w

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.a, ptr %0, align 8, !tbaa !378
  store ptr %i.d, ptr %1, align 8, !tbaa !952
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow12NumericArrayINS0_9Int64TypeEEEJRlSt10unique_ptrINS0_6BufferESt14default_deleteIS6_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12NumericArrayINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueElE4typeERKSt10shared_ptrINS_6BufferEESC_ll(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !443
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !445
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !446
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !970
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !970
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !378  ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.t, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !443
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !445
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !446
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !970
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !970
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i5 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i7 = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, !prof !376

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.o:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aj
}

end_hunk_9
