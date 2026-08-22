Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib7RequestC2ERKS0_:bb.a
  %i.lg = load ptr, ptr %i.hu, align 8, !tbaa !159 ; 2 uses
  %.not.i141 = icmp eq ptr %i.lg, null
  br i1 %.not.i141, label %.body114, label %bb.cf

bb.cf:                                            ; preds = %.body119
  %i.lh = invoke noundef zeroext i1 %i.lg(ptr noundef nonnull align 8 dereferenceable(32) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %i.ht, i32 noundef 3)
          to label %.body114 unwind label %bb.cg  ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #48
  unreachable

.body114:                                         ; preds = %bb.cf, %.body119, %bb.ao, %bb.an
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %bb.an ], [ %.pn.pn.pn, %bb.cf ], [ %i.ia, %bb.ao ], [ %.pn.pn.pn, %.body119 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gw) #23
  br label %.body109

.body109:                                         ; preds = %bb.by, %bb.aj, %bb.ai, %.body114
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body114 ], [ %i.kt, %bb.by ], [ %i.hn, %bb.aj ], [ %i.hn, %bb.ai ] ; 2 uses
  %i.lk = load ptr, ptr %i.gl, align 8, !tbaa !159 ; 2 uses
  %.not.i143 = icmp eq ptr %i.lk, null
  br i1 %.not.i143, label %.body, label %bb.ch

bb.ch:                                            ; preds = %.body109
  %i.ll = invoke noundef zeroext i1 %i.lk(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i32 noundef 3)
          to label %.body unwind label %bb.ci     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #48
  unreachable

.body:                                            ; preds = %bb.ch, %.body109, %bb.af, %bb.ae
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.ae ], [ %.pn.pn.pn.pn.pn, %bb.ch ], [ %i.gr, %bb.af ], [ %.pn.pn.pn.pn.pn, %.body109 ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.fy) #23
  br label %bb.cj

bb.cj:                                            ; preds = %.body, %bb.bx
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.ks, %bb.bx ] ; 2 uses
  %i.lo = load ptr, ptr %i.fc, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i145 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lp = load ptr, ptr %i.fq, align 8, !tbaa !317
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.ck, %bb.cj, %bb.bw
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kr, %bb.bw ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.cj ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ck ] ; 2 uses
  %i.lt = load ptr, ptr %i.ek, align 8, !tbaa !789 ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit
  %i.lu = load ptr, ptr %i.ex, align 8, !tbaa !799
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lx) #46
  br label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit:        ; preds = %bb.cl, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, %bb.bv
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kq, %bb.bv ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cl ]
  call void @_ZN7httplib17MultipartFormDataD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ei) #23
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, %bb.bu
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit ], [ %i.kp, %bb.bu ] ; 2 uses
  %i.ly = load ptr, ptr %i.dt, align 8, !tbaa !77 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.dv
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cm
  %i.ma = load i64, ptr %i.dv, align 8, !tbaa !65
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bt
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ko, %bb.bt ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cm ] ; 2 uses
  %i.mc = load ptr, ptr %i.de, align 8, !tbaa !77 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.dg
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.me = load i64, ptr %i.dg, align 8, !tbaa !65
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.bs
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.bs ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.mg = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.co
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.mi = load i64, ptr %i.co, align 8, !tbaa !65
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.br
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.br ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ] ; 2 uses
  %i.mk = load ptr, ptr %i.bu, align 8, !tbaa !77 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.bw
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.mm = load i64, ptr %i.bw, align 8, !tbaa !65
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.bq
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kl, %bb.bq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ] ; 2 uses
  %i.mo = load ptr, ptr %i.bf, align 8, !tbaa !77 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.bh
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.mq = load i64, ptr %i.bh, align 8, !tbaa !65
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bp
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.bp ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ]
  call void @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #23
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.bo
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %i.kj, %bb.bo ]
  call void @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bb) #23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bn
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %i.ki, %bb.bn ]
  call void @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #23
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bm
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.co ], [ %i.kh, %bb.bm ] ; 2 uses
  %i.ms = load ptr, ptr %i.ak, align 8, !tbaa !77 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.am
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.cp
  %i.mu = load i64, ptr %i.am, align 8, !tbaa !65
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.bl
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kg, %bb.bl ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cp ] ; 2 uses
  %i.mw = load ptr, ptr %i.v, align 8, !tbaa !77  ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.x
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.my = load i64, ptr %i.x, align 8, !tbaa !65
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.bk
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kf, %bb.bk ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  %i.na = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.i
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.nc = load i64, ptr %i.i, align 8, !tbaa !65
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ClientImpl5send_EONS_7RequestE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.httplib::Result") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(776) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  %i.b = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #50, !noalias !1994 ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, i8 0, i64 368, i1 false), !noalias !1994
  store ptr %i.c, ptr %i.b, align 8, !tbaa !63, !noalias !1994
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !64, !noalias !1994
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 -1, ptr %i.e, align 8, !tbaa !86, !noalias !1994
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.g, ptr %i.f, align 8, !tbaa !63, !noalias !1994
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !noalias !1994
  store ptr %i.j, ptr %i.i, align 8, !tbaa !63, !noalias !1994
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.l, ptr %i.k, align 8, !tbaa !63, !noalias !1994
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1852, !noalias !1994
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 1, ptr %i.o, align 8, !tbaa !1853, !noalias !1994
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !1994
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !338, !noalias !1994
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.r, i8 0, i64 90, i1 false), !noalias !1994
  store ptr %i.t, ptr %i.s, align 8, !tbaa !63, !noalias !1994
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.v, ptr %i.u, align 8, !tbaa !63, !noalias !1994
  store ptr %i.b, ptr %3, align 8, !tbaa !70, !alias.scope !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.x = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23, !inline_history !1997 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %i.y = ptrtoint ptr %i.b to i64
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #47
          to label %.noexc unwind label %bb.i, !inline_history !1997

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.a
  %i.z = invoke noundef zeroext i1 @_ZN7httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.f, !inline_history !1997

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !169
  %i.ab = icmp eq i32 %i.aa, 36
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef zeroext i1 @_ZN7httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.f, !inline_history !1997 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !169
  %i.ae = icmp eq i32 %i.ad, 36
  br i1 %i.ae, label %.split, label %bb.g

.split:                                           ; preds = %bb.e
  store i32 4, ptr %i.a, align 4, !tbaa !169
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23, !inline_history !1997 ; 0 uses
  br i1 %i.ac, label %bb.h, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23, !inline_history !1997 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.e, %bb.c
  %.0.in.i = phi i1 [ %i.z, %bb.c ], [ %i.ac, %bb.e ]
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23, !inline_history !1997 ; 0 uses
  br i1 %.0.in.i, label %bb.h, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %.split, %bb.g
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %.split, %bb.g
  %i.aj = phi ptr [ null, %bb.h ], [ %i.b, %.split ], [ %i.b, %bb.g ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.y, %bb.h ], [ 0, %.split ], [ 0, %bb.g ]
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1957
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1958
  store i64 %.sroa.0.0, ptr %0, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ak, ptr %i.aq, align 8, !tbaa !1998
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !356
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !356
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  store ptr %i.av, ptr %i.at, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.an, ptr %i.aw, align 8, !tbaa !2000
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ap, ptr %i.ax, align 8, !tbaa !2001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i6: ; preds = %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN7httplib8ResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.aj) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 384) #46
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit7: ; preds = %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit

_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7httplib8ResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 384) #46
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ClientImpl23prepare_default_headersERNS_7RequestEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1176) %0, ptr noundef nonnull align 8 dereferenceable(776) %1, i1 zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107, !noalias !2002 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108, !noalias !2002 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6                   ; 2 uses
  %.not190 = icmp eq ptr %i.d, %i.b
  br i1 %.not190, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit
  %.sroa.5183.0191 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.5183.0191 ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l)
  br i1 %i.m, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !108, !noalias !2007 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !111, !noalias !2007
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.l), !noalias !2007
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !108, !noalias !2007
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.q, ptr %i.j, align 8, !tbaa !108, !noalias !2007
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.l), !noalias !2007
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.not.i = icmp ult i64 %.sroa.5183.0191, %i.h
  %i.r = zext i1 %.not.i to i64
  %spec.select = add nuw i64 %.sroa.5183.0191, %i.r ; 2 uses
  %.not = icmp eq i64 %spec.select, %i.h
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !63
  store i32 1953722184, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.u, align 4, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 11 uses
  %i.w = call noundef zeroext i1 @_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1923
  %i.z = load ptr, ptr %0, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(1176) %0)
end_hunk_0
begin_hunk_1_@_ZN7httplib10ClientImpl23prepare_default_headersERNS_7RequestEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.eb, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ec = load i64, ptr %i.di, align 8, !tbaa !64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.ed = icmp ult i64 %i.ec, 10
  br i1 %i.ed, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ah
  %.029.i.i = phi i32 [ %i.el, %bb.ah ], [ 1, %bb.ab ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ek, %bb.ah ], [ %i.ec, %bb.ab ] ; 5 uses
  %i.ee = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ee, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ef = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.eg = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ei = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ej = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ek = udiv i64 %.02328.i.i, 10000
  %i.el = add i32 %.029.i.i, 4                    ; 2 uses
  %i.em = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.em, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !819

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.ab
  %.022.i.i = phi i32 [ %i.ej, %bb.ag ], [ %i.ef, %bb.ac ], [ %i.eh, %bb.ae ], [ 1, %bb.ab ], [ %i.el, %bb.ah ]
  %i.en = zext i32 %.022.i.i to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.eo, ptr %12, align 8, !tbaa !63, !alias.scope !2025
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.en, i8 noundef signext 0)
  %i.ep = load ptr, ptr %12, align 8, !tbaa !77, !alias.scope !2025 ; 4 uses
  %i.eq = icmp ugt i64 %i.ec, 99
  br i1 %i.eq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i145

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !64, !alias.scope !2025
  %i.et = trunc i64 %i.es to i32
  %i.eu = add i32 %i.et, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ex, %.lr.ph.i4.i ], [ %i.ec, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.fh, %.lr.ph.i4.i ], [ %i.eu, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ev = urem i64 %.020.i.i, 100
  %i.ew = shl nuw nsw i64 %i.ev, 1
  %i.ex = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !65, !noalias !2025
  %i.fb = zext i32 %.01819.i.i to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fb
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !65
  %i.fd = load i8, ptr %i.ey, align 2, !tbaa !65, !noalias !2025
  %i.fe = add i32 %.01819.i.i, -1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ff
  store i8 %i.fd, ptr %i.fg, align 1, !tbaa !65
  %i.fh = add i32 %.01819.i.i, -2
  %i.fi = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.fi, label %.lr.ph.i4.i, label %._crit_edge.i.i145, !llvm.loop !820

._crit_edge.i.i145:                               ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.ec, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.ex, %.lr.ph.i4.i ] ; 3 uses
  %i.fj = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.fj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i145
  %i.fk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.fl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !65, !noalias !2025
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !65
  %i.fp = load i8, ptr %i.fl, align 2, !tbaa !65, !noalias !2025
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.aj:                                            ; preds = %._crit_edge.i.i145
  %i.fq = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.ai, %bb.aj
  %storemerge.i.i = phi i8 [ %i.fr, %bb.aj ], [ %i.fp, %bb.ai ]
  store i8 %storemerge.i.i, ptr %i.ep, align 1, !tbaa !65
  %i.fs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRA15_KcS6_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 1 dereferenceable(15) @.str.116, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ft = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.eo
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.ak
  %i.fv = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.eo
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.al
  %i.ga = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.w
  ret void

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn56 = phi { ptr, i32 } [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn56
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ClientImpl11open_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_6detail26insertion_ordered_multimapIS6_St8equal_toIS6_EEERKNSA_IS6_NS9_11case_ignore8equal_toEEES8_S8_(ptr dead_on_unwind noalias writable sret(%"struct.httplib::ClientImpl::StreamHandle") align 8 initializes((0, 13), (16, 49), (56, 82), (88, 100), (104, 112)) %0, ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %10 = alloca %"struct.httplib::Request", align 8 ; 53 uses
  %11 = alloca %"class.std::function.438", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::unique_ptr.26", align 8 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i32 0, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  store i64 104857600, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.m, align 1, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr null, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.s, align 8, !tbaa !64
  store i8 0, ptr %i.r, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #50
          to label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit unwind label %bb.o ; 22 uses

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.v, i8 0, i64 368, i1 false), !noalias !2028
  store ptr %i.v, ptr %i.u, align 8, !tbaa !63, !noalias !2028
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !64, !noalias !2028
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 -1, ptr %i.x, align 8, !tbaa !86, !noalias !2028
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.z, ptr %i.y, align 8, !tbaa !63, !noalias !2028
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false), !noalias !2028
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !63, !noalias !2028
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !63, !noalias !2028
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 232
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !1852, !noalias !2028
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  store i64 1, ptr %i.ah, align 8, !tbaa !1853, !noalias !2028
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !noalias !2028
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !338, !noalias !2028
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.ak, i8 0, i64 90, i1 false), !noalias !2028
  store ptr %i.am, ptr %i.al, align 8, !tbaa !63, !noalias !2028
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !63, !noalias !2028
  store ptr %i.u, ptr %0, align 8, !tbaa !70
  store i32 0, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ap = load ptr, ptr %4, align 8, !tbaa !356
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !356
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.at, ptr %8, align 8, !tbaa !63
  %i.au = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !78
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !77
  %i.az = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.az, ptr %i.at, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.ba = phi ptr [ %i.ay, %.noexc ], [ %i.at, %bb.b ] ; 2 uses
  switch i64 %i.aw, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !65
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !64
  %i.be = load ptr, ptr %8, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN7httplib19append_query_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6detail26insertion_ordered_multimapIS5_St8equal_toIS5_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 498
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !1945, !range !79, !noundef !80
  %i.bi = trunc nuw i8 %i.bh to i1
  invoke void @_ZN7httplib6detail21encode_request_targetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %i.bi)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.bj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50
          to label %bb.h unwind label %bb.r       ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !noalias !2031
  store i32 -1, ptr %i.bj, align 8, !tbaa !2034, !noalias !2031
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !72  ; 3 uses
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !72
  %.not.i.i.i.i77 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i77, label %_ZNSt10unique_ptrIN7httplib16ClientConnectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7httplib16ClientConnectionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7httplib16ClientConnectionEEclEPS1_.exit.i.i.i.i: ; preds = %bb.h
  call void @_ZN7httplib16ClientConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bk) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 16) #46
  br label %_ZNSt10unique_ptrIN7httplib16ClientConnectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7httplib16ClientConnectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7httplib16ClientConnectionEEclEPS1_.exit.i.i.i.i, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.bm = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN7httplib16ClientConnectionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bm) #47
          to label %.noexc79 unwind label %bb.s

.noexc79:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10unique_ptrIN7httplib16ClientConnectionESt14default_deleteIS1_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1933 ; 2 uses
  %.not188 = icmp eq i32 %i.bo, -1
  br i1 %.not188, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bp = invoke noundef zeroext i1 @_ZN7httplib6detail15is_socket_aliveEi(i32 noundef %i.bo)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %i.bp, label %bb.l, label %.thread181

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %1, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(1176) %1)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  br i1 %i.bt, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1972
  %i.bw = load i32, ptr %i.bn, align 8, !tbaa !1973
  %i.bx = invoke noundef zeroext i1 @_ZN7httplib3tls14is_peer_closedEPvi(ptr noundef %i.bv, i32 noundef %i.bw)
          to label %bb.u unwind label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.p:                                             ; preds = %.noexc.i, %bb.e
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.q:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.r:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %.thread181, %.critedge, %bb.n, %bb.l, %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %bb.n
  br i1 %i.bx, label %.thread181, label %.thread

.thread181:                                       ; preds = %bb.k, %bb.u
  %i.ce = load ptr, ptr %1, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i1 noundef zeroext false)
          to label %.noexc80 unwind label %bb.t, !inline_history !1974

.noexc80:                                         ; preds = %.thread181
  %i.ch = load i32, ptr %i.bn, align 8, !tbaa !1933 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %.critedge, label %_ZNK7httplib10ClientImpl15shutdown_socketERNS0_6SocketE.exit.i

_ZNK7httplib10ClientImpl15shutdown_socketERNS0_6SocketE.exit.i: ; preds = %.noexc80
  %i.cj = call noundef i32 @shutdown(i32 noundef %i.ch, i32 noundef 2) #23 ; 0 uses
  %.pr.i = load i32, ptr %i.bn, align 8, !tbaa !1933 ; 2 uses
  %i.ck = icmp eq i32 %.pr.i, -1
  br i1 %i.ck, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZNK7httplib10ClientImpl15shutdown_socketERNS0_6SocketE.exit.i
  %i.cl = invoke i32 @close(i32 noundef %.pr.i)
          to label %_ZN7httplib6detail12close_socketEi.exit.i.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #48
  unreachable

_ZN7httplib6detail12close_socketEi.exit.i.i:      ; preds = %bb.v
  store i32 -1, ptr %i.bn, align 8, !tbaa !1933
  br label %.critedge

.critedge:                                        ; preds = %.noexc80, %_ZNK7httplib10ClientImpl15shutdown_socketERNS0_6SocketE.exit.i, %_ZN7httplib6detail12close_socketEi.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.co = load ptr, ptr %1, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %.critedge
  br i1 %i.cr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !70
  %.not.i.i81 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i81, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit.thread, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i: ; preds = %bb.y
  call void @_ZN7httplib8ResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.cs) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 384) #46
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 1, ptr %i.d, align 1, !tbaa !295
  %i.ct = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.cu = load ptr, ptr %0, align 8, !tbaa !70
  %i.cv = load ptr, ptr %1, align 8, !tbaa !81
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 %i.ct, ptr noundef nonnull align 8 dereferenceable(384) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.aa unwind label %bb.ac     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cz = load i8, ptr %i.d, align 1, !range !79
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !70
  %.not.i.i82 = icmp eq ptr %i.db, null
  br i1 %.not.i.i82, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i83

_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i83: ; preds = %bb.ab
  call void @_ZN7httplib8ResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.db) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 384) #46
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84

bb.ac:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ah

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84: ; preds = %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i83, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br i1 %i.cy, label %.thread, label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit.thread

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit.thread: ; preds = %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84, %bb.y, %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i.i
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #23 ; 0 uses
  br label %bb.cl

.thread:                                          ; preds = %bb.m, %bb.u, %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EE5resetEPS1_.exit84
  %i.de = load i32, ptr %i.bn, align 8, !tbaa !1973
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  store i32 %i.de, ptr %i.df, align 8, !tbaa !2034
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1972
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !2036
  store ptr null, ptr %i.dg, align 8, !tbaa !1972
  store i32 -1, ptr %i.bn, align 8, !tbaa !1973
  %i.dj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #23 ; 0 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !81
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(1176) %1)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %.thread
end_hunk_1
begin_hunk_2_@_ZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorE:bb.a
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #48
  unreachable

_ZN7httplib6detail22ContentProviderAdapterD2Ev.exit144: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %_ZNSt14_Function_baseD2Ev.exit115

bb.bs:                                            ; preds = %_ZN7httplib6detail22ContentProviderAdapterD2Ev.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.bt:                                            ; preds = %bb.bp, %bb.bo
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %22, align 8, !tbaa !77   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.gs
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bt
  %i.ht = load i64, ptr %i.gs, align 8, !tbaa !65
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.hv = load ptr, ptr %21, align 8, !tbaa !77   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gm
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.hx = load i64, ptr %i.gm, align 8, !tbaa !65
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bs
  %.pn56.pn = phi { ptr, i32 } [ %i.hp, %bb.bs ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNSt14_Function_baseD2Ev.exit115

bb.bu:                                            ; preds = %bb.bh
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ia = load i64, ptr %i.h, align 8, !tbaa !78
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !64
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i64 noundef 0, i64 noundef %i.ic, ptr noundef %3, i64 noundef %i.ia)
          to label %.critedge66 unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit115

.critedge66:                                      ; preds = %bb.bu, %_ZNSt14_Function_baseD2Ev.exit, %.critedge, %_ZNSt8functionIFbmmRN7httplib8DataSinkEEEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !159 ; 2 uses
  %.not.i.i152.not = icmp eq ptr %i.ig, null
  br i1 %.not.i.i152.not, label %bb.ck, label %bb.bw

bb.bw:                                            ; preds = %.critedge66
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
  %i.ii = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 2)
          to label %bb.ca unwind label %bb.bx     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !159 ; 2 uses
  %.not.i.i154 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i154, label %.body155, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.il = invoke noundef zeroext i1 %i.ik(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %.body155 unwind label %bb.bz  ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #48
  unreachable

bb.ca:                                            ; preds = %bb.bw
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !493 ; 2 uses
  store ptr %i.iq, ptr %i.io, align 8, !tbaa !493
  %i.ir = load ptr, ptr %i.if, align 8, !tbaa !159 ; 5 uses
  store ptr %i.ir, ptr %i.ih, align 8, !tbaa !159
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 592 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.it = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.it, align 8
  %i.iu = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #50
          to label %.noexc161 unwind label %bb.ch ; 5 uses

.noexc161:                                        ; preds = %bb.ca
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, i8 0, i64 24, i1 false)
  store ptr %i.iq, ptr %i.iv, align 8, !tbaa !493
  %.not.i.i.not.i.i.i.i.i.i158 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.not.i.i.i.i.i.i158, label %"_ZNSt8functionIFbPKcmmmEEC2IZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS5_7RequestES1_mS_IFbmmRNS5_8DataSinkEEES_IFbmSA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IFbS1_mEERNS5_5ErrorEE3$_2vEEOT_.exit.i", label %bb.cb

bb.cb:                                            ; preds = %.noexc161
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 16, i1 false), !tbaa.struct !160
  store ptr %i.ir, ptr %i.iw, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  br label %"_ZNSt8functionIFbPKcmmmEEC2IZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS5_7RequestES1_mS_IFbmmRNS5_8DataSinkEEES_IFbmSA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IFbS1_mEERNS5_5ErrorEE3$_2vEEOT_.exit.i"

"_ZNSt8functionIFbPKcmmmEEC2IZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS5_7RequestES1_mS_IFbmmRNS5_8DataSinkEEES_IFbmSA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IFbS1_mEERNS5_5ErrorEE3$_2vEEOT_.exit.i": ; preds = %bb.cb, %.noexc161
  %i.ix = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.iu, ptr %10, align 16, !tbaa !71
  %.sroa.0.i.i.i157.sroa.0.0.copyload = load <2 x i64>, ptr %10, align 16, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.is, i64 16, i1 false), !tbaa.struct !160
  store <2 x i64> %.sroa.0.i.i.i157.sroa.0.0.copyload, ptr %i.is, align 8, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 608 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.ja = load <2 x ptr>, ptr %i.iy, align 8, !tbaa !71
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !71 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFbPKcmmmEZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS3_7RequestES1_mSt8functionIFbmmRNS3_8DataSinkEEES7_IFbmS9_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_IFbS1_mEERNS3_5ErrorEE3$_2E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation", ptr %i.iy, align 8, !tbaa !71
  store <2 x ptr> %i.ja, ptr %i.ix, align 16, !tbaa !71
  store ptr @"_ZNSt17_Function_handlerIFbPKcmmmEZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS3_7RequestES1_mSt8functionIFbmmRNS3_8DataSinkEEES7_IFbmS9_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_IFbS1_mEERNS3_5ErrorEE3$_2E9_M_invokeERKSt9_Any_dataOS1_OmSW_SW_", ptr %i.iz, align 8, !tbaa !71
  %.not.i.i159 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i159, label %.thread239, label %bb.cc

.thread239:                                       ; preds = %"_ZNSt8functionIFbPKcmmmEEC2IZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS5_7RequestES1_mS_IFbmmRNS5_8DataSinkEEES_IFbmSA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IFbS1_mEERNS5_5ErrorEE3$_2vEEOT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %"_ZZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorEEN3$_2D2Ev.exit"

bb.cc:                                            ; preds = %"_ZNSt8functionIFbPKcmmmEEC2IZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS5_7RequestES1_mS_IFbmmRNS5_8DataSinkEEES_IFbmSA_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IFbS1_mEERNS5_5ErrorEE3$_2vEEOT_.exit.i"
  %i.jc = invoke noundef zeroext i1 %i.jb(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %bb.ce unwind label %bb.cd     ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #48
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %.pre186 = load ptr, ptr %i.ih, align 8, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i162 = icmp eq ptr %.pre186, null
  br i1 %.not.i.i162, label %"_ZZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorEEN3$_2D2Ev.exit", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jf = invoke noundef zeroext i1 %.pre186(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %"_ZZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorEEN3$_2D2Ev.exit" unwind label %bb.cg ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #48
  unreachable

"_ZZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorEEN3$_2D2Ev.exit": ; preds = %.thread239, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ck

bb.ch:                                            ; preds = %bb.ca
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i164, label %.body155, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jj = invoke noundef zeroext i1 %i.ir(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %.body155 unwind label %bb.cj  ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

.body155:                                         ; preds = %bb.ci, %bb.ch, %bb.by, %bb.bx
  %.pn59 = phi { ptr, i32 } [ %i.ij, %bb.bx ], [ %i.ji, %bb.ci ], [ %i.ij, %bb.by ], [ %i.ji, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %_ZNSt14_Function_baseD2Ev.exit115

bb.ck:                                            ; preds = %"_ZZN7httplib10ClientImpl39send_with_content_provider_and_receiverERNS_7RequestEPKcmSt8functionIFbmmRNS_8DataSinkEEES5_IFbmS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_IFbS4_mEERNS_5ErrorEEN3$_2D2Ev.exit", %.critedge66
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %i.jm = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #50
          to label %bb.cl unwind label %bb.cs     ; 27 uses

bb.cl:                                            ; preds = %bb.ck
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.jn, i8 0, i64 368, i1 false), !noalias !2192
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !63, !noalias !2192
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 0, ptr %i.jo, align 8, !tbaa !64, !noalias !2192
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 -1, ptr %i.jp, align 8, !tbaa !86, !noalias !2192
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !63, !noalias !2192
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 120
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.js, i8 0, i64 48, i1 false), !noalias !2192
  store ptr %i.ju, ptr %i.jt, align 8, !tbaa !63, !noalias !2192
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 152
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 168
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !63, !noalias !2192
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jm, i64 184
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 232
  store ptr %i.jy, ptr %i.jx, align 8, !tbaa !1852, !noalias !2192
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 192
  store i64 1, ptr %i.jz, align 8, !tbaa !1853, !noalias !2192
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 200
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, i8 0, i64 16, i1 false), !noalias !2192
  store float 1.000000e+00, ptr %i.kb, align 8, !tbaa !338, !noalias !2192
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 224
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jm, i64 320
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jm, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.kc, i8 0, i64 90, i1 false), !noalias !2192
  store ptr %i.ke, ptr %i.kd, align 8, !tbaa !63, !noalias !2192
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jm, i64 352
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 368
  store ptr %i.kg, ptr %i.kf, align 8, !tbaa !63, !noalias !2192
  store ptr %i.jm, ptr %24, align 8, !tbaa !70, !alias.scope !2192
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ki = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #23, !inline_history !1997 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ki, 0
  %i.kj = ptrtoint ptr %i.jm to i64
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ki) #47
          to label %.noexc168 unwind label %bb.ct, !inline_history !1997

.noexc168:                                        ; preds = %bb.cm
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.cl
  %i.kk = invoke noundef zeroext i1 @_ZN7httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(384) %i.jm, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.cn unwind label %bb.cq, !inline_history !1997

bb.cn:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.kl = load i32, ptr %9, align 4, !tbaa !169
  %i.km = icmp eq i32 %i.kl, 36
  br i1 %i.km, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.kn = invoke noundef zeroext i1 @_ZN7httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(384) %i.jm, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.cp unwind label %bb.cq, !inline_history !1997 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.ko = load i32, ptr %9, align 4, !tbaa !169
  %i.kp = icmp eq i32 %i.ko, 36
  br i1 %i.kp, label %.split, label %bb.cr

.split:                                           ; preds = %bb.cp
  store i32 4, ptr %9, align 4, !tbaa !169
  %i.kq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #23, !inline_history !1997 ; 0 uses
  br i1 %i.kn, label %.thread, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i

bb.cq:                                            ; preds = %bb.co, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.kr = landingpad { ptr, i32 }
          cleanup
  %i.ks = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #23, !inline_history !1997 ; 0 uses
  br label %.body169

bb.cr:                                            ; preds = %bb.cp, %bb.cn
  %.0.in.i = phi i1 [ %i.kk, %bb.cn ], [ %i.kn, %bb.cp ]
  %i.kt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #23, !inline_history !1997 ; 0 uses
  br i1 %.0.in.i, label %.thread, label %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i

.thread:                                          ; preds = %bb.cr, %.split
  store i64 %i.kj, ptr %0, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i: ; preds = %.split, %bb.cr
  store ptr null, ptr %0, align 8, !tbaa !8
  call void @_ZN7httplib8ResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %i.jm) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef 384) #46
  br label %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN7httplib8ResponseEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.cv

bb.cs:                                            ; preds = %bb.ck
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cm
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.body169:                                         ; preds = %bb.cq, %bb.ct
  %eh.lpad-body170 = phi { ptr, i32 } [ %i.kv, %bb.ct ], [ %i.kr, %bb.cq ]
  call void @_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #23
  br label %bb.cu

bb.cu:                                            ; preds = %.body169, %bb.cs
  %.pn61 = phi { ptr, i32 } [ %eh.lpad-body170, %.body169 ], [ %i.ku, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNSt14_Function_baseD2Ev.exit115

bb.cv:                                            ; preds = %_ZNK7httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, %_ZNK7httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit113, %_ZNSt10unique_ptrIN7httplib8ResponseESt14default_deleteIS1_EED2Ev.exit
  %i.kw = load ptr, ptr %15, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i172, label %_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit, label %_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i: ; preds = %bb.cv
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !81
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kw) #23, !inline_history !2195
  br label %_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit

_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit: ; preds = %bb.cv, %_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  ret void

_ZNSt14_Function_baseD2Ev.exit115:                ; preds = %bb.bd, %bb.az, %bb.bb, %bb.ba, %bb.ao, %bb.cu, %.body155, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZN7httplib6detail22ContentProviderAdapterD2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.cu ], [ %.pn59, %.body155 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %i.hl, %_ZN7httplib6detail22ContentProviderAdapterD2Ev.exit144 ], [ %i.ie, %bb.bv ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn52.pn, %bb.ao ], [ %i.es, %bb.bb ], [ %i.es, %bb.ba ], [ %i.ex, %bb.bd ], [ %i.eq, %bb.az ]
  %i.la = load ptr, ptr %15, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i173 = icmp eq ptr %i.la, null
  br i1 %.not.i.i173, label %_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit175, label %_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i174

_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i174: ; preds = %_ZNSt14_Function_baseD2Ev.exit115
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !81
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.la) #23, !inline_history !2195
  br label %_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit175

_ZNSt4pairISt10unique_ptrIN7httplib6detail10compressorESt14default_deleteIS3_EEPKcED2Ev.exit175: ; preds = %_ZNSt14_Function_baseD2Ev.exit115, %_ZNKSt14default_deleteIN7httplib6detail10compressorEEclEPS2_.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7httplib8DataSinkC2Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.f) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.g, align 8, !tbaa !2196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.h, align 8, !tbaa !923
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.i, align 1, !tbaa !909
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 24), ptr %i.d, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 64), ptr %i.f, align 8, !tbaa !81
  %i.k = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSo, i64 0), align 8
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.l, ptr noundef nonnull %i.e)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #23
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7httplib8DataSink19data_sink_streambufE, i64 16), ptr %i.e, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %0, ptr %i.r, align 8, !tbaa !2197
  ret void

bb.c:                                             ; preds = %.body
  %i.s = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.body, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159  ; 2 uses
  %.not.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.h ; 0 uses

end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv:bb.a
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !2711
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2712
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !2712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8, !tbaa !2713
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.am, align 8, !tbaa !2538
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !159
  %i.bl = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %2, align 8, !tbaa !2545
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !2553
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !2555
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2517 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2556
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bp, %i.bs
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !2557
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !2517
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !2517
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.q

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !2715 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !2712
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i: ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %i.ce = load ptr, ptr %i.az, align 16, !tbaa !2716 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cf = load ptr, ptr %i.bc, align 16, !tbaa !2710
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i:      ; preds = %bb.l, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !683 ; 3 uses
  %i.ck = load ptr, ptr %i.at, align 16, !tbaa !685 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cj, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !65
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !686

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.as, align 8, !tbaa !683
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.cr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cj, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !697
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cw = load ptr, ptr %1, align 16, !tbaa !772  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cx = load ptr, ptr %i.ap, align 16, !tbaa !774
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #46
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.q:                                             ; preds = %bb.h, %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %i.ak, align 8, !tbaa !159 ; 2 uses
  %.not.i9 = icmp eq ptr %i.de, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = invoke noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.p ], [ %i.dd, %bb.q ], [ %i.dd, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.db, %bb.o ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.810", align 16 ; 21 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2691, !nonnull !80, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2580
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2631, !nonnull !80, !align !156 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2487
  %i.n = lshr i16 %i.j, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.l, ptr %i.q, align 16, !tbaa !2487
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.p, ptr %i.r, align 8, !tbaa !2717
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.x = and i32 %i.w, 131071
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.381) #47
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = trunc i32 %i.w to i24
  store i24 %i.aa, ptr %i.z, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2486 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #50
          to label %bb.e unwind label %bb.l       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !314
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !774
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !164
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !164
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !697
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 16, !tbaa !356
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !356
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !111
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !2711
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !2711
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2712
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !2712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  store ptr %i.af, ptr %3, align 8, !tbaa !2721
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ag, align 8, !tbaa !2538
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !159
  %i.be = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ad, ptr %2, align 8, !tbaa !2545
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !2553
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !2555
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2517 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2556
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bi, %i.bl
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !2557
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !2517
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !2517
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !159 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bv, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %i.bu, %bb.m ], [ %i.bu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.bs, %bb.k ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.814", align 16 ; 23 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2691, !nonnull !80, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2580
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2631, !nonnull !80, !align !156 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2487
  %i.n = lshr i16 %i.j, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.l, ptr %i.q, align 16, !tbaa !2487
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.p, ptr %i.r, align 8, !tbaa !2723
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.v, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.x = and i32 %i.w, 131071
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.381) #47
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.w, 16
  %i.aa = load i16, ptr %i.z, align 16, !tbaa !2707
  %i.ab = trunc i32 %i.w to i16
  %i.ac = or i16 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !2708
  %i.af = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.ag = or i8 %i.ae, %i.af
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.ag to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ac to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ah = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ah, ptr %i.z, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2486 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.am = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #50
          to label %bb.e unwind label %bb.p       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load <2 x ptr>, ptr %1, align 16, !tbaa !314
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !314
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !774
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !164
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !164
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !697
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 16, !tbaa !2709
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !2709
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !2710
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !2710
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 72
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv:bb.a
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !2711
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2712
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !2712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 16 dereferenceable(64) %i.z, i64 64, i1 false)
  store ptr %i.am, ptr %3, align 8, !tbaa !2727
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.an, align 8, !tbaa !2538
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.al, align 8, !tbaa !159
  %i.bm = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ak, ptr %2, align 8, !tbaa !2545
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !2553
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !2555
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2517 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2556
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bq, %i.bt
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !2557
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !2517
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !2517
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.q

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !2715 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !2712
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i: ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %i.cf = load ptr, ptr %i.ba, align 16, !tbaa !2716 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cg = load ptr, ptr %i.bd, align 16, !tbaa !2710
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i:      ; preds = %bb.l, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.ck = load ptr, ptr %i.at, align 8, !tbaa !683 ; 3 uses
  %i.cl = load ptr, ptr %i.au, align 16, !tbaa !685 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ck, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.cm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !65
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cr, %i.cl
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !686

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.at, align 8, !tbaa !683
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.cs = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ck, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ct = load ptr, ptr %i.ax, align 8, !tbaa !697
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cx = load ptr, ptr %1, align 16, !tbaa !772  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cy = load ptr, ptr %i.aq, align 16, !tbaa !774
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #46
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.q:                                             ; preds = %bb.h, %bb.e
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not.i9 = icmp eq ptr %i.df, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.p ], [ %i.de, %bb.q ], [ %i.de, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.dc, %bb.o ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.817", align 16 ; 21 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2691, !nonnull !80, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2580
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2631, !nonnull !80, !align !156 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2487
  %i.n = lshr i16 %i.j, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.l, ptr %i.q, align 16, !tbaa !2487
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.p, ptr %i.r, align 8, !tbaa !2729
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.v, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.x = and i32 %i.w, 131071
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.381) #47
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = trunc i32 %i.w to i24
  store i24 %i.aa, ptr %i.z, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2486 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #50
          to label %bb.e unwind label %bb.l       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !314
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !774
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !164
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !164
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !697
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 16, !tbaa !356
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !356
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !111
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !2711
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !2711
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2712
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !2712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  store ptr %i.af, ptr %3, align 8, !tbaa !2733
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ag, align 8, !tbaa !2538
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !159
  %i.be = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ad, ptr %2, align 8, !tbaa !2545
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !2553
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !2555
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2517 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2556
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bi, %i.bl
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !2557
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !2517
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !2517
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !159 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !159 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bv, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %i.bu, %bb.m ], [ %i.bu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.bs, %bb.k ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2501 ; 2 uses
  %i.d = icmp eq i32 %i.c, 10                     ; 5 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2502
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2503
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !2501
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2504
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2502
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2503
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !2501
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2504
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !2465   ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.z, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_T0_T1_":bb.a
  %7 = alloca %struct.AcceptEntry, align 8        ; 8 uses
  %8 = alloca %struct.AcceptEntry, align 8        ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = getelementptr i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %.phi.trans.insert.i.i21 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = icmp eq i64 %2, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph126

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEET_SP_SP_T0_.exit"
  %i.r = icmp eq i64 %i.cx, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph126, !llvm.loop !3317

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa122 = phi i64 [ %i.c, %.lr.ph ], [ %i.hr, %bb.b ]
  %storemerge49.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.s = udiv exact i64 %.lcssa122, 48            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.t = add nsw i64 %i.s, -2
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.u, %._crit_edge ], [ %i.aw, %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ab = getelementptr inbounds [48 x i8], ptr %0, i64 %.010.i.i.i ; 7 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ac, ptr %7, align 8, !tbaa !77
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !65
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !65
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !64
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit.i.i.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.ak = phi ptr [ %i.v, %bb.d ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.al = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !77
  store i64 0, ptr %i.am, align 8, !tbaa !64
  store i8 0, ptr %i.ad, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  store ptr %i.y, ptr %8, align 8, !tbaa !63
  %i.ao = icmp eq ptr %i.ak, %i.v
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

bb.e:                                             ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit.i.i.i
  %i.ap = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aq, i1 false)
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit.i.i.i
  store ptr %i.ak, ptr %8, align 8, !tbaa !77
  %i.ar = load i64, ptr %i.v, align 8, !tbaa !65
  store i64 %i.ar, ptr %i.y, align 8, !tbaa !65
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit17.i.i.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit17.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i, %bb.e
  store i64 %i.al, ptr %i.z, align 8, !tbaa !64
  store ptr %i.v, ptr %7, align 8, !tbaa !77
  store i64 0, ptr %i.w, align 8, !tbaa !64
  store i8 0, ptr %i.v, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEElSG_NS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_T0_SQ_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.s, ptr nofree noundef align 8 dereferenceable(48) %8)
  %i.as = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.y
  br i1 %i.at, label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit17.i.i.i
  %i.au = load i64, ptr %i.y, align 8, !tbaa !65
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #46
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i.i.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit17.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.aw = add nsw i64 %.010.i.i.i, -1
  %i.ax = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.v
  br i1 %i.ay, label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i.i.i
  %i.az = load i64, ptr %i.v, align 8, !tbaa !65
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #46
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_RT0_.exit.i.i", label %bb.c, !llvm.loop !3318

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_RT0_.exit.i.i": ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_RT0_.exit"
  %.sroa.0.02.i.i = phi ptr [ %i.bh, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_RT0_.exit" ], [ %storemerge49.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_RT0_.exit.i.i" ] ; 6 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.bb, ptr %5, align 8, !tbaa !63
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !77 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -32 ; 9 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !64 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.bi, ptr %5, align 8, !tbaa !77
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !65
  store i64 %i.bp, ptr %i.bb, align 8, !tbaa !65
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -40
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.bq = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bm, %bb.f ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -40 ; 3 uses
  store i64 %i.bq, ptr %i.bc, align 8, !tbaa !64
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !77
  store i64 0, ptr %i.br, align 8, !tbaa !64
  store i8 0, ptr %i.bj, align 8, !tbaa !65
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %i.bs, i64 12, i1 false)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !77    ; 5 uses
  %i.bu = icmp eq ptr %i.bt, %i.i
  br i1 %i.bu, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.bv = load i64, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %.not21.i.i.i = icmp eq ptr %0, %i.bh
  br i1 %.not21.i.i.i, label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i, label %bb.h, !prof !85

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bv, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !65
  store i8 %i.bx, ptr %i.bj, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.by = load i64, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64 ; 2 uses
  store i64 %i.by, ptr %i.br, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.by
  store i8 0, ptr %i.bz, align 1, !tbaa !65
  %.pre.i.i.i17 = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  store ptr %i.bt, ptr %i.bh, align 8, !tbaa !77
  %i.ca = load i64, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64
  store i64 %i.ca, ptr %i.br, align 8, !tbaa !64
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !65
  store i64 %i.cb, ptr %i.bj, align 8, !tbaa !65
  store ptr %i.i, ptr %0, align 8, !tbaa !77
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.cc = phi ptr [ %.pre.i.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.i, %bb.k ], [ %i.bt, %bb.g ]
  store i64 0, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64
  store i8 0, ptr %i.cc, align 1, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = sub i64 %i.cd, %i.a                     ; 2 uses
  %i.cf = sdiv exact i64 %i.ce, 48
  store ptr %i.be, ptr %6, align 8, !tbaa !63
  %i.cg = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bb
  br i1 %i.ch, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

bb.l:                                             ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i
  %i.ci = load i64, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.ck, i1 false)
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i
  store ptr %i.cg, ptr %6, align 8, !tbaa !77
  %i.cl = load i64, ptr %i.bb, align 8, !tbaa !65
  store i64 %i.cl, ptr %i.be, align 8, !tbaa !65
  %.pre3.i = load i64, ptr %i.bc, align 8, !tbaa !64
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit9.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i, %bb.l
  %i.cm = phi i64 [ %i.ci, %bb.l ], [ %.pre3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i ]
  store i64 %i.cm, ptr %i.bf, align 8, !tbaa !64
  store ptr %i.bb, ptr %5, align 8, !tbaa !77
  store i64 0, ptr %i.bc, align 8, !tbaa !64
  store i8 0, ptr %i.bb, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.bd, i64 12, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEElSG_NS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_T0_SQ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cf, ptr nofree noundef align 8 dereferenceable(48) %6)
  %i.cn = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.be
  br i1 %i.co, label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit9.i
  %i.cp = load i64, ptr %i.be, align 8, !tbaa !65
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #46
  br label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i

_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryC2EOSD_.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cr = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bb
  br i1 %i.cs, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i: ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i
  %i.ct = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #46
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_RT0_.exit": ; preds = %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cv = icmp sgt i64 %i.ce, 48
  br i1 %i.cv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_T0_.exit", !llvm.loop !3319

.lr.ph126:                                        ; preds = %.lr.ph, %bb.b
  %storemerge49125 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.050124 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.hr, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cx = add nsw i64 %.050124, -1                ; 3 uses
  %i.cy = udiv i64 %i.cw, 96
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge49125, i64 -48 ; 2 uses
  %.val2.i.i.i = load double, ptr %i.f, align 8, !tbaa !3320 ; 6 uses
  %.val3.i.i.i = load i32, ptr %i.g, align 8      ; 3 uses
  %i.db = getelementptr i8, ptr %i.cz, i64 32
  %.val4.i.i.i = load double, ptr %i.db, align 8, !tbaa !3320 ; 6 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 40
  %.val5.i.i.i = load i32, ptr %i.dc, align 8     ; 3 uses
  %i.dd = fcmp une double %.val2.i.i.i, %.val4.i.i.i
  %i.de = fcmp ogt double %.val2.i.i.i, %.val4.i.i.i
  %i.df = icmp slt i32 %.val3.i.i.i, %.val5.i.i.i
  %.0.i.i.i.i = select i1 %i.dd, i1 %i.de, i1 %i.df
  %i.dg = getelementptr i8, ptr %storemerge49125, i64 -16
  %.val4.i28.i.i = load double, ptr %i.dg, align 8, !tbaa !3320 ; 8 uses
  %i.dh = getelementptr i8, ptr %storemerge49125, i64 -8
  %.val5.i29.i.i = load i32, ptr %i.dh, align 8   ; 4 uses
  br i1 %.0.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph126
  %i.di = fcmp une double %.val4.i.i.i, %.val4.i28.i.i
  %i.dj = fcmp ogt double %.val4.i.i.i, %.val4.i28.i.i
  %i.dk = icmp slt i32 %.val5.i.i.i, %.val5.i29.i.i
  %.0.i.i30.i.i = select i1 %i.di, i1 %i.dj, i1 %i.dk
  br i1 %.0.i.i30.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = fcmp une double %.val2.i.i.i, %.val4.i28.i.i
  %i.dm = fcmp ogt double %.val2.i.i.i, %.val4.i28.i.i
  %i.dn = icmp slt i32 %.val3.i.i.i, %.val5.i29.i.i
  %.0.i.i35.i.i = select i1 %i.dl, i1 %i.dm, i1 %i.dn
  %..i.i = select i1 %.0.i.i35.i.i, ptr %i.da, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

bb.o:                                             ; preds = %.lr.ph126
  %i.do = fcmp une double %.val2.i.i.i, %.val4.i28.i.i
  %i.dp = fcmp ogt double %.val2.i.i.i, %.val4.i28.i.i
  %i.dq = icmp slt i32 %.val3.i.i.i, %.val5.i29.i.i
  %.0.i.i40.i.i = select i1 %i.do, i1 %i.dp, i1 %i.dq
  br i1 %.0.i.i40.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = fcmp une double %.val4.i.i.i, %.val4.i28.i.i
  %i.ds = fcmp ogt double %.val4.i.i.i, %.val4.i28.i.i
  %i.dt = icmp slt i32 %.val5.i.i.i, %.val5.i29.i.i
  %.0.i.i45.i.i = select i1 %i.dr, i1 %i.ds, i1 %i.dt
  %.46.i.i = select i1 %.0.i.i45.i.i, ptr %i.da, ptr %i.cz
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sink.i.i = phi ptr [ %i.cz, %bb.m ], [ %i.e, %bb.o ], [ %.46.i.i, %bb.p ], [ %..i.i, %bb.n ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.h, ptr %3, align 8, !tbaa !63
  %i.du = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.i
  br i1 %i.dv, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20

bb.q:                                             ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"
  %i.dw = load i64, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.dy, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS9_SaIS9_EEE11AcceptEntrySC_ISG_SaISG_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19parse_accept_headerESB_SF_E3$_1EEEvT_SP_SP_SP_T0_.exit.i"
  store ptr %i.du, ptr %3, align 8, !tbaa !77
  %i.dz = load i64, ptr %i.i, align 8, !tbaa !65
  store i64 %i.dz, ptr %i.h, align 8, !tbaa !65
  %.pre.i.i22 = load i64, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.q
  %i.ea = phi i64 [ %.pre.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20 ], [ %i.dw, %bb.q ]
  store i64 %i.ea, ptr %i.j, align 8, !tbaa !64
  store ptr %i.i, ptr %0, align 8, !tbaa !77
  store i64 0, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64
  store i8 0, ptr %i.i, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.eb = load ptr, ptr %.sink.i.i, align 8, !tbaa !77 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16 ; 8 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i23
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !64 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  %.not21.i.i.i.i35 = icmp eq ptr %.sink.i.i, %0
  br i1 %.not21.i.i.i.i35, label %_ZZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEEN11AcceptEntryaSEOSD_.exit.i.i24, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  switch i64 %i.ef, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i36
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !65
  store i8 %i.eh, ptr %i.i, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i36

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 1 %i.eb, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i36: ; preds = %bb.u, %bb.t, %bb.s
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !64 ; 2 uses
  store i64 %i.ei, ptr %.phi.trans.insert.i.i21, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ei
  store i8 0, ptr %i.ej, align 1, !tbaa !65
  %.pre.i.i.i.i37 = load ptr, ptr %.sink.i.i, align 8, !tbaa !77
end_hunk_5
