Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum:bb.a
_ZNSt6vectorIiSaIiEED2Ev.exit101:                 ; preds = %bb.aw, %bb.ax
  %i.hn = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIiSaIiEED2Ev.exit103, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101
  %i.ho = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

_ZNSt6vectorIiSaIiEED2Ev.exit103:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit101, %bb.ay
  %i.hs = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.ht = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %i.hu = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i104 = icmp eq ptr %i.hs, %i.ht
  br i1 %.not.i.i.i.i104, label %.noexc108, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit103
  %i.hx = icmp ugt i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %.noexc.i.i106, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105, !prof !29

.noexc.i.i106:                                    ; preds = %bb.az
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc107 unwind label %.loopexit.split-lp203

.noexc107:                                        ; preds = %.noexc.i.i106
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105: ; preds = %bb.az
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge unwind label %.loopexit202

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105
  %.pre325 = load ptr, ptr %i.v, align 8, !tbaa !15 ; 2 uses
  %.pre326 = load ptr, ptr %i.ak, align 8, !tbaa !15
  %.pre350 = ptrtoint ptr %.pre326 to i64
  %.pre352 = ptrtoint ptr %.pre325 to i64
  br label %.noexc108

.noexc108:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge, %_ZNSt6vectorIiSaIiEED2Ev.exit103
  %.pre-phi353 = phi i64 [ %.pre352, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.hv, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ]
  %.pre-phi351 = phi i64 [ %.pre350, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.hu, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ]
  %i.hz = phi ptr [ %.pre325, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ %i.ht, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ] ; 2 uses
  %i.ia = phi ptr [ %i.hy, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i105..noexc108_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit103 ] ; 6 uses
  store ptr %i.ia, ptr %14, align 8, !tbaa !18
  store ptr %i.ia, ptr %i.al, align 8, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hw
  store ptr %i.ib, ptr %i.am, align 8, !tbaa !20
  %i.ic = sub i64 %.pre-phi351, %.pre-phi353      ; 4 uses
  %i.id = icmp sgt i64 %i.ic, 4
  br i1 %i.id, label %bb.ba, label %bb.bb, !prof !21

bb.ba:                                            ; preds = %.noexc108
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ia, ptr align 4 %i.hz, i64 %i.ic, i1 false)
  br label %bb.bd

bb.bb:                                            ; preds = %.noexc108
  %i.ie = icmp eq i64 %i.ic, 4
  br i1 %i.ie, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.if = load i32, ptr %i.hz, align 4, !tbaa !19
  store i32 %i.if, ptr %i.ia, align 4, !tbaa !19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ig = getelementptr inbounds i8, ptr %i.ia, i64 %i.ic
  store ptr %i.ig, ptr %i.al, align 8, !tbaa !17
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ii = load ptr, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %i.ij = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i110 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i.i.i110, label %.noexc114, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.im = icmp ugt i64 %i.il, 9223372036854775804
  br i1 %i.im, label %.noexc.i.i112, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111, !prof !29

.noexc.i.i112:                                    ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc113 unwind label %.loopexit.split-lp208

.noexc113:                                        ; preds = %.noexc.i.i112
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111: ; preds = %bb.be
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge unwind label %.loopexit207

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111
  %.pre327 = load ptr, ptr %i.z, align 8, !tbaa !15 ; 2 uses
  %.pre328 = load ptr, ptr %i.an, align 8, !tbaa !15
  %.pre354 = ptrtoint ptr %.pre328 to i64
  %.pre356 = ptrtoint ptr %.pre327 to i64
  br label %.noexc114

.noexc114:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge, %bb.bd
  %.pre-phi357 = phi i64 [ %.pre356, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ik, %bb.bd ]
  %.pre-phi355 = phi i64 [ %.pre354, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ij, %bb.bd ]
  %i.io = phi ptr [ %.pre327, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ %i.ii, %bb.bd ] ; 2 uses
  %i.ip = phi ptr [ %i.in, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i111..noexc114_crit_edge ], [ null, %bb.bd ] ; 6 uses
  store ptr %i.ip, ptr %15, align 8, !tbaa !18
  store ptr %i.ip, ptr %i.ao, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.il
  store ptr %i.iq, ptr %i.ap, align 8, !tbaa !20
  %i.ir = sub i64 %.pre-phi355, %.pre-phi357      ; 4 uses
  %i.is = icmp sgt i64 %i.ir, 4
  br i1 %i.is, label %bb.bf, label %bb.bg, !prof !21

bb.bf:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ip, ptr align 4 %i.io, i64 %i.ir, i1 false)
  br label %bb.bi

bb.bg:                                            ; preds = %.noexc114
  %i.it = icmp eq i64 %i.ir, 4
  br i1 %i.it, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iu = load i32, ptr %i.io, align 4, !tbaa !19
  store i32 %i.iu, ptr %i.ip, align 4, !tbaa !19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.iv = getelementptr inbounds i8, ptr %i.ip, i64 %i.ir
  store ptr %i.iv, ptr %i.ao, align 8, !tbaa !17
  %i.iw = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.ix = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i116 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i.i116, label %.noexc120, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = icmp ugt i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %.noexc.i.i118, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117, !prof !29

.noexc.i.i118:                                    ; preds = %bb.bj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc119 unwind label %.loopexit.split-lp213

.noexc119:                                        ; preds = %.noexc.i.i118
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117: ; preds = %bb.bj
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge unwind label %.loopexit212

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117
  %.pre329 = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %.pre330 = load ptr, ptr %i.aq, align 8, !tbaa !15
  %.pre358 = ptrtoint ptr %.pre330 to i64
  %.pre360 = ptrtoint ptr %.pre329 to i64
  br label %.noexc120

.noexc120:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge, %bb.bi
  %.pre-phi361 = phi i64 [ %.pre360, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.iz, %bb.bi ]
  %.pre-phi359 = phi i64 [ %.pre358, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.iy, %bb.bi ]
  %i.jd = phi ptr [ %.pre329, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ %i.ix, %bb.bi ] ; 2 uses
  %i.je = phi ptr [ %i.jc, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i117..noexc120_crit_edge ], [ null, %bb.bi ] ; 6 uses
  store ptr %i.je, ptr %16, align 8, !tbaa !18
  store ptr %i.je, ptr %i.ar, align 8, !tbaa !17
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ja
  store ptr %i.jf, ptr %i.as, align 8, !tbaa !20
  %i.jg = sub i64 %.pre-phi359, %.pre-phi361      ; 4 uses
  %i.jh = icmp sgt i64 %i.jg, 4
  br i1 %i.jh, label %bb.bk, label %bb.bl, !prof !21

bb.bk:                                            ; preds = %.noexc120
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.je, ptr align 4 %i.jd, i64 %i.jg, i1 false)
  br label %bb.bn

bb.bl:                                            ; preds = %.noexc120
  %i.ji = icmp eq i64 %i.jg, 4
  br i1 %i.ji, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jj = load i32, ptr %i.jd, align 4, !tbaa !19
  store i32 %i.jj, ptr %i.je, align 4, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jk = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  store ptr %i.jk, ptr %i.ar, align 8, !tbaa !17
  %i.jl = invoke { double, double } %_Z33getStateVecExpecAllSuffixPauliStr5QuregSt6vectorIiSaIiEES2_S2_._Z37accel_statevec_calcExpecPauliStr_subB5QuregSt6vectorIiSaIiEES2_S2_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bo unwind label %bb.cr, !callees !225 ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.jm = extractvalue { double, double } %i.jl, 0 ; 3 uses
  %i.jn = extractvalue { double, double } %i.jl, 1 ; 3 uses
  %i.jo = fmul double %i.hg, %i.jm
  %i.jp = fmul double %i.hh, %i.jn
  %i.jq = fmul double %i.hg, %i.jn
  %i.jr = fmul double %i.hh, %i.jm
  %17 = fsub double %i.jo, %i.jp                  ; 3 uses
  %18 = fadd double %i.jr, %i.jq                  ; 3 uses
  %i.js = fcmp uno double %17, 0.000000e+00
  br i1 %i.js, label %bb.bp, label %bb.br, !prof !93

bb.bp:                                            ; preds = %bb.bo
  %i.jt = fcmp uno double %18, 0.000000e+00
  br i1 %i.jt, label %bb.bq, label %bb.br, !prof !93

bb.bq:                                            ; preds = %bb.bp
  %i.ju = call noundef { double, double } @__muldc3(double noundef %i.hg, double noundef %i.hh, double noundef %i.jm, double noundef %i.jn) #17 ; 2 uses
  %i.jv = extractvalue { double, double } %i.ju, 0
  %i.jw = extractvalue { double, double } %i.ju, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.jx = phi double [ %17, %bb.bo ], [ %17, %bb.bp ], [ %i.jv, %bb.bq ] ; 2 uses
  %i.jy = phi double [ %18, %bb.bo ], [ %18, %bb.bp ], [ %i.jw, %bb.bq ] ; 2 uses
  %i.jz = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ka = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %bb.br, %bb.bs
  %i.ke = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIiSaIiEED2Ev.exit125, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123
  %i.kf = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ki) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit125

_ZNSt6vectorIiSaIiEED2Ev.exit125:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123, %bb.bt
  %i.kj = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIiSaIiEED2Ev.exit127, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125
  %i.kk = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.kn) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit127

_ZNSt6vectorIiSaIiEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125, %bb.bu
  %i.ko = load <2 x double>, ptr %.sroa.0171.0303, align 8 ; 4 uses
  %i.kp = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ks = fmul <2 x double> %i.kq, %i.kr          ; 2 uses
  %i.kt = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x double> %i.ku, %i.ko          ; 2 uses
  %i.kw = fsub <2 x double> %i.kv, %i.ks          ; 2 uses
  %i.kx = fadd <2 x double> %i.kv, %i.ks          ; 2 uses
  %i.ky = shufflevector <2 x double> %i.kw, <2 x double> %i.kx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kz = extractelement <2 x double> %i.kw, i64 0
  %i.la = fcmp uno double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.bv, label %bb.bx, !prof !93

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %i.lb = extractelement <2 x double> %i.kx, i64 1
  %i.lc = fcmp uno double %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.bw, label %bb.bx, !prof !93

bb.bw:                                            ; preds = %bb.bv
  %i.ld = extractelement <2 x double> %i.ko, i64 0
  %i.le = extractelement <2 x double> %i.ko, i64 1
  %i.lf = call noundef { double, double } @__muldc3(double noundef %i.ld, double noundef %i.le, double noundef %i.jx, double noundef %i.jy) #17 ; 2 uses
  %i.lg = extractvalue { double, double } %i.lf, 0
  %i.lh = extractvalue { double, double } %i.lf, 1
  %i.li = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.lj = insertelement <2 x double> %i.li, double %i.lh, i64 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %i.lk = phi <2 x double> [ %i.ky, %_ZNSt6vectorIiSaIiEED2Ev.exit127 ], [ %i.ky, %bb.bv ], [ %i.lj, %bb.bw ]
  %i.ll = fadd <2 x double> %i.lk, %i.dr          ; 3 uses
  store <2 x double> %i.ll, ptr %3, align 16
  %i.lm = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.by, %bb.bx
  %i.lr = load ptr, ptr %10, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ls = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lv) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.lw = load ptr, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.lx = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lw to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.ma) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136

_ZNSt6vectorIiSaIiEED2Ev.exit.i136:               ; preds = %bb.ca, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.mb = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i.1.i137 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.1.i137, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136
  %i.mc = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.mf) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.mg = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.mh = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = ptrtoint ptr %i.mg to i64
  %i.mk = sub i64 %i.mi, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.mk) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140

_ZNSt6vectorIiSaIiEED2Ev.exit.i140:               ; preds = %bb.cc, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.ml = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i.1.i141 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.1.i141, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140
  %i.mm = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.ml to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mp) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.mq = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.mr = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mu) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144

_ZNSt6vectorIiSaIiEED2Ev.exit.i144:               ; preds = %bb.ce, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.mv = load ptr, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.1.i145 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.1.i145, label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i144
  %i.mw = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.mz) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i

_ZNSt6vectorIiSaIiEED2Ev.exit.1.i:                ; preds = %bb.cf, %_ZNSt6vectorIiSaIiEED2Ev.exit.i144
  %i.na = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.2.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i
  %i.nb = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.ne) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0171.0303, i64 32 ; 2 uses
  %.not181 = icmp eq ptr %i.nf, %i.do
  br i1 %.not181, label %._crit_edge306, label %.lr.ph305

bb.ch:                                            ; preds = %.lr.ph305
  %i.ng = landingpad { ptr, i32 }
end_hunk_0
