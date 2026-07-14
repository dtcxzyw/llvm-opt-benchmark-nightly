inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %.body181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.al

._crit_edge.i.i189:                               ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.gm, ptr %12, align 8, !tbaa !126
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.gn, align 8, !tbaa !128
  store i8 0, ptr %i.gm, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.go = load ptr, ptr %10, align 8, !tbaa !127, !noalias !1125
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !128, !noalias !1125 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gr, ptr %0, align 8, !tbaa !126, !alias.scope !1128
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.gs, align 8, !tbaa !128, !alias.scope !1128
  store i8 0, ptr %i.gr, align 8, !tbaa !45, !alias.scope !1128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gq)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i196 unwind label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i196: ; preds = %._crit_edge.i.i189
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.gm, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i197 unwind label %bb.aj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i197: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i196
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !128, !alias.scope !1128
  %i.gv = sub i64 4611686018427387903, %i.gu
  %i.gw = icmp ult i64 %i.gv, %i.gq
  br i1 %i.gw, label %.invoke.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i198

.invoke.i.i199:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i197
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.cont.i.i200 unwind label %bb.aj

.cont.i.i200:                                     ; preds = %.invoke.i.i199
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i197
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.go, i64 noundef %i.gq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit203 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i198, %.invoke.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i196, %._crit_edge.i.i189
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %0, align 8, !tbaa !127, !alias.scope !1128 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gr
  br i1 %i.ha, label %.body201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.gz) #29
  br label %.body201

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit203: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i198
  %i.hb = load ptr, ptr %12, align 8, !tbaa !127  ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gm
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit203
  call void @_ZdlPv(ptr noundef %i.hb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ak

.body201:                                         ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193
  %i.hd = load ptr, ptr %12, align 8, !tbaa !127  ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gm
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %.body201
  call void @_ZdlPv(ptr noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %.body201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.hf = load ptr, ptr %10, align 8, !tbaa !127  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.hf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ev

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %.pn90.pn = phi { ptr, i32 } [ %eh.lpad-body182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  %i.hi = load ptr, ptr %10, align 8, !tbaa !127  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.hi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487

._crit_edge.i.i216:                               ; preds = %bb.d
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  store ptr %i.hl, ptr %0, align 8, !tbaa !126
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  store i64 0, ptr %i.hm, align 8, !tbaa !128
  store i8 0, ptr %i.hl, align 8, !tbaa !45
  %i.hn = load i64, ptr %3, align 8, !tbaa !1087
  %i.ho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.hn, i8 noundef signext 32)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit221" unwind label %bb.bk ; 0 uses

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit221": ; preds = %._crit_edge.i.i216
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.hp = load ptr, ptr %0, align 8, !tbaa !127, !noalias !1131
  %i.hq = load i64, ptr %i.hm, align 8, !tbaa !128, !noalias !1131 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.hr, ptr %14, align 8, !tbaa !126, !alias.scope !1134
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !128, !alias.scope !1134
  store i8 0, ptr %i.hr, align 8, !tbaa !45, !alias.scope !1134
  %i.ht = add i64 %i.hq, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ht)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit221"
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !128, !alias.scope !1134
  %i.hv = sub i64 4611686018427387903, %i.hu
  %i.hw = icmp ult i64 %i.hv, %i.hq
  br i1 %i.hw, label %.invoke.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225: ; preds = %bb.am
  %i.hx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.hp, i64 noundef %i.hq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226 unwind label %bb.an ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225
  %i.hy = load i64, ptr %i.hs, align 8, !tbaa !128, !alias.scope !1134
  %i.hz = and i64 %i.hy, -4
  %i.ia = icmp eq i64 %i.hz, 4611686018427387900
  br i1 %i.ia, label %.invoke.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227

.invoke.i.i228:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.cont.i.i229 unwind label %bb.an

.cont.i.i229:                                     ; preds = %.invoke.i.i228
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i226
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.47, i64 noundef 4)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit232 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227, %.invoke.i.i228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i225, %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit221"
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %14, align 8, !tbaa !127, !alias.scope !1134 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.hr
  br i1 %i.ie, label %.body230, label %.body230.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit232: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i227
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.if = invoke noundef i64 @_ZN6duckdb11GetCapacityENS_5NTypeE(i8 noundef zeroext %i.f)
          to label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i236 unwind label %bb.bl ; 8 uses

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i236: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit232
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ig = icmp samesign ult i64 %i.if, 10
  %i.ih = icmp samesign ult i64 %i.if, 100
  %i.ii = select i1 %i.ih, i64 2, i64 3
  %i.ij = select i1 %i.ig, i64 1, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ik, ptr %15, align 8, !tbaa !126, !alias.scope !1137
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.ij, i8 noundef signext 0)
          to label %.noexc244 unwind label %bb.bl

.noexc244:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i236
  %i.il = load ptr, ptr %15, align 8, !tbaa !127, !alias.scope !1137 ; 4 uses
  %i.im = icmp samesign ugt i64 %i.if, 99
  br i1 %i.im, label %._crit_edge.i.i238.thread, label %._crit_edge.i.i238

._crit_edge.i.i238.thread:                        ; preds = %.noexc244
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !128, !alias.scope !1137 ; 2 uses
  %i.ip = add i64 %i.io, 4294967295
  %.lhs.trunc = trunc nuw nsw i64 %i.if to i16
  %i.iq = urem i16 %.lhs.trunc, 100
  %i.ir = shl nuw nsw i16 %i.iq, 1
  %i.is = zext nneg i16 %i.ir to i64
  %.lhs.trunc702 = trunc nuw nsw i64 %i.if to i16
  %30 = udiv i16 %.lhs.trunc702, 100
  %.zext703 = zext nneg i16 %30 to i64
  %i.it = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.is ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !45, !noalias !1137
  %i.iw = and i64 %i.ip, 4294967295
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iw
  store i8 %i.iv, ptr %i.ix, align 1, !tbaa !45
  %i.iy = load i8, ptr %i.it, align 2, !tbaa !45, !noalias !1137
  %i.iz = add i64 %i.io, 4294967294
  %i.ja = and i64 %i.iz, 4294967295
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ja
  store i8 %i.iy, ptr %i.jb, align 1, !tbaa !45
  br label %bb.ap

._crit_edge.i.i238:                               ; preds = %.noexc244
  %i.jc = icmp samesign ugt i64 %i.if, 9
  br i1 %i.jc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i238
  %i.jd = shl nuw nsw i64 %i.if, 1
  %i.je = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !45, !noalias !1137
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !45
  %i.ji = load i8, ptr %i.je, align 2, !tbaa !45, !noalias !1137
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i238.thread, %._crit_edge.i.i238
  %.0.lcssa.i.i239701 = phi i64 [ %.zext703, %._crit_edge.i.i238.thread ], [ %i.if, %._crit_edge.i.i238 ]
  %i.jj = trunc nuw nsw i64 %.0.lcssa.i.i239701 to i8
  %i.jk = or disjoint i8 %i.jj, 48
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %storemerge.i.i240 = phi i8 [ %i.jk, %bb.ap ], [ %i.ji, %bb.ao ]
  store i8 %storemerge.i.i240, ptr %i.il, align 1, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.jl = load i64, ptr %i.hs, align 8, !tbaa !128, !noalias !1140 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !128, !noalias !1140 ; 4 uses
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  %i.jp = load ptr, ptr %14, align 8, !tbaa !127, !noalias !1140 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.hr
  br i1 %i.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257: ; preds = %bb.aq
  %i.jr = icmp ult i64 %i.jl, 16
  call void @llvm.assume(i1 %i.jr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.aq
  %i.js = load i64, ptr %i.hr, align 8, !tbaa !45, !noalias !1140
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i246: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257
  %i.jt = phi i64 [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257 ]
  %i.ju = icmp ugt i64 %i.jo, %i.jt
  br i1 %i.ju, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i246
  %i.jv = load ptr, ptr %15, align 8, !tbaa !127, !noalias !1140
  %i.jw = icmp eq ptr %i.jv, %i.ik
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i256: ; preds = %bb.ar
  %i.jx = icmp ult i64 %i.jn, 16
  call void @llvm.assume(i1 %i.jx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i250: ; preds = %bb.ar
  %i.jy = load i64, ptr %i.ik, align 8, !tbaa !45, !noalias !1140
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i251: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i256
  %i.jz = phi i64 [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i250 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i256 ]
  %.not.i252 = icmp ugt i64 %i.jo, %i.jz
  br i1 %.not.i252, label %bb.at, label %.critedge.i253

.critedge.i253:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i251
  %i.ka = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.jp, i64 noundef %i.jl)
          to label %.noexc258 unwind label %bb.bm ; 5 uses

.noexc258:                                        ; preds = %.critedge.i253
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.kb, ptr %13, align 8, !tbaa !126, !alias.scope !1140
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !127 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 5 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i254

bb.as:                                            ; preds = %.noexc258
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !128 ; 2 uses
  %i.kh = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kh)
  %i.ki = add nuw nsw i64 %i.kg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kb, ptr noundef nonnull align 8 dereferenceable(1) %i.kd, i64 %i.ki, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i254: ; preds = %.noexc258
  store ptr %i.kc, ptr %13, align 8, !tbaa !127, !alias.scope !1140
  %i.kj = load i64, ptr %i.kd, align 8, !tbaa !45
  store i64 %i.kj, ptr %i.kb, align 8, !tbaa !45, !alias.scope !1140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i255: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i254, %bb.as
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !128
  %i.km = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !128, !alias.scope !1140
  store ptr %i.kd, ptr %i.ka, align 8, !tbaa !127
  store i64 0, ptr %i.kk, align 8, !tbaa !128
  store i8 0, ptr %i.kd, align 8, !tbaa !45
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit261

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i246
  %i.kn = sub i64 4611686018427387903, %i.jl
  %i.ko = icmp ult i64 %i.kn, %i.jn
  br i1 %i.ko, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i247

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc259 unwind label %bb.bm

.noexc259:                                        ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i247: ; preds = %bb.at
  %i.kp = load ptr, ptr %15, align 8, !tbaa !127, !noalias !1140
  %i.kq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.kp, i64 noundef %i.jn)
          to label %.noexc260 unwind label %bb.bm ; 5 uses

.noexc260:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i247
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.kr, ptr %13, align 8, !tbaa !126, !alias.scope !1140
  %i.ks = load ptr, ptr %i.kq, align 8, !tbaa !127 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 5 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i248

bb.av:                                            ; preds = %.noexc260
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !128 ; 2 uses
  %i.kx = icmp ult i64 %i.kw, 16
  call void @llvm.assume(i1 %i.kx)
  %i.ky = add nuw nsw i64 %i.kw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kr, ptr noundef nonnull align 8 dereferenceable(1) %i.kt, i64 %i.ky, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i248: ; preds = %.noexc260
  store ptr %i.ks, ptr %13, align 8, !tbaa !127, !alias.scope !1140
  %i.kz = load i64, ptr %i.kt, align 8, !tbaa !45
  store i64 %i.kz, ptr %i.kr, align 8, !tbaa !45, !alias.scope !1140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i249: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i248, %bb.av
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !128
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !128, !alias.scope !1140
  store ptr %i.kt, ptr %i.kq, align 8, !tbaa !127
  store i64 0, ptr %i.la, align 8, !tbaa !128
  store i8 0, ptr %i.kt, align 8, !tbaa !45
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit261

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i255
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !128
  %i.lf = icmp eq i64 %i.le, 4611686018427387903
  br i1 %i.lf, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i262

bb.aw:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit261
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc263 unwind label %bb.bn

.noexc263:                                        ; preds = %bb.aw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i262: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit261
  %i.lg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit265 unwind label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i262
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.lg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit265
  %i.lh = load ptr, ptr %13, align 8, !tbaa !127  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.lh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  %i.lk = load ptr, ptr %15, align 8, !tbaa !127  ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.ik
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  call void @_ZdlPv(ptr noundef %i.lk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.lm = load ptr, ptr %14, align 8, !tbaa !127  ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.hr
  br i1 %i.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  call void @_ZdlPv(ptr noundef %i.lm) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !45
  %i.lo = load i64, ptr %1, align 8, !tbaa !131
  %i.lp = lshr i64 %i.lo, 56
  %i.lq = trunc nuw i64 %i.lp to i8
  %i.lr = and i8 %i.lq, 127
  %.off.i = add nsw i8 %i.lr, -8
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.ax, label %bb.bu

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i274
  %i.ls = load i64, ptr %3, align 8, !tbaa !1087
  %i.lt = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.lt, i64 noundef 0, i64 noundef %i.ls, i8 noundef signext 32)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit277" unwind label %bb.bo ; 0 uses

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit277": ; preds = %bb.ax
  %i.lv = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.lw = add i64 %i.lv, -4611686018427387898
  %i.lx = icmp ult i64 %i.lw, 6
  br i1 %i.lx, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i278

bb.ay:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit277"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc279 unwind label %bb.bo

.noexc279:                                        ; preds = %bb.ay
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i278: ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit277"
  %i.ly = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.48, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit281 unwind label %bb.bo ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i278
  %i.lz = invoke noundef zeroext i1 @_ZNK6duckdb4Node11GetNextByteERNS_3ARTERh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(433) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader unwind label %.loopexit.split-lp507

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit281
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.preheader, %bb.br
  %.086.in = phi i1 [ %i.pc, %bb.br ], [ %i.lz, %.preheader ]
  br i1 %.086.in, label %bb.ba, label %bb.bs

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.mf = load i8, ptr %i.a, align 1, !tbaa !45   ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.mg = load i8, ptr %i.h, align 8, !tbaa !1091, !range !423, !noalias !1143, !noundef !36
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mi = load i8, ptr %i.ma, align 1, !tbaa !1092, !range !423, !noalias !1143, !noundef !36
  %i.mj = trunc nuw i8 %i.mi to i1
  %i.mk = add i8 %i.mf, -32
  %i.ml = icmp ult i8 %i.mk, 95
  %or.cond5.i = and i1 %i.ml, %i.mj
  br i1 %or.cond5.i, label %bb.bc, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.mb, ptr %17, align 8, !tbaa !126, !alias.scope !1143
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 1, i8 noundef signext %i.mf)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit" unwind label %bb.bp

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.mm = icmp ult i8 %i.mf, 10
  %i.mn = icmp ult i8 %i.mf, 100
  %i.mo = select i1 %i.mn, i64 2, i64 3
  %i.mp = select i1 %i.mm, i64 1, i64 %i.mo
  store ptr %i.mb, ptr %17, align 8, !tbaa !126, !alias.scope !1149
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.mp, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i unwind label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.mq = load ptr, ptr %17, align 8, !tbaa !127, !alias.scope !1149 ; 4 uses
  %i.mr = icmp ugt i8 %i.mf, 99
  br i1 %i.mr, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i
  %i.ms = urem i8 %i.mf, 100
  %i.mt = shl nuw i8 %i.ms, 1
  %31 = udiv i8 %i.mf, 100
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !45, !noalias !1149
  %i.my = getelementptr i8, ptr %i.mq, i64 2
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !45
  %i.mz = load i8, ptr %i.mv, align 2, !tbaa !45, !noalias !1149
  %i.na = getelementptr i8, ptr %i.mq, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !45
  br label %bb.be

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i
  %i.nb = icmp samesign ugt i8 %i.mf, 9
  br i1 %i.nb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  %i.nc = shl nuw i8 %i.mf, 1
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !45, !noalias !1149
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !45
  %i.ni = load i8, ptr %i.ne, align 2, !tbaa !45, !noalias !1149
  br label %_ZNSt7__cxx119to_stringEi.exit.i

bb.be:                                            ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.0.lcssa.i.i2.i = phi i8 [ %31, %._crit_edge.i.i.thread.i ], [ %i.mf, %._crit_edge.i.i.i ]
  %i.nj = or disjoint i8 %.0.lcssa.i.i2.i, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i

bb.bf:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit.i:                 ; preds = %bb.be, %bb.bd
  %storemerge.i.i.i = phi i8 [ %i.nj, %bb.be ], [ %i.ni, %bb.bd ]
  store i8 %storemerge.i.i.i, ptr %i.mq, align 1, !tbaa !45
  br label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit"

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit": ; preds = %_ZNSt7__cxx119to_stringEi.exit.i, %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.nm = load i64, ptr %i.mc, align 8, !tbaa !128, !noalias !1150
  %i.nn = icmp eq i64 %i.nm, 4611686018427387903
  br i1 %i.nn, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i283

bb.bg:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc288 unwind label %.loopexit.split-lp

.noexc288:                                        ; preds = %bb.bg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i283: ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit"
  %i.no = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %.noexc289 unwind label %.loopexit ; 6 uses

.noexc289:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i283
  store ptr %i.md, ptr %16, align 8, !tbaa !126, !alias.scope !1150
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !127 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 5 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

bb.bh:                                            ; preds = %.noexc289
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !128 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, 16
  call void @llvm.assume(i1 %i.nu)
  %i.nv = add nuw nsw i64 %i.nt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.md, ptr noundef nonnull align 8 dereferenceable(1) %i.nq, i64 %i.nv, i1 false)
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %.noexc289
  store ptr %i.np, ptr %16, align 8, !tbaa !127, !alias.scope !1150
  %i.nw = load i64, ptr %i.nq, align 8, !tbaa !45
  store i64 %i.nw, ptr %i.md, align 8, !tbaa !45, !alias.scope !1150
  %.phi.trans.insert.i285 = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %.pre.i286 = load i64, ptr %.phi.trans.insert.i285, align 8, !tbaa !128
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.bh
  %i.nx = phi i64 [ %i.nt, %bb.bh ], [ %.pre.i286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i64 %i.nx, ptr %i.me, align 8, !tbaa !128, !alias.scope !1150
  store ptr %i.nq, ptr %i.no, align 8, !tbaa !127
  store i64 0, ptr %i.ny, align 8, !tbaa !128
  store i8 0, ptr %i.nq, align 8, !tbaa !45
  %i.nz = load i64, ptr %i.me, align 8, !tbaa !128 ; 2 uses
  %i.oa = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.ob = sub i64 4611686018427387903, %i.oa
  %i.oc = icmp ult i64 %i.ob, %i.nz
  br i1 %i.oc, label %bb.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc292 unwind label %.loopexit.split-lp502

.noexc292:                                        ; preds = %bb.bj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291: ; preds = %bb.bi
  %i.od = load ptr, ptr %16, align 8, !tbaa !127
  %i.oe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.od, i64 noundef %i.nz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit501 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291
  %i.of = load ptr, ptr %16, align 8, !tbaa !127  ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.md
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.of) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  %i.oh = load ptr, ptr %17, align 8, !tbaa !127  ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.mb
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  call void @_ZdlPv(ptr noundef %i.oh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.oj = icmp eq i8 %i.mf, -1
  br i1 %i.oj, label %bb.bs, label %bb.br

bb.bk:                                            ; preds = %._crit_edge.i.i216
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.bl:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i236, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit232
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i247, %bb.au, %.critedge.i253
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i262, %bb.aw
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %13, align 8, !tbaa !127  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.oo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.bm
  %.pn99 = phi { ptr, i32 } [ %i.om, %bb.bm ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %i.on, %bb.bn ] ; 2 uses
  %i.or = load ptr, ptr %15, align 8, !tbaa !127  ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.ik
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  call void @_ZdlPv(ptr noundef %i.or) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.bl
  %.pn99.pn = phi { ptr, i32 } [ %i.ol, %bb.bl ], [ %.pn99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ot = load ptr, ptr %14, align 8, !tbaa !127  ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.hr
  br i1 %i.ou, label %.body230, label %.body230.sink.split

.body230.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.an
  %.sink712 = phi ptr [ %i.id, %bb.an ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ]
  %.pn99.pn.pn.ph = phi { ptr, i32 } [ %i.ic, %bb.an ], [ %.pn99.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ]
  call void @_ZdlPv(ptr noundef %.sink712) #29
  br label %.body230

.body230:                                         ; preds = %.body230.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.an
  %.pn99.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.an ], [ %.pn99.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %.pn99.pn.pn.ph, %.body230.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.eu

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i278, %bb.ay, %bb.ax
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

.loopexit506:                                     ; preds = %bb.br
  %lpad.loopexit508 = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

.loopexit.split-lp507:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit281, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  %lpad.loopexit.split-lp509 = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.bp:                                            ; preds = %bb.bc
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i283
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

.loopexit501:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291
  %lpad.loopexit503 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp502:                            ; preds = %bb.bj
  %lpad.loopexit.split-lp504 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq
end_hunk_0
begin_hunk_1_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
bb.bq:                                            ; preds = %.loopexit.split-lp502, %.loopexit501
  %lpad.phi505 = phi { ptr, i32 } [ %lpad.loopexit503, %.loopexit501 ], [ %lpad.loopexit.split-lp504, %.loopexit.split-lp502 ] ; 2 uses
  %i.ox = load ptr, ptr %16, align 8, !tbaa !127  ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.md
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.ox) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.bq, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  %.pn117 = phi { ptr, i32 } [ %lpad.phi505, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi505, %bb.bq ] ; 2 uses
  %i.oz = load ptr, ptr %17, align 8, !tbaa !127  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.mb
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  call void @_ZdlPv(ptr noundef %i.oz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.bp
  %.pn117.pn = phi { ptr, i32 } [ %i.ow, %bb.bp ], [ %.pn117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.et

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.pb = add nuw i8 %i.mf, 1
  store i8 %i.pb, ptr %i.a, align 1, !tbaa !45
  %i.pc = invoke noundef zeroext i1 @_ZNK6duckdb4Node11GetNextByteERNS_3ARTERh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(433) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.az unwind label %.loopexit506, !llvm.loop !1153

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.az
  %i.pd = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.pe = icmp eq i64 %i.pd, 4611686018427387903
  br i1 %i.pe, label %bb.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc316 unwind label %.loopexit.split-lp507

.noexc316:                                        ; preds = %bb.bt
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315: ; preds = %bb.bs
  %i.pf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.46, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit318 unwind label %.loopexit.split-lp507 ; 0 uses

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i274
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !1098
  %.not498 = icmp eq ptr %i.ph, null
  %or.cond = select i1 %.not498, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !1154
  invoke void @_ZNK6duckdb12optional_ptrIKNS_6ARTKeyELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.pk = load ptr, ptr %i.pg, align 8, !tbaa !1098
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !41
  %i.pm = icmp ult i64 %i.pj, %i.pl
  br i1 %i.pm, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNK6duckdb12optional_ptrIKNS_6ARTKeyELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pn = load ptr, ptr %i.pg, align 8, !tbaa !1098
  %i.po = load i64, ptr %i.pi, align 8, !tbaa !1154
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !44
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.po
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !45
  %i.pt = zext i8 %i.ps to i32
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx, %bb.bv
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ca:                                            ; preds = %bb.by, %bb.bw, %bb.bu
  %.085 = phi i32 [ 0, %bb.bu ], [ %i.pt, %bb.by ], [ 0, %bb.bw ]
  %.084 = phi i1 [ false, %bb.bu ], [ true, %bb.by ], [ false, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i8 0, ptr %i.b, align 1, !tbaa !45
  %i.pv = invoke ptr @_ZN6duckdb20GetNextChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_Rh(ptr noundef nonnull align 8 dereferenceable(433) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit.preheader unwind label %bb.cx

_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit.preheader: ; preds = %bb.ca
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %.not21.i = icmp eq ptr %20, %0
  %i.ql = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.qn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 8 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 6 uses
  %.not21.i414 = icmp eq ptr %24, %0
  %i.qs = zext i1 %.084 to i64
  br label %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit

_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit:  ; preds = %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit.preheader, %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit436
  %.sroa.0488.0 = phi ptr [ %i.ze, %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit436 ], [ %i.pv, %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit.preheader ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0488.0, null
  br i1 %.not, label %bb.ec, label %bb.cb

bb.cb:                                            ; preds = %_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh.exit
  %i.qt = load i8, ptr %i.b, align 1
  %i.qu = zext i8 %i.qt to i32
  %i.qv = icmp ne i32 %.085, %i.qu
  %.not500 = select i1 %.084, i1 %i.qv, i1 false
  br i1 %.not500, label %bb.de, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !1117
  %i.qw = load i64, ptr %3, align 8, !tbaa !1087
  %i.qx = load i64, ptr %i.pw, align 8, !tbaa !1090
  %i.qy = add i64 %i.qx, %i.qw
  store i64 %i.qy, ptr %18, align 8, !tbaa !1087
  store i8 %i.l, ptr %i.px, align 8, !tbaa !1091
  %i.qz = load i64, ptr %i.py, align 8, !tbaa !1154
  %i.ra = add i64 %i.qz, %i.qs
  store i64 %i.ra, ptr %i.pz, align 8, !tbaa !1154
  %i.rb = load i64, ptr %i.qa, align 8, !tbaa !1099
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.rb, i64 1)
  store i64 %spec.select, ptr %i.qb, align 8, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0488.0, ptr noundef nonnull align 8 dereferenceable(433) %2, ptr noundef nonnull align 8 dereferenceable(50) %18)
          to label %bb.cd unwind label %bb.cy

bb.cd:                                            ; preds = %bb.cc
  %i.rc = load i64, ptr %3, align 8, !tbaa !1087
  %i.rd = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.re = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.rd, i64 noundef 0, i64 noundef %i.rc, i8 noundef signext 32)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit323" unwind label %bb.cz ; 0 uses

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit323": ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.rf = load i8, ptr %i.b, align 1, !tbaa !45   ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.rg = load i8, ptr %i.h, align 8, !tbaa !1091, !range !423, !noalias !1155, !noundef !36
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i325, label %bb.ce

bb.ce:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit323"
  %i.ri = load i8, ptr %i.qc, align 1, !tbaa !1092, !range !423, !noalias !1155, !noundef !36
  %i.rj = trunc nuw i8 %i.ri to i1
  %i.rk = add i8 %i.rf, -32
  %i.rl = icmp ult i8 %i.rk, 95
  %or.cond5.i324 = and i1 %i.rl, %i.rj
  br i1 %or.cond5.i324, label %bb.cf, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i325

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.qd, ptr %23, align 8, !tbaa !126, !alias.scope !1155
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 1, i8 noundef signext %i.rf)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit334" unwind label %bb.da

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i325: ; preds = %bb.ce, %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit323"
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.rm = icmp ult i8 %i.rf, 10
  %i.rn = icmp ult i8 %i.rf, 100
  %i.ro = select i1 %i.rn, i64 2, i64 3
  %i.rp = select i1 %i.rm, i64 1, i64 %i.ro
  store ptr %i.qd, ptr %23, align 8, !tbaa !126, !alias.scope !1161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.rp, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i327 unwind label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i327: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i325
  %i.rq = load ptr, ptr %23, align 8, !tbaa !127, !alias.scope !1161 ; 4 uses
  %i.rr = icmp ugt i8 %i.rf, 99
  br i1 %i.rr, label %._crit_edge.i.i.thread.i332, label %._crit_edge.i.i.i328

._crit_edge.i.i.thread.i332:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i327
  %i.rs = urem i8 %i.rf, 100
  %i.rt = shl nuw i8 %i.rs, 1
  %32 = udiv i8 %i.rf, 100
  %i.ru = zext i8 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ru ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !45, !noalias !1161
  %i.ry = getelementptr i8, ptr %i.rq, i64 2
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !45
  %i.rz = load i8, ptr %i.rv, align 2, !tbaa !45, !noalias !1161
  %i.sa = getelementptr i8, ptr %i.rq, i64 1
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !45
  br label %bb.ch

._crit_edge.i.i.i328:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i327
  %i.sb = icmp samesign ugt i8 %i.rf, 9
  br i1 %i.sb, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.i.i328
  %i.sc = shl nuw i8 %i.rf, 1
  %i.sd = zext i8 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !45, !noalias !1161
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !45
  %i.si = load i8, ptr %i.se, align 2, !tbaa !45, !noalias !1161
  br label %_ZNSt7__cxx119to_stringEi.exit.i330

bb.ch:                                            ; preds = %._crit_edge.i.i.i328, %._crit_edge.i.i.thread.i332
  %.0.lcssa.i.i2.i329 = phi i8 [ %32, %._crit_edge.i.i.thread.i332 ], [ %i.rf, %._crit_edge.i.i.i328 ]
  %i.sj = or disjoint i8 %.0.lcssa.i.i2.i329, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i330

bb.ci:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i325
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit.i330:              ; preds = %bb.ch, %bb.cg
  %storemerge.i.i.i331 = phi i8 [ %i.sj, %bb.ch ], [ %i.si, %bb.cg ]
  store i8 %storemerge.i.i.i331, ptr %i.rq, align 1, !tbaa !45
  br label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit334"

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit334": ; preds = %_ZNSt7__cxx119to_stringEi.exit.i330, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.sm = load i64, ptr %i.hm, align 8, !tbaa !128, !noalias !1162
  %i.sn = load ptr, ptr %0, align 8, !tbaa !127, !noalias !1162
  %i.so = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef %i.sn, i64 noundef %i.sm)
          to label %.noexc339 unwind label %bb.db ; 6 uses

.noexc339:                                        ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit334"
  store ptr %i.qe, ptr %22, align 8, !tbaa !126, !alias.scope !1162
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !127 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 5 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

bb.cj:                                            ; preds = %.noexc339
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !128 ; 3 uses
  %i.su = icmp ult i64 %i.st, 16
  call void @llvm.assume(i1 %i.su)
  %i.sv = add nuw nsw i64 %i.st, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qe, ptr noundef nonnull align 8 dereferenceable(1) %i.sq, i64 %i.sv, i1 false)
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.noexc339
  store ptr %i.sp, ptr %22, align 8, !tbaa !127, !alias.scope !1162
  %i.sw = load i64, ptr %i.sq, align 8, !tbaa !45
  store i64 %i.sw, ptr %i.qe, align 8, !tbaa !45, !alias.scope !1162
  %.phi.trans.insert.i336 = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %.pre.i337 = load i64, ptr %.phi.trans.insert.i336, align 8, !tbaa !128
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.cj
  %i.sx = phi i64 [ %i.st, %bb.cj ], [ %.pre.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i64 %i.sx, ptr %i.qf, align 8, !tbaa !128, !alias.scope !1162
  store ptr %i.sq, ptr %i.so, align 8, !tbaa !127
  store i64 0, ptr %i.sy, align 8, !tbaa !128
  store i8 0, ptr %i.sq, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.sz = load i64, ptr %i.qf, align 8, !tbaa !128, !noalias !1165
  %i.ta = and i64 %i.sz, -2
  %i.tb = icmp eq i64 %i.ta, 4611686018427387902
  br i1 %i.tb, label %bb.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc345 unwind label %.loopexit.split-lp512

.noexc345:                                        ; preds = %bb.cl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340: ; preds = %bb.ck
  %i.tc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.50, i64 noundef 2)
          to label %.noexc346 unwind label %.loopexit511 ; 6 uses

.noexc346:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340
  store ptr %i.qg, ptr %21, align 8, !tbaa !126, !alias.scope !1165
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !127 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 16 ; 5 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

bb.cm:                                            ; preds = %.noexc346
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !128 ; 3 uses
  %i.ti = icmp ult i64 %i.th, 16
  call void @llvm.assume(i1 %i.ti)
  %i.tj = add nuw nsw i64 %i.th, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qg, ptr noundef nonnull align 8 dereferenceable(1) %i.te, i64 %i.tj, i1 false)
  br label %bb.cn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %.noexc346
  store ptr %i.td, ptr %21, align 8, !tbaa !127, !alias.scope !1165
  %i.tk = load i64, ptr %i.te, align 8, !tbaa !45
  store i64 %i.tk, ptr %i.qg, align 8, !tbaa !45, !alias.scope !1165
  %.phi.trans.insert.i342 = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %.pre.i343 = load i64, ptr %.phi.trans.insert.i342, align 8, !tbaa !128
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.cm
  %i.tl = phi i64 [ %i.th, %bb.cm ], [ %.pre.i343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i64 %i.tl, ptr %i.qh, align 8, !tbaa !128, !alias.scope !1165
  store ptr %i.te, ptr %i.tc, align 8, !tbaa !127
  store i64 0, ptr %i.tm, align 8, !tbaa !128
  store i8 0, ptr %i.te, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.tn = load i64, ptr %i.qi, align 8, !tbaa !128, !noalias !1168 ; 2 uses
  %i.to = load i64, ptr %i.qh, align 8, !tbaa !128, !noalias !1168
  %i.tp = sub i64 4611686018427387903, %i.to
  %i.tq = icmp ult i64 %i.tp, %i.tn
  br i1 %i.tq, label %bb.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i348

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc353 unwind label %.loopexit.split-lp517

.noexc353:                                        ; preds = %bb.co
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i348: ; preds = %bb.cn
  %i.tr = load ptr, ptr %19, align 8, !tbaa !127, !noalias !1168
  %i.ts = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.tr, i64 noundef %i.tn)
          to label %.noexc354 unwind label %.loopexit516 ; 6 uses

.noexc354:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i348
  store ptr %i.qj, ptr %20, align 8, !tbaa !126, !alias.scope !1168
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !127 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 5 uses
  %i.tv = icmp eq ptr %i.tt, %i.tu
  br i1 %i.tv, label %bb.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

bb.cp:                                            ; preds = %.noexc354
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !128 ; 3 uses
  %i.ty = icmp ult i64 %i.tx, 16
  call void @llvm.assume(i1 %i.ty)
  %i.tz = add nuw nsw i64 %i.tx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qj, ptr noundef nonnull align 8 dereferenceable(1) %i.tu, i64 %i.tz, i1 false)
  br label %bb.cq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %.noexc354
  store ptr %i.tt, ptr %20, align 8, !tbaa !127, !alias.scope !1168
  %i.ua = load i64, ptr %i.tu, align 8, !tbaa !45
  store i64 %i.ua, ptr %i.qj, align 8, !tbaa !45, !alias.scope !1168
  %.phi.trans.insert.i350 = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %.pre.i351 = load i64, ptr %.phi.trans.insert.i350, align 8, !tbaa !128
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.cp
  %i.ub = phi i64 [ %i.tx, %bb.cp ], [ %.pre.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i64 %i.ub, ptr %i.qk, align 8, !tbaa !128, !alias.scope !1168
  store ptr %i.tu, ptr %i.ts, align 8, !tbaa !127
  store i64 0, ptr %i.uc, align 8, !tbaa !128
  store i8 0, ptr %i.tu, align 8, !tbaa !45
  %i.ud = load ptr, ptr %0, align 8, !tbaa !127   ; 6 uses
  %i.ue = icmp eq ptr %i.ud, %i.hl
  %i.uf = load ptr, ptr %20, align 8, !tbaa !127  ; 6 uses
  %i.ug = icmp eq ptr %i.uf, %i.qj                ; 2 uses
  br i1 %i.ue, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cq
  br i1 %i.ug, label %bb.cr, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cq
  br i1 %i.ug, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.uh = load i64, ptr %i.qk, align 8, !tbaa !128 ; 3 uses
  %i.ui = icmp ult i64 %i.uh, 16
  call void @llvm.assume(i1 %i.ui)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.cs, !prof !125

bb.cs:                                            ; preds = %bb.cr
  switch i64 %i.uh, label %bb.cu [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.uj = load i8, ptr %i.uf, align 1, !tbaa !45
  store i8 %i.uj, ptr %i.ud, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %i.uf, i64 %i.uh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.uk = load i64, ptr %i.qk, align 8, !tbaa !128 ; 2 uses
  store i64 %i.uk, ptr %i.hm, align 8, !tbaa !128
  %i.ul = load ptr, ptr %0, align 8, !tbaa !127
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.uk
  store i8 0, ptr %i.um, align 1, !tbaa !45
  %.pre.i356 = load ptr, ptr %20, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.uf, ptr %0, align 8, !tbaa !127
  %i.un = load <2 x i64>, ptr %i.qk, align 8, !tbaa !45
  store <2 x i64> %i.un, ptr %i.hm, align 8, !tbaa !45
  br label %bb.cw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_1
begin_hunk_2_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ur) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  %i.ut = load ptr, ptr %21, align 8, !tbaa !127  ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.qg
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  call void @_ZdlPv(ptr noundef %i.ut) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  %i.uv = load ptr, ptr %22, align 8, !tbaa !127  ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.qe
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
  call void @_ZdlPv(ptr noundef %i.uv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363
  %i.ux = load ptr, ptr %23, align 8, !tbaa !127  ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.qd
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  call void @_ZdlPv(ptr noundef %i.ux) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.uz = load ptr, ptr %19, align 8, !tbaa !127  ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.ql
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
  call void @_ZdlPv(ptr noundef %i.uz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ea

bb.cx:                                            ; preds = %bb.ca
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.cy:                                            ; preds = %bb.cc
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

bb.cz:                                            ; preds = %bb.cd
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.da:                                            ; preds = %bb.cf
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.db:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit334"
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

.loopexit511:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340
  %lpad.loopexit513 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

.loopexit.split-lp512:                            ; preds = %bb.cl
  %lpad.loopexit.split-lp514 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

.loopexit516:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i348
  %lpad.loopexit518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp517:                            ; preds = %bb.co
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.split-lp517, %.loopexit516
  %lpad.phi520 = phi { ptr, i32 } [ %lpad.loopexit518, %.loopexit516 ], [ %lpad.loopexit.split-lp519, %.loopexit.split-lp517 ] ; 2 uses
  %i.vg = load ptr, ptr %21, align 8, !tbaa !127  ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.qg
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.dc
  call void @_ZdlPv(ptr noundef %i.vg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.dc, %.loopexit511, %.loopexit.split-lp512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  %.pn107 = phi { ptr, i32 } [ %lpad.phi520, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372 ], [ %lpad.loopexit.split-lp514, %.loopexit.split-lp512 ], [ %lpad.loopexit513, %.loopexit511 ], [ %lpad.phi520, %bb.dc ] ; 2 uses
  %i.vi = load ptr, ptr %22, align 8, !tbaa !127  ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.qe
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  call void @_ZdlPv(ptr noundef %i.vi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.db
  %.pn107.pn = phi { ptr, i32 } [ %i.vf, %bb.db ], [ %.pn107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ] ; 2 uses
  %i.vk = load ptr, ptr %23, align 8, !tbaa !127  ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.qd
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  call void @_ZdlPv(ptr noundef %i.vk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.da
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.ve, %bb.da ], [ %.pn107.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ], [ %.pn107.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %bb.cz
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380 ], [ %i.vd, %bb.cz ] ; 2 uses
  %i.vm = load ptr, ptr %19, align 8, !tbaa !127  ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.ql
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %bb.dd
  call void @_ZdlPv(ptr noundef %i.vm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381, %bb.cy
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vc, %bb.cy ], [ %.pn107.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381 ], [ %.pn107.pn.pn.pn, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ed

bb.de:                                            ; preds = %bb.cb
  %i.vo = load i8, ptr %i.qm, align 1, !tbaa !1094, !range !423, !noundef !36
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.ea, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vq = load i64, ptr %3, align 8, !tbaa !1087
  %i.vr = load i64, ptr %i.hm, align 8, !tbaa !128
  %i.vs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.vr, i64 noundef 0, i64 noundef %i.vq, i8 noundef signext 32)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit385" unwind label %bb.dw ; 0 uses

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit385": ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.vt = load i8, ptr %i.b, align 1, !tbaa !45   ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.vu = load i8, ptr %i.h, align 8, !tbaa !1091, !range !423, !noalias !1171, !noundef !36
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i387, label %bb.dg

bb.dg:                                            ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit385"
  %i.vw = load i8, ptr %i.qc, align 1, !tbaa !1092, !range !423, !noalias !1171, !noundef !36
  %i.vx = trunc nuw i8 %i.vw to i1
  %i.vy = add i8 %i.vt, -32
  %i.vz = icmp ult i8 %i.vy, 95
  %or.cond5.i386 = and i1 %i.vz, %i.vx
  br i1 %or.cond5.i386, label %bb.dh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i387

bb.dh:                                            ; preds = %bb.dg
  store ptr %i.qn, ptr %26, align 8, !tbaa !126, !alias.scope !1171
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 1, i8 noundef signext %i.vt)
          to label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit396" unwind label %bb.dx

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i387: ; preds = %bb.dg, %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit385"
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.wa = icmp ult i8 %i.vt, 10
  %i.wb = icmp ult i8 %i.vt, 100
  %i.wc = select i1 %i.wb, i64 2, i64 3
  %i.wd = select i1 %i.wa, i64 1, i64 %i.wc
  store ptr %i.qn, ptr %26, align 8, !tbaa !126, !alias.scope !1177
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.wd, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i389 unwind label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i389: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i387
  %i.we = load ptr, ptr %26, align 8, !tbaa !127, !alias.scope !1177 ; 4 uses
  %i.wf = icmp ugt i8 %i.vt, 99
  br i1 %i.wf, label %._crit_edge.i.i.thread.i394, label %._crit_edge.i.i.i390

._crit_edge.i.i.thread.i394:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i389
  %i.wg = urem i8 %i.vt, 100
  %i.wh = shl nuw i8 %i.wg, 1
  %33 = udiv i8 %i.vt, 100
  %i.wi = zext i8 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.wi ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !45, !noalias !1177
  %i.wm = getelementptr i8, ptr %i.we, i64 2
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !45
  %i.wn = load i8, ptr %i.wj, align 2, !tbaa !45, !noalias !1177
  %i.wo = getelementptr i8, ptr %i.we, i64 1
  store i8 %i.wn, ptr %i.wo, align 1, !tbaa !45
  br label %bb.dj

._crit_edge.i.i.i390:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i389
  %i.wp = icmp samesign ugt i8 %i.vt, 9
  br i1 %i.wp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i.i390
  %i.wq = shl nuw i8 %i.vt, 1
  %i.wr = zext i8 %i.wq to i64
  %i.ws = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.wr ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !45, !noalias !1177
  %i.wv = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !45
  %i.ww = load i8, ptr %i.ws, align 2, !tbaa !45, !noalias !1177
  br label %_ZNSt7__cxx119to_stringEi.exit.i392

bb.dj:                                            ; preds = %._crit_edge.i.i.i390, %._crit_edge.i.i.thread.i394
  %.0.lcssa.i.i2.i391 = phi i8 [ %33, %._crit_edge.i.i.thread.i394 ], [ %i.vt, %._crit_edge.i.i.i390 ]
  %i.wx = or disjoint i8 %.0.lcssa.i.i2.i391, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i392

bb.dk:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i387
  %i.wy = landingpad { ptr, i32 }
          catch ptr null
  %i.wz = extractvalue { ptr, i32 } %i.wy, 0
  call void @__clang_call_terminate(ptr %i.wz) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit.i392:              ; preds = %bb.dj, %bb.di
  %storemerge.i.i.i393 = phi i8 [ %i.wx, %bb.dj ], [ %i.ww, %bb.di ]
  store i8 %storemerge.i.i.i393, ptr %i.we, align 1, !tbaa !45
  br label %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit396"

"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit396": ; preds = %_ZNSt7__cxx119to_stringEi.exit.i392, %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.xa = load i64, ptr %i.hm, align 8, !tbaa !128, !noalias !1178
  %i.xb = load ptr, ptr %0, align 8, !tbaa !127, !noalias !1178
  %i.xc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %i.xb, i64 noundef %i.xa)
          to label %.noexc401 unwind label %bb.dy ; 6 uses

.noexc401:                                        ; preds = %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit396"
  store ptr %i.qo, ptr %25, align 8, !tbaa !126, !alias.scope !1178
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !127 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 5 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

bb.dl:                                            ; preds = %.noexc401
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !128 ; 3 uses
  %i.xi = icmp ult i64 %i.xh, 16
  call void @llvm.assume(i1 %i.xi)
  %i.xj = add nuw nsw i64 %i.xh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qo, ptr noundef nonnull align 8 dereferenceable(1) %i.xe, i64 %i.xj, i1 false)
  br label %bb.dm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %.noexc401
  store ptr %i.xd, ptr %25, align 8, !tbaa !127, !alias.scope !1178
  %i.xk = load i64, ptr %i.xe, align 8, !tbaa !45
  store i64 %i.xk, ptr %i.qo, align 8, !tbaa !45, !alias.scope !1178
  %.phi.trans.insert.i398 = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %.pre.i399 = load i64, ptr %.phi.trans.insert.i398, align 8, !tbaa !128
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %bb.dl
  %i.xl = phi i64 [ %i.xh, %bb.dl ], [ %.pre.i399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  store i64 %i.xl, ptr %i.qp, align 8, !tbaa !128, !alias.scope !1178
  store ptr %i.xe, ptr %i.xc, align 8, !tbaa !127
  store i64 0, ptr %i.xm, align 8, !tbaa !128
  store i8 0, ptr %i.xe, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.xn = load i64, ptr %i.qp, align 8, !tbaa !128, !noalias !1181
  %i.xo = and i64 %i.xn, -16
  %i.xp = icmp eq i64 %i.xo, 4611686018427387888
  br i1 %i.xp, label %bb.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i403

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc408 unwind label %.loopexit.split-lp522

.noexc408:                                        ; preds = %bb.dn
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i403: ; preds = %bb.dm
  %i.xq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.51, i64 noundef 16)
          to label %.noexc409 unwind label %.loopexit521 ; 6 uses

.noexc409:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i403
  store ptr %i.qq, ptr %24, align 8, !tbaa !126, !alias.scope !1181
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !127 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 16 ; 5 uses
  %i.xt = icmp eq ptr %i.xr, %i.xs
  br i1 %i.xt, label %bb.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

bb.do:                                            ; preds = %.noexc409
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !128 ; 3 uses
  %i.xw = icmp ult i64 %i.xv, 16
  call void @llvm.assume(i1 %i.xw)
  %i.xx = add nuw nsw i64 %i.xv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qq, ptr noundef nonnull align 8 dereferenceable(1) %i.xs, i64 %i.xx, i1 false)
  br label %bb.dp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %.noexc409
  store ptr %i.xr, ptr %24, align 8, !tbaa !127, !alias.scope !1181
  %i.xy = load i64, ptr %i.xs, align 8, !tbaa !45
  store i64 %i.xy, ptr %i.qq, align 8, !tbaa !45, !alias.scope !1181
  %.phi.trans.insert.i405 = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %.pre.i406 = load i64, ptr %.phi.trans.insert.i405, align 8, !tbaa !128
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.do
  %i.xz = phi i64 [ %i.xv, %bb.do ], [ %.pre.i406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  store i64 %i.xz, ptr %i.qr, align 8, !tbaa !128, !alias.scope !1181
  store ptr %i.xs, ptr %i.xq, align 8, !tbaa !127
  store i64 0, ptr %i.ya, align 8, !tbaa !128
  store i8 0, ptr %i.xs, align 8, !tbaa !45
  %i.yb = load ptr, ptr %0, align 8, !tbaa !127   ; 6 uses
  %i.yc = icmp eq ptr %i.yb, %i.hl
  %i.yd = load ptr, ptr %24, align 8, !tbaa !127  ; 6 uses
  %i.ye = icmp eq ptr %i.yd, %i.qq                ; 2 uses
  br i1 %i.yc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417: ; preds = %bb.dp
  br i1 %i.ye, label %bb.dq, label %.thread.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411: ; preds = %bb.dp
  br i1 %i.ye, label %bb.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417
  %i.yf = load i64, ptr %i.qr, align 8, !tbaa !128 ; 3 uses
  %i.yg = icmp ult i64 %i.yf, 16
  call void @llvm.assume(i1 %i.yg)
  br i1 %.not21.i414, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419, label %bb.dr, !prof !125

bb.dr:                                            ; preds = %bb.dq
  switch i64 %i.yf, label %bb.dt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415
    i64 1, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.yh = load i8, ptr %i.yd, align 1, !tbaa !45
  store i8 %i.yh, ptr %i.yb, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yb, ptr align 1 %i.yd, i64 %i.yf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415: ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.yi = load i64, ptr %i.qr, align 8, !tbaa !128 ; 2 uses
  store i64 %i.yi, ptr %i.hm, align 8, !tbaa !128
  %i.yj = load ptr, ptr %0, align 8, !tbaa !127
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.yi
  store i8 0, ptr %i.yk, align 1, !tbaa !45
  %.pre.i416 = load ptr, ptr %24, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

.thread.i418:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417
  store ptr %i.yd, ptr %0, align 8, !tbaa !127
  %i.yl = load <2 x i64>, ptr %i.qr, align 8, !tbaa !45
  store <2 x i64> %i.yl, ptr %i.hm, align 8, !tbaa !45
  br label %bb.dv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411
  %i.ym = load i64, ptr %i.hl, align 8, !tbaa !45
  store ptr %i.yd, ptr %0, align 8, !tbaa !127
  %i.yn = load <2 x i64>, ptr %i.qr, align 8, !tbaa !45
  store <2 x i64> %i.yn, ptr %i.hm, align 8, !tbaa !45
  %.not.i413 = icmp eq ptr %i.yb, null
  br i1 %.not.i413, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412
  store ptr %i.yb, ptr %24, align 8, !tbaa !127
  store i64 %i.ym, ptr %i.qq, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

bb.dv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412, %.thread.i418
  store ptr %i.qq, ptr %24, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419: ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415, %bb.du, %bb.dv
  %i.yo = phi ptr [ %i.yb, %bb.du ], [ %i.qq, %bb.dv ], [ %i.yd, %bb.dq ], [ %.pre.i416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415 ]
  store i64 0, ptr %i.qr, align 8, !tbaa !128
  store i8 0, ptr %i.yo, align 1, !tbaa !45
  %i.yp = load ptr, ptr %24, align 8, !tbaa !127  ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.qq
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419
  call void @_ZdlPv(ptr noundef %i.yp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  %i.yr = load ptr, ptr %25, align 8, !tbaa !127  ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.qo
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  call void @_ZdlPv(ptr noundef %i.yr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
  %i.yt = load ptr, ptr %26, align 8, !tbaa !127  ; 2 uses
  %i.yu = icmp eq ptr %i.yt, %i.qn
  br i1 %i.yu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425
  call void @_ZdlPv(ptr noundef %i.yt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
end_hunk_2
begin_hunk_3_@_ZN6duckdb4Node3RefINS_4LeafEEERT_RKNS_3ARTES0_NS_5NTypeE:bb.a
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !1354
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1355
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #30 ; 0 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ag
  ret ptr %i.az
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Leaf16DeprecatedVacuumERNS_3ARTERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 5 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !131    ; 2 uses
  %i.f = icmp ugt i64 %i.e, 72057594037927935
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.aj, %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread ] ; 6 uses
  %.sroa.09.018 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread ]
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !1566
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = icmp eq i64 %i.l, %i.o
  br i1 %i.p, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit, label %.preheader, !llvm.loop !1567

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.i, align 8, !tbaa !341  ; 2 uses
  %i.r = urem i64 %i.l, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !340
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !309  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !305  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = icmp eq i64 %i.l, %i.x
  br i1 %i.y, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.l, %i.ac
  br i1 %i.z, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1568

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !305 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ad, %i.r
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1568

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread, !llvm.loop !1568

_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit: ; preds = %bb.f, %bb.c, %bb.e
  %i.ae = tail call i64 @_ZN6duckdb18FixedSizeAllocator13VacuumPointerENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.d, i64 %i.k)
  %i.af = and i64 %i.ae, 72057594037927935
  %i.ag = or disjoint i64 %i.af, 144115188075855872 ; 2 uses
  store i64 %i.ag, ptr %.sroa.09.018, align 8, !tbaa !131
  br label %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread

_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit
  %.sroa.0.0.copyload = phi i64 [ %i.k, %.preheader ], [ %i.ag, %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit ], [ %i.k, %bb.d ], [ %i.k, %..loopexit_crit_edge21.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb4Node3RefINS_4LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload, i8 noundef zeroext 2)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !131 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 72057594037927935
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !1569

._crit_edge:                                      ; preds = %_ZNK6duckdb18FixedSizeAllocator11NeedsVacuumENS_12IndexPointerE.exit.thread, %bb.a
  ret void
}

declare i64 @_ZN6duckdb18FixedSizeAllocator13VacuumPointerENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240), i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !128
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1093, !range !423, !noundef !36
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.a

.preheader:                                       ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %2, align 8, !tbaa !131    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 72057594037927935
  br i1 %i.g, label %.lr.ph192, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.lr.ph192:                                        ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.q = load i64, ptr %3, align 8, !tbaa !1087
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.q, i8 noundef signext 32)
          to label %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit" unwind label %bb.c ; 0 uses

"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit": ; preds = %bb.a
  %i.s = load i64, ptr %i.b, align 8, !tbaa !128
  %i.t = add i64 %i.s, -4611686018427387884
  %i.u = icmp ult i64 %i.t, 20
  br i1 %i.u, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc32 unwind label %bb.c

.noexc32:                                         ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit"
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, i64 noundef 20)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %.lr.ph192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56
  %i.x = phi i64 [ %i.f, %.lr.ph192 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56 ]
  %i.y = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb4Node3RefIKNS_4LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %i.x, i8 noundef zeroext 2)
          to label %bb.e unwind label %.loopexit111 ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %3, align 8, !tbaa !1087
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !128
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, i64 noundef %i.z, i8 noundef signext 32)
          to label %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit35" unwind label %.loopexit111 ; 0 uses

"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit35": ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ac = load i8, ptr %i.y, align 8, !tbaa !1541 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.ad = icmp ult i8 %i.ac, 10
  %i.ae = icmp ult i8 %i.ac, 100
  %. = select i1 %i.ae, i32 2, i32 3              ; 3 uses
  %i.af = zext nneg i32 %. to i64
  %i.ag = select i1 %i.ad, i64 1, i64 %i.af
  store ptr %i.h, ptr %6, align 8, !tbaa !126, !alias.scope !1570
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ag, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit35"
  %i.ah = load ptr, ptr %6, align 8, !tbaa !127, !alias.scope !1570 ; 4 uses
  %i.ai = icmp ugt i8 %i.ac, 99
  br i1 %i.ai, label %._crit_edge.i.i36.thread, label %._crit_edge.i.i36

._crit_edge.i.i36.thread:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.aj = urem i8 %i.ac, 100
  %i.ak = shl nuw i8 %i.aj, 1
  %9 = udiv i8 %i.ac, 100
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45, !noalias !1570
  %i.ap = zext nneg i32 %. to i64
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !45
  %i.as = load i8, ptr %i.am, align 2, !tbaa !45, !noalias !1570
  %i.at = zext nneg i32 %. to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -2
  store i8 %i.as, ptr %i.av, align 1, !tbaa !45
  br label %bb.g

._crit_edge.i.i36:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.aw = icmp ugt i8 %i.ac, 9
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i36
  %i.ax = shl nuw i8 %i.ac, 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !45, !noalias !1570
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !45
  %i.bd = load i8, ptr %i.az, align 2, !tbaa !45, !noalias !1570
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.g:                                             ; preds = %._crit_edge.i.i36.thread, %._crit_edge.i.i36
  %.0.lcssa.i.i223 = phi i8 [ %9, %._crit_edge.i.i36.thread ], [ %i.ac, %._crit_edge.i.i36 ]
  %i.be = or disjoint i8 %.0.lcssa.i.i223, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.h:                                             ; preds = %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit35"
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.f, %bb.g
  %storemerge.i.i = phi i8 [ %i.be, %bb.g ], [ %i.bd, %bb.f ]
  store i8 %storemerge.i.i, ptr %i.ah, align 1, !tbaa !45
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.32, i64 noundef 13)
          to label %.noexc37 unwind label %bb.p   ; 6 uses

.noexc37:                                         ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.i, ptr %5, align 8, !tbaa !126, !alias.scope !1573
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !128 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc37
  store ptr %i.bi, ptr %5, align 8, !tbaa !127, !alias.scope !1573
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !45
  store i64 %i.bp, ptr %i.i, align 8, !tbaa !45, !alias.scope !1573
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bq = phi i64 [ %i.bm, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bq, ptr %i.j, align 8, !tbaa !128, !alias.scope !1573
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !127
  store i64 0, ptr %i.br, align 8, !tbaa !128
  store i8 0, ptr %i.bj, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !1576
  %i.bt = add i64 %i.bs, -4611686018427387893
  %i.bu = icmp ult i64 %i.bt, 11
  br i1 %i.bu, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc42 unwind label %.loopexit.split-lp117

.noexc42:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38: ; preds = %bb.j
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.33, i64 noundef 11)
          to label %.noexc43 unwind label %.loopexit116 ; 6 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38
  store ptr %i.k, ptr %4, align 8, !tbaa !126, !alias.scope !1576
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !127 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

bb.l:                                             ; preds = %.noexc43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !128 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %.noexc43
  store ptr %i.bw, ptr %4, align 8, !tbaa !127, !alias.scope !1576
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !45
  store i64 %i.cd, ptr %i.k, align 8, !tbaa !45, !alias.scope !1576
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre.i41 = load i64, ptr %.phi.trans.insert.i40, align 8, !tbaa !128
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.l
  %i.ce = phi i64 [ %i.ca, %bb.l ], [ %.pre.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.ce, ptr %i.l, align 8, !tbaa !128, !alias.scope !1576
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !127
  store i64 0, ptr %i.cf, align 8, !tbaa !128
  store i8 0, ptr %i.bx, align 8, !tbaa !45
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !128
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc44 unwind label %.loopexit.split-lp122

.noexc44:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.ck = load ptr, ptr %4, align 8, !tbaa !127
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ck, i64 noundef %i.cg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit121 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cm = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.k
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.co = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.i
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.co) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.cq = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.h
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @_ZdlPv(ptr noundef %i.cq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cs = load i8, ptr %i.y, align 8, !tbaa !1541
  %.not = icmp eq i8 %i.cs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !128
  %i.cv = and i64 %i.cu, -2
  %i.cw = icmp eq i64 %i.cv, 4611686018427387902
  br i1 %i.cw, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc54 unwind label %.loopexit.split-lp112

.noexc54:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53: ; preds = %._crit_edge
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56 unwind label %.loopexit111 ; 0 uses

.loopexit111:                                     ; preds = %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp112:                            ; preds = %bb.o
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.p:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

.loopexit116:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38
  %lpad.loopexit118 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

.loopexit.split-lp117:                            ; preds = %bb.k
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

.loopexit121:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp122:                            ; preds = %bb.n
end_hunk_3
begin_hunk_4_@_ZNK6duckdb4Node17VerifyAllocationsERNS_3ARTERSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEE:bb.a
  br label %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i

_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i, %bb.y
  %i.cp = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i.i ], [ %i.cf, %bb.y ]
  call void @_ZdlPv(ptr noundef %i.cp) #29
  br label %_ZN6duckdb10ARTScannerILNS_15ARTScanHandlingE0EKNS_4NodeEED2Ev.exit

_ZN6duckdb10ARTScannerILNS_15ARTScanHandlingE0EKNS_4NodeEED2Ev.exit: ; preds = %"_ZN6duckdb10ARTScannerILNS_15ARTScanHandlingE0EKNS_4NodeEE4ScanIRZNKS2_17VerifyAllocationsERNS_3ARTERSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEE3$_0EEvOT_.exit", %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit14 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.m
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k, %bb.i, %bb.g, %.noexc, %bb.f
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %.pn35.i, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit14, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit18, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp22, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb10ARTScannerILNS_15ARTScanHandlingE0EKNS_4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10ARTScannerILNS_15ARTScanHandlingE0EKNS_4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1650 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESt5dequeIS6_SaIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1651 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1634 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1631
  tail call void @_ZdlPv(ptr noundef %i.i) #29
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i, !llvm.loop !1652

_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1650
  br label %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i

_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i.i ], [ %i.b, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.l) #29
  br label %_ZNSt5stackIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESt5dequeIS6_SaIS6_EEED2Ev.exit

_ZNSt5stackIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESt5dequeIS6_SaIS6_EEED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN6duckdb10ARTScannerILNS0_15ARTScanHandlingE0EKNS0_4NodeEE9NodeEntryESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.duckdb::ConstPrefixHandle", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::ToStringOptions", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !128
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %i.c = load i64, ptr %3, align 8, !tbaa !1087
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, i64 noundef %i.c, i8 noundef signext 32)
          to label %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit" unwind label %bb.y ; 0 uses

"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit": ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !1117
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZN6duckdb17ConstPrefixHandleD2Ev.exit.i, %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit"
  %.sroa.047.0 = phi ptr [ %2, %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit" ], [ %i.cw, %_ZN6duckdb17ConstPrefixHandleD2Ev.exit.i ] ; 2 uses
  %i.p = load i64, ptr %.sroa.047.0, align 8, !tbaa !131 ; 2 uses
  %i.q = and i64 %i.p, 9151314442816847872
  %i.r = icmp eq i64 %i.q, 72057594037927936
  br i1 %i.r, label %bb.b, label %"_ZN6duckdb17ConstPrefixHandle8IteratorIZNS0_8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEE3$_2EEvS3_RSt17reference_wrapperIS5_EbOT_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN6duckdb17ConstPrefixHandleC1ERKNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %i.p)
          to label %.noexc21 unwind label %bb.z

.noexc21:                                         ; preds = %bb.b
  %i.s = load i64, ptr %i.b, align 8, !tbaa !128
  %i.t = add i64 %i.s, -4611686018427387895
  %i.u = icmp ult i64 %i.t, 9
  br i1 %i.u, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i

bb.c:                                             ; preds = %.noexc21
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc.i20 unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc.i20:                                       ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i: ; preds = %.noexc21
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.85, i64 noundef 9)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

.noexc10.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1653 ; 2 uses
  %i.x = load i8, ptr %i.k, align 8, !tbaa !52
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !45
  %.not36.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not36.i.i, label %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_2clERKS0_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc10.i, %bb.o
  %i.ab = phi ptr [ %i.cp, %bb.o ], [ %i.w, %.noexc10.i ]
  %.0835.i.i = phi i64 [ %i.co, %bb.o ], [ 0, %.noexc10.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0835.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45  ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !1091, !range !423, !noalias !1654, !noundef !36
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ag = load i8, ptr %i.m, align 1, !tbaa !1092, !range !423, !noalias !1654, !noundef !36
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = add i8 %i.ad, -32
  %i.aj = icmp ult i8 %i.ai, 95
  %or.cond5.i.i.i = and i1 %i.aj, %i.ah
  br i1 %or.cond5.i.i.i, label %bb.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %5, align 8, !tbaa !126, !alias.scope !1654
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 1, i8 noundef signext %i.ad)
          to label %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit.i.i" unwind label %.loopexit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.ak = icmp ult i8 %i.ad, 10
  %i.al = icmp ult i8 %i.ad, 100
  %i.am = select i1 %i.al, i64 2, i64 3
  %i.an = select i1 %i.ak, i64 1, i64 %i.am
  store ptr %i.f, ptr %5, align 8, !tbaa !126, !alias.scope !1660
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.an, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i
  %i.ao = load ptr, ptr %5, align 8, !tbaa !127, !alias.scope !1660 ; 4 uses
  %i.ap = icmp ugt i8 %i.ad, 99
  br i1 %i.ap, label %._crit_edge.i.i.thread.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.thread.i.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i
  %i.aq = urem i8 %i.ad, 100
  %i.ar = shl nuw i8 %i.aq, 1
  %11 = udiv i8 %i.ad, 100
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !45, !noalias !1660
  %i.aw = getelementptr i8, ptr %i.ao, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !45
  %i.ax = load i8, ptr %i.at, align 2, !tbaa !45, !noalias !1660
  %i.ay = getelementptr i8, ptr %i.ao, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !45
  br label %bb.g

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i
  %i.az = icmp samesign ugt i8 %i.ad, 9
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = shl nuw i8 %i.ad, 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !45, !noalias !1660
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !45
  %i.bg = load i8, ptr %i.bc, align 2, !tbaa !45, !noalias !1660
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.thread.i.i.i
  %.0.lcssa.i.i2.i.i.i = phi i8 [ %11, %._crit_edge.i.i.thread.i.i.i ], [ %i.ad, %._crit_edge.i.i.i.i.i ]
  %i.bh = or disjoint i8 %.0.lcssa.i.i2.i.i.i, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #33
  unreachable

_ZNSt7__cxx119to_stringEi.exit.i.i.i:             ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.i = phi i8 [ %i.bh, %bb.g ], [ %i.bg, %bb.f ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.ao, align 1, !tbaa !45
  br label %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit.i.i"

"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit.i.i": ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !128, !noalias !1661
  %i.bl = icmp eq i64 %i.bk, 4611686018427387903
  br i1 %i.bl, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.i:                                             ; preds = %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit.i.i"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_1clB5cxx11Eh.exit.i.i"
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %.noexc10.i.i unwind label %.loopexit.i.i ; 6 uses

.noexc10.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.h, ptr %4, align 8, !tbaa !126, !alias.scope !1661
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %.noexc10.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !128 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc10.i.i
  store ptr %i.bn, ptr %4, align 8, !tbaa !127, !alias.scope !1661
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !45
  store i64 %i.bu, ptr %i.h, align 8, !tbaa !45, !alias.scope !1661
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %i.bv = phi i64 [ %i.br, %bb.j ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bv, ptr %i.i, align 8, !tbaa !128, !alias.scope !1661
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !127
  store i64 0, ptr %i.bw, align 8, !tbaa !128
  store i8 0, ptr %i.bo, align 8, !tbaa !45
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !128 ; 2 uses
  %i.by = load i64, ptr %i.b, align 8, !tbaa !128
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
          to label %.noexc11.i.i unwind label %.loopexit.split-lp24.i.i

.noexc11.i.i:                                     ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %bb.k
  %i.cb = load ptr, ptr %4, align 8, !tbaa !127
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cb, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i unwind label %.loopexit23.i.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.cd = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.h
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  call void @_ZdlPv(ptr noundef %i.cd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i
  %i.cf = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.f
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.cf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !1098
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !1154
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.o, align 8, !tbaa !1154
  br label %bb.o

.loopexit.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i

.loopexit23.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %lpad.loopexit25.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp24.i.i:                         ; preds = %bb.l
  %lpad.loopexit.split-lp26.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp24.i.i, %.loopexit23.i.i
  %lpad.phi27.i.i = phi { ptr, i32 } [ %lpad.loopexit25.i.i, %.loopexit23.i.i ], [ %lpad.loopexit.split-lp26.i.i, %.loopexit.split-lp24.i.i ] ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.h
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.phi27.i.i, %bb.n ]
  %i.cm = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.f
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i
  call void @_ZdlPv(ptr noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body.i

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i
  %i.co = add nuw nsw i64 %.0835.i.i, 1           ; 2 uses
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !1653 ; 2 uses
  %i.cq = load i8, ptr %i.k, align 8, !tbaa !52
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !45
  %i.cu = zext i8 %i.ct to i64
  %i.cv = icmp samesign ult i64 %i.co, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i, label %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_2clERKS0_.exit.i", !llvm.loop !1664

"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_2clERKS0_.exit.i": ; preds = %bb.o, %.noexc10.i
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !1194 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !131
  %.not.i = icmp sgt i64 %i.cx, -1
  %i.cy = load ptr, ptr %6, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN6duckdb17ConstPrefixHandleD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_2clERKS0_.exit.i"
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %6, align 8, !tbaa !179
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = atomicrmw sub ptr %i.da, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb17ConstPrefixHandleD2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #33
  unreachable

_ZN6duckdb17ConstPrefixHandleD2Ev.exit.i:         ; preds = %bb.q, %"_ZZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_2clERKS0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.not.i, label %bb.a, label %"_ZN6duckdb17ConstPrefixHandle8IteratorIZNS0_8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEE3$_2EEvS3_RSt17reference_wrapperIS5_EbOT_.exit"

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
end_hunk_4
