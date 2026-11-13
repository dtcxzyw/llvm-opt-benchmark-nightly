Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sqpmethod?download=true
inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN6casadi9Sqpmethod4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:._crit_edge.i.i
  br label %bb.lt

bb.ls:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1248
  %i.bgm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.lt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227, %bb.ld, %bb.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256
  %.pn452.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn1482, %bb.ld ], [ %.pn452.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1227 ], [ %i.bgm, %bb.ls ], [ %.pn447.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256 ], [ %.pn452.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1225 ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %144) #26
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.kw
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn, %bb.lt ], [ %i.bch, %bb.kw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.kv
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lu ], [ %i.bcg, %bb.kv ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257 unwind label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bgn = landingpad { ptr, i32 }
          catch ptr null
  %i.bgo = extractvalue { ptr, i32 } %i.bgn, 0
  call void @__clang_call_terminate(ptr %i.bgo) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257: ; preds = %bb.lv, %bb.ku
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcf, %bb.ku ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  br label %bb.lx

bb.lx:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257, %bb.kt
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1257 ], [ %i.bce, %bb.kt ] ; 2 uses
  %i.bgp = load ptr, ptr %142, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i1258 = icmp eq ptr %i.bgp, null
  br i1 %.not.i.i.i1258, label %_ZNSt6vectorIxSaIxEED2Ev.exit1259, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bgq = getelementptr inbounds nuw i8, ptr %142, i64 16
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !128
  %i.bgs = ptrtoint ptr %i.bgr to i64
  %i.bgt = ptrtoint ptr %i.bgp to i64
  %i.bgu = sub i64 %i.bgs, %i.bgt
  call void @_ZdlPvm(ptr noundef nonnull %i.bgp, i64 noundef %i.bgu) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit1259

_ZNSt6vectorIxSaIxEED2Ev.exit1259:                ; preds = %bb.ly, %bb.lx, %bb.ks
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcd, %bb.ks ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lx ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %141)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260 unwind label %bb.lz

bb.lz:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit1259
  %i.bgv = landingpad { ptr, i32 }
          catch ptr null
  %i.bgw = extractvalue { ptr, i32 } %i.bgv, 0
  call void @__clang_call_terminate(ptr %i.bgw) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit1259, %bb.kr
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcc, %bb.kr ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit1259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #26
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261 unwind label %bb.ma

bb.ma:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260
  %i.bgx = landingpad { ptr, i32 }
          catch ptr null
  %i.bgy = extractvalue { ptr, i32 } %i.bgx, 0
  call void @__clang_call_terminate(ptr %i.bgy) #29
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260, %bb.kq
  %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcb, %bb.kq ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #26
  br label %.loopexit.split-lp

bb.mb:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1253, %bb.ju
  %i.bgz = load i8, ptr %i.tc, align 8, !tbaa !162, !range !154, !noundef !164
  %i.bha = trunc nuw i8 %i.bgz to i1
  br i1 %i.bha, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bhc = load i64, ptr %i.bhb, align 8, !tbaa !166
  %i.bhd = shl nsw i64 %i.bhc, 1
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bhd, i1 noundef zeroext false)
          to label %bb.md unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %i.bhe = load i8, ptr %i.v, align 8, !tbaa !311, !range !154, !noundef !164
  %i.bhf = trunc nuw i8 %i.bhe to i1
  br i1 %i.bhf, label %bb.me, label %bb.mn

bb.me:                                            ; preds = %bb.md
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.100)
          to label %bb.mf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mf:                                            ; preds = %bb.me
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.101)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.mf
  %i.bhg = load i8, ptr %i.tc, align 8, !tbaa !162, !range !154, !noundef !164
  %i.bhh = trunc nuw i8 %i.bhg to i1
  %.str.102..str.103 = select i1 %i.bhh, ptr @.str.102, ptr @.str.103
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.str.102..str.103)
          to label %bb.mg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mg:                                            ; preds = %.invoke
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !166
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.104, i64 noundef %i.bhj)
          to label %bb.mh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mh:                                            ; preds = %bb.mg
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !168
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.105, i64 noundef %i.bhl)
          to label %bb.mi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mi:                                            ; preds = %bb.mh
  %i.bhm = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agb)
          to label %bb.mj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mj:                                            ; preds = %bb.mi
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.106, i64 noundef %i.bhm)
          to label %bb.mk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mk:                                            ; preds = %bb.mj
  %i.bhn = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azj)
          to label %bb.ml unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ml:                                            ; preds = %bb.mk
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.107, i64 noundef %i.bhn)
          to label %bb.mm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mm:                                            ; preds = %bb.ml
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.108)
          to label %bb.mn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mn:                                            ; preds = %bb.mm, %bb.md
  %i.bho = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azj)
          to label %.noexc1262 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1262:                                       ; preds = %bb.mn
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  store ptr %i.bho, ptr %i.bhp, align 8, !tbaa !173
  %i.bhq = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agb)
          to label %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit: ; preds = %.noexc1262
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store ptr %i.bhq, ptr %i.bhs, align 8, !tbaa !174
  %i.bht = load i64, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store i64 %i.bht, ptr %i.bhu, align 8, !tbaa !322
  %i.bhv = load i64, ptr %i.c, align 8, !tbaa !144 ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i64 %i.bhv, ptr %i.bhw, align 8, !tbaa !323
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  store ptr %i.bhx, ptr %i.bhr, align 8, !tbaa !175
  %i.bhy = load i8, ptr %i.y, align 8, !tbaa !151, !range !154, !noundef !164
  %i.bhz = load i8, ptr %i.ac, align 1, !tbaa !152, !range !154, !noundef !164
  %i.bia = load ptr, ptr %i.bhp, align 8, !tbaa !176 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 8
  %i.bic = load i64, ptr %i.bib, align 8, !tbaa !177
  %i.bid = getelementptr [8 x i8], ptr %i.bia, i64 %i.bic
  %i.bie = getelementptr i8, ptr %i.bid, i64 16
  %i.bif = load i64, ptr %i.bie, align 8, !tbaa !177
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bih = load i64, ptr %i.big, align 8, !tbaa !177
  %i.bii = getelementptr [8 x i8], ptr %i.bhq, i64 %i.bih
  %i.bij = getelementptr i8, ptr %i.bii, i64 16
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !177
  %i.bil = load i64, ptr %i.bhx, align 8, !tbaa !178 ; 3 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !179 ; 3 uses
  invoke void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef 0, i1 noundef zeroext true)
          to label %bb.mo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mo:                                            ; preds = %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit
  %i.bio = icmp ne i8 %i.bhz, 0                   ; 2 uses
  %i.bip = icmp sgt i64 %i.bhv, 0
  %or.cond.i = or i1 %i.bio, %i.bip               ; 2 uses
  %i.biq = add i64 %i.bik, %i.bif
  %reass.add.i = shl i64 %i.bil, 1                ; 2 uses
  %i.bir = add i64 %i.biq, %reass.add.i
  %i.bis = add nsw i64 %i.bin, %i.bil             ; 3 uses
  %i.bit = add i64 %i.bir, %i.bis
  %reass.add64.i = add i64 %i.bis, %i.bil
  %reass.mul.i = shl i64 %reass.add64.i, 1
  %i.biu = add i64 %i.bit, %reass.mul.i           ; 2 uses
  %..i = select i1 %or.cond.i, i64 %i.bis, i64 0
  %i.biv = add i64 %i.biu, %..i
  %i.biw = add nsw i64 %i.bht, %i.biv
  %spec.select = select i1 %or.cond.i, i64 %i.biw, i64 %i.biu
  %i.bix = add nsw i64 %reass.add.i, %i.bin
  %.not.i1264 = icmp eq i8 %i.bhy, 0
  %i.biy = mul i64 %i.bin, 13
  %i.biz = select i1 %.not.i1264, i64 0, i64 %i.biy
  %i.bja = add i64 %spec.select, %i.biz
  %i.bjb = select i1 %i.bio, i64 %i.bix, i64 0
  %.2 = add nsw i64 %i.bja, %i.bjb
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %.2, i1 noundef zeroext true)
          to label %bb.mp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mp:                                            ; preds = %bb.mo
  %i.bjc = load i8, ptr %i.td, align 8, !tbaa !163, !range !154, !noundef !164
  %i.bjd = trunc nuw i8 %i.bjc to i1
  br i1 %i.bjd, label %bb.mq, label %bb.ms

bb.mq:                                            ; preds = %bb.mp
  %i.bje = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.bjf = load i64, ptr %i.bje, align 8, !tbaa !324
  invoke void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bjf, i1 noundef zeroext false)
          to label %bb.mr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mr:                                            ; preds = %bb.mq
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.bjh = load i64, ptr %i.bjg, align 8, !tbaa !325
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bjh, i1 noundef zeroext false)
          to label %bb.ms unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.s, %bb.q, %bb.o, %_ZNK6casadi11GenericTypecvRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEEEv.exit, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit565.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit555.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit551.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit547.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit543.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit540.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit536.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit532.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, %bb.mc, %bb.me, %bb.mf, %bb.mg, %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.ml, %bb.mm, %bb.mn, %.noexc1262, %bb.ei, %bb.mr, %bb.mq, %bb.mo, %_ZN6casadi21casadi_sqpmethod_workIdEEvPKNS_21casadi_sqpmethod_probIT_EEPxS6_ii.exit
  %lpad.loopexit.split-lp1953 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ms:                                            ; preds = %bb.mr, %bb.mp
  %i.bji = load ptr, ptr %8, align 8, !tbaa !25   ; 2 uses
  %i.bjj = icmp eq ptr %i.bji, %i.ae
  br i1 %i.bjj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265: ; preds = %bb.ms
  %i.bjk = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bjl = add i64 %i.bjk, 1
  call void @_ZdlPvm(ptr noundef %i.bji, i64 noundef %i.bjl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267: ; preds = %bb.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bjm = load ptr, ptr %i.r, align 8, !tbaa !133
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.bjm)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268 unwind label %bb.mt

bb.mt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267
  %i.bjn = landingpad { ptr, i32 }
          catch ptr null
  %i.bjo = extractvalue { ptr, i32 } %i.bjn, 0
  call void @__clang_call_terminate(ptr %i.bjo) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bjp = load ptr, ptr %6, align 8, !tbaa !25   ; 2 uses
  %i.bjq = icmp eq ptr %i.bjp, %i.n
  br i1 %i.bjq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268
  %i.bjr = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bjs = add i64 %i.bjr, 1
  call void @_ZdlPvm(ptr noundef %i.bjp, i64 noundef %i.bjs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1269
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bjt = load ptr, ptr %5, align 8, !tbaa !25   ; 2 uses
  %i.bju = icmp eq ptr %i.bjt, %i.j
  br i1 %i.bju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271
  %i.bjv = load i64, ptr %i.j, align 8, !tbaa !26
  %i.bjw = add i64 %i.bjv, 1
  call void @_ZdlPvm(ptr noundef %i.bjt, i64 noundef %i.bjw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit720, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741, %bb.h, %bb.k, %bb.bm, %bb.dg, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, %bb.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, %bb.hq, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1162, %bb.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811
  %.pn516.pn = phi { ptr, i32 } [ %i.nz, %bb.dk ], [ %.pn468.pn.pn.pn.pn.pn.pn1468, %bb.jo ], [ %.pn468.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183 ], [ %.pn452.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1261 ], [ %.pn419.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096 ], [ %.pn363.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i741 ], [ %.pn442.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1206 ], [ %.pn439.pn, %bb.is ], [ %.pn419.pn.pn.pn.pn.pn.pn1455, %bb.hq ], [ %.pn419.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098 ], [ %i.aqz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077 ], [ %.pn402.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065 ], [ %i.aog, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044 ], [ %.pn398, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit1162 ], [ %i.aob, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041 ], [ %.pn386.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ], [ %i.aeb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898 ], [ %.pn376.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %.pn468.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181 ], [ %i.do, %bb.h ], [ %i.dz, %bb.k ], [ %.pn512.pn.pn, %bb.bm ], [ %.pn492.pn.pn, %bb.dg ], [ %.pn371.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit720 ], [ %.pn363.pn.pn.pn.pn.pn.pn1403, %bb.ey ], [ %.pn363.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ %lpad.loopexit.split-lp1953, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bjx = load ptr, ptr %8, align 8, !tbaa !25   ; 2 uses
  %i.bjy = icmp eq ptr %i.bjx, %i.ae
  br i1 %i.bjy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275: ; preds = %.loopexit.split-lp
  %i.bjz = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bka = add i64 %i.bjz, 1
  call void @_ZdlPvm(ptr noundef %i.bjx, i64 noundef %i.bka) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1275
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bkb = load ptr, ptr %6, align 8, !tbaa !25   ; 2 uses
  %i.bkc = icmp eq ptr %i.bkb, %i.n
  br i1 %i.bkc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277
  %i.bkd = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bke = add i64 %i.bkd, 1
  call void @_ZdlPvm(ptr noundef %i.bkb, i64 noundef %i.bke) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1278
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bkf = load ptr, ptr %5, align 8, !tbaa !25   ; 2 uses
  %i.bkg = icmp eq ptr %i.bkf, %i.j
  br i1 %i.bkg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280
  %i.bkh = load i64, ptr %i.j, align 8, !tbaa !26
  %i.bki = add i64 %i.bkh, 1
  call void @_ZdlPvm(ptr noundef %i.bkf, i64 noundef %i.bki) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1281
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn516.pn

bb.mu:                                            ; preds = %bb.km, %bb.jh, %bb.hi, %bb.er, %bb.cs, %bb.by, %bb.ay, %bb.ae
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
