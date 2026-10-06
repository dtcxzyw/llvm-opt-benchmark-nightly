Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN3npy12parse_headerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.aa:                                            ; preds = %._crit_edge.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.dx, i64 %i.dz, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i112
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !217 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !158
  %i.eh = load ptr, ptr %10, align 8, !tbaa !149
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ej = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ds
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ej) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN3npy7pyparse9parse_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ac unwind label %bb.at

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.el, ptr %13, align 8, !tbaa !230
  %i.em = load ptr, ptr %12, align 8, !tbaa !149  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 %i.eo, ptr %i.d, align 8, !tbaa !217
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i120, label %._crit_edge.i.i119

.noexc.i120:                                      ; preds = %bb.ac
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc121 unwind label %bb.au ; 2 uses

.noexc121:                                        ; preds = %.noexc.i120
  store ptr %i.eq, ptr %13, align 8, !tbaa !149
  %i.er = load i64, ptr %i.d, align 8, !tbaa !217
  store i64 %i.er, ptr %i.el, align 8, !tbaa !58
  br label %._crit_edge.i.i119

._crit_edge.i.i119:                               ; preds = %.noexc121, %bb.ac
  %i.es = phi ptr [ %i.eq, %.noexc121 ], [ %i.el, %bb.ac ] ; 2 uses
  switch i64 %i.eo, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i119
  %i.et = load i8, ptr %i.em, align 1, !tbaa !58
  store i8 %i.et, ptr %i.es, align 1, !tbaa !58
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.em, i64 %i.eo, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i119
  %i.eu = load i64, ptr %i.d, align 8, !tbaa !217 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !158
  %i.ew = load ptr, ptr %13, align 8, !tbaa !149
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ey = invoke i64 @_ZN3npy11parse_descrENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %13)
          to label %bb.ag unwind label %bb.av     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.ez = load ptr, ptr %13, align 8, !tbaa !149  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.el
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.ez) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.fb = load i64, ptr %i.dn, align 8, !tbaa !158
  switch i64 %i.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fc = load ptr, ptr %8, align 8, !tbaa !149
  %i.fd = load i32, ptr %i.fc, align 1
  %i.fe = icmp ne i32 %i.fd, 1702195796
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fh = load ptr, ptr %8, align 8, !tbaa !149   ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = xor i32 %i.fi, 1936482630
  %i.fk = getelementptr i8, ptr %i.fh, i64 4
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  %i.fn = xor i32 %i.fm, 101
  %i.fo = or i32 %i.fj, %i.fn
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fs = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull @.str.64)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %.noexc126 unwind label %bb.aw

.noexc126:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.fu = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.fv, ptr %15, align 8, !tbaa !230
  %i.fw = load ptr, ptr %10, align 8, !tbaa !149  ; 2 uses
  %i.fx = load i64, ptr %i.eg, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.fx, ptr %i.c, align 8, !tbaa !217
  %i.fy = icmp ugt i64 %i.fx, 15
  br i1 %i.fy, label %.noexc.i130, label %._crit_edge.i.i129

.noexc.i130:                                      ; preds = %_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc131 unwind label %bb.ax ; 2 uses

.noexc131:                                        ; preds = %.noexc.i130
  store ptr %i.fz, ptr %15, align 8, !tbaa !149
  %i.ga = load i64, ptr %i.c, align 8, !tbaa !217
  store i64 %i.ga, ptr %i.fv, align 8, !tbaa !58
  br label %._crit_edge.i.i129

._crit_edge.i.i129:                               ; preds = %.noexc131, %_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gb = phi ptr [ %i.fz, %.noexc131 ], [ %i.fv, %_ZN3npy7pyparse10parse_boolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.fx, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i129
  %i.gc = load i8, ptr %i.fw, align 1, !tbaa !58
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !58
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %i.fw, i64 %i.fx, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i129
  %i.gd = load i64, ptr %i.c, align 8, !tbaa !217 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !158
  %i.gf = load ptr, ptr %15, align 8, !tbaa !149
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  store i8 0, ptr %i.gg, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  invoke void @_ZN3npy7pyparse11parse_tupleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.66") align 8 %14, ptr noundef nonnull align 8 %15)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.gh = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fv
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.gh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %i.gj = load ptr, ptr %14, align 8, !tbaa !237  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !237 ; 2 uses
  %.not267 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not267, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  store i64 %i.ey, ptr %0, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fu, ptr %i.gm, align 8, !tbaa !233
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.thread233

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.az

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  store i64 %i.ey, ptr %0, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fu, ptr %i.gq, align 8, !tbaa !233
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.gs = ptrtoint ptr %.sroa.10.1 to i64
  %i.gt = ptrtoint ptr %.sroa.0214.1 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.sroa.10.1, %.sroa.0214.1
  br i1 %.not.i.i.i.i, label %.thread233, label %bb.an

.thread233:                                       ; preds = %._crit_edge.thread, %._crit_edge
  %i.gv = phi ptr [ %i.gn, %._crit_edge.thread ], [ %i.gr, %._crit_edge ]
  %.sroa.0214.0.lcssa343 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.0214.1, %._crit_edge ]
  store ptr null, ptr %i.gv, align 8, !tbaa !136
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.gx, align 8, !tbaa !171
  br label %bb.br

bb.an:                                            ; preds = %._crit_edge
  %i.gy = icmp ugt i64 %i.gu, 9223372036854775800
  br i1 %i.gy, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !49

.noexc.i.i:                                       ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc136 unwind label %bb.bw

.noexc136:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.an
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #39
          to label %.noexc137 unwind label %bb.bw ; 5 uses

.noexc137:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.gz, ptr %i.gr, align 8, !tbaa !136
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !213
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gu ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !171
  %i.hd = icmp samesign ugt i64 %i.gu, 8
  br i1 %i.hd, label %bb.ao, label %bb.ap, !prof !216

bb.ao:                                            ; preds = %.noexc137
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr align 8 %.sroa.0214.1, i64 %i.gu, i1 false)
  br label %bb.br

bb.ap:                                            ; preds = %.noexc137
  %i.he = icmp eq i64 %i.gu, 8
  br i1 %i.he, label %.thread234, label %bb.br

.thread234:                                       ; preds = %bb.ap
  %i.hf = load i64, ptr %.sroa.0214.1, align 8, !tbaa !217
  store i64 %i.hf, ptr %i.gz, align 8, !tbaa !217
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !213
  br label %bb.bs

bb.aq:                                            ; preds = %.noexc.i87, %._crit_edge.i.i81
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %7, align 8, !tbaa !149   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.cg
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.hh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.ar:                                            ; preds = %.noexc.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %9, align 8, !tbaa !149   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.cz
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.hk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.as:                                            ; preds = %.noexc.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %11, align 8, !tbaa !149  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ds
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.hn) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.au:                                            ; preds = %.noexc.i120
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.av:                                            ; preds = %bb.af
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %13, align 8, !tbaa !149  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.el
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.hs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.aw:                                            ; preds = %bb.ah
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.ax:                                            ; preds = %.noexc.i130
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.ay:                                            ; preds = %bb.al
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %15, align 8, !tbaa !149  ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.fv
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef %i.hx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.az:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.sroa.0211.0271 = phi ptr [ %i.gj, %.lr.ph ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 3 uses
  %.sroa.15.0270 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 3 uses
  %.sroa.10.0269 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 3 uses
  %.sroa.0214.0268 = phi ptr [ null, %.lr.ph ], [ %.sroa.0214.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr %i.go, ptr %16, align 8, !tbaa !230
  %i.hz = load ptr, ptr %.sroa.0211.0271, align 8, !tbaa !149 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0211.0271, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.ib, ptr %i.b, align 8, !tbaa !217
  %i.ic = icmp ugt i64 %i.ib, 15
  br i1 %i.ic, label %.noexc.i154, label %._crit_edge.i.i153

.noexc.i154:                                      ; preds = %bb.az
  %i.id = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc155 unwind label %bb.bq ; 2 uses

.noexc155:                                        ; preds = %.noexc.i154
  store ptr %i.id, ptr %16, align 8, !tbaa !149
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !217
  store i64 %i.ie, ptr %i.go, align 8, !tbaa !58
  br label %._crit_edge.i.i153

._crit_edge.i.i153:                               ; preds = %.noexc155, %bb.az
  %i.if = phi ptr [ %i.id, %.noexc155 ], [ %i.go, %bb.az ] ; 2 uses
  switch i64 %i.ib, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i153
  %i.ig = load i8, ptr %i.hz, align 1, !tbaa !58
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !58
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.hz, i64 %i.ib, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i153
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !217 ; 2 uses
  store i64 %i.ih, ptr %i.gp, align 8, !tbaa !158
  %i.ii = load ptr, ptr %16, align 8, !tbaa !149
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ik = load ptr, ptr %16, align 8, !tbaa !149  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.il = tail call ptr @__errno_location() #44   ; 6 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !161 ; 2 uses
  store i32 0, ptr %i.il, align 4, !tbaa !161
  %i.in = call noundef i64 @__isoc23_strtoul(ptr noundef %i.ik, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.ip = icmp eq ptr %i.io, %i.ik
  br i1 %i.ip, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.66) #38
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %.critedge.i.i, %bb.bd
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = load i32, ptr %i.il, align 4, !tbaa !161
  %i.is = icmp eq i32 %i.ir, 0
end_hunk_0
