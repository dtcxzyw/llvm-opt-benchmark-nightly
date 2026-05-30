inline.NumInlined: 2891
inline.NumDeleted: 1224
begin_hunk_0_@_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.lp = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc157 unwind label %bb.ek, !inline_history !144 ; 11 uses

.noexc157:                                        ; preds = %._crit_edge296
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 1, ptr %i.lq, align 8, !tbaa !62, !noalias !350
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store i32 1, ptr %i.lr, align 4, !tbaa !64, !noalias !350
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lp, align 8, !tbaa !33, !noalias !350
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !350
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow11SimpleTableE, i64 16), ptr %i.ls, align 8, !tbaa !33, !noalias !350
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store ptr %i.lj, ptr %i.lu, align 8, !tbaa !77, !noalias !350
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  store ptr %i.li, ptr %i.lv, align 8, !tbaa !81, !noalias !350
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  store ptr %i.lh, ptr %i.lw, align 8, !tbaa !116, !noalias !350
  store ptr %i.lk, ptr %i.lt, align 8, !tbaa !178, !noalias !350
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store ptr %i.lm, ptr %i.lx, align 8, !tbaa !52, !noalias !350
  %i.ly = icmp eq ptr %i.li, %i.lj
  br i1 %i.ly, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227, label %bb.cz

bb.cz:                                            ; preds = %.noexc157
  %i.lz = load ptr, ptr %i.lj, align 8, !tbaa !82, !noalias !350
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !85, !noalias !350
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit227

bb.da:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit153
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.db:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cy
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dc:                                            ; preds = %.lr.ph295, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph295 ], [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %.2, align 8, !tbaa !333  ; 2 uses
  %i.mf = load ptr, ptr %.2.sroa.phi, align 8, !tbaa !333 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  %.pre318 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  br i1 %i.mg, label %._crit_edge292, label %.lr.ph291

._crit_edge292:                                   ; preds = %._crit_edge288, %bb.dc
  %i.mh = load ptr, ptr %16, align 8, !tbaa !35
  %i.mi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i32 noundef %.pre318)
          to label %bb.dv unwind label %bb.ej

.lr.ph291:                                        ; preds = %bb.dc, %._crit_edge288
  %.sroa.0257.0289 = phi ptr [ %i.ni, %._crit_edge288 ], [ %i.me, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.mj = load ptr, ptr %.sroa.0257.0289, align 8, !tbaa !106 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !33
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  invoke void %i.mm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i32 noundef %.pre318)
          to label %bb.dd unwind label %bb.dk

bb.dd:                                            ; preds = %.lr.ph291
  %i.mn = load ptr, ptr %19, align 8, !tbaa !82   ; 2 uses
  %i.mo = load ptr, ptr %i.le, align 8, !tbaa !52 ; 8 uses
  %.not.i.i158 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i158, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 4 uses
  %i.mq = load atomic i64, ptr %i.mp acquire, align 8 ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 4294967297
  %i.ms = trunc i64 %i.mq to i32                  ; 2 uses
  br i1 %i.mr, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.mp, align 8, !tbaa !62
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  store i32 0, ptr %i.mt, align 4, !tbaa !64
  %i.mu = load ptr, ptr %i.mo, align 8, !tbaa !33
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27, !inline_history !250
  %i.mx = load ptr, ptr %i.mo, align 8, !tbaa !33
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dg:                                            ; preds = %bb.de
  %i.na = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i159 = icmp eq i8 %i.na, 0
  br i1 %.not.i.i.i159, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nb = add nsw i32 %i.ms, -1
  store i32 %i.nb, ptr %i.mp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

bb.di:                                            ; preds = %bb.dg
  %i.nc = atomicrmw volatile add ptr %i.mp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i161 = phi i32 [ %i.ms, %bb.dh ], [ %i.nc, %bb.di ]
  %i.nd = icmp eq i32 %.0.i.i.i.i161, 1
  br i1 %i.nd, label %bb.dj, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mo) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dd, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.ne = load ptr, ptr %i.mn, align 8, !tbaa !212 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !212 ; 2 uses
  %i.nh = icmp eq ptr %i.ne, %i.ng
  br i1 %i.nh, label %._crit_edge288, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre308 = load ptr, ptr %i.lf, align 8, !tbaa !172
  br label %.lr.ph287

._crit_edge288:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0257.0289, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mf
  br i1 %i.nj, label %._crit_edge292, label %.lr.ph291

bb.dk:                                            ; preds = %.lr.ph291
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.body168

.lr.ph287:                                        ; preds = %.lr.ph287.preheader, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit
  %i.nl = phi ptr [ %i.pb, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %.pre308, %.lr.ph287.preheader ] ; 7 uses
  %.sroa.0253.0286 = phi ptr [ %i.pc, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %i.ne, %.lr.ph287.preheader ] ; 5 uses
  %i.nm = load ptr, ptr %i.lg, align 8, !tbaa !171
  %.not.i162 = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i162, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph287
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !52 ; 2 uses
  %i.np = load <2 x ptr>, ptr %.sroa.0253.0286, align 8, !tbaa !51
  store <2 x ptr> %i.np, ptr %i.nl, align 8, !tbaa !51
  %.not.i.i.i.i.i163 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i163, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 3 uses
  %i.nr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i164 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i.i.i164, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !3
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nq, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.do:                                            ; preds = %bb.dm
  %i.nu = atomicrmw volatile add ptr %i.nq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i165 = load ptr, ptr %i.lf, align 8, !tbaa !172
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.do, %bb.dn, %bb.dl
  %i.nv = phi ptr [ %i.nl, %bb.dl ], [ %i.nl, %bb.dn ], [ %.pre.i165, %bb.do ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  store ptr %i.nw, ptr %i.lf, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

bb.dp:                                            ; preds = %.lr.ph287
  %i.nx = load ptr, ptr %18, align 8, !tbaa !170  ; 5 uses
  %i.ny = ptrtoint ptr %i.nl to i64
  %i.nz = ptrtoint ptr %i.nx to i64               ; 2 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775792
  br i1 %i.ob, label %bb.dq, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc247.a unwind label %.loopexit.split-lp

.noexc247.a:                                      ; preds = %bb.dq
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dp
  %i.oc = ashr exact i64 %i.oa, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 576460752303423487)
  %i.og = select i1 %i.oe, i64 576460752303423487, i64 %i.of ; 3 uses
  %.not.i.i238 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i238)
  %i.oh = shl nuw nsw i64 %i.og, 4
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #25
          to label %.noexc248 unwind label %.loopexit ; 5 uses

.noexc248:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oa
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = load <2 x ptr>, ptr %.sroa.0253.0286, align 8, !tbaa !51
  store <2 x ptr> %i.om, ptr %i.oj, align 8, !tbaa !51
  %.not.i.i.i.i.i239 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i.i239, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241, label %bb.dr

bb.dr:                                            ; preds = %.noexc248
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 3 uses
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i240 = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i.i.i240, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.op = load i32, ptr %i.on, align 4, !tbaa !3
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.on, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241

bb.dt:                                            ; preds = %bb.dr
  %i.or = atomicrmw volatile add ptr %i.on, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241: ; preds = %bb.dt, %bb.ds, %.noexc248
  %.not10.i.i.i.i242 = icmp eq ptr %i.nx, %i.nl
  br i1 %.not10.i.i.i.i242, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i243

.lr.ph.i.i.i.i243:                                ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241, %.lr.ph.i.i.i.i243
  %.012.i.i.i.i244 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i243 ], [ %i.oi, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ] ; 2 uses
  %.0911.i.i.i.i245 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i243 ], [ %i.nx, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i245, i64 8
  %i.ot = load <2 x ptr>, ptr %.0911.i.i.i.i245, align 8, !tbaa !51, !alias.scope !358, !noalias !355
  store ptr null, ptr %i.os, align 8, !tbaa !52, !alias.scope !358, !noalias !355
  store <2 x ptr> %i.ot, ptr %.012.i.i.i.i244, align 8, !tbaa !51, !alias.scope !355, !noalias !358
  store ptr null, ptr %.0911.i.i.i.i245, align 8, !tbaa !213, !alias.scope !358, !noalias !355
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i245, i64 16 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i244, i64 16 ; 2 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.ou, %i.nl
  br i1 %.not.i.i.i.i246, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i243, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i243, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241
  %.0.lcssa.i.i.i.i = phi ptr [ %i.oi, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i241 ], [ %i.ov, %.lr.ph.i.i.i.i243 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.nx, null
  br i1 %.not.i23.i, label %.noexc166, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ox = load ptr, ptr %i.lg, align 8, !tbaa !171
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.oy, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oz) #26
  br label %.noexc166

.noexc166:                                        ; preds = %bb.du, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.oi, ptr %18, align 8, !tbaa !170
  store ptr %i.ow, ptr %i.lf, align 8, !tbaa !172
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.og
  store ptr %i.pa, ptr %i.lg, align 8, !tbaa !171
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc166, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.pb = phi ptr [ %i.ow, %.noexc166 ], [ %i.nw, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0253.0286, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ng
  br i1 %i.pd, label %._crit_edge288, label %.lr.ph287

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.loopexit.split-lp:                               ; preds = %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body168

bb.dv:                                            ; preds = %._crit_edge292
  %i.pe = load ptr, ptr %i.mi, align 8, !tbaa !53
  %i.pf = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc167 unwind label %bb.ej ; 6 uses

.noexc167:                                        ; preds = %bb.dv
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 56
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 1, ptr %i.ph, align 8, !tbaa !62, !noalias !361
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 1, ptr %i.pi, align 4, !tbaa !64, !noalias !361
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.pf, align 8, !tbaa !33, !noalias !361
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.pj, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.pg)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !361

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc167
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 104) #26, !noalias !361
  br label %.body168

_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit: ; preds = %.noexc167
  %i.pl = load ptr, ptr %17, align 8, !tbaa !77
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv ; 2 uses
  store ptr %i.pj, ptr %i.pm, align 8, !tbaa !185
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !52 ; 8 uses
  store ptr %i.pf, ptr %i.pn, align 8, !tbaa !52
  %.not.i.i.i.i170 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i170, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, label %bb.dw

bb.dw:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 4 uses
  %i.pq = load atomic i64, ptr %i.pp acquire, align 8 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 4294967297
  %i.ps = trunc i64 %i.pq to i32                  ; 2 uses
  br i1 %i.pr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.pp, align 8, !tbaa !62
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store i32 0, ptr %i.pt, align 4, !tbaa !64
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !33
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27, !inline_history !127
  %i.px = load ptr, ptr %i.po, align 8, !tbaa !33
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

bb.dy:                                            ; preds = %bb.dw
  %i.qa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i171 = icmp eq i8 %i.qa, 0
  br i1 %.not.i.i.i.i.i171, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qb = add nsw i32 %i.ps, -1
  store i32 %i.qb, ptr %i.pp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

bb.ea:                                            ; preds = %bb.dy
  %i.qc = atomicrmw volatile add ptr %i.pp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i.i.i173 = phi i32 [ %i.ps, %bb.dz ], [ %i.qc, %bb.ea ]
  %i.qd = icmp eq i32 %.0.i.i.i.i.i.i173, 1
  br i1 %i.qd, label %bb.eb, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, !prof !66

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172, %bb.dx, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.qe = load ptr, ptr %18, align 8, !tbaa !170  ; 3 uses
  %i.qf = load ptr, ptr %i.lf, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i179 = icmp eq ptr %i.qe, %i.qf
  br i1 %.not4.i.i.i179, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i180

.lr.ph.i.i.i180:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i181 = phi ptr [ %i.qx, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.qe, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit178 ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.05.i.i.i181, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i182 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i.i.i.i182, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i180
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 4 uses
  %i.qj = load atomic i64, ptr %i.qi acquire, align 8 ; 2 uses
  %i.qk = icmp eq i64 %i.qj, 4294967297
  %i.ql = trunc i64 %i.qj to i32                  ; 2 uses
  br i1 %i.qk, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.qi, align 8, !tbaa !62
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  store i32 0, ptr %i.qm, align 4, !tbaa !64
  %i.qn = load ptr, ptr %i.qh, align 8, !tbaa !33
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #27, !inline_history !187
  %i.qq = load ptr, ptr %i.qh, align 8, !tbaa !33
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.qt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i183 = icmp eq i8 %i.qt, 0
  br i1 %.not.i.i.i.i.i.i.i.i183, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
end_hunk_0
begin_hunk_1_@_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.av, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !64
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27, !inline_history !460
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27, !inline_history !460
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i9.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ay, %bb.l ], [ %i.bi, %bb.m ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.an, ptr %i.am, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split

bb.o:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.p:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !191
  %.off.i = add i32 %i.bo, -13
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.ce

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.q
  %.053 = phi i32 [ 0, %bb.q ], [ %.154.lcssa, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 4 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !82    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !172
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !170
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %i.bx = trunc i64 %i.bw to i32
  %.not = icmp slt i32 %.053, %i.bx               ; 2 uses
  br i1 %.not, label %bb.s, label %bb.bp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !172
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp slt i32 %.053, %i.ce
  br i1 %i.cf, label %.lr.ph.preheader, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cg = sext i32 %.053 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %i.ch = phi ptr [ null, %.lr.ph.preheader ], [ %i.ep, %bb.ag ] ; 8 uses
  %indvars.iv = phi i64 [ %i.cg, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %i.ci = phi ptr [ %i.bz, %.lr.ph.preheader ], [ %i.et, %bb.ag ]
  %.052211 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cx, %bb.ag ]
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !213 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !461
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !464 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %bb.t, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !482 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cv = sub nsw i32 %i.ct, %i.cu
  %i.cw = sext i32 %i.cv to i64
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit: ; preds = %.lr.ph, %bb.t
  %.0.i = phi i64 [ %i.cw, %bb.t ], [ 0, %.lr.ph ]
  %i.cx = add nsw i64 %.0.i, %.052211             ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 2147483645
  br i1 %i.cy, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit, label %bb.v

bb.u:                                             ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.v:                                             ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !171
  %.not.i = icmp eq ptr %i.ch, %i.da
  br i1 %.not.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !213
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52 ; 3 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.di = atomicrmw volatile add ptr %i.de, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !172
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.dj = phi ptr [ %i.ch, %bb.w ], [ %i.ch, %bb.y ], [ %.pre.i, %bb.z ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  store ptr %i.dk, ptr %i.p, align 8, !tbaa !172
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v
  %i.dl = load ptr, ptr %6, align 8, !tbaa !170   ; 5 uses
  %i.dm = ptrtoint ptr %i.ch to i64
  %i.dn = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 3 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775792
  br i1 %i.dp, label %bb.ab, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc183.a unwind label %.loopexit.split-lp

.noexc183.a:                                      ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.dq = ashr exact i64 %i.do, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 576460752303423487)
  %i.du = select i1 %i.ds, i64 576460752303423487, i64 %i.dt ; 3 uses
  %.not.i.i178 = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i178)
  %i.dv = shl nuw nsw i64 %i.du, 4
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #25
          to label %.noexc184 unwind label %.loopexit ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52 ; 2 uses
  %i.ea = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !51
  store <2 x ptr> %i.ea, ptr %i.dx, align 8, !tbaa !51
  %.not.i.i.i.i.i179 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i179, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181, label %bb.ac

bb.ac:                                            ; preds = %.noexc184
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i180 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i180, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181

bb.ae:                                            ; preds = %bb.ac
  %i.ef = atomicrmw volatile add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181: ; preds = %bb.ae, %bb.ad, %.noexc184
  %.not10.i.i.i.i = icmp eq ptr %i.dl, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i ], [ %i.dw, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.eh = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !489, !noalias !486
  store ptr null, ptr %i.eg, align 8, !tbaa !52, !alias.scope !489, !noalias !486
  store <2 x ptr> %i.eh, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !486, !noalias !489
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !213, !alias.scope !489, !noalias !486
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i182 = icmp eq ptr %i.ei, %i.ch
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dw, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181 ], [ %i.ej, %.lr.ph.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.dl, null
  br i1 %.not.i23.i, label %.noexc75, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !171
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.en) #26
  br label %.noexc75

.noexc75:                                         ; preds = %bb.af, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.dw, ptr %6, align 8, !tbaa !170
  store ptr %i.ek, ptr %i.p, align 8, !tbaa !172
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.du
  store ptr %i.eo, ptr %i.q, align 8, !tbaa !171
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %.noexc75
  %i.ep = phi ptr [ %i.dk, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ], [ %i.ek, %.noexc75 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.eq = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !172
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %sext = shl i64 %i.ew, 28
  %i.ex = ashr i64 %sext, 32
  %i.ey = icmp slt i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit, !llvm.loop !491

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit: ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit, %bb.ag
  %.154.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.ag ], [ %indvars.iv, %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit ]
  %.154.lcssa.ph = trunc i64 %.154.lcssa.ph.in to i32
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit, %bb.s
  %.154.lcssa = phi i32 [ %.053, %bb.s ], [ %.154.lcssa.ph, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit ]
  %i.ez = load ptr, ptr %i.r, align 8, !tbaa !172 ; 3 uses
  %i.fa = load ptr, ptr %i.s, align 8, !tbaa !171
  %.not.i76 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i76, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !172
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.fc, ptr %i.r, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ez)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit unwind label %bb.u

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.137") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.fd = load ptr, ptr %7, align 8, !tbaa !118
  %i.fe = icmp eq ptr %i.fd, null                 ; 2 uses
  br i1 %i.fe, label %bb.am, label %bb.ak, !prof !121

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.am:                                            ; preds = %bb.aj
  %i.fg = load <2 x ptr>, ptr %i.t, align 8, !tbaa !51, !noalias !492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.fh = load ptr, ptr %i.r, align 8, !tbaa !212 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -16
  %i.fj = getelementptr inbounds i8, ptr %i.fh, i64 -8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.fg, ptr %i.fi, align 8, !tbaa !51
  %.not.i.i.i.i79 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i79, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.fl, align 8, !tbaa !62
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27, !inline_history !179
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27, !inline_history !179
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i80 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i80, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.aq ], [ %i.fy, %bb.ar ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.as, %bb.ak
  %i.ga = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.at, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !121

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gc = load ptr, ptr %i.u, align 8, !tbaa !52  ; 8 uses
  %.not.i.i.i.i.i82 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i82, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.gd, align 8, !tbaa !62
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
end_hunk_1
begin_hunk_2_@_ZN5arrow16TableBatchReaderD2Ev:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !inline_history !534
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27, !inline_history !534
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #27
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  tail call void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16TableBatchReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader8ReadNextEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.164") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(30) @.str.37)
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !130, !range !140, !noundef !141
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !118, !alias.scope !581
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK5arrow17RecordBatchReader11device_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5TableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow5TableE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !152
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !152
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5TableD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.r, align 8, !tbaa !52
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !53
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !587, !noalias !584
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !587, !noalias !584
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !584, !noalias !587
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !53, !alias.scope !587, !noalias !584
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !592, !noalias !589
  store ptr null, ptr %i.y, align 8, !tbaa !52, !alias.scope !592, !noalias !589
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !589, !noalias !592
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !53, !alias.scope !592, !noalias !589
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !594
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !594
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !595
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !595
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !153  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !61
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.60") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !235  ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !66

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #26
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !153
  store i64 %.0, ptr %i.d, align 8, !tbaa !61
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !235
  store i8 0, ptr %i.c, align 1, !tbaa !61
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !61
  store i8 %i.s, ptr %i.q, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !235
  %i.u = load ptr, ptr %0, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !314    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !599, !noalias !596
  store ptr null, ptr %i.z, align 8, !tbaa !52, !alias.scope !599, !noalias !596
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !596, !noalias !599
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !599, !noalias !596
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !601

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !605, !noalias !602
  store ptr null, ptr %i.ae, align 8, !tbaa !52, !alias.scope !605, !noalias !602
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !602, !noalias !605
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !605, !noalias !602
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !601

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !318
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !314
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !317
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !310    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !610, !noalias !607
  store ptr null, ptr %i.r, align 8, !tbaa !52, !alias.scope !610, !noalias !607
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !607, !noalias !610
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !106, !alias.scope !610, !noalias !607
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !332

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.z, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !51, !alias.scope !615, !noalias !612
  store ptr null, ptr %i.w, align 8, !tbaa !52, !alias.scope !615, !noalias !612
  store <2 x ptr> %i.x, ptr %.012.i.i.i17, align 8, !tbaa !51, !alias.scope !612, !noalias !615
  store ptr null, ptr %.0911.i.i.i18, align 8, !tbaa !106, !alias.scope !615, !noalias !612
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !332

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !326
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !310
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !307
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !620, !noalias !617
  store ptr null, ptr %i.z, align 8, !tbaa !52, !alias.scope !620, !noalias !617
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !617, !noalias !620
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !213, !alias.scope !620, !noalias !617
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !625, !noalias !622
  store ptr null, ptr %i.ae, align 8, !tbaa !52, !alias.scope !625, !noalias !622
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !622, !noalias !625
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !213, !alias.scope !625, !noalias !622
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !171
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !170
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !172
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !171
  ret void
}

declare void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !374
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !374
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !375
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.r, align 8, !tbaa !52
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !82
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !630, !noalias !627
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !630, !noalias !627
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !627, !noalias !630
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !82, !alias.scope !630, !noalias !627
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !635, !noalias !632
  store ptr null, ptr %i.y, align 8, !tbaa !52, !alias.scope !635, !noalias !632
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !632, !noalias !635
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !82, !alias.scope !635, !noalias !632
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !77
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !420
  switch i8 %i.b, label %bb.ak [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit
    i8 1, label %bb.b
    i8 2, label %bb.i
    i8 3, label %bb.p
    i8 4, label %bb.w
    i8 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !637
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !637
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27, !inline_history !638
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27, !inline_history !638
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i17 = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i17, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i18, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !64
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !639
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27, !inline_history !639
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20

bb.u:                                             ; preds = %bb.s
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i21 = phi i32 [ %i.ap, %bb.t ], [ %i.az, %bb.u ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i21, 1
  br i1 %i.ba, label %bb.v, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.w:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bd, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27, !inline_history !640
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27, !inline_history !640
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.z:                                             ; preds = %bb.x
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i24

bb.ab:                                            ; preds = %bb.z
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i24: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.bg, %bb.aa ], [ %i.bq, %bb.ab ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i25, 1
  br i1 %i.br, label %bb.ac, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i24
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.ad:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i26, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bu, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !64
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !inline_history !641
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !inline_history !641
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i28

bb.ai:                                            ; preds = %bb.ag
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i28: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i29 = phi i32 [ %i.bx, %bb.ah ], [ %i.ch, %bb.ai ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i29, 1
  br i1 %i.ci, label %bb.aj, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i28
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.ak:                                            ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i28, %bb.af, %bb.ad, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i24, %bb.y, %bb.w, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20, %bb.r, %bb.p, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16, %bb.k, %bb.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !51
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !645, !noalias !642
  store ptr null, ptr %i.z, align 8, !tbaa !52, !alias.scope !645, !noalias !642
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !642, !noalias !645
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !82, !alias.scope !645, !noalias !642
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !650, !noalias !647
  store ptr null, ptr %i.ae, align 8, !tbaa !52, !alias.scope !650, !noalias !647
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !647, !noalias !650
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !82, !alias.scope !650, !noalias !647
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !116
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !77
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !116
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZSt9__find_ifISt13_Bit_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add i64 %i.g, %i.d
  %i.i = ashr i64 %i.h, 2                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i8, ptr %4, align 1, !tbaa !282, !range !140, !noundef !141 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt13_Bit_iteratorppEv.exit58
  %.0142 = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 2 uses
  %.sroa.31.0141 = phi i32 [ %1, %.lr.ph ], [ %.sroa.31.6, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 5 uses
  %.sroa.079.0140 = phi ptr [ %0, %.lr.ph ], [ %.sroa.079.6, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 5 uses
  %i.l = zext nneg i32 %.sroa.31.0141 to i64
  %i.m = load i64, ptr %.sroa.079.0140, align 8, !tbaa !109 ; 2 uses
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = icmp eq i8 %i.k, %i.p
  br i1 %i.q, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.sroa.31.0141, 1                ; 3 uses
  %i.s = icmp eq i32 %.sroa.31.0141, 63
  br i1 %i.s, label %_ZNSt13_Bit_iteratorppEv.exit.thread, label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  %i.u = lshr i64 %i.m, %i.t
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.k, %i.w
  br i1 %i.x, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit56

_ZNSt13_Bit_iteratorppEv.exit.thread:             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 8 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !109  ; 3 uses
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.k, %i.ab
  br i1 %i.ac, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit56.thread

_ZNSt13_Bit_iteratorppEv.exit56:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit
  %i.ad = add i32 %.sroa.31.0141, 2
  %i.ae = icmp eq i32 %i.r, 63                    ; 2 uses
  %spec.select.idx = select i1 %i.ae, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 %spec.select.idx ; 4 uses
  %spec.select128 = select i1 %i.ae, i32 0, i32 %i.ad ; 5 uses
  %.pre = load i64, ptr %spec.select, align 8, !tbaa !109 ; 2 uses
  %i.af = zext nneg i32 %spec.select128 to i64
  %i.ag = lshr i64 %.pre, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.k, %i.ai
  br i1 %i.aj, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.d

_ZNSt13_Bit_iteratorppEv.exit56.thread:           ; preds = %_ZNSt13_Bit_iteratorppEv.exit.thread
  %i.ak = trunc i64 %i.z to i8
  %i.al = lshr i8 %i.ak, 1
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.k, %i.am
  br i1 %i.an, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit57

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit56
  %i.ao = add i32 %spec.select128, 1
  %i.ap = icmp eq i32 %spec.select128, 63
  br i1 %i.ap, label %_ZNSt13_Bit_iteratorppEv.exit57.thread, label %_ZNSt13_Bit_iteratorppEv.exit57

_ZNSt13_Bit_iteratorppEv.exit57:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit56.thread, %bb.d
  %i.aq = phi i32 [ %i.ao, %bb.d ], [ 2, %_ZNSt13_Bit_iteratorppEv.exit56.thread ] ; 3 uses
  %i.ar = phi i64 [ %.pre, %bb.d ], [ %i.z, %_ZNSt13_Bit_iteratorppEv.exit56.thread ]
  %.sroa.079.4165170 = phi ptr [ %spec.select, %bb.d ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit56.thread ] ; 2 uses
  %.sroa.31.4166169 = phi i32 [ %spec.select128, %bb.d ], [ 1, %_ZNSt13_Bit_iteratorppEv.exit56.thread ]
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = lshr i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.k, %i.av
  br i1 %i.aw, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.e

_ZNSt13_Bit_iteratorppEv.exit57.thread:           ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !109
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.k, %i.ba
  br i1 %i.bb, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit58

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit57
  %i.bc = add i32 %.sroa.31.4166169, 2
  %i.bd = icmp eq i32 %i.aq, 63                   ; 2 uses
  %spec.select129.idx = select i1 %i.bd, i64 8, i64 0
  %spec.select129 = getelementptr inbounds nuw i8, ptr %.sroa.079.4165170, i64 %spec.select129.idx
  %spec.select130 = select i1 %i.bd, i32 0, i32 %i.bc
  br label %_ZNSt13_Bit_iteratorppEv.exit58

_ZNSt13_Bit_iteratorppEv.exit58:                  ; preds = %bb.e, %_ZNSt13_Bit_iteratorppEv.exit57.thread
  %.sroa.079.6 = phi ptr [ %i.ax, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select129, %bb.e ] ; 3 uses
  %.sroa.31.6 = phi i32 [ 1, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select130, %bb.e ] ; 3 uses
  %i.be = add nsw i64 %.0142, -1
  %i.bf = icmp sgt i64 %.0142, 1
  br i1 %i.bf, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !652

._crit_edge.loopexit:                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit58
  %.pre147 = ptrtoint ptr %.sroa.079.6 to i64
  %.pre148 = sub i64 %i.a, %.pre147
  %.pre150 = shl nsw i64 %.pre148, 3
  %.pre152 = zext i32 %.sroa.31.6 to i64          ; 2 uses
  %.pre154 = sub nsw i64 %i.e, %.pre152
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi155 = phi i64 [ %.pre154, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %.pre-phi153 = phi i64 [ %.pre152, %._crit_edge.loopexit ], [ %i.f, %bb.a ] ; 3 uses
  %.pre-phi151 = phi i64 [ %.pre150, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.sroa.079.0.lcssa = phi ptr [ %.sroa.079.6, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %.sroa.31.0.lcssa = phi i32 [ %.sroa.31.6, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.bg = add i64 %.pre-phi155, %.pre-phi151
  switch i64 %i.bg, label %_ZNSt13_Bit_iteratorppEv.exit61 [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge
    i64 1, label %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge
  ]

._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge: ; preds = %._crit_edge
  %.pre145 = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !109
  %.pre146 = load i8, ptr %4, align 1, !tbaa !282, !range !140
  br label %_ZNSt13_Bit_iteratorppEv.exit60

._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge: ; preds = %._crit_edge
  %.pre144 = load i8, ptr %4, align 1, !tbaa !282, !range !140
  br label %_ZNSt13_Bit_iteratorppEv.exit59

bb.f:                                             ; preds = %._crit_edge
  %i.bh = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !109
  %i.bi = load i8, ptr %4, align 1, !tbaa !282, !range !140, !noundef !141 ; 2 uses
  %i.bj = lshr i64 %i.bh, %.pre-phi153
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 1
  %i.bm = icmp eq i8 %i.bi, %i.bl
  br i1 %i.bm, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = add i32 %.sroa.31.0.lcssa, 1
  %i.bo = icmp eq i32 %.sroa.31.0.lcssa, 63       ; 2 uses
  %spec.select131.idx = select i1 %i.bo, i64 8, i64 0
  %spec.select131 = getelementptr inbounds nuw i8, ptr %.sroa.079.0.lcssa, i64 %spec.select131.idx
  %spec.select132 = select i1 %i.bo, i32 0, i32 %i.bn ; 2 uses
  %.pre156 = zext nneg i32 %spec.select132 to i64
  br label %_ZNSt13_Bit_iteratorppEv.exit59

_ZNSt13_Bit_iteratorppEv.exit59:                  ; preds = %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge, %bb.g
  %.pre-phi157 = phi i64 [ %.pre-phi153, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %.pre156, %bb.g ]
  %i.bp = phi i8 [ %.pre144, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %i.bi, %bb.g ] ; 3 uses
  %.sroa.079.1 = phi ptr [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %spec.select131, %bb.g ] ; 4 uses
  %.sroa.31.1 = phi i32 [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %spec.select132, %bb.g ] ; 3 uses
  %i.bq = load i64, ptr %.sroa.079.1, align 8, !tbaa !109 ; 2 uses
  %i.br = lshr i64 %i.bq, %.pre-phi157
  %i.bs = trunc i64 %i.br to i8
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bp, %i.bt
  br i1 %i.bu, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.h

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit59
  %i.bv = icmp eq i32 %.sroa.31.1, 63
  br i1 %i.bv, label %_ZNSt13_Bit_iteratorppEv.exit60.thread, label %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge

._ZNSt13_Bit_iteratorppEv.exit60_crit_edge:       ; preds = %bb.h
  %i.bw = add i32 %.sroa.31.1, 1                  ; 2 uses
  %.pre158 = zext nneg i32 %i.bw to i64
  br label %_ZNSt13_Bit_iteratorppEv.exit60

_ZNSt13_Bit_iteratorppEv.exit60:                  ; preds = %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge
  %.pre-phi159 = phi i64 [ %.pre158, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre-phi153, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.bx = phi i8 [ %i.bp, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre146, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.by = phi i64 [ %i.bq, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre145, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %.sroa.079.2 = phi ptr [ %.sroa.079.1, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %.sroa.31.2 = phi i32 [ %i.bw, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.bz = lshr i64 %i.by, %.pre-phi159
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = and i8 %i.ca, 1
  %i.cc = icmp eq i8 %i.bx, %i.cb                 ; 2 uses
  %spec.select133 = select i1 %i.cc, ptr %.sroa.079.2, ptr %2
  %spec.select134 = select i1 %i.cc, i32 %.sroa.31.2, i32 %3
  br label %_ZNSt13_Bit_iteratorppEv.exit61

_ZNSt13_Bit_iteratorppEv.exit60.thread:           ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.079.1, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !109
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = and i8 %i.cf, 1
  %i.ch = icmp eq i8 %i.bp, %i.cg                 ; 2 uses
  %spec.select135 = select i1 %i.ch, ptr %i.cd, ptr %2
  %spec.select136 = select i1 %i.ch, i32 0, i32 %3
  br label %_ZNSt13_Bit_iteratorppEv.exit61

_ZNSt13_Bit_iteratorppEv.exit61:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit57.thread, %_ZNSt13_Bit_iteratorppEv.exit57, %_ZNSt13_Bit_iteratorppEv.exit56, %_ZNSt13_Bit_iteratorppEv.exit.thread, %_ZNSt13_Bit_iteratorppEv.exit, %bb.b, %_ZNSt13_Bit_iteratorppEv.exit56.thread, %_ZNSt13_Bit_iteratorppEv.exit60.thread, %_ZNSt13_Bit_iteratorppEv.exit60, %._crit_edge, %_ZNSt13_Bit_iteratorppEv.exit59, %bb.f
  %.sroa.020.0.in.sroa.speculated = phi ptr [ %.sroa.079.1, %_ZNSt13_Bit_iteratorppEv.exit59 ], [ %2, %._crit_edge ], [ %.sroa.079.0.lcssa, %bb.f ], [ %spec.select133, %_ZNSt13_Bit_iteratorppEv.exit60 ], [ %spec.select135, %_ZNSt13_Bit_iteratorppEv.exit60.thread ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit56.thread ], [ %.sroa.079.4165170, %_ZNSt13_Bit_iteratorppEv.exit57 ], [ %.sroa.079.0140, %_ZNSt13_Bit_iteratorppEv.exit ], [ %i.ax, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select, %_ZNSt13_Bit_iteratorppEv.exit56 ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit.thread ], [ %.sroa.079.0140, %bb.b ]
  %.sroa.9.0 = phi i32 [ %.sroa.31.1, %_ZNSt13_Bit_iteratorppEv.exit59 ], [ %3, %._crit_edge ], [ %.sroa.31.0.lcssa, %bb.f ], [ %spec.select134, %_ZNSt13_Bit_iteratorppEv.exit60 ], [ %spec.select136, %_ZNSt13_Bit_iteratorppEv.exit60.thread ], [ 1, %_ZNSt13_Bit_iteratorppEv.exit56.thread ], [ %i.aq, %_ZNSt13_Bit_iteratorppEv.exit57 ], [ %i.r, %_ZNSt13_Bit_iteratorppEv.exit ], [ 0, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select128, %_ZNSt13_Bit_iteratorppEv.exit56 ], [ 0, %_ZNSt13_Bit_iteratorppEv.exit.thread ], [ %.sroa.31.0141, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.020.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ContainFloatERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !191
  %.off.i = add i32 %i.c, -10
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.09.013, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = tail call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ContainFloatERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.k, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !656, !noalias !653
  store ptr null, ptr %i.r, align 8, !tbaa !52, !alias.scope !656, !noalias !653
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !653, !noalias !656
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !213, !alias.scope !656, !noalias !653
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.z, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !51, !alias.scope !661, !noalias !658
  store ptr null, ptr %i.w, align 8, !tbaa !52, !alias.scope !661, !noalias !658
  store <2 x ptr> %i.x, ptr %.012.i.i.i17, align 8, !tbaa !51, !alias.scope !658, !noalias !661
  store ptr null, ptr %.0911.i.i.i18, align 8, !tbaa !213, !alias.scope !661, !noalias !658
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !170
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store ptr null, ptr %i.r, align 8, !tbaa !52
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !213
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !666, !noalias !663
  store ptr null, ptr %i.t, align 8, !tbaa !52, !alias.scope !666, !noalias !663
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !663, !noalias !666
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !213, !alias.scope !666, !noalias !663
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !671, !noalias !668
  store ptr null, ptr %i.y, align 8, !tbaa !52, !alias.scope !671, !noalias !668
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !668, !noalias !671
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !213, !alias.scope !671, !noalias !668
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !360

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !171
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !170
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.43", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !118
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !66

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !153    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !61
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !153    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !61
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.m = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !61
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
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
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(30) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !673
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !673
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !676, !noalias !673, !nonnull !141, !align !445
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %2) #27, !noalias !673
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !673 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !673
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !673
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
end_hunk_2
begin_hunk_3_@_ZNK5arrow11SimpleTable7FlattenEPNS_10MemoryPoolE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.bl = load ptr, ptr %7, align 8, !tbaa !118
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  br i1 %i.bm, label %bb.ad, label %bb.w, !prof !121

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %bb.be

bb.x:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.y ], [ %i.bn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bn

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn30 = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.bp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bm

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !77, !noalias !752 ; 3 uses
  store ptr %i.br, ptr %9, align 8, !tbaa !77, !alias.scope !752
  %i.bs = load <2 x ptr>, ptr %i.f, align 8, !tbaa !80, !noalias !752
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !81, !noalias !752
  store <2 x ptr> %i.bs, ptr %i.e, align 8, !tbaa !80, !alias.scope !752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !752
  %.not169 = icmp eq ptr %i.bt, %i.br
  br i1 %.not169, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.gc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i ], [ %i.gd, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bw, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !64
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #27, !inline_history !150
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #27, !inline_history !150
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.ah ], [ %i.cj, %bb.ai ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.aj, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i, !prof !66

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.af, %.lr.ph.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.cl, %i.gc
  br i1 %.not.i.i.i44, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.ad, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.cm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %._crit_edge ], [ %i.br, %bb.ad ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.be

.lr.ph:                                           ; preds = %bb.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  %.0167 = phi i64 [ %i.gb, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.ad ] ; 3 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.0167 ; 4 uses
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !45  ; 7 uses
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52 ; 2 uses
  %i.cx = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !51
  store <2 x ptr> %i.cx, ptr %i.ct, align 8, !tbaa !51
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i45, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.ao, %bb.an, %bb.al
  %i.dd = phi ptr [ %i.ct, %bb.al ], [ %i.ct, %bb.an ], [ %.pre.i, %bb.ao ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.de, ptr %i.h, align 8, !tbaa !45
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backERKS3_.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.df = load ptr, ptr %3, align 8, !tbaa !44    ; 5 uses
  %i.dg = ptrtoint ptr %i.ct to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775792
  br i1 %i.dj, label %.invoke, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.ay, %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ap
  %i.dk = ashr exact i64 %i.di, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 576460752303423487)
  %i.do = select i1 %i.dm, i64 576460752303423487, i64 %i.dn ; 3 uses
  %.not.i.i119 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i119)
  %i.dp = shl nuw nsw i64 %i.do, 4
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #25
          to label %.noexc125 unwind label %.loopexit ; 5 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !52 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !51
  store <2 x ptr> %i.du, ptr %i.dr, align 8, !tbaa !51
  %.not.i.i.i.i.i120 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i120, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122, label %bb.aq

bb.aq:                                            ; preds = %.noexc125
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i121 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122

bb.as:                                            ; preds = %bb.aq
  %i.dz = atomicrmw volatile add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122: ; preds = %bb.as, %bb.ar, %.noexc125
  %.not10.i.i.i.i = icmp eq ptr %i.df, %i.ct
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i ], [ %i.dq, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i ], [ %i.df, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.eb = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !756, !noalias !753
  store ptr null, ptr %i.ea, align 8, !tbaa !52, !alias.scope !756, !noalias !753
  store <2 x ptr> %i.eb, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !753, !noalias !756
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !53, !alias.scope !756, !noalias !753
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.ec, %i.ct
  br i1 %.not.i.i.i.i123, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dq, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i122 ], [ %i.ed, %.lr.ph.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.df, null
  br i1 %.not.i23.i, label %.noexc46, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.eh) #26
  br label %.noexc46

.noexc46:                                         ; preds = %bb.at, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.dq, ptr %3, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.h, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.ei, ptr %i.i, align 8, !tbaa !41
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc46, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.ej = load ptr, ptr %9, align 8, !tbaa !77
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.0167 ; 4 uses
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !81  ; 7 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not.i47 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i47, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backERKS3_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 2 uses
  %i.ep = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !51
  store <2 x ptr> %i.ep, ptr %i.el, align 8, !tbaa !51
  %.not.i.i.i.i.i48 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i48, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i49 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i.i49, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !3
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.eu = atomicrmw volatile add ptr %i.eq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i50 = load ptr, ptr %i.j, align 8, !tbaa !81
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.ax, %bb.aw, %bb.au
  %i.ev = phi ptr [ %i.el, %bb.au ], [ %i.el, %bb.aw ], [ %.pre.i50, %bb.ax ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ew, ptr %i.j, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

bb.ay:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backERKS3_.exit
  %i.ex = load ptr, ptr %4, align 8, !tbaa !77    ; 5 uses
  %i.ey = ptrtoint ptr %i.el to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775792
  br i1 %i.fb, label %.invoke, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ay
  %i.fc = ashr exact i64 %i.fa, 4                 ; 3 uses
  %.sroa.speculated.i.i126 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i126, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 576460752303423487)
  %i.fg = select i1 %i.fe, i64 576460752303423487, i64 %i.ff ; 3 uses
  %.not.i.i127 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i127)
  %i.fh = shl nuw nsw i64 %i.fg, 4
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #25
          to label %.noexc145 unwind label %.loopexit ; 5 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !52 ; 2 uses
  %i.fm = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !51
  store <2 x ptr> %i.fm, ptr %i.fj, align 8, !tbaa !51
  %.not.i.i.i.i.i128 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i128, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130, label %bb.az

bb.az:                                            ; preds = %.noexc145
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i129 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i129, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130

bb.bb:                                            ; preds = %bb.az
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130: ; preds = %bb.bb, %bb.ba, %.noexc145
  %.not10.i.i.i.i131 = icmp eq ptr %i.ex, %i.el
  br i1 %.not10.i.i.i.i131, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i132

.lr.ph.i.i.i.i132:                                ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130, %.lr.ph.i.i.i.i132
  %.012.i.i.i.i133 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i132 ], [ %i.fi, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ] ; 2 uses
  %.0911.i.i.i.i134 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i132 ], [ %i.ex, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i134, i64 8
  %i.ft = load <2 x ptr>, ptr %.0911.i.i.i.i134, align 8, !tbaa !51, !alias.scope !761, !noalias !758
  store ptr null, ptr %i.fs, align 8, !tbaa !52, !alias.scope !761, !noalias !758
  store <2 x ptr> %i.ft, ptr %.012.i.i.i.i133, align 8, !tbaa !51, !alias.scope !758, !noalias !761
  store ptr null, ptr %.0911.i.i.i.i134, align 8, !tbaa !82, !alias.scope !761, !noalias !758
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i134, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i133, i64 16 ; 2 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.fu, %i.el
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i132, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i132, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130
  %.0.lcssa.i.i.i.i136 = phi ptr [ %i.fi, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i130 ], [ %i.fv, %.lr.ph.i.i.i.i132 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i136, i64 16
  %.not.i23.i143 = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i143, label %.noexc51, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.fx = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fz) #26
  br label %.noexc51

.noexc51:                                         ; preds = %bb.bc, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.fi, ptr %4, align 8, !tbaa !77
  store ptr %i.fw, ptr %i.j, align 8, !tbaa !81
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.ga, ptr %i.k, align 8, !tbaa !116
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc51, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.gb = add nuw i64 %.0167, 1                   ; 2 uses
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !81  ; 3 uses
  %i.gd = load ptr, ptr %9, align 8, !tbaa !77    ; 4 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 4
  %i.gi = icmp ult i64 %i.gb, %i.gh
  br i1 %i.gi, label %.lr.ph, label %._crit_edge, !llvm.loop !763

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bm

bb.be:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.w
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.gj = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %i.gk = load ptr, ptr %i.l, align 8, !tbaa !45  ; 2 uses
  %.not4.i.i.i52 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not4.i.i.i52, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %bb.be, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i54 = phi ptr [ %i.hc, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.gj, %bb.be ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i54, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i55 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i55, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.gn, align 8, !tbaa !62
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !64
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27, !inline_history !229
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !33
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27, !inline_history !229
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i56 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i.i.i.i56, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57

bb.bj:                                            ; preds = %bb.bh
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i58 = phi i32 [ %i.gq, %bb.bi ], [ %i.ha, %bb.bj ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i58, 1
  br i1 %i.hb, label %bb.bk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !66

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i57, %bb.bg, %.lr.ph.i.i.i53
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i54, i64 16 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.hc, %i.gk
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i53, !llvm.loop !69

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i60 = load ptr, ptr %5, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.be
  %i.hd = phi ptr [ %.pr.i60, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gj, %bb.be ] ; 3 uses
  %.not.i.i1.i61 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i61, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.hi = add nuw nsw i32 %.017, 1
  br i1 %i.bm, label %bb.b, label %.loopexit147, !llvm.loop !764

bb.bm:                                            ; preds = %bb.bd, %bb.ac
  %.pn32.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bd ], [ %.pn30, %bb.ac ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.z
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bm ], [ %.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ch

.critedge:                                        ; preds = %_ZNK5arrow5Table11num_columnsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.hk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hj)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %.critedge
end_hunk_3
