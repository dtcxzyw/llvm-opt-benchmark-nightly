Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topshake?download=true
inline.NumInlined: 501
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z10make_shakeRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEP7t_atomsiRKNS_8MDLoggerE:bb.a
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bw
  %i.jr = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jt = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ju = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #17
  br label %_ZN17InteractionOfTypeD2Ev.exit

_ZN17InteractionOfTypeD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bx
  %i.jy = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.ch
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17InteractionOfTypeD2Ev.exit
  %i.ka = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17InteractionOfTypeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.kc = load ptr, ptr %i.ep, align 8, !tbaa !52 ; 5 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -112 ; 3 uses
  %.not.i251 = icmp eq ptr %i.kd, %.sroa.0353.0427
  br i1 %.not.i251, label %.noexc182, label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 -104 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !60
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !20 ; 9 uses
  %i.kh = ptrtoint ptr %i.kf to i64               ; 3 uses
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 12 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0353.0427, i64 16 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !21
  %i.km = load ptr, ptr %.sroa.0353.0427, align 8, !tbaa !20 ; 5 uses
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = icmp ugt i64 %i.kj, %i.kp
  br i1 %i.kq, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.kr = icmp ugt i64 %i.kj, 9223372036854775804
  br i1 %i.kr, label %bb.ca, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, !prof !61

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc253 unwind label %.loopexit.split-lp

.noexc253:                                        ; preds = %bb.ca
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.bz
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #21
          to label %.noexc254 unwind label %.loopexit382 ; 4 uses

.noexc254:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.kt = icmp samesign ugt i64 %i.kj, 4
  br i1 %i.kt, label %bb.cb, label %bb.cc, !prof !62

bb.cb:                                            ; preds = %.noexc254
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ks, ptr align 4 %i.kg, i64 %i.kj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

bb.cc:                                            ; preds = %.noexc254
  %i.ku = icmp eq i64 %i.kj, 4
  br i1 %i.ku, label %bb.cd, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.kv = load i32, ptr %i.kg, align 4, !tbaa !53
  store i32 %i.kv, ptr %i.ks, align 4, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.kw = load ptr, ptr %.sroa.0353.0427, align 8, !tbaa !20 ; 3 uses
  %.not.i.i252 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i252, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  %i.kx = load ptr, ptr %i.kk, align 8, !tbaa !21
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.la) #17
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.ce, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit.i
  store ptr %i.ks, ptr %.sroa.0353.0427, align 8, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kj
  store ptr %i.lb, ptr %i.kk, align 8, !tbaa !21
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.cf:                                            ; preds = %bb.by
  %i.lc = load ptr, ptr %i.fz, align 8, !tbaa !60 ; 3 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = sub i64 %i.ld, %i.ko                    ; 5 uses
  %.not24.i = icmp ult i64 %i.le, %i.kj
  br i1 %.not24.i, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lf = icmp sgt i64 %i.kj, 4
  br i1 %i.lf, label %bb.ch, label %bb.ci, !prof !62

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.km, ptr align 4 %i.kg, i64 %i.kj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.lg = icmp eq i64 %i.kj, 4
  br i1 %i.lg, label %bb.cj, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.lh = load i32, ptr %i.kg, align 4, !tbaa !53
  store i32 %i.lh, ptr %i.km, align 4, !tbaa !53
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.ck:                                            ; preds = %bb.cf
  %i.li = icmp sgt i64 %i.le, 4
  br i1 %i.li, label %bb.cl, label %bb.cm, !prof !62

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.km, ptr align 4 %i.kg, i64 %i.le, i1 false)
  %.pre.i = load ptr, ptr %i.kd, align 8, !tbaa !20
  %.pre25.i = load ptr, ptr %i.fz, align 8, !tbaa !60 ; 2 uses
  %.pre26.i = load ptr, ptr %.sroa.0353.0427, align 8, !tbaa !20
  %.pre27.i = load ptr, ptr %i.ke, align 8, !tbaa !60
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.lj = icmp eq i64 %i.le, 4
  br i1 %i.lj, label %bb.cn, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.lk = load i32, ptr %i.kg, align 4, !tbaa !53
  store i32 %i.lk, ptr %i.km, align 4, !tbaa !53
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.cn, %bb.cm, %bb.cl
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.cl ], [ %i.kh, %bb.cm ], [ %i.kh, %bb.cn ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.cl ], [ %i.le, %bb.cm ], [ 4, %bb.cn ]
  %i.ll = phi ptr [ %.pre25.i, %bb.cl ], [ %i.lc, %bb.cm ], [ %i.lc, %bb.cn ] ; 2 uses
  %i.lm = phi ptr [ %.pre.i, %bb.cl ], [ %i.kg, %bb.cm ], [ %i.kg, %bb.cn ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.pre-phi32.i ; 3 uses
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = sub i64 %.pre-phi34.i, %i.lo            ; 3 uses
  %i.lq = icmp sgt i64 %i.lp, 4
  br i1 %i.lq, label %bb.co, label %bb.cp, !prof !62

bb.co:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ll, ptr align 4 %i.ln, i64 %i.lp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.cp:                                            ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit.i
  %i.lr = icmp eq i64 %i.lp, 4
  br i1 %i.lr, label %bb.cq, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

bb.cq:                                            ; preds = %bb.cp
  %i.ls = load i32, ptr %i.ln, align 4, !tbaa !53
  store i32 %i.ls, ptr %i.ll, align 4, !tbaa !53
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cj, %bb.ci, %bb.ch, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.lt = load ptr, ptr %.sroa.0353.0427, align 8, !tbaa !20
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.kj
  store ptr %i.lu, ptr %i.fz, align 8, !tbaa !60
  br label %.noexc182

.noexc182:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0353.0427, i64 24
  %i.lw = getelementptr inbounds i8, ptr %i.kc, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lv, ptr noundef nonnull align 8 dereferenceable(48) %i.lw, i64 48, i1 false), !tbaa.struct !63
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0353.0427, i64 72
  %i.ly = getelementptr inbounds i8, ptr %i.kc, i64 -40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %i.ly)
          to label %bb.cr unwind label %.loopexit382

bb.cr:                                            ; preds = %.noexc182
  %i.lz = getelementptr inbounds i8, ptr %i.kc, i64 -8
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !69, !range !70, !noundef !71
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0353.0427, i64 104
  store i8 %i.ma, ptr %i.mb, align 8, !tbaa !69
  %i.mc = load ptr, ptr %i.ep, align 8, !tbaa !52 ; 3 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -112
  %i.me = load ptr, ptr %i.en, align 8, !tbaa !52 ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.me, i64 %i.mh ; 11 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 112 ; 3 uses
  %i.mk = ptrtoint ptr %i.mc to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = icmp sgt i64 %i.mm, 0
  br i1 %i.mn, label %.lr.ph.preheader.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP17InteractionOfTypeS4_EET0_T_S6_S5_.exit

.lr.ph.preheader.i:                               ; preds = %bb.cr
  %i.mo = load ptr, ptr %i.mi, align 8, !tbaa !20 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !21
  %i.mr = load <2 x ptr>, ptr %i.mj, align 8, !tbaa !72
  store <2 x ptr> %i.mr, ptr %i.mi, align 8, !tbaa !72
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 128
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !21
  store ptr %i.mt, ptr %i.mp, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mo, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.mj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.preheader.i
  %i.mu = ptrtoint ptr %i.mq to i64
  %i.mv = ptrtoint ptr %i.mo to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mw) #17
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i:             ; preds = %bb.cs, %.lr.ph.preheader.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, ptr noundef nonnull align 8 dereferenceable(48) %i.my, i64 48, i1 false), !tbaa.struct !63
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 184
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mi, i64 192
  store i64 0, ptr %i.nb, align 8, !tbaa !17
  store i8 0, ptr %i.na, align 1, !tbaa !15
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mi, i64 216
  %i.nd = load i8, ptr %i.nc, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mi, i64 104
  store i8 %i.nd, ptr %i.ne, align 8, !tbaa !69
  %.pre.i.i.pre = load ptr, ptr %i.ep, align 8, !tbaa !50
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP17InteractionOfTypeS4_EET0_T_S6_S5_.exit

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP17InteractionOfTypeS4_EET0_T_S6_S5_.exit: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i, %bb.cr
  %i.nf = phi ptr [ %i.mc, %bb.cr ], [ %.pre.i.i.pre, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i ] ; 4 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -112 ; 2 uses
  store ptr %i.ng, ptr %i.ep, align 8, !tbaa !50
  %i.nh = getelementptr inbounds i8, ptr %i.nf, i64 -40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !14 ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.nf, i64 -24 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP17InteractionOfTypeS4_EET0_T_S6_S5_.exit
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !15
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP17InteractionOfTypeS4_EET0_T_S6_S5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.nn = load ptr, ptr %i.ng, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.no = getelementptr inbounds i8, ptr %i.nf, i64 -96
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !21
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef %i.ns) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef 8) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.cu:                                            ; preds = %._crit_edge.i.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.bv
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %12) #18
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn142 = phi { ptr, i32 } [ %i.nu, %bb.cv ], [ %i.nt, %bb.cu ]
  %i.nv = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.ch
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.cw
  %i.nx = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit190

.loopexit382:                                     ; preds = %.noexc182, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit190

.loopexit.split-lp:                               ; preds = %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit190

_ZNSt6vectorIfSaIfEED2Ev.exit190:                 ; preds = %.loopexit382, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %bb.bu
  %.pn145.pn = phi { ptr, i32 } [ %.pn145, %bb.bu ], [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %lpad.loopexit, %.loopexit382 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef 8) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit195

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEED2Ev.exit, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 8) #17
  br label %bb.cy

_ZNSt6vectorIiSaIiEED2Ev.exit195:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit190, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i, %bb.br, %bb.av
  %.pn150 = phi { ptr, i32 } [ %i.hu, %bb.av ], [ %i.jl, %bb.br ], [ %.pn145.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit190 ], [ %i.ji, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 8) #17
  br label %common.resume

bb.cx:                                            ; preds = %bb.ag, %bb.af
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0353.0427, i64 112
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.sroa.0353.1 = phi ptr [ %.sroa.0353.0427, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.nz, %bb.cx ] ; 2 uses
  %i.oa = load ptr, ptr %i.ep, align 8, !tbaa !52
  %.not375 = icmp eq ptr %.sroa.0353.1, %i.oa
  br i1 %.not375, label %.loopexit381, label %.preheader.i.preheader, !llvm.loop !26

.loopexit381:                                     ; preds = %bb.cy, %bb.ac, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not374 = icmp eq i64 %indvars.iv.next, 95
  br i1 %.not374, label %.loopexit383.split, label %bb.ab

.loopexit383.split:                               ; preds = %.loopexit381, %bb.aa, %.split
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next471, 95
  br i1 %.not, label %.loopexit384, label %.split

.loopexit384:                                     ; preds = %.loopexit383.split, %.loopexit383.split.us.us, %bb.b, %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.f, %_ZN3gmx14LogEntryWriterD2Ev.exit161
  %.not130 = icmp eq i32 %2, 1
  %.not.i198 = icmp eq ptr %.fr, null
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 13888
  %i.oc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.of = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit384, %.loopexit
  %indvars.iv479 = phi i64 [ 0, %.loopexit384 ], [ %indvars.iv.next480, %.loopexit ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv479
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 28
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !47
  %i.ok = and i32 %i.oj, 16
  %.not129 = icmp eq i32 %i.ok, 0
  br i1 %.not129, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ol = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %indvars.iv479 ; 3 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !52 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 5 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !52 ; 2 uses
  %.not378444 = icmp eq ptr %i.om, %i.oo
  br i1 %.not378444, label %.loopexit, label %.lr.ph447

.lr.ph447:                                        ; preds = %bb.da, %bb.dx
  %i.op = phi ptr [ %i.tm, %bb.dx ], [ %i.oo, %bb.da ]
  %.sroa.0304.0445 = phi ptr [ %.sroa.0304.1, %bb.dx ], [ %i.om, %bb.da ] ; 7 uses
  br i1 %.not130, label %bb.db, label %.critedge

bb.db:                                            ; preds = %.lr.ph447
  br i1 %.not.i198, label %bb.dc, label %.preheader.i200.preheader

.preheader.i200.preheader:                        ; preds = %bb.db
  %i.oq = load ptr, ptr %.sroa.0304.0445, align 8, !tbaa !20 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !53
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %.fr, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !55
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !56
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !15
  %i.ox = sext i8 %i.ow to i32
  %i.oy = call i32 @toupper(i32 noundef %i.ox) #20
  %i.oz = icmp ne i32 %i.oy, 72
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !53
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %.fr, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !55
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !56
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !15
  %i.ph = sext i8 %i.pg to i32
  %i.pi = call i32 @toupper(i32 noundef %i.ph) #20
  %i.pj = icmp ne i32 %i.pi, 72
end_hunk_0
