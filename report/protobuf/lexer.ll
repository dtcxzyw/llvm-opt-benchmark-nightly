Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/lexer?download=true
inline.NumInlined: 1075
inline.NumDeleted: 411
begin_hunk_0_@_ZN6google8protobuf13json_internal9JsonLexer13ParseBareWordEv:bb.a
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i.i

bb.ba:                                            ; preds = %_ZN6google8protobuf13json_internal16MaybeOwnedStringC2EOS2_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %8, i64 24, i1 false), !tbaa.struct !102
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC1EOSG_EUlOT_T0_E_OSt7variantIJSA_SF_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.ci, ptr %i.di, align 8, !tbaa !96, !alias.scope !272
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.cy, ptr %i.dv, align 8, !tbaa !94, !alias.scope !272
  br i1 %.not.i.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 76 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !98 ; 2 uses
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !98
  %i.dz = icmp eq i32 %i.dx, 0
  br i1 %i.dz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !78
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !84
  br label %bb.be

bb.bd:                                            ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store i64 1, ptr %10, align 8, !tbaa !68, !alias.scope !272
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 32, i1 false), !tbaa.struct !100
  store i64 1, ptr %10, align 8, !tbaa !68, !alias.scope !272
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cy)
          to label %._ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i_crit_edge.i unwind label %bb.bf

._ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i_crit_edge.i: ; preds = %bb.be
  %.pre44.i = load i8, ptr %i.cg, align 8, !tbaa !96, !noalias !272
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i: ; preds = %._ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i_crit_edge.i, %bb.bd
  %i.eh = phi i8 [ %.pre44.i, %._ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i_crit_edge.i ], [ %i.ci, %bb.bd ]
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.bg, label %_ZN6google8protobuf13json_internal12LocationWithINS1_16MaybeOwnedStringEED2Ev.exit.i

bb.bg:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i
  %i.ej = load ptr, ptr %8, align 8, !tbaa !63, !noalias !272 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN6google8protobuf13json_internal12LocationWithINS1_16MaybeOwnedStringEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !60, !noalias !272
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #19
  br label %_ZN6google8protobuf13json_internal12LocationWithINS1_16MaybeOwnedStringEED2Ev.exit.i

_ZN6google8protobuf13json_internal12LocationWithINS1_16MaybeOwnedStringEED2Ev.exit.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !272
  br label %bb.bj

bb.bh:                                            ; preds = %bb.aq, %bb.ap
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bi:                                            ; preds = %bb.as
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !272
  br label %bb.bq

bb.bj:                                            ; preds = %_ZN6google8protobuf13json_internal12LocationWithINS1_16MaybeOwnedStringEED2Ev.exit.i, %bb.an
  %i.eq = load i64, ptr %6, align 8, !tbaa !68, !noalias !272 ; 3 uses
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i19.i, label %bb.bn

_ZN4absl12lts_202505126StatusD2Ev.exit.i19.i:     ; preds = %bb.bj
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !94, !noalias !272 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i20.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i21.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i19.i
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.eu)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i21.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i21.i: ; preds = %bb.bk, %_ZN4absl12lts_202505126StatusD2Ev.exit.i19.i
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !96, !noalias !272
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.bm, label %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit"

bb.bm:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i21.i
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !63, !noalias !272 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i: ; preds = %bb.bm
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !60, !noalias !272
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #19
  br label %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit"

bb.bn:                                            ; preds = %bb.bj
  %i.ff = trunc i64 %i.eq to i1
  br i1 %i.ff, label %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fg = inttoptr i64 %i.eq to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fg)
          to label %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit" unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #20
  unreachable

bb.bq:                                            ; preds = %bb.bi, %bb.bh, %bb.am
  %.pn11.pn.pn.i = phi { ptr, i32 } [ %i.bt, %bb.am ], [ %i.ep, %bb.bi ], [ %i.eo, %bb.bh ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal16MaybeOwnedStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %common.resume

"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit": ; preds = %bb.bm, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.fj = load i64, ptr %10, align 8, !tbaa !68   ; 4 uses
  store i64 %i.fj, ptr %11, align 8, !tbaa !68
  %i.fk = trunc i64 %i.fj to i1
  br i1 %i.fk, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit"
  %i.fl = inttoptr i64 %i.fj to ptr
  %i.fm = atomicrmw add ptr %i.fl, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %"_ZN6google8protobuf13json_internal9JsonLexer9TakeWhileIZNS2_13ParseBareWordEvE3$_0EEN4absl12lts_202505128StatusOrINS1_12LocationWithINS1_16MaybeOwnedStringEEEEET_.exit", %bb.br
  %i.fn = icmp eq i64 %i.fj, 1
  br i1 %i.fn, label %bb.bw, label %bb.bt, !prof !69

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cs

bb.bv:                                            ; preds = %bb.bt
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cl

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.fp = load i64, ptr %10, align 8, !tbaa !68
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.by, label %bb.bx, !prof !69

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %10) #21
          to label %.noexc unwind label %bb.ch

.noexc:                                           ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fs = invoke { i64, ptr } @_ZNK6google8protobuf13json_internal16MaybeOwnedString6AsViewEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fr)
          to label %bb.bz unwind label %bb.ch     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.ft = extractvalue { i64, ptr } %i.fs, 0      ; 2 uses
  %i.fu = extractvalue { i64, ptr } %i.fs, 1      ; 5 uses
  %i.fv = icmp eq i64 %i.ft, 0
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !60
  %i.fx = add i8 %i.fw, -48
  %i.fy = icmp ult i8 %i.fx, 10
  br i1 %i.fy, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  switch i64 %i.ft, label %bb.ck [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.cb
  %i.fz = load i32, ptr %i.fu, align 1
  %i.ga = icmp ne i32 %i.fz, 1819047278
  %i.gb = zext i1 %i.ga to i32
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.gd = load i32, ptr %i.fu, align 1
  %i.ge = icmp ne i32 %i.gd, 1702195828
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.ck

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26: ; preds = %bb.cb
  %13 = load i32, ptr %i.fu, align 1
  %14 = xor i32 %13, 1936482662
  %15 = getelementptr i8, ptr %i.fu, i64 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, 101
  %19 = or i32 %14, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %i.gh = icmp eq i32 %21, 0
  br i1 %i.gh, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.ck

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.ca, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.gi = load i64, ptr %10, align 8, !tbaa !68
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEptEv.exit31, label %bb.cc, !prof !69

bb.cc:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %10) #21
          to label %.noexc30 unwind label %bb.ci

.noexc30:                                         ; preds = %bb.cc
  unreachable

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEptEv.exit31: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 56
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i64 18, ptr nonnull @.str.25)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEptEv.exit31
  %i.gl = load i64, ptr %12, align 8, !tbaa !68   ; 2 uses
  store i64 %i.gl, ptr %0, align 8, !tbaa !68
  store i64 55, ptr %12, align 8, !tbaa !68
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.ce, label %_ZN4absl12lts_202505126StatusD2Ev.exit32, !prof !91

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit unwind label %.body

.body:                                            ; preds = %bb.ce
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  br label %bb.cj

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit: ; preds = %bb.ce
  %.pre62 = load i64, ptr %12, align 8, !tbaa !68 ; 2 uses
  %i.go = trunc i64 %.pre62 to i1
  br i1 %i.go, label %_ZN4absl12lts_202505126StatusD2Ev.exit32, label %bb.cf

bb.cf:                                            ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit
  %i.gp = inttoptr i64 %.pre62 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gp)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit32 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit32:         ; preds = %bb.cd, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bx, %bb.by
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ci:                                            ; preds = %bb.cc, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEptEv.exit31
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.body, %bb.ci
  %.pn16 = phi { ptr, i32 } [ %i.gn, %.body ], [ %i.gt, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cs

bb.ck:                                            ; preds = %bb.cb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
  call void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %10) #18
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit32, %bb.ck, %bb.bv
  %i.gu = load i64, ptr %10, align 8, !tbaa !68   ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.cp

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.cl
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i34, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i35, label %bb.cm

bb.cm:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gy)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i35 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i35: ; preds = %bb.cm, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !96
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.co, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit

bb.co:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i35
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !63 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36: ; preds = %bb.co
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !60
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #19
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit

bb.cp:                                            ; preds = %bb.cl
  %i.hj = trunc i64 %i.gu to i1
  br i1 %i.hj, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hk = inttoptr i64 %i.gu to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.hk)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #20
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit: ; preds = %bb.co, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i36, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ch, %bb.cj, %bb.bu
  %.pn16.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.bu ], [ %.pn16, %bb.cj ], [ %i.gs, %bb.ch ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %common.resume

bb.ct:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.thread, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !guid !275 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.66") align 8, ptr noundef nonnull align 8 dereferenceable(80), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14BufferingGuardEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !276 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.a to i1
  br i1 %i.g, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit: ; preds = %bb.e, %bb.d, %bb.b, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !277 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #20
  unreachable
}

declare void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream4TakeEm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.79") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !278 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::StatusOr.66", align 8 ; 11 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.66") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load i64, ptr %3, align 8, !tbaa !68     ; 4 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !68
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %bb.g, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal16MaybeOwnedStringEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
end_hunk_0
