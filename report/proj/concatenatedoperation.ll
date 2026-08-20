inline.NumInlined: 1478
inline.NumDeleted: 503
begin_hunk_0_@_ZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEb:bb.a
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.ia, align 8, !tbaa !49
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !51
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !11
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25, !inline_history !54
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !11
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506

bb.df:                                            ; preds = %bb.dd
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i503 = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i503, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i504

bb.dh:                                            ; preds = %bb.df
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i504

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i504: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i505 = phi i32 [ %i.id, %bb.dg ], [ %i.in, %bb.dh ]
  %i.io = icmp eq i32 %.0.i.i.i.i505, 1
  br i1 %i.io, label %bb.di, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506, !prof !21

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i504
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506: ; preds = %bb.dc, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i504, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !22 ; 8 uses
  %.not.i.i507 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i507, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.ir, align 8, !tbaa !49
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !51
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #25, !inline_history !54
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !11
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511

bb.dl:                                            ; preds = %bb.dj
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i508 = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i508, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i509

bb.dn:                                            ; preds = %bb.dl
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i509

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i509: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i510 = phi i32 [ %i.iu, %bb.dm ], [ %i.je, %bb.dn ]
  %i.jf = icmp eq i32 %.0.i.i.i.i510, 1
  br i1 %i.jf, label %bb.do, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511, !prof !21

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i509
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit506, %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i509, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %.pre1747 = load ptr, ptr %i.e, align 8, !tbaa !16
  %.pre1749 = load ptr, ptr %2, align 8, !tbaa !19
  br label %.critedge

bb.dp:                                            ; preds = %bb.db, %bb.da
  %.pn365 = phi { ptr, i32 } [ %i.hx, %bb.db ], [ %i.hw, %bb.da ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.cz
  %.pn365.pn = phi { ptr, i32 } [ %.pn365, %bb.dp ], [ %i.hv, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ajn

.critedge:                                        ; preds = %bb.bo, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511, %bb.cp
  %i.jg = phi ptr [ %.pre1750, %bb.bo ], [ %.pre1749, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511 ], [ %.pre1746, %bb.cp ] ; 2 uses
  %i.jh = phi ptr [ %.pre1748, %bb.bo ], [ %.pre1747, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit511 ], [ %.pre1745, %bb.cp ]
  %.not1648 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not1648, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 21 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 23 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 7 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 7 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %55, i64 23
  %i.md = getelementptr inbounds nuw i8, ptr %68, i64 17
  br label %bb.dr

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1102
  %i.me = icmp eq ptr %i.ckk, %i.ckj
  br i1 %i.me, label %._crit_edge.thread, label %bb.agy

bb.dr:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1102
  %i.mf = phi ptr [ %i.jg, %.lr.ph ], [ %i.ckk, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1102 ]
  %.02731643 = phi i64 [ 0, %.lr.ph ], [ %i.cki, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1102 ] ; 14 uses
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %.02731643 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !42
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.mh)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.mi = load ptr, ptr %i.mg, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %i.mi)
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.mj = load ptr, ptr %i.mg, align 8, !tbaa !42 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %.thread1173, label %bb.du

.thread1173:                                      ; preds = %bb.ds
  %i.ml = icmp eq i64 %.02731643, 0
  %.pre1754 = load ptr, ptr %17, align 16, !tbaa !45
  %.pre1755 = load ptr, ptr %18, align 16
  br label %bb.aao

bb.dt:                                            ; preds = %bb.dr
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.agx

bb.du:                                            ; preds = %bb.ds
  %i.mn = call ptr @__dynamic_cast(ptr nonnull %i.mj, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation10ConversionE, i64 -1) #25 ; 8 uses
  %i.mo = icmp ne ptr %i.mn, null                 ; 2 uses
  %i.mp = icmp eq i64 %.02731643, 0               ; 5 uses
  %or.cond = and i1 %i.mp, %i.mo
  %or.cond.not = xor i1 %or.cond, true
  %i.mq = load ptr, ptr %17, align 16             ; 2 uses
  %i.mr = icmp ne ptr %i.mq, null                 ; 2 uses
  %or.cond1249 = select i1 %or.cond.not, i1 true, i1 %i.mr
  %i.ms = load ptr, ptr %18, align 16             ; 2 uses
  %i.mt = icmp ne ptr %i.ms, null                 ; 2 uses
  %or.cond1251 = select i1 %or.cond1249, i1 true, i1 %i.mt
  br i1 %or.cond1251, label %bb.jv, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mu = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mw = call ptr @__dynamic_cast(ptr nonnull readonly %i.mu, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs10DerivedCRSE, i64 -1) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.mw, null
  br i1 %.not.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !11
  %i.my = icmp eq ptr %i.mx, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %i.my, label %bb.dy, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit"

bb.dy:                                            ; preds = %bb.dx
  %i.mz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj3crs11CompoundCRS25componentReferenceSystemsEv(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.mu) #29
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !87
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !45 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.nd = call ptr @__dynamic_cast(ptr nonnull %i.nb, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs10DerivedCRSE, i64 -1) #25 ; 2 uses
  %.not16.i = icmp eq ptr %i.nd, null
  br i1 %.not16.i, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit", label %bb.ea

bb.ea:                                            ; preds = %bb.dw, %bb.dz
  %.1.i.ph = phi ptr [ %i.nd, %bb.dz ], [ %i.mw, %bb.dw ] ; 3 uses
  %i.ne = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.nf = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = icmp ugt i64 %i.ni, 16
  br i1 %i.nj, label %bb.eb, label %.critedge442.thread

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %i.nl)
          to label %bb.ec unwind label %bb.gf

bb.ec:                                            ; preds = %bb.eb
  %i.nm = load ptr, ptr %19, align 8, !tbaa !45
  store ptr %i.nm, ptr %18, align 16, !tbaa !45
  %i.nn = load ptr, ptr %i.jj, align 8, !tbaa !22 ; 5 uses
  %i.no = load ptr, ptr %i.ji, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i512 = icmp eq ptr %i.nn, %i.no
  br i1 %.not.i.i.i512, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.not7.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 3 uses
  %i.nq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i513 = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i.i.i513, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nr = load i32, ptr %i.np, align 4, !tbaa !27
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.np, align 4, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.nt = atomicrmw volatile add ptr %i.np, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.eg, %bb.ef, %bb.ed
  %i.nu = phi ptr [ %i.no, %bb.ed ], [ %i.no, %bb.ef ], [ %.pr.pre.i.i.i, %bb.eg ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 4 uses
  %i.nw = load atomic i64, ptr %i.nv acquire, align 8 ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 4294967297
  %i.ny = trunc i64 %i.nw to i32                  ; 2 uses
  br i1 %i.nx, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i32 0, ptr %i.nv, align 8, !tbaa !49
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  store i32 0, ptr %i.nz, align 4, !tbaa !51
  %i.oa = load ptr, ptr %i.nu, align 8, !tbaa !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #25, !inline_history !88
  %i.od = load ptr, ptr %i.nu, align 8, !tbaa !11
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #25, !inline_history !88
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.og = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i = icmp eq i8 %i.og, 0
  br i1 %.not.i9.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oh = add nsw i32 %i.ny, -1
  store i32 %i.oh, ptr %i.nv, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i514

bb.el:                                            ; preds = %bb.ej
  %i.oi = atomicrmw volatile add ptr %i.nv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i514

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i514: ; preds = %bb.el, %bb.ek
  %.0.i.i.i.i.i515 = phi i32 [ %i.ny, %bb.ek ], [ %i.oi, %bb.el ]
  %i.oj = icmp eq i32 %.0.i.i.i.i.i515, 1
  br i1 %i.oj, label %bb.em, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !21

bb.em:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i514
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.em, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i514, %bb.ei, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.nn, ptr %i.ji, align 8, !tbaa !22
  %.pr = load ptr, ptr %i.jj, align 8, !tbaa !22
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit: ; preds = %bb.ec, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ok = phi ptr [ %i.nn, %bb.ec ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 8 uses
  %.not.i.i516 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i516, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit520, label %bb.en

bb.en:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 4 uses
  %i.om = load atomic i64, ptr %i.ol acquire, align 8 ; 2 uses
  %i.on = icmp eq i64 %i.om, 4294967297
  %i.oo = trunc i64 %i.om to i32                  ; 2 uses
  br i1 %i.on, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.ol, align 8, !tbaa !49
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 0, ptr %i.op, align 4, !tbaa !51
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !11
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #25, !inline_history !54
  %i.ot = load ptr, ptr %i.ok, align 8, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit520

bb.ep:                                            ; preds = %bb.en
  %i.ow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i517 = icmp eq i8 %i.ow, 0
  br i1 %.not.i.i.i517, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ox = add nsw i32 %i.oo, -1
  store i32 %i.ox, ptr %i.ol, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEb:bb.a
  br i1 %.not.i.i594, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598, label %bb.jd

bb.jd:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit593
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 4 uses
  %i.zh = load atomic i64, ptr %i.zg acquire, align 8 ; 2 uses
  %i.zi = icmp eq i64 %i.zh, 4294967297
  %i.zj = trunc i64 %i.zh to i32                  ; 2 uses
  br i1 %i.zi, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  store i32 0, ptr %i.zg, align 8, !tbaa !49
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  store i32 0, ptr %i.zk, align 4, !tbaa !51
  %i.zl = load ptr, ptr %i.zf, align 8, !tbaa !11
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8
  call void %i.zn(ptr noundef nonnull align 8 dereferenceable(16) %i.zf) #25, !inline_history !54
  %i.zo = load ptr, ptr %i.zf, align 8, !tbaa !11
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.zf) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598

bb.jf:                                            ; preds = %bb.jd
  %i.zr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i595 = icmp eq i8 %i.zr, 0
  br i1 %.not.i.i.i595, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.zs = add nsw i32 %i.zj, -1
  store i32 %i.zs, ptr %i.zg, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i596

bb.jh:                                            ; preds = %bb.jf
  %i.zt = atomicrmw volatile add ptr %i.zg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i596

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i596: ; preds = %bb.jh, %bb.jg
  %.0.i.i.i.i597 = phi i32 [ %i.zj, %bb.jg ], [ %i.zt, %bb.jh ]
  %i.zu = icmp eq i32 %.0.i.i.i.i597, 1
  br i1 %i.zu, label %bb.ji, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598, !prof !21

bb.ji:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i596
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zf) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit593, %bb.je, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i596, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.zv = load ptr, ptr %18, align 16, !tbaa !45  ; 2 uses
  %.not1270 = icmp eq ptr %i.zv, null
  br i1 %.not1270, label %.critedge462.thread, label %bb.jj

bb.jj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit598
  %i.zw = load ptr, ptr %i.mg, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store ptr %i.zv, ptr %28, align 8, !tbaa !45
  %i.zx = load ptr, ptr %i.ji, align 8, !tbaa !22 ; 3 uses
  store ptr %i.zx, ptr %i.js, align 8, !tbaa !22
  %.not.i.i.i.i599 = icmp eq ptr %i.zx, null
  br i1 %.not.i.i.i.i599, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8 ; 3 uses
  %i.zz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i600 = icmp eq i8 %i.zz, 0
  br i1 %.not.i.i.i.i.i600, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aaa = load i32, ptr %i.zy, align 4, !tbaa !27
  %i.aab = add nsw i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.zy, align 4, !tbaa !27
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601

bb.jm:                                            ; preds = %bb.jk
  %i.aac = atomicrmw volatile add ptr %i.zy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601: ; preds = %bb.jj, %bb.jl, %bb.jm
  %i.aad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.zw)
          to label %.noexc602 unwind label %bb.ju

.noexc602:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation20setCRSsUpdateInverseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.zw, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %i.aad)
          to label %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit604 unwind label %bb.ju

_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit604: ; preds = %.noexc602
  %i.aae = load ptr, ptr %i.js, align 8, !tbaa !22 ; 8 uses
  %.not.i.i.i605 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i605, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit609, label %bb.jn

bb.jn:                                            ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit604
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8 ; 4 uses
  %i.aag = load atomic i64, ptr %i.aaf acquire, align 8 ; 2 uses
  %i.aah = icmp eq i64 %i.aag, 4294967297
  %i.aai = trunc i64 %i.aag to i32                ; 2 uses
  br i1 %i.aah, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store i32 0, ptr %i.aaf, align 8, !tbaa !49
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  store i32 0, ptr %i.aaj, align 4, !tbaa !51
  %i.aak = load ptr, ptr %i.aae, align 8, !tbaa !11
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #25, !inline_history !62
  %i.aan = load ptr, ptr %i.aae, align 8, !tbaa !11
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #25, !inline_history !62
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit609

bb.jp:                                            ; preds = %bb.jn
  %i.aaq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i606 = icmp eq i8 %i.aaq, 0
  br i1 %.not.i.i.i.i606, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aar = add nsw i32 %i.aai, -1
  store i32 %i.aar, ptr %i.aaf, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i607

bb.jr:                                            ; preds = %bb.jp
  %i.aas = atomicrmw volatile add ptr %i.aaf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i607

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i607: ; preds = %bb.jr, %bb.jq
  %.0.i.i.i.i.i608 = phi i32 [ %i.aai, %bb.jq ], [ %i.aas, %bb.jr ]
  %i.aat = icmp eq i32 %.0.i.i.i.i.i608, 1
  br i1 %i.aat, label %bb.js, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit609, !prof !21

bb.js:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i607
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit609

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit609: ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit604, %bb.jo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i607, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.critedge462.thread

bb.jt:                                            ; preds = %bb.ir
  %i.aau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.agw

bb.ju:                                            ; preds = %.noexc602, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit601
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.agw

bb.jv:                                            ; preds = %bb.du
  br i1 %i.mo, label %bb.jw, label %bb.aao

bb.jw:                                            ; preds = %bb.jv
  %i.aaw = add nuw i64 %.02731643, 1              ; 9 uses
  %i.aax = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.aay = load ptr, ptr %2, align 8, !tbaa !19   ; 4 uses
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = ashr exact i64 %i.abb, 4               ; 2 uses
  %i.abd = icmp ne i64 %i.aaw, %i.abc
  %or.cond1253 = select i1 %i.abd, i1 true, i1 %i.mr
  %or.cond1255 = select i1 %or.cond1253, i1 true, i1 %i.mt
  br i1 %or.cond1255, label %bb.ql, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.abe = load ptr, ptr %1, align 8, !tbaa !45   ; 4 uses
  %i.abf = icmp eq ptr %i.abe, null
  br i1 %i.abf, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit614", label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.abg = call ptr @__dynamic_cast(ptr nonnull readonly %i.abe, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs10DerivedCRSE, i64 -1) #25 ; 2 uses
  %.not.i610 = icmp eq ptr %i.abg, null
  br i1 %.not.i610, label %bb.jz, label %bb.kc

bb.jz:                                            ; preds = %bb.jy
  %i.abh = load ptr, ptr %i.abe, align 8, !tbaa !11
  %i.abi = icmp eq ptr %i.abh, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %i.abi, label %bb.ka, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit614"

bb.ka:                                            ; preds = %bb.jz
  %i.abj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj3crs11CompoundCRS25componentReferenceSystemsEv(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.abe) #29
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !87
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !45 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit614", label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.abn = call ptr @__dynamic_cast(ptr nonnull %i.abl, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs10DerivedCRSE, i64 -1) #25 ; 2 uses
  %.not16.i613 = icmp eq ptr %i.abn, null
  br i1 %.not16.i613, label %"_ZZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEbENK3$_2clEPKS8_.exit614", label %bb.kc

bb.kc:                                            ; preds = %bb.jy, %bb.kb
  %.1.i611.ph = phi ptr [ %i.abn, %bb.kb ], [ %i.abg, %bb.jy ] ; 3 uses
  br i1 %i.mp, label %.critedge446.thread, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %91 = add nsw i64 %.02731643, -1                ; 6 uses
  %92 = getelementptr inbounds nuw [16 x i8], ptr %i.aay, i64 %91
  %i.abo = load ptr, ptr %92, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %29, ptr noundef nonnull align 8 dereferenceable(72) %i.abo)
          to label %bb.ke unwind label %bb.mu

bb.ke:                                            ; preds = %bb.kd
  %i.abp = load ptr, ptr %29, align 8, !tbaa !45
  store ptr %i.abp, ptr %17, align 16, !tbaa !45
  %i.abq = load ptr, ptr %i.ju, align 8, !tbaa !22 ; 5 uses
  %i.abr = load ptr, ptr %i.jt, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i615 = icmp eq ptr %i.abq, %i.abr
  br i1 %.not.i.i.i615, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit625, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %.not7.i.i.i616 = icmp eq ptr %i.abq, null
  br i1 %.not7.i.i.i616, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 3 uses
  %i.abt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i617 = icmp eq i8 %i.abt, 0
  br i1 %.not.i.i.i.i617, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.abu = load i32, ptr %i.abs, align 4, !tbaa !27
  %i.abv = add nsw i32 %i.abu, 1
  store i32 %i.abv, ptr %i.abs, align 4, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618

bb.ki:                                            ; preds = %bb.kg
  %i.abw = atomicrmw volatile add ptr %i.abs, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i624 = load ptr, ptr %i.jt, align 8, !tbaa !22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618: ; preds = %bb.ki, %bb.kh, %bb.kf
  %i.abx = phi ptr [ %i.abr, %bb.kf ], [ %i.abr, %bb.kh ], [ %.pr.pre.i.i.i624, %bb.ki ] ; 8 uses
  %.not8.i.i.i619 = icmp eq ptr %i.abx, null
  br i1 %.not8.i.i.i619, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623, label %bb.kj

bb.kj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 8 ; 4 uses
  %i.abz = load atomic i64, ptr %i.aby acquire, align 8 ; 2 uses
  %i.aca = icmp eq i64 %i.abz, 4294967297
  %i.acb = trunc i64 %i.abz to i32                ; 2 uses
  br i1 %i.aca, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  store i32 0, ptr %i.aby, align 8, !tbaa !49
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  store i32 0, ptr %i.acc, align 4, !tbaa !51
  %i.acd = load ptr, ptr %i.abx, align 8, !tbaa !11
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acf = load ptr, ptr %i.ace, align 8
  call void %i.acf(ptr noundef nonnull align 8 dereferenceable(16) %i.abx) #25, !inline_history !88
  %i.acg = load ptr, ptr %i.abx, align 8, !tbaa !11
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(16) %i.abx) #25, !inline_history !88
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623

bb.kl:                                            ; preds = %bb.kj
  %i.acj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i620 = icmp eq i8 %i.acj, 0
  br i1 %.not.i9.i.i.i620, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ack = add nsw i32 %i.acb, -1
  store i32 %i.ack, ptr %i.aby, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i621

bb.kn:                                            ; preds = %bb.kl
  %i.acl = atomicrmw volatile add ptr %i.aby, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i621

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i621: ; preds = %bb.kn, %bb.km
  %.0.i.i.i.i.i622 = phi i32 [ %i.acb, %bb.km ], [ %i.acl, %bb.kn ]
  %i.acm = icmp eq i32 %.0.i.i.i.i.i622, 1
  br i1 %i.acm, label %bb.ko, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623, !prof !21

bb.ko:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i621
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abx) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623: ; preds = %bb.ko, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i621, %bb.kk, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i618
  store ptr %i.abq, ptr %i.jt, align 8, !tbaa !22
  %.pr1177 = load ptr, ptr %i.ju, align 8, !tbaa !22
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit625

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit625: ; preds = %bb.ke, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623
  %i.acn = phi ptr [ %i.abq, %bb.ke ], [ %.pr1177, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i623 ] ; 8 uses
  %.not.i.i626 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i626, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit625
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8 ; 4 uses
  %i.acp = load atomic i64, ptr %i.aco acquire, align 8 ; 2 uses
  %i.acq = icmp eq i64 %i.acp, 4294967297
  %i.acr = trunc i64 %i.acp to i32                ; 2 uses
  br i1 %i.acq, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 0, ptr %i.aco, align 8, !tbaa !49
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  store i32 0, ptr %i.acs, align 4, !tbaa !51
  %i.act = load ptr, ptr %i.acn, align 8, !tbaa !11
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8
  call void %i.acv(ptr noundef nonnull align 8 dereferenceable(16) %i.acn) #25, !inline_history !54
  %i.acw = load ptr, ptr %i.acn, align 8, !tbaa !11
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 24
  %i.acy = load ptr, ptr %i.acx, align 8
  call void %i.acy(ptr noundef nonnull align 8 dereferenceable(16) %i.acn) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630

bb.kr:                                            ; preds = %bb.kp
  %i.acz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i627 = icmp eq i8 %i.acz, 0
  br i1 %.not.i.i.i627, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.ada = add nsw i32 %i.acr, -1
  store i32 %i.ada, ptr %i.aco, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i628

bb.kt:                                            ; preds = %bb.kr
  %i.adb = atomicrmw volatile add ptr %i.aco, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i628

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i628: ; preds = %bb.kt, %bb.ks
  %.0.i.i.i.i629 = phi i32 [ %i.acr, %bb.ks ], [ %i.adb, %bb.kt ]
  %i.adc = icmp eq i32 %.0.i.i.i.i629, 1
  br i1 %i.adc, label %bb.ku, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630, !prof !21

bb.ku:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i628
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acn) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit625, %bb.kq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i628, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.add = load ptr, ptr %17, align 16, !tbaa !45 ; 2 uses
  %.not1271 = icmp eq ptr %i.add, null
  br i1 %.not1271, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630..critedge446.thread.thread_crit_edge, label %bb.kv

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630..critedge446.thread.thread_crit_edge: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630
  %.pre1763 = load ptr, ptr %i.jt, align 8, !tbaa !22
  br label %.critedge446.thread.thread

bb.kv:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630
  %i.ade = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs10DerivedCRS7baseCRSEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i611.ph) #29
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !89
  %i.adg = invoke fastcc noundef zeroext i1 @_ZN5osgeo4proj9operationL26areCRSMoreOrLessEquivalentEPKNS0_3crs3CRSES5_(ptr noundef %i.add, ptr noundef %i.adf)
          to label %bb.kw unwind label %bb.mt

bb.kw:                                            ; preds = %bb.kv
  br i1 %i.adg, label %.critedge446.thread, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.adh = load ptr, ptr %2, align 8, !tbaa !19
  %93 = getelementptr inbounds nuw [16 x i8], ptr %i.adh, i64 %91
  %i.adi = load ptr, ptr %93, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %30, ptr noundef nonnull align 8 dereferenceable(72) %i.adi)
          to label %bb.ky unwind label %bb.mv

bb.ky:                                            ; preds = %bb.kx
  %i.adj = load ptr, ptr %30, align 8, !tbaa !45
  %.not1272 = icmp eq ptr %i.adj, null
  br i1 %.not1272, label %.critedge444, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.adk = load ptr, ptr %2, align 8, !tbaa !19
  %94 = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %91
  %i.adl = load ptr, ptr %94, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %31, ptr noundef nonnull align 8 dereferenceable(72) %i.adl)
          to label %bb.la unwind label %bb.mw

bb.la:                                            ; preds = %bb.kz
  %i.adm = load ptr, ptr %31, align 8, !tbaa !45
  %i.adn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs10DerivedCRS7baseCRSEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i611.ph) #29
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !89
  %i.adp = invoke fastcc noundef zeroext i1 @_ZN5osgeo4proj9operationL26areCRSMoreOrLessEquivalentEPKNS0_3crs3CRSES5_(ptr noundef %i.adm, ptr noundef %i.ado)
          to label %bb.lb unwind label %bb.mx

bb.lb:                                            ; preds = %bb.la
  %i.adq = load ptr, ptr %i.jv, align 8, !tbaa !22 ; 8 uses
  %.not.i.i631 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i631, label %.critedge444.thread, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 4 uses
  %i.ads = load atomic i64, ptr %i.adr acquire, align 8 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, 4294967297
  %i.adu = trunc i64 %i.ads to i32                ; 2 uses
  br i1 %i.adt, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  store i32 0, ptr %i.adr, align 8, !tbaa !49
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  store i32 0, ptr %i.adv, align 4, !tbaa !51
  %i.adw = load ptr, ptr %i.adq, align 8, !tbaa !11
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #25, !inline_history !54
  %i.adz = load ptr, ptr %i.adq, align 8, !tbaa !11
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #25, !inline_history !54
  br label %.critedge444.thread

bb.le:                                            ; preds = %bb.lc
  %i.aec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i632 = icmp eq i8 %i.aec, 0
  br i1 %.not.i.i.i632, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.aed = add nsw i32 %i.adu, -1
  store i32 %i.aed, ptr %i.adr, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i633

bb.lg:                                            ; preds = %bb.le
  %i.aee = atomicrmw volatile add ptr %i.adr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i633

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i633: ; preds = %bb.lg, %bb.lf
  %.0.i.i.i.i634 = phi i32 [ %i.adu, %bb.lf ], [ %i.aee, %bb.lg ]
  %i.aef = icmp eq i32 %.0.i.i.i.i634, 1
  br i1 %i.aef, label %bb.lh, label %.critedge444.thread, !prof !21

bb.lh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i633
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #25
  br label %.critedge444.thread

.critedge444.thread:                              ; preds = %bb.lh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i633, %bb.ld, %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %.critedge444

.critedge444:                                     ; preds = %bb.ky, %.critedge444.thread
  %i.aeg = phi i1 [ %i.adp, %.critedge444.thread ], [ false, %bb.ky ]
  %i.aeh = load ptr, ptr %i.jw, align 8, !tbaa !22 ; 8 uses
  %.not.i.i636 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i636, label %.critedge446, label %bb.li

bb.li:                                            ; preds = %.critedge444
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8 ; 4 uses
  %i.aej = load atomic i64, ptr %i.aei acquire, align 8 ; 2 uses
  %i.aek = icmp eq i64 %i.aej, 4294967297
  %i.ael = trunc i64 %i.aej to i32                ; 2 uses
  br i1 %i.aek, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  store i32 0, ptr %i.aei, align 8, !tbaa !49
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeh, i64 12
  store i32 0, ptr %i.aem, align 4, !tbaa !51
  %i.aen = load ptr, ptr %i.aeh, align 8, !tbaa !11
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8
  call void %i.aep(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh) #25, !inline_history !54
  %i.aeq = load ptr, ptr %i.aeh, align 8, !tbaa !11
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 24
  %i.aes = load ptr, ptr %i.aer, align 8
  call void %i.aes(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh) #25, !inline_history !54
  br label %.critedge446

bb.lk:                                            ; preds = %bb.li
  %i.aet = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i637 = icmp eq i8 %i.aet, 0
  br i1 %.not.i.i.i637, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aeu = add nsw i32 %i.ael, -1
  store i32 %i.aeu, ptr %i.aei, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i638

bb.lm:                                            ; preds = %bb.lk
  %i.aev = atomicrmw volatile add ptr %i.aei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i638

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i638: ; preds = %bb.lm, %bb.ll
  %.0.i.i.i.i639 = phi i32 [ %i.ael, %bb.ll ], [ %i.aev, %bb.lm ]
  %i.aew = icmp eq i32 %.0.i.i.i.i639, 1
  br i1 %i.aew, label %bb.ln, label %.critedge446, !prof !21

bb.ln:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i638
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh) #25
  br label %.critedge446

.critedge446:                                     ; preds = %bb.ln, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i638, %bb.lj, %.critedge444
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br i1 %i.aeg, label %bb.lo, label %.critedge446.thread

bb.lo:                                            ; preds = %.critedge446
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.aex = load ptr, ptr %2, align 8, !tbaa !19
  %95 = getelementptr inbounds nuw [16 x i8], ptr %i.aex, i64 %91
  %i.aey = load ptr, ptr %95, align 8, !tbaa !42
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %32, ptr noundef nonnull align 8 dereferenceable(72) %i.aey)
          to label %bb.lp unwind label %bb.na

bb.lp:                                            ; preds = %bb.lo
  %i.aez = load ptr, ptr %32, align 8, !tbaa !45
  store ptr %i.aez, ptr %17, align 16, !tbaa !45
  %i.afa = load ptr, ptr %i.jx, align 8, !tbaa !22 ; 5 uses
  %i.afb = load ptr, ptr %i.jt, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i641 = icmp eq ptr %i.afa, %i.afb
  br i1 %.not.i.i.i641, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit651, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %.not7.i.i.i642 = icmp eq ptr %i.afa, null
  br i1 %.not7.i.i.i642, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 8 ; 3 uses
  %i.afd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i643 = icmp eq i8 %i.afd, 0
  br i1 %.not.i.i.i.i643, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.afe = load i32, ptr %i.afc, align 4, !tbaa !27
  %i.aff = add nsw i32 %i.afe, 1
  store i32 %i.aff, ptr %i.afc, align 4, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644

bb.lt:                                            ; preds = %bb.lr
  %i.afg = atomicrmw volatile add ptr %i.afc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i650 = load ptr, ptr %i.jt, align 8, !tbaa !22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644: ; preds = %bb.lt, %bb.ls, %bb.lq
  %i.afh = phi ptr [ %i.afb, %bb.lq ], [ %i.afb, %bb.ls ], [ %.pr.pre.i.i.i650, %bb.lt ] ; 8 uses
  %.not8.i.i.i645 = icmp eq ptr %i.afh, null
  br i1 %.not8.i.i.i645, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649, label %bb.lu

bb.lu:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8 ; 4 uses
  %i.afj = load atomic i64, ptr %i.afi acquire, align 8 ; 2 uses
  %i.afk = icmp eq i64 %i.afj, 4294967297
  %i.afl = trunc i64 %i.afj to i32                ; 2 uses
  br i1 %i.afk, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  store i32 0, ptr %i.afi, align 8, !tbaa !49
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  store i32 0, ptr %i.afm, align 4, !tbaa !51
  %i.afn = load ptr, ptr %i.afh, align 8, !tbaa !11
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8
  call void %i.afp(ptr noundef nonnull align 8 dereferenceable(16) %i.afh) #25, !inline_history !88
  %i.afq = load ptr, ptr %i.afh, align 8, !tbaa !11
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 24
  %i.afs = load ptr, ptr %i.afr, align 8
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(16) %i.afh) #25, !inline_history !88
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649

bb.lw:                                            ; preds = %bb.lu
  %i.aft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i646 = icmp eq i8 %i.aft, 0
  br i1 %.not.i9.i.i.i646, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.afu = add nsw i32 %i.afl, -1
  store i32 %i.afu, ptr %i.afi, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i647

bb.ly:                                            ; preds = %bb.lw
  %i.afv = atomicrmw volatile add ptr %i.afi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i647

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i647: ; preds = %bb.ly, %bb.lx
  %.0.i.i.i.i.i648 = phi i32 [ %i.afl, %bb.lx ], [ %i.afv, %bb.ly ]
  %i.afw = icmp eq i32 %.0.i.i.i.i.i648, 1
  br i1 %i.afw, label %bb.lz, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649, !prof !21

bb.lz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i647
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afh) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649: ; preds = %bb.lz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i647, %bb.lv, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i644
  store ptr %i.afa, ptr %i.jt, align 8, !tbaa !22
  %.pr1186 = load ptr, ptr %i.jx, align 8, !tbaa !22
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit651

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit651: ; preds = %bb.lp, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649
  %i.afx = phi ptr [ %i.afa, %bb.lp ], [ %.pr1186, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i649 ] ; 8 uses
  %.not.i.i652 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i652, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656, label %bb.ma

bb.ma:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit651
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 8 ; 4 uses
  %i.afz = load atomic i64, ptr %i.afy acquire, align 8 ; 2 uses
  %i.aga = icmp eq i64 %i.afz, 4294967297
  %i.agb = trunc i64 %i.afz to i32                ; 2 uses
  br i1 %i.aga, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  store i32 0, ptr %i.afy, align 8, !tbaa !49
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afx, i64 12
  store i32 0, ptr %i.agc, align 4, !tbaa !51
  %i.agd = load ptr, ptr %i.afx, align 8, !tbaa !11
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  %i.agf = load ptr, ptr %i.age, align 8
  call void %i.agf(ptr noundef nonnull align 8 dereferenceable(16) %i.afx) #25, !inline_history !54
  %i.agg = load ptr, ptr %i.afx, align 8, !tbaa !11
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  %i.agi = load ptr, ptr %i.agh, align 8
  call void %i.agi(ptr noundef nonnull align 8 dereferenceable(16) %i.afx) #25, !inline_history !54
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656

bb.mc:                                            ; preds = %bb.ma
  %i.agj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i653 = icmp eq i8 %i.agj, 0
  br i1 %.not.i.i.i653, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.agk = add nsw i32 %i.agb, -1
  store i32 %i.agk, ptr %i.afy, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i654

bb.me:                                            ; preds = %bb.mc
  %i.agl = atomicrmw volatile add ptr %i.afy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i654

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i654: ; preds = %bb.me, %bb.md
  %.0.i.i.i.i655 = phi i32 [ %i.agb, %bb.md ], [ %i.agl, %bb.me ]
  %i.agm = icmp eq i32 %.0.i.i.i.i655, 1
  br i1 %i.agm, label %bb.mf, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656, !prof !21

bb.mf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i654
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afx) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit651, %bb.mb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i654, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.agn = load ptr, ptr %2, align 8, !tbaa !19
  %96 = getelementptr inbounds nuw [16 x i8], ptr %i.agn, i64 %91
  %i.ago = load ptr, ptr %96, align 8, !tbaa !42  ; 2 uses
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !11
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 32
  %i.agr = load ptr, ptr %i.agq, align 8
  invoke void %i.agr(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %33, ptr noundef nonnull align 8 dereferenceable(72) %i.ago)
          to label %bb.mg unwind label %bb.nb

bb.mg:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656
  %i.ags = load ptr, ptr %2, align 8, !tbaa !19
  %97 = getelementptr inbounds nuw [16 x i8], ptr %i.ags, i64 %91 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.agu = load <2 x ptr>, ptr %33, align 16, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %i.agv = load ptr, ptr %i.agt, align 8, !tbaa !22 ; 8 uses
  store <2 x ptr> %i.agu, ptr %97, align 8, !tbaa !25
  %.not.i.i.i.i.i657 = icmp eq ptr %i.agv, null
  br i1 %.not.i.i.i.i.i657, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 4 uses
  %i.agx = load atomic i64, ptr %i.agw acquire, align 8 ; 2 uses
  %i.agy = icmp eq i64 %i.agx, 4294967297
  %i.agz = trunc i64 %i.agx to i32                ; 2 uses
  br i1 %i.agy, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  store i32 0, ptr %i.agw, align 8, !tbaa !49
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agv, i64 12
  store i32 0, ptr %i.aha, align 4, !tbaa !51
  %i.ahb = load ptr, ptr %i.agv, align 8, !tbaa !11
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8
  call void %i.ahd(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #25, !inline_history !99
  %i.ahe = load ptr, ptr %i.agv, align 8, !tbaa !11
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24
  %i.ahg = load ptr, ptr %i.ahf, align 8
  call void %i.ahg(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #25, !inline_history !99
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661

bb.mj:                                            ; preds = %bb.mh
  %i.ahh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i658 = icmp eq i8 %i.ahh, 0
  br i1 %.not.i.i.i.i.i.i658, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.ahi = add nsw i32 %i.agz, -1
  store i32 %i.ahi, ptr %i.agw, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i659

bb.ml:                                            ; preds = %bb.mj
  %i.ahj = atomicrmw volatile add ptr %i.agw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i659

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i659: ; preds = %bb.ml, %bb.mk
  %.0.i.i.i.i.i.i.i660 = phi i32 [ %i.agz, %bb.mk ], [ %i.ahj, %bb.ml ]
  %i.ahk = icmp eq i32 %.0.i.i.i.i.i.i.i660, 1
  br i1 %i.ahk, label %bb.mm, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661, !prof !21

bb.mm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i659
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661: ; preds = %bb.mg, %bb.mi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i659, %bb.mm
  %i.ahl = load ptr, ptr %i.jy, align 8, !tbaa !22 ; 8 uses
  %.not.i.i.i662 = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i.i662, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666, label %bb.mn

bb.mn:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8 ; 4 uses
  %i.ahn = load atomic i64, ptr %i.ahm acquire, align 8 ; 2 uses
  %i.aho = icmp eq i64 %i.ahn, 4294967297
  %i.ahp = trunc i64 %i.ahn to i32                ; 2 uses
  br i1 %i.aho, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  store i32 0, ptr %i.ahm, align 8, !tbaa !49
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahl, i64 12
  store i32 0, ptr %i.ahq, align 4, !tbaa !51
  %i.ahr = load ptr, ptr %i.ahl, align 8, !tbaa !11
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  %i.aht = load ptr, ptr %i.ahs, align 8
  call void %i.aht(ptr noundef nonnull align 8 dereferenceable(16) %i.ahl) #25, !inline_history !100
  %i.ahu = load ptr, ptr %i.ahl, align 8, !tbaa !11
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ahw = load ptr, ptr %i.ahv, align 8
  call void %i.ahw(ptr noundef nonnull align 8 dereferenceable(16) %i.ahl) #25, !inline_history !100
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666

bb.mp:                                            ; preds = %bb.mn
  %i.ahx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i663 = icmp eq i8 %i.ahx, 0
  br i1 %.not.i.i.i.i663, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.ahy = add nsw i32 %i.ahp, -1
  store i32 %i.ahy, ptr %i.ahm, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i664

bb.mr:                                            ; preds = %bb.mp
  %i.ahz = atomicrmw volatile add ptr %i.ahm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i664

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i664: ; preds = %bb.mr, %bb.mq
  %.0.i.i.i.i.i665 = phi i32 [ %i.ahp, %bb.mq ], [ %i.ahz, %bb.mr ]
  %i.aia = icmp eq i32 %.0.i.i.i.i.i665, 1
  br i1 %i.aia, label %bb.ms, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666, !prof !21

bb.ms:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i664
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahl) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEaSEOS8_.exit661, %bb.mo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i664, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %.critedge446.thread

bb.mt:                                            ; preds = %bb.kv
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %bb.agw

bb.mu:                                            ; preds = %bb.kd
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.agw

bb.mv:                                            ; preds = %bb.kx
  %i.aid = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.mw:                                            ; preds = %bb.kz
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.mx:                                            ; preds = %bb.la
  %i.aif = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #25
  br label %bb.my

bb.my:                                            ; preds = %bb.mw, %bb.mx
  %.pn387 = phi { ptr, i32 } [ %i.aif, %bb.mx ], [ %i.aie, %bb.mw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #25
  br label %bb.mz

bb.mz:                                            ; preds = %bb.mv, %bb.my
  %.pn387.pn = phi { ptr, i32 } [ %.pn387, %bb.my ], [ %i.aid, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.agw

bb.na:                                            ; preds = %bb.lo
  %i.aig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %bb.agw

bb.nb:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit656
  %i.aih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.agw

.critedge446.thread:                              ; preds = %bb.kw, %.critedge446, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit666, %bb.kc
  %.pr1234 = load ptr, ptr %17, align 16, !tbaa !45 ; 2 uses
  %.not1273 = icmp eq ptr %.pr1234, null
  %.pre1764 = load ptr, ptr %i.jt, align 8, !tbaa !22 ; 2 uses
  br i1 %.not1273, label %.critedge446.thread.thread, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_9SingleCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit677

.critedge446.thread.thread:                       ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630..critedge446.thread.thread_crit_edge, %.critedge446.thread
  %i.aii = phi ptr [ %.pre1763, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit630..critedge446.thread.thread_crit_edge ], [ %.pre1764, %.critedge446.thread ] ; 4 uses
  %i.aij = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs10DerivedCRS7baseCRSEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i611.ph) #29 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !89 ; 2 uses
  store ptr %i.aik, ptr %17, align 16, !tbaa !45
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !22 ; 5 uses
  %.not.i.i.i667 = icmp eq ptr %i.aim, %i.aii
  br i1 %.not.i.i.i667, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_9SingleCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit677, label %bb.nc

bb.nc:                                            ; preds = %.critedge446.thread.thread
  %.not7.i.i.i668 = icmp eq ptr %i.aim, null
  br i1 %.not7.i.i.i668, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i670, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 3 uses
  %i.aio = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i669 = icmp eq i8 %i.aio, 0
  br i1 %.not.i.i.i.i669, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.aip = load i32, ptr %i.ain, align 4, !tbaa !27
  %i.aiq = add nsw i32 %i.aip, 1
  store i32 %i.aiq, ptr %i.ain, align 4, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i670

bb.nf:                                            ; preds = %bb.nd
  %i.air = atomicrmw volatile add ptr %i.ain, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i676 = load ptr, ptr %i.jt, align 8, !tbaa !22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i670

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i670: ; preds = %bb.nf, %bb.ne, %bb.nc
  %i.ais = phi ptr [ %i.aii, %bb.nc ], [ %i.aii, %bb.ne ], [ %.pr.pre.i.i.i676, %bb.nf ] ; 8 uses
  %.not8.i.i.i671 = icmp eq ptr %i.ais, null
  br i1 %.not8.i.i.i671, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i675, label %bb.ng

bb.ng:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i670
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8 ; 4 uses
  %i.aiu = load atomic i64, ptr %i.ait acquire, align 8 ; 2 uses
  %i.aiv = icmp eq i64 %i.aiu, 4294967297
  %i.aiw = trunc i64 %i.aiu to i32                ; 2 uses
  br i1 %i.aiv, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
end_hunk_1
