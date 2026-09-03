Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser14close_term_letERNS2_10ParsedItemE:bb.a

.noexc:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !51, !alias.scope !778
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !154  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.t, ptr %4, align 8, !tbaa !154, !alias.scope !778
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !54
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !54, !alias.scope !778
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !53, !alias.scope !778
  store ptr %i.u, ptr %i.r, align 8, !tbaa !154
  store i64 0, ptr %i.ac, align 8, !tbaa !53
  store i8 0, ptr %i.u, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53, !noalias !779
  %i.af = icmp eq i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc24 unwind label %bb.k

.noexc24:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc25 unwind label %bb.k   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !51, !alias.scope !779
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !154 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.g:                                             ; preds = %.noexc25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.noexc25
  store ptr %i.ai, ptr %3, align 8, !tbaa !154, !alias.scope !779
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !54
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !54, !alias.scope !779
  %.phi.trans.insert.i22 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i23 = load i64, ptr %.phi.trans.insert.i22, align 8, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.g
  %i.aq = phi i64 [ %i.am, %bb.g ], [ %.pre.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !53, !alias.scope !779
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !154
  store i64 0, ptr %i.ar, align 8, !tbaa !53
  store i8 0, ptr %i.aj, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !239
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !217
  %i.aw = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ax = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ah
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.bb = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !54
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.bf = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !54
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.l:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ah
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.l
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.bm, %bb.l ] ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.s
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !54
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  %i.bv = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !54
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn

_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit: ; preds = %bb.b
  call void @_ZN4bzla6parser4smt26Parser12pop_term_argEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Term") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2056) %0)
  store i32 8, ptr %1, align 8, !tbaa !238
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJPN4bzla6parser4smt211SymbolTable4NodeEN8bitwuzla4SortENS6_4TermEEEaSIRS8_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS5_S7_S8_EE4typeEE18is_constructible_vISH_SE_E15is_assignable_vIRSH_SE_EERS9_E4typeESF_(ptr noundef nonnull align 8 dereferenceable(17) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %6) #30 ; 0 uses
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -152 ; 2 uses
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !182
  call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.cd) #30
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !314
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !164
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = sdiv exact i64 %i.cl, 152
  %i.cn = xor i64 %i.cg, -1
  %i.co = add i64 %i.cm, %i.cn                    ; 5 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1336
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %_ZNK4bzla6parser4smt26Parser13peek_node_argEm.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !182 ; 3 uses
  %.pre44 = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %.pre45 = ptrtoint ptr %.pre to i64
  %.pre46 = ptrtoint ptr %.pre44 to i64
  %.pre48 = sub i64 %.pre45, %.pre46
  %.pre50 = sdiv exact i64 %.pre48, 152           ; 2 uses
  %7 = icmp ugt i64 %i.co, %.pre50
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.loopexit
  %i.cq = sub i64 0, %i.co
  call void @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq)
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit

bb.n:                                             ; preds = %._crit_edge.loopexit
  %8 = sub nuw i64 %.pre50, %i.co
  %i.cr = getelementptr inbounds nuw [152 x i8], ptr %.pre44, i64 %8 ; 3 uses
  %.not.i.i = icmp eq ptr %.pre, %i.cr
  br i1 %.not.i.i, label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.cr, %bb.n ] ; 2 uses
  call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %.05.i.i.i.i) #30
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cs, %.pre
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !182
  br label %_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit

bb.o:                                             ; preds = %.lr.ph, %_ZNK4bzla6parser4smt26Parser13peek_node_argEm.exit
  %.01343 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNK4bzla6parser4smt26Parser13peek_node_argEm.exit ] ; 2 uses
  %i.ct = xor i64 %.01343, -1
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cl
  %i.cw = getelementptr [152 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !242
  switch i8 %i.cy, label %bb.p [
    i8 0, label %_ZNK4bzla6parser4smt26Parser13peek_node_argEm.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !259

bb.p:                                             ; preds = %bb.o
  %i.cz = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cz, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr @.str.202, ptr %i.da, align 8, !tbaa !262
  call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.o
  %i.db = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.db, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @.str.201, ptr %i.dc, align 8, !tbaa !262
  call void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_node_argEm.exit: ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !268
  call void @_ZN4bzla6parser4smt211SymbolTable6removeEPNS2_4NodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef %i.de)
  %i.df = add nuw i64 %.01343, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.co
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.o, !llvm.loop !777

_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE6resizeEm.exit: ; preds = %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit, %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ true, %bb.m ], [ true, %_ZN4bzla6parser4smt26Parser8set_itemIN8bitwuzla4TermEEEvRNS2_10ParsedItemENS1_5TokenET_RKSt8optionalINS1_5Lexer10CoordinateEE.exit ], [ true, %bb.n ], [ true, %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser18close_term_letbindERNS2_10ParsedItemE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2056) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(145) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.bitwuzla::Term", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 152                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !164  ; 2 uses
  %i.m = sub i64 %i.l, %i.h
  %.not = icmp eq i64 %i.m, -3
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.n = xor i64 %i.l, -1
  %i.o = add i64 %i.h, %i.n                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.p = icmp ult i64 %i.o, 10
  br i1 %i.p, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.x, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.w, %bb.h ], [ %i.o, %bb.b ] ; 5 uses
  %i.q = icmp ult i64 %.02328.i.i, 100
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = udiv i64 %.02328.i.i, 10000
  %i.x = add i32 %.029.i.i, 4                     ; 2 uses
  %i.y = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.y, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.v, %bb.g ], [ %i.r, %bb.c ], [ %i.t, %bb.e ], [ 1, %bb.b ], [ %i.x, %bb.h ]
  %i.z = zext i32 %.022.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !51, !alias.scope !784
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.z, i8 noundef signext 0)
  %i.ab = load ptr, ptr %4, align 8, !tbaa !154, !alias.scope !784 ; 4 uses
  %i.ac = icmp ugt i64 %i.o, 99
  br i1 %i.ac, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53, !alias.scope !784
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.aj, %.lr.ph.i6.i ], [ %i.o, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.at, %.lr.ph.i6.i ], [ %i.ag, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = urem i64 %.020.i.i, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !54, !noalias !784
  %i.an = zext i32 %.01819.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !54
  %i.ap = load i8, ptr %i.ak, align 2, !tbaa !54, !noalias !784
  %i.aq = add i32 %.01819.i.i, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !54
  %i.at = add i32 %.01819.i.i, -2
  %i.au = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.au, label %.lr.ph.i6.i, label %._crit_edge.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph.i6.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.o, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.aj, %.lr.ph.i6.i ] ; 3 uses
  %i.av = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54, !noalias !784
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !54
  %i.bb = load i8, ptr %i.ax, align 2, !tbaa !54, !noalias !784
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bc = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bd = or disjoint i8 %i.bc, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.bd, %bb.j ], [ %i.bb, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.ab, align 1, !tbaa !54
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.127, i64 noundef 46)
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !51, !alias.scope !785
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !154 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !53 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.bg, ptr %3, align 8, !tbaa !154, !alias.scope !785
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !54
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !54, !alias.scope !785
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.bo = phi i64 [ %i.bk, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !53, !alias.scope !785
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !154
  store i64 0, ptr %i.bp, align 8, !tbaa !53
  store i8 0, ptr %i.bh, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !239
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.bs, align 8, !tbaa !217
  %i.bt = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bu = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bf
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.m
  %i.bw = load i64, ptr %i.bf, align 8, !tbaa !54
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.by = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aa
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  %193 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %194 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %195 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %196 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %197 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %198 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %199 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %200 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %201 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %202 = alloca %"class.std::optional", align 8   ; 6 uses
  %203 = alloca %"class.std::vector.126", align 8 ; 10 uses
  %204 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %205 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %206 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %207 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %208 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %209 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %210 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %211 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %212 = alloca %"class.std::optional", align 8   ; 6 uses
  %213 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %214 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %215 = alloca %"class.std::allocator", align 1  ; 4 uses
  %216 = alloca %"class.std::optional", align 8   ; 6 uses
  %217 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %218 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %219 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %220 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %221 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %222 = alloca %"class.std::optional", align 8   ; 6 uses
  %223 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %224 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %225 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %226 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %227 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %228 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %229 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %230 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %231 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %232 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %233 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %234 = alloca %"class.std::optional", align 8   ; 6 uses
  %235 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %236 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %237 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %238 = alloca %"class.std::optional", align 8   ; 6 uses
  %239 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %240 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %241 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %242 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %243 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %244 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %245 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %246 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %247 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %248 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %249 = alloca %"class.std::optional", align 8   ; 6 uses
  %250 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %251 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %252 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %253 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %254 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %255 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %256 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %257 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %258 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %259 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %260 = alloca %"class.std::optional", align 8   ; 6 uses
  %261 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %262 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %263 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %264 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %265 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %266 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %267 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %268 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %269 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %270 = alloca %"class.bitwuzla::Sort", align 8  ; 7 uses
  %271 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %272 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %273 = alloca %"class.std::optional", align 8   ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !238    ; 20 uses
  switch i32 %i.a, label %bb.j [
    i32 32815, label %bb.i
    i32 32814, label %bb.i
    i32 32817, label %bb.h
    i32 32816, label %bb.h
    i32 16422, label %bb.g
    i32 16408, label %bb.g
    i32 16403, label %bb.g
    i32 16402, label %bb.g
    i32 16399, label %bb.g
    i32 16391, label %bb.f
    i32 32788, label %bb.e
    i32 32813, label %bb.d
    i32 32803, label %bb.d
    i32 32786, label %bb.d
    i32 32785, label %bb.d
    i32 32789, label %bb.d
    i32 4102, label %bb.d
    i32 8194, label %bb.d
    i32 32812, label %bb.c
    i32 32811, label %bb.c
    i32 32810, label %bb.c
    i32 4103, label %bb.b
    i32 16395, label %bb.b
    i32 16428, label %bb.b
    i32 16397, label %bb.b
    i32 16423, label %bb.b
    i32 16424, label %bb.b
    i32 16425, label %bb.b
    i32 16426, label %bb.b
    i32 16427, label %bb.b
    i32 32784, label %bb.b
    i32 32792, label %bb.b
    i32 32793, label %bb.b
    i32 32794, label %bb.b
    i32 32795, label %bb.b
    i32 32796, label %bb.b
    i32 32797, label %bb.b
    i32 32798, label %bb.b
    i32 32805, label %bb.b
    i32 8193, label %bb.c
    i32 16388, label %bb.c
    i32 16389, label %bb.c
    i32 16392, label %bb.c
    i32 16394, label %bb.c
    i32 16396, label %bb.c
    i32 16400, label %bb.c
    i32 16401, label %bb.c
    i32 16404, label %bb.c
    i32 16405, label %bb.c
    i32 16406, label %bb.c
    i32 16407, label %bb.c
    i32 16409, label %bb.c
    i32 16410, label %bb.c
    i32 16411, label %bb.c
    i32 16412, label %bb.c
    i32 16414, label %bb.c
    i32 16415, label %bb.c
    i32 16416, label %bb.c
    i32 16417, label %bb.c
    i32 16418, label %bb.c
    i32 16419, label %bb.c
    i32 16420, label %bb.c
    i32 16429, label %bb.c
    i32 16430, label %bb.c
    i32 16431, label %bb.c
    i32 16432, label %bb.c
    i32 16433, label %bb.c
    i32 16434, label %bb.c
    i32 16435, label %bb.c
    i32 32801, label %bb.c
    i32 32802, label %bb.c
    i32 32804, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.b = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  %i.c = phi ptr [ @.str.55, %bb.a ], [ @.str.55, %bb.i ], [ @.str.154, %bb.h ], [ @.str.55, %bb.g ], [ @.str.55, %bb.f ], [ @.str.154, %bb.e ], [ @.str.154, %bb.d ], [ @.str.55, %bb.b ], [ @.str.154, %bb.c ] ; 2 uses
  %.0577 = phi i64 [ 0, %bb.a ], [ 0, %bb.i ], [ 2, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 4, %bb.e ], [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ] ; 2 uses
  %i.d = phi ptr [ @.str.159, %bb.a ], [ @.str.158, %bb.i ], [ @.str.159, %bb.h ], [ @.str.159, %bb.g ], [ @.str.158, %bb.f ], [ @.str.159, %bb.e ], [ @.str.159, %bb.d ], [ @.str.159, %bb.b ], [ @.str.159, %bb.c ] ; 2 uses
  %.0576 = phi i64 [ 0, %bb.a ], [ 2, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 2, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 36 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 152                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !164  ; 14 uses
  %i.q = xor i64 %i.p, -1
  %i.r = add i64 %i.l, %i.q                       ; 46 uses
  br i1 %i.b, label %bb.k, label %bb.bf

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i64 %i.r, %.0577
  br i1 %.not, label %bb.fd, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.s, ptr %11, align 8, !tbaa !51, !alias.scope !898
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 1, i8 noundef signext 0)
  %i.t = load ptr, ptr %11, align 8, !tbaa !154, !alias.scope !898
  %i.u = trunc nuw nsw i64 %.0577 to i8
  %i.v = or disjoint i8 %i.u, 48
  store i8 %i.v, ptr %i.t, align 1, !tbaa !54
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.152, i64 noundef 9)
          to label %.noexc unwind label %bb.av    ; 6 uses

.noexc:                                           ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.x, ptr %10, align 8, !tbaa !51, !alias.scope !899
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !154  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.y, ptr %10, align 8, !tbaa !154, !alias.scope !899
  %i.af = load i64, ptr %i.z, align 8, !tbaa !54
  store i64 %i.af, ptr %i.x, align 8, !tbaa !54, !alias.scope !899
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.ag = phi i64 [ %i.ac, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !53, !alias.scope !899
  store ptr %i.z, ptr %i.w, align 8, !tbaa !154
  store i64 0, ptr %i.ah, align 8, !tbaa !53
  store i8 0, ptr %i.z, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53, !noalias !900
  %i.ak = add i64 %i.aj, -4611686018427387895
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc881 unwind label %bb.aw

.noexc881:                                        ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.153, i64 noundef 9)
          to label %.noexc882 unwind label %bb.aw ; 6 uses

.noexc882:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.an, ptr %9, align 8, !tbaa !51, !alias.scope !900
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878

bb.p:                                             ; preds = %.noexc882
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !53 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878: ; preds = %.noexc882
  store ptr %i.ao, ptr %9, align 8, !tbaa !154, !alias.scope !900
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !54
  store i64 %i.av, ptr %i.an, align 8, !tbaa !54, !alias.scope !900
  %.phi.trans.insert.i879 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre.i880 = load i64, ptr %.phi.trans.insert.i879, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878, %bb.p
  %i.aw = phi i64 [ %i.as, %bb.p ], [ %.pre.i880, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i878 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !53, !alias.scope !900
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !154
  store i64 0, ptr %i.ax, align 8, !tbaa !53
  store i8 0, ptr %i.ap, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #30, !noalias !901 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !53, !noalias !901
  %i.bb = sub i64 4611686018427387903, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.az
  br i1 %i.bc, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i883

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc887 unwind label %bb.ax

.noexc887:                                        ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i883: ; preds = %bb.q
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.c, i64 noundef %i.az)
          to label %.noexc888 unwind label %bb.ax ; 6 uses

.noexc888:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i883
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !51, !alias.scope !901
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !154 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884

bb.s:                                             ; preds = %.noexc888
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884: ; preds = %.noexc888
  store ptr %i.bf, ptr %8, align 8, !tbaa !154, !alias.scope !901
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !54
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !54, !alias.scope !901
  %.phi.trans.insert.i885 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i886 = load i64, ptr %.phi.trans.insert.i885, align 8, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884, %bb.s
  %i.bn = phi i64 [ %i.bj, %bb.s ], [ %.pre.i886, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !53, !alias.scope !901
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !154
  store i64 0, ptr %i.bo, align 8, !tbaa !53
  store i8 0, ptr %i.bg, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !53, !noalias !902
  %i.br = add i64 %i.bq, -4611686018427387899
  %i.bs = icmp ult i64 %i.br, 5
  br i1 %i.bs, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i890

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc894 unwind label %bb.ay

.noexc894:                                        ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i890: ; preds = %bb.t
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.155, i64 noundef 5)
          to label %.noexc895 unwind label %bb.ay ; 6 uses

.noexc895:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i890
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !51, !alias.scope !902
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !154 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891

bb.v:                                             ; preds = %.noexc895
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !53 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891: ; preds = %.noexc895
  store ptr %i.bv, ptr %7, align 8, !tbaa !154, !alias.scope !902
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !54
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !54, !alias.scope !902
  %.phi.trans.insert.i892 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.pre.i893 = load i64, ptr %.phi.trans.insert.i892, align 8, !tbaa !53
  br label %bb.w
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a

bb.aez:                                           ; preds = %bb.aek
  %i.evg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %261) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #30
  br label %bb.afo

bb.afa:                                           ; preds = %bb.ael
  %i.evh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %262) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #30
  br label %bb.afo

bb.afb:                                           ; preds = %bb.aeo, %bb.aen
  %i.evi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507

bb.afc:                                           ; preds = %bb.aep
  %i.evj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504

bb.afd:                                           ; preds = %bb.aeq
  %i.evk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

bb.afe:                                           ; preds = %bb.aer
  %i.evl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498

bb.aff:                                           ; preds = %bb.aes
  %i.evm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

bb.afg:                                           ; preds = %bb.aet
  %i.evn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492

bb.afh:                                           ; preds = %bb.aeu
  %i.evo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489

bb.afi:                                           ; preds = %bb.aev
  %i.evp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486

bb.afj:                                           ; preds = %bb.aew
  %i.evq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483

bb.afk:                                           ; preds = %bb.aex
  %i.evr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #30
  %i.evs = load ptr, ptr %263, align 8, !tbaa !154 ; 2 uses
  %i.evt = getelementptr inbounds nuw i8, ptr %263, i64 16 ; 2 uses
  %i.evu = icmp eq ptr %i.evs, %i.evt
  br i1 %i.evu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481: ; preds = %bb.afk
  %i.evv = load i64, ptr %i.evt, align 8, !tbaa !54
  %i.evw = add i64 %i.evv, 1
  call void @_ZdlPvm(ptr noundef %i.evs, i64 noundef %i.evw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483: ; preds = %bb.afk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481, %bb.afj
  %.pn790 = phi { ptr, i32 } [ %i.evq, %bb.afj ], [ %i.evr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481 ], [ %i.evr, %bb.afk ] ; 2 uses
  %i.evx = load ptr, ptr %264, align 8, !tbaa !154 ; 2 uses
  %i.evy = getelementptr inbounds nuw i8, ptr %264, i64 16 ; 2 uses
  %i.evz = icmp eq ptr %i.evx, %i.evy
  br i1 %i.evz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483
  %i.ewa = load i64, ptr %i.evy, align 8, !tbaa !54
  %i.ewb = add i64 %i.ewa, 1
  call void @_ZdlPvm(ptr noundef %i.evx, i64 noundef %i.ewb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484, %bb.afi
  %.pn790.pn = phi { ptr, i32 } [ %i.evp, %bb.afi ], [ %.pn790, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484 ], [ %.pn790, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483 ] ; 2 uses
  %i.ewc = load ptr, ptr %272, align 8, !tbaa !154 ; 2 uses
  %i.ewd = getelementptr inbounds nuw i8, ptr %272, i64 16 ; 2 uses
  %i.ewe = icmp eq ptr %i.ewc, %i.ewd
  br i1 %i.ewe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486
  %i.ewf = load i64, ptr %i.ewd, align 8, !tbaa !54
  %i.ewg = add i64 %i.ewf, 1
  call void @_ZdlPvm(ptr noundef %i.ewc, i64 noundef %i.ewg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487, %bb.afh
  %.pn790.pn.pn = phi { ptr, i32 } [ %i.evo, %bb.afh ], [ %.pn790.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487 ], [ %.pn790.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #30
  %i.ewh = load ptr, ptr %265, align 8, !tbaa !154 ; 2 uses
  %i.ewi = getelementptr inbounds nuw i8, ptr %265, i64 16 ; 2 uses
  %i.ewj = icmp eq ptr %i.ewh, %i.ewi
  br i1 %i.ewj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489
  %i.ewk = load i64, ptr %i.ewi, align 8, !tbaa !54
  %i.ewl = add i64 %i.ewk, 1
  call void @_ZdlPvm(ptr noundef %i.ewh, i64 noundef %i.ewl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490, %bb.afg
  %.pn790.pn.pn.pn = phi { ptr, i32 } [ %i.evn, %bb.afg ], [ %.pn790.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490 ], [ %.pn790.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489 ] ; 2 uses
  %i.ewm = load ptr, ptr %266, align 8, !tbaa !154 ; 2 uses
  %i.ewn = getelementptr inbounds nuw i8, ptr %266, i64 16 ; 2 uses
  %i.ewo = icmp eq ptr %i.ewm, %i.ewn
  br i1 %i.ewo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492
  %i.ewp = load i64, ptr %i.ewn, align 8, !tbaa !54
  %i.ewq = add i64 %i.ewp, 1
  call void @_ZdlPvm(ptr noundef %i.ewm, i64 noundef %i.ewq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493, %bb.aff
  %.pn790.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evm, %bb.aff ], [ %.pn790.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493 ], [ %.pn790.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492 ] ; 2 uses
  %i.ewr = load ptr, ptr %271, align 8, !tbaa !154 ; 2 uses
  %i.ews = getelementptr inbounds nuw i8, ptr %271, i64 16 ; 2 uses
  %i.ewt = icmp eq ptr %i.ewr, %i.ews
  br i1 %i.ewt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495
  %i.ewu = load i64, ptr %i.ews, align 8, !tbaa !54
  %i.ewv = add i64 %i.ewu, 1
  call void @_ZdlPvm(ptr noundef %i.ewr, i64 noundef %i.ewv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496, %bb.afe
  %.pn790.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evl, %bb.afe ], [ %.pn790.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496 ], [ %.pn790.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #30
  %i.eww = load ptr, ptr %267, align 8, !tbaa !154 ; 2 uses
  %i.ewx = getelementptr inbounds nuw i8, ptr %267, i64 16 ; 2 uses
  %i.ewy = icmp eq ptr %i.eww, %i.ewx
  br i1 %i.ewy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498
  %i.ewz = load i64, ptr %i.ewx, align 8, !tbaa !54
  %i.exa = add i64 %i.ewz, 1
  call void @_ZdlPvm(ptr noundef %i.eww, i64 noundef %i.exa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499, %bb.afd
  %.pn790.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evk, %bb.afd ], [ %.pn790.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499 ], [ %.pn790.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498 ] ; 2 uses
  %i.exb = load ptr, ptr %268, align 8, !tbaa !154 ; 2 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %268, i64 16 ; 2 uses
  %i.exd = icmp eq ptr %i.exb, %i.exc
  br i1 %i.exd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501
  %i.exe = load i64, ptr %i.exc, align 8, !tbaa !54
  %i.exf = add i64 %i.exe, 1
  call void @_ZdlPvm(ptr noundef %i.exb, i64 noundef %i.exf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502, %bb.afc
  %.pn790.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evj, %bb.afc ], [ %.pn790.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502 ], [ %.pn790.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501 ] ; 2 uses
  %i.exg = load ptr, ptr %269, align 8, !tbaa !154 ; 2 uses
  %i.exh = getelementptr inbounds nuw i8, ptr %269, i64 16 ; 2 uses
  %i.exi = icmp eq ptr %i.exg, %i.exh
  br i1 %i.exi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504
  %i.exj = load i64, ptr %i.exh, align 8, !tbaa !54
  %i.exk = add i64 %i.exj, 1
  call void @_ZdlPvm(ptr noundef %i.exg, i64 noundef %i.exk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505, %bb.afb
  %.pn790.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evi, %bb.afb ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505 ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %270) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #30
  br label %bb.afo

.critedge876.thread:                              ; preds = %.critedge857, %bb.kg, %bb.le, %bb.mq, %bb.rl, %bb.abx, %.critedge876, %bb.aem, %bb.act, %bb.abo
  %i.exl = load ptr, ptr %i.f, align 8, !tbaa !182 ; 3 uses
  %i.exm = load ptr, ptr %i.e, align 8, !tbaa !181 ; 2 uses
  %i.exn = ptrtoint ptr %i.exl to i64
  %i.exo = ptrtoint ptr %i.exm to i64
  %i.exp = sub i64 %i.exn, %i.exo
  %i.exq = sdiv exact i64 %i.exp, 152             ; 2 uses
  %i.exr = sub nuw i64 %i.exq, %i.r
  %i.exs = icmp ugt i64 %i.r, %i.exq
  br i1 %i.exs, label %bb.afl, label %bb.afm

bb.afl:                                           ; preds = %.critedge876.thread
  %i.ext = sub i64 0, %i.r
  call void @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ext)
  br label %.critedge

bb.afm:                                           ; preds = %.critedge876.thread
  %.not2666 = icmp eq i64 %i.r, 0
  br i1 %.not2666, label %.critedge, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.exu = getelementptr inbounds nuw [152 x i8], ptr %i.exm, i64 %i.exr ; 3 uses
  %.not.i.i2508 = icmp eq ptr %i.exl, %i.exu
  br i1 %.not.i.i2508, label %.critedge, label %.lr.ph.i.i.i.i2509

.lr.ph.i.i.i.i2509:                               ; preds = %bb.afn, %.lr.ph.i.i.i.i2509
  %.05.i.i.i.i2510 = phi ptr [ %i.exv, %.lr.ph.i.i.i.i2509 ], [ %i.exu, %bb.afn ] ; 2 uses
  call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %.05.i.i.i.i2510) #30
  %i.exv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2510, i64 152 ; 2 uses
  %.not.i.i.i.i2511 = icmp eq ptr %i.exv, %i.exl
  br i1 %.not.i.i.i.i2511, label %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2509, !llvm.loop !3

_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i2509
  store ptr %i.exu, ptr %i.f, align 8, !tbaa !182
  br label %.critedge

.critedge:                                        ; preds = %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.afn, %bb.afm, %bb.afl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1600, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1612, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2002, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955
  %.11590 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2245 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2426 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1479 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1600 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1612 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1624 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1636 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1827 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2002 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2124 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1120 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173 ], [ true, %bb.afl ], [ true, %bb.afm ], [ true, %bb.afn ], [ true, %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i ]
  ret i1 %.11590

bb.afo:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451, %bb.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573, %bb.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591, %bb.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1609, %bb.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1615, %bb.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1633, %bb.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1639, %bb.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645, %bb.qq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818, %bb.rg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836, %bb.rq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854, %bb.vl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993, %bb.vv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2011, %bb.wm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030, %bb.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061, %bb.abc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254, %bb.aci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2308, %bb.aea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2453, %bb.afa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507, %bb.aez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506, %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555, %bb.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800, %bb.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746, %bb.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975, %bb.ut, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921, %.loopexit2784, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1885, %bb.tp, %bb.yf, %bb.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2109, %bb.xu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182, %bb.aai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158, %bb.zv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985
  %.pn843.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn843.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985 ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443 ], [ %.pn622.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285 ], [ %.pn616.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210 ], [ %.pn629.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060 ], [ %.pn822.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2236 ], [ %.pn819.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254 ], [ %i.dxj, %bb.abc ], [ %.pn809.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2308 ], [ %i.edg, %bb.aci ], [ %.pn800.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2453 ], [ %i.eqy, %bb.aea ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507 ], [ %i.evh, %bb.afa ], [ %i.evg, %bb.aez ], [ %i.ayk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451 ], [ %i.dni, %bb.yf ], [ %.pn776, %bb.ih ], [ %.pn765.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573 ], [ %.pn762.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591 ], [ %.pn760, %bb.kn ], [ %i.bki, %bb.ka ], [ %.pn757.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1609 ], [ %.pn755, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1615 ], [ %.pn752.pn, %bb.lm ], [ %i.bny, %bb.kx ], [ %.pn749.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1633 ], [ %.pn747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1639 ], [ %.pn745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645 ], [ %.pn742.pn, %bb.my ], [ %.pn739.pn, %bb.mk ], [ %i.bqy, %bb.lv ], [ %i.bhm, %bb.jm ], [ %.pn717.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818 ], [ %.pn714.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836 ], [ %.pn711.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854 ], [ %i.cnd, %bb.rq ], [ %.pn708.pn, %bb.rg ], [ %.pn705.pn, %bb.qq ], [ %lpad.phi2810, %bb.ox ], [ %.pn679.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993 ], [ %i.dcc, %bb.vl ], [ %.pn676.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2011 ], [ %.pn673.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030 ], [ %.pn670.pn, %bb.wm ], [ %i.ddr, %bb.vv ], [ %.pn667.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061 ], [ %lpad.phi, %.loopexit2784 ], [ %i.dix, %bb.xg ], [ %.pn778.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506 ], [ %.pn768.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555 ], [ %.pn731.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746 ], [ %.pn722.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800 ], [ %.pn720, %bb.pt ], [ %.pn700.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1885 ], [ %.pn691.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975 ], [ %.pn689, %bb.ut ], [ %lpad.loopexit.split-lp2789, %bb.tp ], [ %.pn682.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921 ], [ %.pn658.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2109 ], [ %i.dlk, %bb.xu ], [ %.pn648.pn.pn.pn.pn.pn.pn, %bb.zc ], [ %.pn641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158 ], [ %i.dsz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164 ], [ %i.dsk, %bb.zv ], [ %.pn638.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182 ], [ %i.dug, %bb.aai ]
  resume { ptr, i32 } %.pn843.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4SortERKNS_4TermERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4SortERKNS_4TermERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla4Term8is_valueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4TermES3_S3_(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager12mk_bool_sortEv(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager10mk_rm_sortEv(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser16parse_sort_arrayERN8bitwuzla4SortE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"class.bitwuzla::Sort", align 8    ; 8 uses
  %5 = alloca %"class.bitwuzla::Sort", align 8    ; 8 uses
  %6 = alloca %"class.bitwuzla::Sort", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN8bitwuzla4SortC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN8bitwuzla4SortC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.f, label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.d = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.e = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.h
  %.not.i = icmp eq i32 %i.e, 4
  br i1 %.not.i, label %bb.k, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !217
  %i.j = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.m = load i64, ptr %i.f, align 8, !tbaa !54
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.j
  %i.r = load i64, ptr %i.f, align 8, !tbaa !54
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZN4bzla6parser4smt26Parser10parse_rparEv.exit:   ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.x

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !244, !nonnull !207, !align !208
  invoke void @_ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %6, align 8, !tbaa !266
  store ptr %i.v, ptr %1, align 8, !tbaa !266
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251  ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !251  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4SortaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not7.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !252
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !252
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !251
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.af = phi ptr [ %i.z, %bb.m ], [ %i.z, %bb.o ], [ %.pr.pre.i.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ag, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !247
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #30, !inline_history !6
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #30, !inline_history !6
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
end_hunk_2
