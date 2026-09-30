Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6casadi9Sqpmethod4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:._crit_edge.i.i
  br label %bb.lw

bb.lv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1248
  %i.bgp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lw

bb.lw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227, %bb.lg, %bb.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256
  %.pn452.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn1482, %bb.lg ], [ %.pn452.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227 ], [ %i.bgp, %bb.lv ], [ %.pn447.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256 ], [ %.pn452.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225 ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %144) #26
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.kz
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn, %bb.lw ], [ %i.bck, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.ky
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lx ], [ %i.bcj, %bb.ky ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257 unwind label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bgq = landingpad { ptr, i32 }
          catch ptr null
  %i.bgr = extractvalue { ptr, i32 } %i.bgq, 0
  call void @__clang_call_terminate(ptr %i.bgr) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257: ; preds = %bb.ly, %bb.kx
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bci, %bb.kx ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  br label %bb.ma

bb.ma:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257, %bb.kw
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257 ], [ %i.bch, %bb.kw ] ; 2 uses
  %i.bgs = load ptr, ptr %142, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i1258 = icmp eq ptr %i.bgs, null
  br i1 %.not.i.i.i1258, label %_ZNSt6vectorIxSaIxEED2Ev.exit1259, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bgt = getelementptr inbounds nuw i8, ptr %142, i64 16
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !128
  %i.bgv = ptrtoint ptr %i.bgu to i64
  %i.bgw = ptrtoint ptr %i.bgs to i64
  %i.bgx = sub i64 %i.bgv, %i.bgw
  call void @_ZdlPvm(ptr noundef nonnull %i.bgs, i64 noundef %i.bgx) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit1259

_ZNSt6vectorIxSaIxEED2Ev.exit1259:                ; preds = %bb.mb, %bb.ma, %bb.kv
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcg, %bb.kv ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ma ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %141)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260 unwind label %bb.mc

bb.mc:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit1259
  %i.bgy = landingpad { ptr, i32 }
          catch ptr null
  %i.bgz = extractvalue { ptr, i32 } %i.bgy, 0
  call void @__clang_call_terminate(ptr %i.bgz) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit1259, %bb.ku
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcf, %bb.ku ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit1259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261 unwind label %bb.md

bb.md:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260
  %i.bha = landingpad { ptr, i32 }
          catch ptr null
  %i.bhb = extractvalue { ptr, i32 } %i.bha, 0
  call void @__clang_call_terminate(ptr %i.bhb) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260, %bb.kt
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bce, %bb.kt ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #26
  br label %bb.my

bb.me:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1253, %bb.jx
  %i.bhc = load i8, ptr %i.te, align 8, !tbaa !162, !range !154, !noundef !164
  %i.bhd = trunc nuw i8 %i.bhc to i1
  br i1 %i.bhd, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bhe = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !166
  %i.bhg = shl nsw i64 %i.bhf, 1
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bhg, i1 noundef zeroext false)
          to label %bb.mg unwind label %bb.fn

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %i.bhh = load i8, ptr %i.v, align 8, !tbaa !311, !range !154, !noundef !164
  %i.bhi = trunc nuw i8 %i.bhh to i1
  br i1 %i.bhi, label %bb.mh, label %bb.mq

bb.mh:                                            ; preds = %bb.mg
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.100)
          to label %bb.mi unwind label %bb.fn

bb.mi:                                            ; preds = %bb.mh
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.101)
          to label %.invoke unwind label %bb.fn

.invoke:                                          ; preds = %bb.mi
  %i.bhj = load i8, ptr %i.te, align 8, !tbaa !162, !range !154, !noundef !164
  %i.bhk = trunc nuw i8 %i.bhj to i1
  %.str.102..str.103 = select i1 %i.bhk, ptr @.str.102, ptr @.str.103
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.str.102..str.103)
          to label %bb.mj unwind label %bb.fn

bb.mj:                                            ; preds = %.invoke
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bhm = load i64, ptr %i.bhl, align 8, !tbaa !166
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.104, i64 noundef %i.bhm)
          to label %bb.mk unwind label %bb.fn

bb.mk:                                            ; preds = %bb.mj
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.bho = load i64, ptr %i.bhn, align 8, !tbaa !168
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.105, i64 noundef %i.bho)
          to label %bb.ml unwind label %bb.fn

bb.ml:                                            ; preds = %bb.mk
  %i.bhp = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.age)
          to label %bb.mm unwind label %bb.fn

bb.mm:                                            ; preds = %bb.ml
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.106, i64 noundef %i.bhp)
          to label %bb.mn unwind label %bb.fn

bb.mn:                                            ; preds = %bb.mm
  %i.bhq = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azm)
          to label %bb.mo unwind label %bb.fn

bb.mo:                                            ; preds = %bb.mn
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.107, i64 noundef %i.bhq)
          to label %bb.mp unwind label %bb.fn

bb.mp:                                            ; preds = %bb.mo
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.108)
          to label %bb.mq unwind label %bb.fn

bb.mq:                                            ; preds = %bb.mp, %bb.mg
  %i.bhr = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azm)
          to label %.noexc1262 unwind label %bb.fn

.noexc1262:                                       ; preds = %bb.mq
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  store ptr %i.bhr, ptr %i.bhs, align 8, !tbaa !173
  %i.bht = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.age)
          to label %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit unwind label %bb.fn ; 3 uses

_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit: ; preds = %.noexc1262
  %i.bhu = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store ptr %i.bht, ptr %i.bhv, align 8, !tbaa !174
  %i.bhw = load i64, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store i64 %i.bhw, ptr %i.bhx, align 8, !tbaa !322
  %i.bhy = load i64, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i64 %i.bhy, ptr %i.bhz, align 8, !tbaa !323
  %i.bia = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  store ptr %i.bia, ptr %i.bhu, align 8, !tbaa !175
  %i.bib = load i8, ptr %i.y, align 8, !tbaa !151, !range !154, !noundef !164
  %i.bic = load i8, ptr %i.ac, align 1, !tbaa !152, !range !154, !noundef !164
  %i.bid = load ptr, ptr %i.bhs, align 8, !tbaa !176 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 8
  %i.bif = load i64, ptr %i.bie, align 8, !tbaa !177
  %i.big = getelementptr [8 x i8], ptr %i.bid, i64 %i.bif
  %i.bih = getelementptr i8, ptr %i.big, i64 16
  %i.bii = load i64, ptr %i.bih, align 8, !tbaa !177
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bht, i64 8
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !177
  %i.bil = getelementptr [8 x i8], ptr %i.bht, i64 %i.bik
  %i.bim = getelementptr i8, ptr %i.bil, i64 16
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !177
  %i.bio = load i64, ptr %i.bia, align 8, !tbaa !178 ; 3 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.biq = load i64, ptr %i.bip, align 8, !tbaa !179 ; 3 uses
  invoke void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef 0, i1 noundef zeroext true)
          to label %bb.mr unwind label %bb.mv

bb.mr:                                            ; preds = %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit
  %i.bir = icmp ne i8 %i.bic, 0                   ; 2 uses
  %i.bis = icmp sgt i64 %i.bhy, 0
  %or.cond.i = or i1 %i.bir, %i.bis               ; 2 uses
  %i.bit = add i64 %i.bin, %i.bii
  %reass.add.i = shl i64 %i.bio, 1                ; 2 uses
  %i.biu = add i64 %i.bit, %reass.add.i
  %i.biv = add nsw i64 %i.biq, %i.bio             ; 3 uses
  %i.biw = add i64 %i.biu, %i.biv
  %reass.add64.i = add i64 %i.biv, %i.bio
  %reass.mul.i = shl i64 %reass.add64.i, 1
  %i.bix = add i64 %i.biw, %reass.mul.i           ; 2 uses
  %..i = select i1 %or.cond.i, i64 %i.biv, i64 0
  %i.biy = add i64 %i.bix, %..i
  %i.biz = add nsw i64 %i.bhw, %i.biy
  %i.bja = add nsw i64 %reass.add.i, %i.biq
  %.not.i1264 = icmp eq i8 %i.bib, 0
  %i.bjb = mul i64 %i.biq, 13
  %159 = select i1 %.not.i1264, i64 0, i64 %i.bjb
  %i.bjc = select i1 %i.bir, i64 %i.bja, i64 0
  %i.bjd = add i64 %i.biz, %i.bjc
  %i.bje = select i1 %or.cond.i, i64 %i.bjd, i64 %i.bix
  %.2 = add i64 %i.bje, %159
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %.2, i1 noundef zeroext true)
          to label %bb.ms unwind label %bb.mv

bb.ms:                                            ; preds = %bb.mr
  %i.bjf = load i8, ptr %i.tf, align 8, !tbaa !163, !range !154, !noundef !164
  %i.bjg = trunc nuw i8 %i.bjf to i1
  br i1 %i.bjg, label %bb.mt, label %bb.mw

bb.mt:                                            ; preds = %bb.ms
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.bji = load i64, ptr %i.bjh, align 8, !tbaa !324
  invoke void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bji, i1 noundef zeroext false)
          to label %bb.mu unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.bjk = load i64, ptr %i.bjj, align 8, !tbaa !325
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bjk, i1 noundef zeroext false)
          to label %bb.mw unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %bb.mr, %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit
  %i.bjl = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.mw:                                            ; preds = %bb.mu, %bb.ms
  %i.bjm = load ptr, ptr %8, align 8, !tbaa !25   ; 2 uses
  %i.bjn = icmp eq ptr %i.bjm, %i.ae
  br i1 %i.bjn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265: ; preds = %bb.mw
  %i.bjo = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bjp = add i64 %i.bjo, 1
  call void @_ZdlPvm(ptr noundef %i.bjm, i64 noundef %i.bjp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267: ; preds = %bb.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bjq = load ptr, ptr %i.r, align 8, !tbaa !133
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.bjq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268 unwind label %bb.mx

bb.mx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267
  %i.bjr = landingpad { ptr, i32 }
          catch ptr null
  %i.bjs = extractvalue { ptr, i32 } %i.bjr, 0
  call void @__clang_call_terminate(ptr %i.bjs) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bjt = load ptr, ptr %6, align 8, !tbaa !25   ; 2 uses
  %i.bju = icmp eq ptr %i.bjt, %i.n
  br i1 %i.bju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268
  %i.bjv = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bjw = add i64 %i.bjv, 1
  call void @_ZdlPvm(ptr noundef %i.bjt, i64 noundef %i.bjw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bjx = load ptr, ptr %5, align 8, !tbaa !25   ; 2 uses
  %i.bjy = icmp eq ptr %i.bjx, %i.j
  br i1 %i.bjy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271
  %i.bjz = load i64, ptr %i.j, align 8, !tbaa !26
  %i.bka = add i64 %i.bjz, 1
  call void @_ZdlPvm(ptr noundef %i.bjx, i64 noundef %i.bka) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.my:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit720, %bb.et, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741, %bb.b, %bb.i, %bb.l, %bb.bn, %bb.dh, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, %bb.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, %bb.ht, %bb.mv, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1162, %bb.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %bb.fn
  %.pn516.pn = phi { ptr, i32 } [ %i.oa, %bb.dl ], [ %.pn468.pn.pn.pn.pn.pn.pn1468, %bb.jr ], [ %.pn468.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183 ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261 ], [ %i.bjl, %bb.mv ], [ %i.xq, %bb.fn ], [ %.pn442.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206 ], [ %.pn439.pn, %bb.iv ], [ %.pn419.pn.pn.pn.pn.pn.pn1455, %bb.ht ], [ %.pn419.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098 ], [ %i.arc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077 ], [ %.pn402.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065 ], [ %i.aoj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044 ], [ %.pn398, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1162 ], [ %i.aoe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041 ], [ %.pn386.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ], [ %i.aee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898 ], [ %.pn376.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %i.bb, %bb.b ], [ %i.dp, %bb.i ], [ %i.ea, %bb.l ], [ %.pn512.pn.pn, %bb.bn ], [ %.pn492.pn.pn, %bb.dh ], [ %.pn371.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit720 ], [ %.pn363.pn.pn.pn.pn.pn.pn1403, %bb.fa ], [ %.pn363.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ %i.qs, %bb.et ], [ %.pn468.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181 ], [ %.pn363.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741 ], [ %.pn419.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096 ]
  %i.bkb = load ptr, ptr %8, align 8, !tbaa !25   ; 2 uses
  %i.bkc = icmp eq ptr %i.bkb, %i.ae
  br i1 %i.bkc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275: ; preds = %bb.my
  %i.bkd = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bke = add i64 %i.bkd, 1
  call void @_ZdlPvm(ptr noundef %i.bkb, i64 noundef %i.bke) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277: ; preds = %bb.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bkf = load ptr, ptr %6, align 8, !tbaa !25   ; 2 uses
  %i.bkg = icmp eq ptr %i.bkf, %i.n
  br i1 %i.bkg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277
  %i.bkh = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bki = add i64 %i.bkh, 1
  call void @_ZdlPvm(ptr noundef %i.bkf, i64 noundef %i.bki) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bkj = load ptr, ptr %5, align 8, !tbaa !25   ; 2 uses
  %i.bkk = icmp eq ptr %i.bkj, %i.j
  br i1 %i.bkk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280
  %i.bkl = load i64, ptr %i.j, align 8, !tbaa !26
  %i.bkm = add i64 %i.bkl, 1
  call void @_ZdlPvm(ptr noundef %i.bkj, i64 noundef %i.bkm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn516.pn

bb.mz:                                            ; preds = %bb.kp, %bb.jk, %bb.hl, %bb.es, %bb.ct, %bb.bz, %bb.az, %bb.af
  unreachable
}

declare void @_ZN6casadi6Nlpsol4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(1984), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

declare noundef i64 @_ZNK6casadi8Function4n_inEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

end_hunk_0
