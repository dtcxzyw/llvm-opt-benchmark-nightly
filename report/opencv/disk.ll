Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/disk?download=true
inline.NumInlined: 622
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv9DISK_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.cy
  %.pn131 = phi { ptr, i32 } [ %i.jn, %bb.cy ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %i.jo, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit346

bb.da:                                            ; preds = %bb.cu
  %i.ju = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !132
  %i.jw = icmp eq i32 %i.jv, %i.jj
  br i1 %i.jw, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %54)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @__func__._ZN2cv9DISK_Impl16detectAndComputeERKNS_11_InputArrayES3_RSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.1, i32 noundef 101) #23
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.db
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.df:                                            ; preds = %bb.dc
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %53, align 8, !tbaa !33   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.df
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !34
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.de
  %.pn133 = phi { ptr, i32 } [ %i.jx, %bb.de ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.jy, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit346

bb.dg:                                            ; preds = %bb.da
  %i.ke = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !133
  %i.kg = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !133
  %i.ki = sext i32 %i.jj to i64                   ; 5 uses
  %i.kj = icmp slt i32 %i.jj, 0
  br i1 %i.kj, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc263 unwind label %bb.fq

.noexc263:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dg
  %.not488 = icmp eq i32 %i.jj, 0                 ; 2 uses
  br i1 %.not488, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.di
  %i.kk = shl nuw nsw i64 %i.ki, 2
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #20
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i unwind label %bb.fq ; 2 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.ki
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.di, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %.sroa.0430.6 = phi ptr [ %i.kl, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.di ] ; 5 uses
  %.sroa.29.6 = phi ptr [ %i.km, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.di ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !134
  %i.kp = load ptr, ptr %3, align 8, !tbaa !52
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 28
  %i.ku = icmp ult i64 %i.kt, %i.ki
  br i1 %i.ku, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.kv = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.kw, %i.kr
  %i.ky = mul nuw nsw i64 %i.ki, 28
  %i.kz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #20
          to label %.noexc267 unwind label %bb.fq ; 4 uses

.noexc267:                                        ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i
  %i.la = load ptr, ptr %3, align 8, !tbaa !52    ; 5 uses
  %i.lb = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.la, %i.lb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc267, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i ], [ %i.kz, %.noexc267 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i ], [ %i.la, %.noexc267 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i, i64 28, i1 false), !tbaa.struct !136, !alias.scope !137
  %i.lc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 28 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 28
  %.not.i.i.i.i = icmp eq ptr %i.lc, %i.lb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc267
  %.not.i8.i265 = icmp eq ptr %i.la, null
  br i1 %.not.i8.i265, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.le = load ptr, ptr %i.kn, align 8, !tbaa !134
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.la to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lh) #21
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.dj, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.kz, ptr %3, align 8, !tbaa !52
  %i.li = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kx
  store ptr %i.li, ptr %i.i, align 8, !tbaa !115
  %i.lj = getelementptr inbounds nuw [28 x i8], ptr %i.kz, i64 %i.ki
  store ptr %i.lj, ptr %i.kn, align 8, !tbaa !134
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  br i1 %.not488, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.lm = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.lo = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.lp = getelementptr inbounds nuw i8, ptr %23, i64 128
  %wide.trip.count = zext nneg i32 %i.jj to i64
  br label %bb.dk

._crit_edge:                                      ; preds = %.critedge, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit
  %.sroa.0430.0.lcssa = phi ptr [ %.sroa.0430.6, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit ], [ %.sroa.0430.2, %.critedge ] ; 10 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0430.6, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit ], [ %.sroa.18.2, %.critedge ] ; 2 uses
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.6, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit ], [ %.sroa.29.2, %.critedge ] ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !47 ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %bb.dx, label %_ZNSt6vectorIiSaIiEED2Ev.exit303

bb.dk:                                            ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.sroa.29.0539 = phi ptr [ %.sroa.29.6, %.lr.ph ], [ %.sroa.29.2, %.critedge ] ; 8 uses
  %.sroa.18.0538 = phi ptr [ %.sroa.0430.6, %.lr.ph ], [ %.sroa.18.2, %.critedge ] ; 6 uses
  %.sroa.0430.0537 = phi ptr [ %.sroa.0430.6, %.lr.ph ], [ %.sroa.0430.2, %.critedge ] ; 10 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !135 ; 3 uses
  %i.lv = load float, ptr %i.lk, align 4, !tbaa !48
  %i.lw = fcmp ugt float %i.lu, %i.lv
  br i1 %i.lw, label %bb.dl, label %.critedge

bb.dl:                                            ; preds = %bb.dk
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx
  %i.ly = load <2 x i64>, ptr %i.lx, align 8, !tbaa !63
  %i.lz = sitofp <2 x i64> %i.ly to <2 x float>
  %i.ma = fmul <2 x float> %i.cw, %i.lz           ; 5 uses
  %i.mb = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.dm unwind label %.loopexit496

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.mb, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mc = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ma)
  %i.md = fptosi <2 x float> %i.mc to <2 x i32>   ; 2 uses
  %i.me = extractelement <2 x i32> %i.md, i64 0   ; 3 uses
  %i.mf = extractelement <2 x i32> %i.md, i64 1   ; 3 uses
  %i.mg = or i32 %i.mf, %i.me
  %or.cond.not = icmp sgt i32 %i.mg, -1
  %i.mh = load i32, ptr %i.ll, align 4
  %.not = icmp sgt i32 %i.mh, %i.me
  %or.cond = select i1 %or.cond.not, i1 %.not, i1 false
  %i.mi = load i32, ptr %i.lm, align 8
  %.not145 = icmp sgt i32 %i.mi, %i.mf
  %or.cond166 = select i1 %or.cond, i1 %.not145, i1 false
  br i1 %or.cond166, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.mj = load i32, ptr %i.ln, align 4, !tbaa !138
  %i.mk = icmp slt i32 %i.mj, 2
  %i.ml = load ptr, ptr %i.lo, align 8, !tbaa !133
  %i.mm = load i64, ptr %i.lp, align 8
  %59 = sext i32 %i.mf to i64
  %i.mn = mul i64 %i.mm, %59
  %.sink.idx.i = select i1 %i.mk, i64 0, i64 %i.mn
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.sink.idx.i
  %60 = sext i32 %i.me to i64
  %i.mo = getelementptr inbounds i8, ptr %.sink.i, i64 %60
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !34
  %.not493 = icmp eq i8 %i.mp, 0
  br i1 %.not493, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %i.mq = load ptr, ptr %i.i, align 8, !tbaa !115 ; 11 uses
  %i.mr = load ptr, ptr %i.kn, align 8, !tbaa !134
  %.not.i = icmp eq ptr %i.mq, %i.mr
  br i1 %.not.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ms = extractelement <2 x float> %i.ma, i64 0
  store float %i.ms, ptr %i.mq, align 4, !tbaa !139
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mu = extractelement <2 x float> %i.ma, i64 1
  store float %i.mu, ptr %i.mt, align 4, !tbaa !140
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.mv, align 4, !tbaa !135
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store float %i.lu, ptr %i.mw, align 4, !tbaa !66
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 20
  store i32 0, ptr %i.mx, align 4, !tbaa !141
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  store i32 -1, ptr %i.my, align 4, !tbaa !142
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store ptr %i.mz, ptr %i.i, align 8, !tbaa !115
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE12emplace_backIJRKfS6_ffS6_EEERS1_DpOT_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.na = load ptr, ptr %3, align 8, !tbaa !52    ; 5 uses
  %i.nb = ptrtoint ptr %i.mq to i64
  %i.nc = ptrtoint ptr %i.na to i64               ; 2 uses
  %i.nd = sub i64 %i.nb, %i.nc                    ; 3 uses
  %i.ne = icmp eq i64 %i.nd, 9223372036854775800
  br i1 %i.ne, label %.invoke, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dr
  %i.nf = sdiv exact i64 %i.nd, 28                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.nf, i64 1)
  %i.ng = add nsw i64 %.sroa.speculated.i.i, %i.nf ; 2 uses
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = call i64 @llvm.umin.i64(i64 %i.ng, i64 329406144173384850)
  %i.nj = select i1 %i.nh, i64 329406144173384850, i64 %i.ni ; 3 uses
  %.not.i.i347 = icmp ne i64 %i.nj, 0
  call void @llvm.assume(i1 %.not.i.i347)
  %i.nk = mul nuw nsw i64 %i.nj, 28
  %i.nl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nk) #20
          to label %.noexc356 unwind label %.loopexit496 ; 5 uses

.noexc356:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nd ; 6 uses
  %i.nn = extractelement <2 x float> %i.ma, i64 0
  store float %i.nn, ptr %i.nm, align 4, !tbaa !139
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.np = extractelement <2 x float> %i.ma, i64 1
  store float %i.np, ptr %i.no, align 4, !tbaa !140
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.nq, align 4, !tbaa !135
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store float %i.lu, ptr %i.nr, align 4, !tbaa !66
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  store i32 0, ptr %i.ns, align 4, !tbaa !141
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  store i32 -1, ptr %i.nt, align 4, !tbaa !142
  %.not10.i.i.i.i348 = icmp eq ptr %i.na, %i.mq
  br i1 %.not10.i.i.i.i348, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i, label %.lr.ph.i.i.i.i349

.lr.ph.i.i.i.i349:                                ; preds = %.noexc356, %.lr.ph.i.i.i.i349
  %.012.i.i.i.i350 = phi ptr [ %i.nv, %.lr.ph.i.i.i.i349 ], [ %i.nl, %.noexc356 ] ; 2 uses
  %.0911.i.i.i.i351 = phi ptr [ %i.nu, %.lr.ph.i.i.i.i349 ], [ %i.na, %.noexc356 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i350, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i351, i64 28, i1 false), !tbaa.struct !136, !alias.scope !143
  %i.nu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i351, i64 28 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i350, i64 28 ; 2 uses
  %.not.i.i.i.i352 = icmp eq ptr %i.nu, %i.mq
  br i1 %.not.i.i.i.i352, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i, label %.lr.ph.i.i.i.i349, !llvm.loop !97

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i: ; preds = %.lr.ph.i.i.i.i349, %.noexc356
  %.0.lcssa.i.i.i.i = phi ptr [ %i.nl, %.noexc356 ], [ %i.nv, %.lr.ph.i.i.i.i349 ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 28
  %.not.i37.i = icmp eq ptr %i.na, null
  br i1 %.not.i37.i, label %.noexc268, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i
  %i.nx = load ptr, ptr %i.kn, align 8, !tbaa !134
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.nz) #21
  br label %.noexc268

.noexc268:                                        ; preds = %bb.ds, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36.i
  store ptr %i.nl, ptr %3, align 8, !tbaa !52
  store ptr %i.nw, ptr %i.i, align 8, !tbaa !115
  %i.oa = getelementptr inbounds nuw [28 x i8], ptr %i.nl, i64 %i.nj
  store ptr %i.oa, ptr %i.kn, align 8, !tbaa !134
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE12emplace_backIJRKfS6_ffS6_EEERS1_DpOT_.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE12emplace_backIJRKfS6_ffS6_EEERS1_DpOT_.exit: ; preds = %.noexc268, %bb.dq
  %.not.i269 = icmp eq ptr %.sroa.18.0538, %.sroa.29.0539
  br i1 %.not.i269, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE12emplace_backIJRKfS6_ffS6_EEERS1_DpOT_.exit
  %i.ob = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ob, ptr %.sroa.18.0538, align 4, !tbaa !35
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.18.0538, i64 4
  br label %.critedge

bb.du:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE12emplace_backIJRKfS6_ffS6_EEERS1_DpOT_.exit
  %i.od = ptrtoint ptr %.sroa.29.0539 to i64
  %i.oe = ptrtoint ptr %.sroa.0430.0537 to i64
  %i.of = sub i64 %i.od, %i.oe                    ; 6 uses
  %i.og = icmp eq i64 %i.of, 9223372036854775804
  br i1 %i.og, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.du, %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #23
          to label %.cont unwind label %.loopexit.split-lp497

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.du
  %i.oh = ashr exact i64 %i.of, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oh, i64 1)
  %i.oi = add nsw i64 %.sroa.speculated.i.i.i, %i.oh ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.oh
  %i.ok = call i64 @llvm.umin.i64(i64 %i.oi, i64 2305843009213693951)
  %i.ol = select i1 %i.oj, i64 2305843009213693951, i64 %i.ok ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ol, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.om = shl nuw nsw i64 %i.ol, 2
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.om) #20
          to label %.noexc271 unwind label %.loopexit496 ; 4 uses

.noexc271:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 %i.of ; 2 uses
  %i.op = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.op, ptr %i.oo, align 4, !tbaa !35
  %i.oq = icmp sgt i64 %i.of, 0
  br i1 %i.oq, label %bb.dv, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dv:                                            ; preds = %.noexc271
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.on, ptr align 4 %.sroa.0430.0537, i64 %i.of, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dv, %.noexc271
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0430.0537, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0430.0537, i64 noundef %i.of) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ol
  br label %.critedge

.critedge:                                        ; preds = %bb.do, %bb.dn, %bb.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dk
  %.sroa.0430.2 = phi ptr [ %.sroa.0430.0537, %bb.dk ], [ %.sroa.0430.0537, %bb.dn ], [ %.sroa.0430.0537, %bb.do ], [ %i.on, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0430.0537, %bb.dt ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0538, %bb.dk ], [ %.sroa.18.0538, %bb.dn ], [ %.sroa.18.0538, %bb.do ], [ %i.or, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.oc, %bb.dt ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.0539, %bb.dk ], [ %.sroa.29.0539, %bb.dn ], [ %.sroa.29.0539, %bb.do ], [ %i.os, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.29.0539, %bb.dt ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.dk, !llvm.loop !101

bb.dx:                                            ; preds = %._crit_edge
  %i.ot = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.ou = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = sdiv exact i64 %i.ox, 28                ; 5 uses
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = icmp slt i32 %i.lr, %i.oz
  br i1 %i.pa, label %bb.dy, label %_ZNSt6vectorIiSaIiEED2Ev.exit303

bb.dy:                                            ; preds = %bb.dx
  %i.pb = icmp ugt i64 %i.oy, 2305843009213693951
  br i1 %i.pb, label %bb.dz, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc273 unwind label %.loopexit.split-lp497

.noexc273:                                        ; preds = %bb.dz
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.dy
  %.not.i.i.i.i272 = icmp eq ptr %i.ot, %i.ou
  br i1 %.not.i.i.i.i272, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.pc = shl nuw nsw i64 %i.oy, 2
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pc) #20
          to label %.noexc274 unwind label %.loopexit.split-lp497 ; 9 uses

.noexc274:                                        ; preds = %bb.ea
  %i.pe = ptrtoaddr ptr %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.oy ; 2 uses
  store i32 0, ptr %i.pd, align 4, !tbaa !35
end_hunk_0
