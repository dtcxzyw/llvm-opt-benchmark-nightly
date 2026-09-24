Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum:bb.a
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit101

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
          to label %bb.bo unwind label %bb.cr     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.jm = extractvalue { double, double } %i.jl, 0 ; 3 uses
  %i.jn = extractvalue { double, double } %i.jl, 1 ; 3 uses
  %i.jo = fmul double %i.hg, %i.jn
  %i.jp = fmul double %i.hh, %i.jn
  %i.jq = fmul double %i.hh, %i.jm
  %i.jr = fmul double %i.hg, %i.jm
  %i.js = fadd double %i.jq, %i.jo                ; 3 uses
  %i.jt = fsub double %i.jr, %i.jp                ; 3 uses
  %i.ju = fcmp uno double %i.jt, 0.000000e+00
  br i1 %i.ju, label %bb.bp, label %bb.br, !prof !93

bb.bp:                                            ; preds = %bb.bo
  %i.jv = fcmp uno double %i.js, 0.000000e+00
  br i1 %i.jv, label %bb.bq, label %bb.br, !prof !93

bb.bq:                                            ; preds = %bb.bp
  %i.jw = call noundef { double, double } @__muldc3(double noundef %i.hg, double noundef %i.hh, double noundef %i.jm, double noundef %i.jn) #17 ; 2 uses
  %i.jx = extractvalue { double, double } %i.jw, 0
  %i.jy = extractvalue { double, double } %i.jw, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.jz = phi double [ %i.jt, %bb.bo ], [ %i.jt, %bb.bp ], [ %i.jx, %bb.bq ] ; 2 uses
  %i.ka = phi double [ %i.js, %bb.bo ], [ %i.js, %bb.bp ], [ %i.jy, %bb.bq ] ; 2 uses
  %i.kb = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

_ZNSt6vectorIiSaIiEED2Ev.exit123:                 ; preds = %bb.br, %bb.bs
  %i.kg = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIiSaIiEED2Ev.exit125, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123
  %i.kh = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kk) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit125

_ZNSt6vectorIiSaIiEED2Ev.exit125:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit123, %bb.bt
  %i.kl = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIiSaIiEED2Ev.exit127, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125
  %i.km = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kl to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kp) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit127

_ZNSt6vectorIiSaIiEED2Ev.exit127:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit125, %bb.bu
  %i.kq = load <2 x double>, ptr %.sroa.0171.0303, align 8 ; 4 uses
  %i.kr = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ku = fmul <2 x double> %i.ks, %i.kt          ; 2 uses
  %i.kv = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = fmul <2 x double> %i.kw, %i.kq          ; 2 uses
  %i.ky = fsub <2 x double> %i.kx, %i.ku          ; 2 uses
  %i.kz = fadd <2 x double> %i.kx, %i.ku          ; 2 uses
  %i.la = shufflevector <2 x double> %i.ky, <2 x double> %i.kz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lb = extractelement <2 x double> %i.ky, i64 0
  %i.lc = fcmp uno double %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.bv, label %bb.bx, !prof !93

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %i.ld = extractelement <2 x double> %i.kz, i64 1
  %i.le = fcmp uno double %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.bw, label %bb.bx, !prof !93

bb.bw:                                            ; preds = %bb.bv
  %i.lf = extractelement <2 x double> %i.kq, i64 0
  %i.lg = extractelement <2 x double> %i.kq, i64 1
  %i.lh = call noundef { double, double } @__muldc3(double noundef %i.lf, double noundef %i.lg, double noundef %i.jz, double noundef %i.ka) #17 ; 2 uses
  %i.li = extractvalue { double, double } %i.lh, 0
  %i.lj = extractvalue { double, double } %i.lh, 1
  %i.lk = insertelement <2 x double> poison, double %i.li, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.lj, i64 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %_ZNSt6vectorIiSaIiEED2Ev.exit127
  %i.lm = phi <2 x double> [ %i.la, %_ZNSt6vectorIiSaIiEED2Ev.exit127 ], [ %i.la, %bb.bv ], [ %i.ll, %bb.bw ]
  %i.ln = fadd <2 x double> %i.lm, %i.dr          ; 3 uses
  store <2 x double> %i.ln, ptr %3, align 16
  %i.lo = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lp = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.by, %bb.bx
  %i.lt = load ptr, ptr %10, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.lu = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lx) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit:      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ly = load ptr, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.lz = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mc) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i136

_ZNSt6vectorIiSaIiEED2Ev.exit.i136:               ; preds = %bb.ca, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit
  %i.md = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i.1.i137 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.1.i137, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136
  %i.me = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i136, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.mi = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.mj = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mi to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mm) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i140

_ZNSt6vectorIiSaIiEED2Ev.exit.i140:               ; preds = %bb.cc, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit138
  %i.mn = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i.1.i141 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.1.i141, label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140
  %i.mo = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.mr) #20
  br label %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142

_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i140, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ms = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.mt = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mw) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i144

_ZNSt6vectorIiSaIiEED2Ev.exit.i144:               ; preds = %bb.ce, %_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev.exit142
  %i.mx = load ptr, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.1.i145 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.1.i145, label %_ZNSt6vectorIiSaIiEED2Ev.exit.1.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i144
  %i.my = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.mz = ptrtoint ptr %i.my to i64
end_hunk_0
begin_hunk_1_@_Z39localiser_statevec_calcExpecPauliStrSum5Qureg11PauliStrSum:bb.a
          cleanup                                 ; 2 uses
  %i.on = load ptr, ptr %16, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIiSaIiEED2Ev.exit157, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oo = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.on to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.or) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

_ZNSt6vectorIiSaIiEED2Ev.exit157:                 ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.cs, %bb.cr
  %.pn51 = phi { ptr, i32 } [ %i.om, %bb.cs ], [ %i.om, %bb.cr ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ] ; 2 uses
  %i.os = load ptr, ptr %15, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIiSaIiEED2Ev.exit159, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit157
  %i.ot = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.os to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ow) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit159

_ZNSt6vectorIiSaIiEED2Ev.exit159:                 ; preds = %.loopexit207, %.loopexit.split-lp208, %bb.ct, %_ZNSt6vectorIiSaIiEED2Ev.exit157
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.ct ], [ %.pn51, %_ZNSt6vectorIiSaIiEED2Ev.exit157 ], [ %lpad.loopexit209, %.loopexit207 ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp208 ] ; 2 uses
  %i.ox = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIiSaIiEED2Ev.exit155, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit159
  %i.oy = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pb) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit155

_ZNSt6vectorIiSaIiEED2Ev.exit155:                 ; preds = %.loopexit202, %.loopexit.split-lp203, %.loopexit192, %.loopexit.split-lp193, %bb.cu, %_ZNSt6vectorIiSaIiEED2Ev.exit159, %bb.cq, %_ZNSt6vectorIiSaIiEED2Ev.exit153
  %.pn55.pn = phi { ptr, i32 } [ %.pn, %bb.cq ], [ %.pn51.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit159 ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit153 ], [ %.pn51.pn, %bb.cu ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ], [ %lpad.loopexit194, %.loopexit192 ], [ %lpad.loopexit204, %.loopexit202 ], [ %lpad.loopexit.split-lp205, %.loopexit.split-lp203 ]
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit151

_ZNSt6vectorIiSaIiEED2Ev.exit151:                 ; preds = %.loopexit187, %.loopexit.split-lp188, %bb.cn, %bb.cm, %_ZNSt6vectorIiSaIiEED2Ev.exit155
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit155 ], [ %i.nv, %bb.cn ], [ %i.nv, %bb.cm ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit149

_ZNSt6vectorIiSaIiEED2Ev.exit149:                 ; preds = %.loopexit182, %.loopexit.split-lp183, %bb.cl, %bb.ck, %_ZNSt6vectorIiSaIiEED2Ev.exit151
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit151 ], [ %i.np, %bb.cl ], [ %i.np, %bb.ck ], [ %lpad.loopexit184, %.loopexit182 ], [ %lpad.loopexit.split-lp185, %.loopexit.split-lp183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit147

_ZNSt6vectorIiSaIiEED2Ev.exit147:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.cj, %bb.ci, %_ZNSt6vectorIiSaIiEED2Ev.exit149
  %.pn55.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit149 ], [ %i.nj, %bb.cj ], [ %i.nj, %bb.ci ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZNSt5arrayISt6vectorIiSaIiEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #17
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit147, %bb.ch
  %.pn55.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit147 ], [ %i.ni, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.db

bb.cw:                                            ; preds = %._crit_edge311
  invoke void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %3)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw, %._crit_edge311
  %i.pd = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %bb.cy, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.pe, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.pd, %bb.cy ] ; 4 uses
  %i.pe = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i162
  %i.ph = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !110
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.pg to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pl) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %bb.cz, %.lr.ph.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #20
  %.not.i.i.i.i163 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i.i163, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i162, !llvm.loop !3

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.cy
  %i.pm = load ptr, ptr %4, align 8, !tbaa !97
  %i.pn = load i64, ptr %i.b, align 8, !tbaa !98
  %i.po = shl i64 %i.pn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pm, i8 0, i64 %i.po, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.pp = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.a
  br i1 %i.pq, label %_ZNSt13unordered_mapIySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS5_EESt4hashIyESt8equal_toIyESaISt4pairIKyS7_EEED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.pr = load i64, ptr %i.b, align 8, !tbaa !98
  %i.ps = shl i64 %i.pr, 3
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #20
  br label %_ZNSt13unordered_mapIySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS5_EESt4hashIyESt8equal_toIyESaISt4pairIKyS7_EEED2Ev.exit

_ZNSt13unordered_mapIySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS5_EESt4hashIyESt8equal_toIyESaISt4pairIKyS7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.da
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.fca.0.load = load double, ptr %3, align 16
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.load = load double, ptr %i.pt, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert

bb.db:                                            ; preds = %bb.o, %bb.cv, %bb.cx, %.body
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %.body ], [ %i.pc, %bb.cx ], [ %.pn55.pn.pn.pn.pn.pn, %bb.cv ], [ %i.dl, %bb.o ]
  call void @_ZNSt13unordered_mapIySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS5_EESt4hashIyESt8equal_toIyESaISt4pairIKyS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn63.pn
}

declare noundef i64 @_Z33paulis_getKeyOfSameMixedAmpsGroup8PauliStr(i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS5_EESt4hashIyESt8equal_toIyESaISt4pairIKyS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !98
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !225
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !45
  invoke void @__cxa_rethrow() #18
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !98
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  store ptr %i.w, ptr %3, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !42
  store ptr %3, ptr %i.x, align 8, !tbaa !43
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  store ptr %3, ptr %i.y, align 8, !tbaa !103
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !98
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !42
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !225
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !225
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !227
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !103
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !103
  store ptr %i.o, ptr %.02530, align 8, !tbaa !43
  store ptr %.02530, ptr %i.g, align 8, !tbaa !103
  store ptr %i.g, ptr %i.m, align 8, !tbaa !42
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !43
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  store ptr %i.r, ptr %.02530, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !42
  store ptr %.02530, ptr %i.s, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #20
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !98
  store ptr %.0.i, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z39localiser_densmatr_calcExpecPauliStrSum5Qureg11PauliStrSum(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::complex", align 8      ; 5 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  br label %bb.b

._crit_edge:                                      ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, %bb.a
  %.fca.1.load10 = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ]
  %.fca.0.load8 = phi double [ 0.000000e+00, %bb.a ], [ %i.ad, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %i.j = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ae, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ]
  %i.k = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ad, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ]
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.06 ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.06 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.n = tail call { double, double } @_Z42getDensMatrExpecPauliStrTermOfOnlyThisNode5Qureg8PauliStr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0  ; 3 uses
  %i.p = extractvalue { double, double } %i.n, 1  ; 3 uses
  %.sroa.0.0.copyload.i = load double, ptr %i.l, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81 ; 3 uses
  %i.q = fmul double %.sroa.0.0.copyload.i, %i.o
  %i.r = fmul double %i.p, %.sroa.4.0.copyload.i
  %i.s = fmul double %.sroa.0.0.copyload.i, %i.p
  %i.t = fmul double %i.o, %.sroa.4.0.copyload.i
  %i.u = fsub double %i.q, %i.r                   ; 3 uses
  %i.v = fadd double %i.s, %i.t                   ; 3 uses
  %i.w = fcmp uno double %i.u, 0.000000e+00
  br i1 %i.w, label %bb.c, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !93

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp uno double %i.v, 0.000000e+00
  br i1 %i.x, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !93

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef { double, double } @__muldc3(double noundef %.sroa.0.0.copyload.i, double noundef %.sroa.4.0.copyload.i, double noundef %i.o, double noundef %i.p) #17 ; 2 uses
  %i.z = extractvalue { double, double } %i.y, 0
  %i.aa = extractvalue { double, double } %i.y, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %i.ab = phi double [ %i.u, %bb.b ], [ %i.u, %bb.c ], [ %i.z, %bb.d ]
  %i.ac = phi double [ %i.v, %bb.b ], [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %i.ad = fadd double %i.ab, %i.k                 ; 3 uses
  %i.ae = fadd double %i.ac, %i.j                 ; 3 uses
  store double %i.ad, ptr %2, align 8
  store double %i.ae, ptr %i.a, align 8
  %i.af = add nuw nsw i64 %.06, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !228

bb.e:                                             ; preds = %._crit_edge
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %2)
  %.fca.0.load.pre = load double, ptr %2, align 8
  %.fca.1.load.pre = load double, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.fca.1.load = phi double [ %.fca.1.load.pre, %bb.e ], [ %.fca.1.load10, %._crit_edge ]
  %.fca.0.load = phi double [ %.fca.0.load.pre, %bb.e ], [ %.fca.0.load8, %._crit_edge ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z45localiser_statevec_calcExpecFullStateDiagMatr5Qureg17FullStateDiagMatrSt7complexIdEb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.Qureg, align 8              ; 5 uses
  %6 = alloca %struct.Qureg, align 8              ; 12 uses
  %7 = alloca %"class.std::complex", align 8      ; 4 uses
  %.sroa.20 = alloca [92 x i8], align 4           ; 6 uses
  %8 = alloca %struct.Qureg, align 8              ; 4 uses
  %9 = alloca %struct.FullStateDiagMatr, align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.5.0.extract.shift to i32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.879.0.copyload = load i32, ptr %.sroa.879.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1180.0.copyload = load ptr, ptr %.sroa.1180.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.a = load <2 x i64>, ptr %1, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 4 uses
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.656.0.copyload = load i32, ptr %.sroa.656.0..sroa_idx, align 4
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.757.0.copyload = load i64, ptr %.sroa.757.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.959.0.copyload = load ptr, ptr %.sroa.959.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.1060.0.copyload = load ptr, ptr %.sroa.1060.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.b = icmp eq i32 %.sroa.6.0.copyload, 0       ; 2 uses
  %i.c = icmp ne i32 %.sroa.5.0.copyload, 0       ; 2 uses
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %.sroa.778.0.copyload to i64
  %i.e = sdiv i64 %.sroa.2.0.copyload, %i.d
  %.not.i.i = icmp eq i32 %.sroa.879.0.copyload, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_Z35util_getGlobalColumnOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i: ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %.sroa.959.0.copyload, i64 %i.h
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, 0
  %.idx.i.i = select i1 %.not2.i.i, i64 0, i64 %i.h
  %i.j = getelementptr inbounds [16 x i8], ptr %.sroa.1060.0.copyload, i64 %.idx.i.i
  %.sroa.12.sroa.0.0.copyload74 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.k, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.e:                                             ; preds = %bb.a
  %or.cond5.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !231
  call void @_Z27qureg_populateNonHeapFieldsiiiii(ptr dead_on_unwind nonnull writable sret(%struct.Qureg) align 8 %6, i32 noundef %.sroa.10.0.copyload, i32 noundef %.sroa.879.0.copyload, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.0.sroa.5.0.extract.trunc, i32 noundef %.sroa.4.0.copyload), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 104, i1 false), !noalias !231
  call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %6)
  %i.l = call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %5), !noalias !231 ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.sroa.1180.0.copyload, i64 %i.l
  %.not.i6.i = icmp eq i64 %.sroa.0.sroa.5.0.extract.shift, 0
  %.idx.i7.i = select i1 %.not.i6.i, i64 0, i64 %i.l
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.12.0.copyload, i64 %.idx.i7.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !noalias !231
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47, !noalias !231
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !47, !noalias !231
  %.sroa.12.sroa.0.0.copyload75 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.o = load i64, ptr %6, align 8
  %.sroa.19.96..sroa_idx43 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.19.96.copyload44 = load i32, ptr %.sroa.19.96..sroa_idx43, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx48 = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx48, i64 92, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !231
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.12.sroa.0.0.copyload76 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.p, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit: ; preds = %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i, %bb.f, %bb.g
  %.sroa.12.sroa.0.0 = phi <5 x ptr> [ %.sroa.12.sroa.0.0.copyload75, %bb.f ], [ %.sroa.12.sroa.0.0.copyload76, %bb.g ], [ %.sroa.12.sroa.0.0.copyload74, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.15.sroa.0.0 = phi i64 [ %i.o, %bb.f ], [ %.sroa.0.0.copyload, %bb.g ], [ %.sroa.0.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.96.copyload44, %bb.f ], [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.1060.0.copyload, %bb.f ], [ %.sroa.1060.0.copyload, %bb.g ], [ %i.j, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.13.0 = phi ptr [ %.sroa.959.0.copyload, %bb.f ], [ %.sroa.959.0.copyload, %bb.g ], [ %i.i, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.757.0.copyload, %bb.f ], [ %.sroa.757.0.copyload, %bb.g ], [ %i.e, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.9.0 = phi i32 [ %.sroa.5.0.copyload, %bb.f ], [ %.sroa.5.0.copyload, %bb.g ], [ 1, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.15.sroa.0.0, ptr %8, align 8
  %.sroa.19.96..sroa_idx45 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.19.0, ptr %.sroa.19.96..sroa_idx45, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, i64 92, i1 false), !tbaa.struct !112
  store <2 x i64> %i.a, ptr %9, align 16
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx13, align 16, !tbaa !19
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.4.0.copyload, ptr %.sroa.8.0..sroa_idx17, align 4, !tbaa !19
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx21, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %.sroa.656.0.copyload, ptr %.sroa.10.0..sroa_idx25, align 4
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx29, align 16, !tbaa !46
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store <5 x ptr> %.sroa.12.sroa.0.0, ptr %.sroa.12.0..sroa_idx32, align 8
  %.sroa.13.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx35, align 16, !tbaa !47
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx39, align 8, !tbaa !47
  %i.q = call { double, double } @_Z45accel_statevec_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef nonnull byval(%struct.Qureg) align 8 %8, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %9, double %2, double %3, i1 noundef zeroext %4) ; 3 uses
  %i.r = extractvalue { double, double } %i.q, 0
  store double %i.r, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = extractvalue { double, double } %i.q, 1
  store double %i.t, ptr %i.s, align 8
  %.not = icmp eq i32 %.sroa.19.0, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %7)
  %.fca.0.load.pre = load double, ptr %7, align 8
  %.fca.1.load.pre = load double, ptr %i.s, align 8
  %i.u = insertvalue { double, double } poison, double %.fca.0.load.pre, 0
  %i.v = insertvalue { double, double } %i.u, double %.fca.1.load.pre, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  %.fca.1.insert.merged = phi { double, double } [ %i.v, %bb.h ], [ %i.q, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  ret { double, double } %.fca.1.insert.merged
}

declare { double, double } @_Z45accel_statevec_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { double, double } @_Z45localiser_densmatr_calcExpecFullStateDiagMatr5Qureg17FullStateDiagMatrSt7complexIdEb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.Qureg, align 8              ; 5 uses
  %6 = alloca %struct.Qureg, align 8              ; 12 uses
  %7 = alloca %"class.std::complex", align 8      ; 4 uses
  %.sroa.20 = alloca [92 x i8], align 4           ; 6 uses
  %8 = alloca %struct.Qureg, align 8              ; 4 uses
  %9 = alloca %struct.FullStateDiagMatr, align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.5.0.extract.shift to i32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.879.0.copyload = load i32, ptr %.sroa.879.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1180.0.copyload = load ptr, ptr %.sroa.1180.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.a = load <2 x i64>, ptr %1, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 4 uses
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.656.0.copyload = load i32, ptr %.sroa.656.0..sroa_idx, align 4
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.757.0.copyload = load i64, ptr %.sroa.757.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.959.0.copyload = load ptr, ptr %.sroa.959.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.1060.0.copyload = load ptr, ptr %.sroa.1060.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.b = icmp eq i32 %.sroa.6.0.copyload, 0       ; 2 uses
  %i.c = icmp ne i32 %.sroa.5.0.copyload, 0       ; 2 uses
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %.sroa.778.0.copyload to i64
  %i.e = sdiv i64 %.sroa.2.0.copyload, %i.d
  %.not.i.i = icmp eq i32 %.sroa.879.0.copyload, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_Z35util_getGlobalColumnOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i: ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %.sroa.959.0.copyload, i64 %i.h
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, 0
  %.idx.i.i = select i1 %.not2.i.i, i64 0, i64 %i.h
  %i.j = getelementptr inbounds [16 x i8], ptr %.sroa.1060.0.copyload, i64 %.idx.i.i
  %.sroa.12.sroa.0.0.copyload74 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.k, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.e:                                             ; preds = %bb.a
  %or.cond5.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !234
  call void @_Z27qureg_populateNonHeapFieldsiiiii(ptr dead_on_unwind nonnull writable sret(%struct.Qureg) align 8 %6, i32 noundef %.sroa.10.0.copyload, i32 noundef %.sroa.879.0.copyload, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.0.sroa.5.0.extract.trunc, i32 noundef %.sroa.4.0.copyload), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 104, i1 false), !noalias !234
  call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %6)
  %i.l = call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %5), !noalias !234 ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.sroa.1180.0.copyload, i64 %i.l
  %.not.i6.i = icmp eq i64 %.sroa.0.sroa.5.0.extract.shift, 0
  %.idx.i7.i = select i1 %.not.i6.i, i64 0, i64 %i.l
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.12.0.copyload, i64 %.idx.i7.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !noalias !234
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47, !noalias !234
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !47, !noalias !234
  %.sroa.12.sroa.0.0.copyload75 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.o = load i64, ptr %6, align 8
  %.sroa.19.96..sroa_idx43 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.19.96.copyload44 = load i32, ptr %.sroa.19.96..sroa_idx43, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx48 = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx48, i64 92, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !234
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.12.sroa.0.0.copyload76 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.p, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit: ; preds = %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i, %bb.f, %bb.g
  %.sroa.12.sroa.0.0 = phi <5 x ptr> [ %.sroa.12.sroa.0.0.copyload75, %bb.f ], [ %.sroa.12.sroa.0.0.copyload76, %bb.g ], [ %.sroa.12.sroa.0.0.copyload74, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.15.sroa.0.0 = phi i64 [ %i.o, %bb.f ], [ %.sroa.0.0.copyload, %bb.g ], [ %.sroa.0.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.96.copyload44, %bb.f ], [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.1060.0.copyload, %bb.f ], [ %.sroa.1060.0.copyload, %bb.g ], [ %i.j, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.13.0 = phi ptr [ %.sroa.959.0.copyload, %bb.f ], [ %.sroa.959.0.copyload, %bb.g ], [ %i.i, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.757.0.copyload, %bb.f ], [ %.sroa.757.0.copyload, %bb.g ], [ %i.e, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.9.0 = phi i32 [ %.sroa.5.0.copyload, %bb.f ], [ %.sroa.5.0.copyload, %bb.g ], [ 1, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.15.sroa.0.0, ptr %8, align 8
  %.sroa.19.96..sroa_idx45 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.19.0, ptr %.sroa.19.96..sroa_idx45, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, i64 92, i1 false), !tbaa.struct !112
  store <2 x i64> %i.a, ptr %9, align 16
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx13, align 16, !tbaa !19
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.4.0.copyload, ptr %.sroa.8.0..sroa_idx17, align 4, !tbaa !19
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx21, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %.sroa.656.0.copyload, ptr %.sroa.10.0..sroa_idx25, align 4
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx29, align 16, !tbaa !46
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store <5 x ptr> %.sroa.12.sroa.0.0, ptr %.sroa.12.0..sroa_idx32, align 8
  %.sroa.13.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx35, align 16, !tbaa !47
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx39, align 8, !tbaa !47
  %i.q = call { double, double } @_Z45accel_densmatr_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef nonnull byval(%struct.Qureg) align 8 %8, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %9, double %2, double %3, i1 noundef zeroext %4) ; 3 uses
  %i.r = extractvalue { double, double } %i.q, 0
  store double %i.r, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = extractvalue { double, double } %i.q, 1
  store double %i.t, ptr %i.s, align 8
  %.not = icmp eq i32 %.sroa.19.0, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %7)
  %.fca.0.load.pre = load double, ptr %7, align 8
  %.fca.1.load.pre = load double, ptr %i.s, align 8
  %i.u = insertvalue { double, double } poison, double %.fca.0.load.pre, 0
  %i.v = insertvalue { double, double } %i.u, double %.fca.1.load.pre, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  %.fca.1.insert.merged = phi { double, double } [ %i.v, %bb.h ], [ %i.q, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  ret { double, double } %.fca.1.insert.merged
}

declare { double, double } @_Z45accel_densmatr_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { double, double } @_Z32calcInnerProdOfSameDistribQuregs5QuregS_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::complex", align 8      ; 4 uses
  %i.a = tail call { double, double } @_Z35accel_statevec_calcInnerProduct_sub5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1) ; 3 uses
  %i.b = extractvalue { double, double } %i.a, 0
  store double %i.b, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = extractvalue { double, double } %i.a, 1
  store double %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %2)
  %.fca.0.load.pre = load double, ptr %2, align 8
  %.fca.1.load.pre = load double, ptr %i.c, align 8
  %i.g = insertvalue { double, double } poison, double %.fca.0.load.pre, 0
  %i.h = insertvalue { double, double } %i.g, double %.fca.1.load.pre, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.fca.1.insert.merged = phi { double, double } [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  ret { double, double } %.fca.1.insert.merged
}

declare { double, double } @_Z35accel_statevec_calcInnerProduct_sub5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { double, double } @_Z35localiser_statevec_calcInnerProduct5QuregS_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::complex", align 8      ; 6 uses
  %3 = alloca %struct.Qureg, align 8              ; 6 uses
  %4 = alloca %struct.Qureg, align 8              ; 7 uses
  %5 = alloca %"class.std::complex", align 8      ; 6 uses
  %.sroa.017 = alloca { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }, align 8 ; 3 uses
  %.sroa.0 = alloca { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.f = tail call { double, double } @_Z35accel_statevec_calcInnerProduct_sub5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1) ; 3 uses
  %i.g = extractvalue { double, double } %i.f, 0
  store double %i.g, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = extractvalue { double, double } %i.f, 1
  store double %i.i, ptr %i.h, align 8
  %.not.i = icmp eq i32 %.sroa.3.0.copyload, 0
  br i1 %.not.i, label %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %5)
  %.fca.0.load.pre.i = load double, ptr %5, align 8
  %.fca.1.load.pre.i = load double, ptr %i.h, align 8
  %i.j = insertvalue { double, double } poison, double %.fca.0.load.pre.i, 0
  %i.k = insertvalue { double, double } %i.j, double %.fca.1.load.pre.i, 1
  br label %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit

_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit: ; preds = %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi { double, double } [ %i.k, %bb.c ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load <2 x ptr>, ptr %.sroa.518.0..sroa_idx, align 8, !tbaa !47
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.724.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.724.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.336.0.copyload = load i32, ptr %.sroa.336.0..sroa_idx, align 4
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.438.0.copyload = load ptr, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx39, align 8
  tail call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.m = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1) ; 2 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.438.0.copyload, i64 %i.m
  %.not.i3 = icmp eq i32 %.sroa.336.0.copyload, 0
  %.idx.i = select i1 %.not.i3, i64 0, i64 %i.m
  %i.o = getelementptr inbounds [16 x i8], ptr %.sroa.5.0.copyload, i64 %.idx.i
  %i.p = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.q = insertelement <2 x ptr> %i.p, ptr %i.o, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.724.sroa.0.0 = phi <2 x ptr> [ splat (ptr null), %bb.f ], [ %.sroa.724.sroa.0.0.copyload, %bb.e ]
  %i.r = phi <2 x ptr> [ %i.q, %bb.f ], [ %i.l, %bb.e ]
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.341.0.copyload = load i32, ptr %.sroa.341.0..sroa_idx, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.443.0.copyload = load ptr, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.544.0.copyload = load ptr, ptr %.sroa.544.0..sroa_idx, align 8
  tail call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %i.t = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0) ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %.sroa.443.0.copyload, i64 %i.t
  %.not.i4 = icmp eq i32 %.sroa.341.0.copyload, 0
  %.idx.i5 = select i1 %.not.i4, i64 0, i64 %i.t
  %i.v = getelementptr inbounds [16 x i8], ptr %.sroa.544.0.copyload, i64 %.idx.i5
  %i.w = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.v, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.7.sroa.0.0 = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %.sroa.7.sroa.0.0.copyload, %bb.h ]
  %i.y = phi <2 x ptr> [ %i.x, %bb.i ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x ptr> %i.y, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  store <2 x ptr> %.sroa.7.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.017, i64 72, i1 false)
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x ptr> %i.r, ptr %.sroa.227.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x ptr> %.sroa.724.sroa.0.0, ptr %.sroa.429.0..sroa_idx, align 8
  %i.z = tail call { double, double } @_Z35accel_statevec_calcInnerProduct_sub5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %4, ptr noundef nonnull byval(%struct.Qureg) align 8 %3) ; 3 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  store double %i.aa, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = extractvalue { double, double } %i.z, 1
  store double %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !28
  %.not.i6 = icmp eq i32 %i.ae, 0
  br i1 %.not.i6, label %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %2)
  %.fca.0.load.pre.i7 = load double, ptr %2, align 8
  %.fca.1.load.pre.i8 = load double, ptr %i.ab, align 8
  %i.af = insertvalue { double, double } poison, double %.fca.0.load.pre.i7, 0
  %i.ag = insertvalue { double, double } %i.af, double %.fca.1.load.pre.i8, 1
  br label %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit10

_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit10: ; preds = %bb.j, %bb.k
  %.fca.1.insert.merged.i9 = phi { double, double } [ %i.ag, %bb.k ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit10, %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit
  %.pn = phi { double, double } [ %.fca.1.insert.merged.i, %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit ], [ %.fca.1.insert.merged.i9, %_Z32calcInnerProdOfSameDistribQuregs5QuregS_.exit10 ]
  ret { double, double } %.pn
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z44localiser_densmatr_calcFidelityWithPureState5QuregS_b(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::complex", align 8      ; 6 uses
  %4 = alloca %struct.Qureg, align 8              ; 5 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z29assert_localiserGivenStateVec5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !28
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %.thread14

.thread:                                          ; preds = %bb.b
  tail call void @_Z46error_calcFidStateVecDistribWhileDensMatrLocalv()
  br label %bb.e

.thread14:                                        ; preds = %bb.b
  tail call void @_Z26comm_combineAmpsIntoBuffer5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %.sroa.0.0.copyload = load i32, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.518.0.copyload = load i32, ptr %.sroa.518.0..sroa_idx, align 4
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.619.0.copyload = load <2 x ptr>, ptr %.sroa.619.0..sroa_idx, align 8
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.f = icmp ne i32 %.sroa.0.0.copyload, 0
  %i.g = icmp ne i32 %.sroa.4.0.copyload, 0
  %i.h = zext i1 %i.g to i32
  %i.i = zext i1 %i.f to i32
  call void @_Z27qureg_populateNonHeapFieldsiiiii(ptr dead_on_unwind nonnull writable sret(%struct.Qureg) align 8 %4, i32 noundef %.sroa.518.0.copyload, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x ptr> %.sroa.619.0.copyload, ptr %i.j, align 8, !tbaa !47, !alias.scope !237
  %i.k = call { double, double } @_Z44accel_densmatr_calcFidelityWithPureState_sub5QuregS_b(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %4, i1 noundef zeroext %2) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  store double %i.l, ptr %3, align 8
  store double %i.m, ptr %i.a, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { double, double } @_Z44accel_densmatr_calcFidelityWithPureState_sub5QuregS_b(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1, i1 noundef zeroext %2) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0  ; 2 uses
  %i.p = extractvalue { double, double } %i.n, 1  ; 2 uses
  store double %i.o, ptr %3, align 8
  store double %i.p, ptr %i.a, align 8, !tbaa !81
  %.pr.pre = load i32, ptr %i.b, align 8, !tbaa !28
  %i.q = icmp eq i32 %.pr.pre, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread14, %bb.c
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %3)
  %.fca.0.load.pre = load double, ptr %3, align 8
  %.fca.1.load.pre = load double, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c
  %.fca.1.load = phi double [ 0.000000e+00, %.thread ], [ %.fca.1.load.pre, %bb.d ], [ %i.p, %bb.c ]
  %.fca.0.load = phi double [ 0.000000e+00, %.thread ], [ %.fca.0.load.pre, %bb.d ], [ %i.o, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

declare { double, double } @_Z44accel_densmatr_calcFidelityWithPureState_sub5QuregS_b(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8, i1 noundef zeroext) local_unnamed_addr #1

declare void @_Z46error_calcFidStateVecDistribWhileDensMatrLocalv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef double @_Z45localiser_densmatr_calcHilbertSchmidtDistance5QuregS_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %.sroa.011 = alloca { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }, align 8 ; 5 uses
  %.sroa.0 = alloca { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }, align 8 ; 5 uses
  %2 = alloca %struct.Qureg, align 8              ; 4 uses
  %3 = alloca %struct.Qureg, align 8              ; 4 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef double @_Z45accel_densmatr_calcHilbertSchmidtDistance_sub5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1) ; 2 uses
  store double %i.g, ptr %i.a, align 8, !tbaa !95
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !48
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load <2 x ptr>, ptr %.sroa.512.0..sroa_idx, align 8, !tbaa !47
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.718.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.718.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx25, align 8
  tail call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.i = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1) ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %.sroa.424.0.copyload, i64 %i.i
  %.not.i = icmp eq i32 %.sroa.3.0.copyload, 0
  %.idx.i = select i1 %.not.i, i64 0, i64 %i.i
  %i.k = getelementptr inbounds [16 x i8], ptr %.sroa.5.0.copyload, i64 %.idx.i
  %i.l = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.m = insertelement <2 x ptr> %i.l, ptr %i.k, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.718.sroa.0.0 = phi <2 x ptr> [ splat (ptr null), %bb.e ], [ %.sroa.718.sroa.0.0.copyload, %bb.d ]
  %i.n = phi <2 x ptr> [ %i.m, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.not3 = icmp eq i32 %i.e, 0
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.327.0.copyload = load i32, ptr %.sroa.327.0..sroa_idx, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.429.0.copyload = load ptr, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.530.0.copyload = load ptr, ptr %.sroa.530.0..sroa_idx, align 8
  tail call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %i.p = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0) ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %.sroa.429.0.copyload, i64 %i.p
  %.not.i4 = icmp eq i32 %.sroa.327.0.copyload, 0
  %.idx.i5 = select i1 %.not.i4, i64 0, i64 %i.p
  %i.r = getelementptr inbounds [16 x i8], ptr %.sroa.530.0.copyload, i64 %.idx.i5
  %i.s = insertelement <2 x ptr> poison, ptr %i.q, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.7.sroa.0.0 = phi <2 x ptr> [ splat (ptr null), %bb.h ], [ %.sroa.7.sroa.0.0.copyload, %bb.g ]
  %i.u = phi <2 x ptr> [ %i.t, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.011, i64 72, i1 false), !tbaa.struct !48
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store <2 x ptr> %i.n, ptr %.sroa.512.0..sroa_idx13, align 8, !tbaa !47
  %.sroa.718.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store <2 x ptr> %.sroa.718.sroa.0.0, ptr %.sroa.718.0..sroa_idx19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false), !tbaa.struct !48
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x ptr> %i.u, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store <2 x ptr> %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx10, align 8
  %i.v = tail call noundef double @_Z45accel_densmatr_calcHilbertSchmidtDistance_sub5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %3) ; 2 uses
  store double %i.v, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %i.w = phi double [ %i.v, %bb.i ], [ %i.g, %bb.b ]
  %i.x = or i32 %i.e, %i.c
  %or.cond.not = icmp eq i32 %i.x, 0
  br i1 %or.cond.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z15comm_reduceRealPd(ptr noundef nonnull %i.a)
  %.pre = load double, ptr %i.a, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.y = phi double [ %i.w, %bb.j ], [ %.pre, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret double %i.y
}

declare noundef double @_Z45accel_densmatr_calcHilbertSchmidtDistance_sub5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z38localiser_statevec_multiQubitProjector5QuregSt6vectorIiSaIiEES2_d(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, double noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.34", align 8    ; 6 uses
  %5 = alloca %"class.std::vector.39", align 8    ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 6 uses
  %7 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !29

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %.pre70 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %.pre75 = ptrtoint ptr %.pre70 to i64
  %.pre76 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre70, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi77 = phi i64 [ %.pre76, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre75, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.j = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 7 uses
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v4i32
!25 = !{!"long long", !9, i64 0}
!26 = !{!"p1 _ZTSSt7complexIdE", !13, i64 0}
!27 = !{!"_ZTS5Qureg", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !26, i64 96}
!28 = !{!27, !10, i64 8}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!27, !10, i64 24}
!31 = !{!"any p2 pointer", !13, i64 0}
!32 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!33 = !{!"long", !9, i64 0}
!34 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!35 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"float", !9, i64 0}
!37 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !36, i64 0, !33, i64 8}
!38 = !{!"_ZTSSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !32, i64 0, !33, i64 8, !35, i64 16, !33, i64 24, !37, i64 32, !34, i64 48}
!39 = !{!38, !32, i64 0}
!40 = !{!38, !33, i64 8}
!41 = !{!37, !36, i64 0}
!42 = !{!34, !34, i64 0}
!43 = !{!35, !34, i64 0}
!44 = !{!38, !34, i64 16}
!45 = !{!37, !33, i64 8}
!46 = !{!25, !25, i64 0}
!47 = !{!26, !26, i64 0}
!48 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 8, !46, i64 56, i64 8, !46, i64 64, i64 8, !46, i64 72, i64 8, !47, i64 80, i64 8, !47, i64 88, i64 8, !47, i64 96, i64 8, !47}
!49 = !{!27, !26, i64 72}
!50 = !{!27, !10, i64 4}
!51 = !{!27, !26, i64 80}
!52 = !{i64 0, i64 4, !19, i64 8, i64 8, !46, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19, i64 32, i64 8, !46, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !47, i64 88, i64 8, !47}
!53 = !{!"_ZTS17FullStateDiagMatr", !10, i64 0, !25, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !25, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !26, i64 80, !26, i64 88}
!54 = !{!53, !10, i64 24}
!55 = !{!53, !10, i64 20}
!56 = !{!53, !10, i64 16}
!57 = !{!27, !10, i64 28}
!58 = !{!"bool", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!27, !25, i64 32}
!61 = !{!27, !10, i64 12}
!62 = !{!27, !25, i64 48}
!63 = !{!"_ZTS21util_VectorIndexRange", !25, i64 0, !25, i64 8, !25, i64 16}
!64 = !{!63, !25, i64 8}
!65 = !{!63, !25, i64 0}
!66 = !{!63, !25, i64 16}
!67 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!68 = !{!13, !13, i64 0}
!69 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!70 = !{!"_ZTSSt8functionIFvvEE", !69, i64 0, !13, i64 24}
!71 = !{!70, !13, i64 24}
!72 = !{!69, !13, i64 16}
!73 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !13, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!74, !73, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!77 = !{!76, !26, i64 0}
!78 = !{!74, !73, i64 8}
!79 = !{!76, !26, i64 16}
!80 = !{!74, !73, i64 16}
!81 = !{!9, !9, i64 0}
!82 = !{i64 0, i64 16, !81}
!83 = !{!76, !26, i64 8}
!84 = !{!"_ZTSNSt12_Vector_baseI5QuregSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!85 = !{!84, !13, i64 0}
!86 = !{!84, !13, i64 16}
!87 = !{!84, !13, i64 8}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{i64 0, i64 4, !19, i64 8, i64 8, !46, i64 16, i64 64, !81}
!91 = !{!"p2 _ZTSSt7complexIdE", !31, i64 0}
!92 = !{!"_ZTS8CompMatr", !10, i64 0, !25, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !91, i64 40, !26, i64 48, !26, i64 56}
!93 = !{!"branch_weights", i32 1, i32 1048575}
!94 = !{!"double", !9, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE", !32, i64 0, !33, i64 8, !35, i64 16, !33, i64 24, !37, i64 32, !34, i64 48}
!97 = !{!96, !32, i64 0}
!98 = !{!96, !33, i64 8}
!99 = !{!"_ZTS11PauliStrSum", !25, i64 0, !13, i64 8, !26, i64 16, !14, i64 24}
!100 = !{!99, !25, i64 0}
!101 = !{!99, !13, i64 8}
!102 = !{!99, !26, i64 16}
!103 = !{!96, !34, i64 16}
!104 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEEE", !13, i64 0}
!105 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS8_EEELb0EEE", !13, i64 0}
!106 = !{!"_ZTSNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !104, i64 0, !105, i64 8}
!107 = !{!"p1 _ZTSSt5tupleIJ8PauliStrSt7complexIdEEE", !13, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!106, !105, i64 8}
!110 = !{!108, !107, i64 16}
!111 = !{!108, !107, i64 0}
!112 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 8, !46, i64 28, i64 8, !46, i64 36, i64 8, !46, i64 44, i64 8, !46, i64 52, i64 8, !46, i64 60, i64 8, !47, i64 68, i64 8, !47, i64 76, i64 8, !47, i64 84, i64 8, !47}
!113 = distinct !{!113, !22, !23, !24}
!114 = distinct !{!114, !22, !24, !23}
!115 = distinct !{!115, !22, !23, !24}
!116 = distinct !{!116, !22, !24, !23}
!117 = distinct !{!117, !22, !23, !24}
!118 = distinct !{!118, !22, !24, !23}
!119 = distinct !{!119, !22, !23, !24}
!120 = distinct !{!120, !22, !24, !23}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22, !23, !24}
!123 = distinct !{!123, !22, !24, !23}
!124 = distinct !{!124, !22, !23, !24}
!125 = distinct !{!125, !22, !24, !23}
!126 = distinct !{!126, !22}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = !{!"_ZTSSt4pairIKiiE", !10, i64 0, !10, i64 4}
!131 = !{!130, !10, i64 0}
!132 = !{!130, !10, i64 4}
!133 = !{!38, !33, i64 24}
!134 = distinct !{!134, !22}
!135 = !{!38, !34, i64 48}
!136 = distinct !{!136, !22, !23, !24}
!137 = distinct !{!137, !22, !24, !23}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = !{!27, !25, i64 56}
!141 = distinct !{!141, !22}
!142 = !{!53, !25, i64 8}
!143 = !{!27, !10, i64 16}
!144 = !{!53, !25, i64 32}
!145 = !{!53, !26, i64 80}
!146 = !{!53, !26, i64 88}
!147 = !{!53, !10, i64 0}
!148 = !{!27, !10, i64 0}
!149 = distinct !{!149, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg"}
!150 = distinct !{!150, !149, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, !22}
!153 = !{!"p1 long long", !13, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !153, i64 0, !153, i64 8, !153, i64 16}
!155 = !{!154, !153, i64 16}
!156 = !{!154, !153, i64 0}
!157 = !{!154, !153, i64 8}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{null, null}
!162 = distinct !{!162, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr"}
!163 = distinct !{!163, !162, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr: argument 0"}
!164 = !{!163}
!165 = distinct !{!165, !22}
!166 = distinct !{!166, !22}
!167 = distinct !{!167, !22}
!168 = distinct !{!168, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr"}
!169 = distinct !{!169, !168, !"_Z46getSpoofedBufferlessQuregFromFullStateDiagMatr17FullStateDiagMatr: argument 0"}
!170 = !{!169}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !"_Z43getSpoofedSerialStateVecFromDensMatrAndAmps5QuregPSt7complexIdE"}
!173 = distinct !{!173, !172, !"_Z43getSpoofedSerialStateVecFromDensMatrAndAmps5QuregPSt7complexIdE: argument 0"}
!174 = !{!173}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = !{i64 0, i64 4, !19, i64 8, i64 8, !46, i64 16, i64 256, !81}
!178 = distinct !{!178, !"_ZL12getCompMatr1PPSt7complexIdE"}
!179 = distinct !{!179, !178, !"_ZL12getCompMatr1PPSt7complexIdE: argument 0"}
!180 = distinct !{!180, !"_ZL12getCompMatr2PPSt7complexIdE"}
!181 = distinct !{!181, !180, !"_ZL12getCompMatr2PPSt7complexIdE: argument 0"}
!182 = !{!92, !91, i64 40}
!183 = !{!179}
!184 = !{!"_ZTS9CompMatr1", !10, i64 0, !25, i64 8, !9, i64 16}
!185 = !{!184, !10, i64 0}
!186 = !{!184, !25, i64 8}
!187 = !{!181}
!188 = !{!"_ZTS9CompMatr2", !10, i64 0, !25, i64 8, !9, i64 16}
!189 = !{!188, !10, i64 0}
!190 = !{!188, !25, i64 8}
!191 = !{i64 0, i64 4, !19, i64 8, i64 8, !46, i64 16, i64 32, !81}
!192 = distinct !{!192, !22}
!193 = !{!"_ZTS7SuperOp", !10, i64 0, !25, i64 8, !91, i64 16, !26, i64 24, !26, i64 32, !14, i64 40}
!194 = !{!193, !10, i64 0}
!195 = !{!92, !10, i64 0}
!196 = !{!193, !25, i64 8}
!197 = !{!92, !25, i64 8}
!198 = !{!193, !26, i64 32}
!199 = !{!92, !26, i64 56}
!200 = distinct !{!200, !22, !23, !24}
!201 = distinct !{!201, !22, !24, !23}
!202 = distinct !{!202, !22}
!203 = distinct !{!203, !22}
!204 = distinct !{!204, !22, !23, !24}
!205 = distinct !{!205, !22, !24, !23}
!206 = distinct !{!206, !22}
!207 = distinct !{!207, !22}
!208 = distinct !{!208, !22}
!209 = distinct !{!209, !22}
!210 = distinct !{!210, !"_ZSt19__relocate_object_aISt5tupleIJ8PauliStrSt7complexIdEEES4_SaIS4_EEvPT_PT0_RT1_"}
!211 = distinct !{!211, !210, !"_ZSt19__relocate_object_aISt5tupleIJ8PauliStrSt7complexIdEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!212 = distinct !{!212, !210, !"_ZSt19__relocate_object_aISt5tupleIJ8PauliStrSt7complexIdEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!213 = distinct !{!213, !22}
!214 = distinct !{!214, !22}
!215 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!216 = !{!106, !104, i64 0}
!217 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE12_Vector_implE", !108, i64 0}
!218 = !{!"_ZTSSt12_Vector_baseISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE", !217, i64 0}
!219 = !{!"_ZTSSt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS4_EE", !218, i64 0}
!220 = !{!"_ZTSSt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS6_EEE", !25, i64 0, !219, i64 8}
!221 = !{!220, !25, i64 0}
!222 = !{!108, !107, i64 8}
!223 = !{!212, !211}
!224 = !{!107, !107, i64 0}
!225 = !{!96, !33, i64 24}
!226 = distinct !{!226, !22}
!227 = !{!96, !34, i64 48}
!228 = distinct !{!228, !22}
!229 = distinct !{!229, !"_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr"}
!230 = distinct !{!230, !229, !"_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr: argument 0"}
!231 = !{!230}
!232 = distinct !{!232, !"_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr"}
!233 = distinct !{!233, !232, !"_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr: argument 0"}
!234 = !{!233}
!235 = distinct !{!235, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg"}
!236 = distinct !{!236, !235, !"_Z53getSpoofedLocalStateVecFromDistributedDensMatrBuffers5Qureg: argument 0"}
!237 = !{!236}
end_hunk_2
