Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_ts?download=true
inline.NumInlined: 5490
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11flatbuffers2ts11TsGenerator7GenEnumERNS_7EnumDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt3mapIS9_NS_12_GLOBAL__N_116ImportDefinitionESt4lessIS9_ESaISt4pairIKS9_SD_EEEb:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ih = load ptr, ptr %8, align 8, !tbaa !33, !noalias !651 ; 6 uses
  %i.ii = icmp eq ptr %i.ih, %i.hg
  %i.ij = load ptr, ptr %9, align 8, !tbaa !33, !noalias !651 ; 5 uses
  %i.ik = icmp eq ptr %i.ij, %i.hi                ; 2 uses
  br i1 %i.ii, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.ao
  br i1 %i.ik, label %bb.ap, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130: ; preds = %bb.ao
  br i1 %i.ik, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136
  %i.il = load i64, ptr %i.hj, align 8, !tbaa !153, !noalias !651 ; 3 uses
  %i.im = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.im)
  switch i64 %i.il, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.in = load i8, ptr %i.ij, align 1, !tbaa !28
  store i8 %i.in, ptr %i.ih, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ij, i64 %i.il, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.io = load i64, ptr %i.hj, align 8, !tbaa !153, !noalias !651 ; 2 uses
  store i64 %i.io, ptr %i.hh, align 8, !tbaa !153, !noalias !651
  %i.ip = load ptr, ptr %8, align 8, !tbaa !33, !noalias !651
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.io
  store i8 0, ptr %i.iq, align 1, !tbaa !28
  %.pre.i.i.i = load ptr, ptr %9, align 8, !tbaa !33, !noalias !651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136
  store ptr %i.ij, ptr %8, align 8, !tbaa !33, !noalias !651
  %i.ir = load <2 x i64>, ptr %i.hj, align 8, !tbaa !28, !noalias !651
  store <2 x i64> %i.ir, ptr %i.hh, align 8, !tbaa !28, !noalias !651
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130
  %i.is = load i64, ptr %i.hg, align 8, !tbaa !28, !noalias !651
  store ptr %i.ij, ptr %8, align 8, !tbaa !33, !noalias !651
  %i.it = load <2 x i64>, ptr %i.hj, align 8, !tbaa !28, !noalias !651
  store <2 x i64> %i.it, ptr %i.hh, align 8, !tbaa !28, !noalias !651
  %.not.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ih, ptr %9, align 8, !tbaa !33, !noalias !651
  store i64 %i.is, ptr %i.hi, align 8, !tbaa !28, !noalias !651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.hi, ptr %9, align 8, !tbaa !33, !noalias !651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.at, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.iu = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ih, %bb.as ], [ %i.hi, %bb.at ]
  store i64 0, ptr %i.hj, align 8, !tbaa !153, !noalias !651
  store i8 0, ptr %i.iu, align 1, !tbaa !28
  %i.iv = load ptr, ptr %i.hk, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.hl
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ix = load i64, ptr %i.hl, align 8, !tbaa !28, !noalias !651
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.iz = load ptr, ptr %i.hm, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.hn
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.jb = load i64, ptr %i.hn, align 8, !tbaa !28, !noalias !651
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.jd = load ptr, ptr %i.ho, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.hp
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.jf = load i64, ptr %i.hp, align 8, !tbaa !28, !noalias !651
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  %i.jh = load ptr, ptr %i.hq, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.hr
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %i.jj = load i64, ptr %i.hr, align 8, !tbaa !28, !noalias !651
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i
  %i.jl = load ptr, ptr %i.hs, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.ht
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i
  %i.jn = load i64, ptr %i.ht, align 8, !tbaa !28, !noalias !651
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  %i.jp = load ptr, ptr %9, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.hi
  br i1 %i.jq, label %_ZN11flatbuffers12_GLOBAL__N_116ImportDefinitionD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i
  %i.jr = load i64, ptr %i.hi, align 8, !tbaa !28, !noalias !651
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #24
  br label %_ZN11flatbuffers12_GLOBAL__N_116ImportDefinitionD2Ev.exit.i.i

_ZN11flatbuffers12_GLOBAL__N_116ImportDefinitionD2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i

bb.au:                                            ; preds = %bb.an
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !651
  br label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_116ImportDefinitionD2Ev.exit.i.i, %bb.al, %._crit_edge.i.i.i.i
  %i.ju = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit.i.i unwind label %bb.am ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.i
  %i.jv = load ptr, ptr %8, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.hg
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit.i.i
  %i.jx = load i64, ptr %i.hg, align 8, !tbaa !28, !noalias !651
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !651
  %.pre.i.i131 = load ptr, ptr %i.he, align 8, !tbaa !210, !noalias !651
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ak
  %i.jz = phi ptr [ %i.hw, %bb.ak ], [ %.pre.i.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.046.069.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ka, %i.jz
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.ak, !llvm.loop !578

bb.aw:                                            ; preds = %bb.au, %bb.am
  %.pn19.i.i = phi { ptr, i32 } [ %i.ie, %bb.am ], [ %i.jt, %bb.au ]
  %i.kb = load ptr, ptr %8, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.hg
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i: ; preds = %bb.aw
  %i.kd = load i64, ptr %i.hg, align 8, !tbaa !28, !noalias !651
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !651
  br label %bb.bc

._crit_edge74.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i, %._crit_edge.i.i, %bb.aj
  %i.kf = load ptr, ptr %i.gy, align 8, !tbaa !155, !noalias !651
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.kf)
          to label %_ZN11flatbuffers2ts11TsGenerator14GenUnionTypeTSERKNS_7EnumDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12_GLOBAL__N_116ImportDefinitionESt4lessISB_ESaISt4pairIKSB_SD_EEE.exit.i unwind label %bb.ax

bb.ax:                                            ; preds = %._crit_edge74.i.i
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #27
  unreachable

_ZSt4nextISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i, %.lr.ph73.i.i
  %.sroa.041.071.i.i = phi ptr [ %.pre75.i.i, %.lr.ph73.i.i ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !651
  %50 = getelementptr inbounds nuw i8, ptr %.sroa.041.071.i.i, i64 32
  %51 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.041.071.i.i) #28
  %i.ki = icmp ne ptr %51, %i.gx                  ; 2 uses
  %i.kj = select i1 %i.ki, ptr @.str.76, ptr @.str
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.kk = load ptr, ptr %50, align 8, !tbaa !33, !noalias !652
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.041.071.i.i, i64 40
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !153, !noalias !652 ; 3 uses
  %i.kn = zext i1 %i.ki to i64                    ; 3 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !27, !alias.scope !653, !noalias !651
  store i64 0, ptr %i.hv, align 8, !tbaa !153, !alias.scope !653, !noalias !651
  store i8 0, ptr %i.hu, align 8, !tbaa !28, !alias.scope !653, !noalias !651
  %i.ko = add i64 %i.km, %i.kn
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ko)
          to label %bb.ay unwind label %.loopexit.i.i

bb.ay:                                            ; preds = %_ZSt4nextISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE.exit.i.i
  %i.kp = load i64, ptr %i.hv, align 8, !tbaa !153, !alias.scope !653, !noalias !651
  %i.kq = sub i64 4611686018427387903, %i.kp
  %i.kr = icmp ult i64 %i.kq, %i.km
  br i1 %i.kr, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.ks = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.kk, i64 noundef %i.km)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i unwind label %.loopexit.i.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.kt = load i64, ptr %i.hv, align 8, !tbaa !153, !alias.scope !653, !noalias !651
  %i.ku = sub i64 4611686018427387903, %i.kt
  %i.kv = icmp ult i64 %i.ku, %i.kn
  br i1 %i.kv, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i, %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %i.kw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.kj, i64 noundef %i.kn)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i unwind label %.loopexit.i.i ; 0 uses

.loopexit.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i, %_ZSt4nextISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE.exit.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.kx = load ptr, ptr %10, align 8, !tbaa !33, !alias.scope !653, !noalias !651 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.hu
  br i1 %i.ky, label %.body.i.i, label %.body.i.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i
  %i.kz = load i64, ptr %i.hv, align 8, !tbaa !153, !noalias !651 ; 2 uses
  %i.la = load i64, ptr %i.gw, align 8, !tbaa !153, !alias.scope !650, !noalias !649
  %i.lb = sub i64 4611686018427387903, %i.la
  %i.lc = icmp ult i64 %i.lb, %i.kz
  br i1 %i.lc, label %bb.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc28.i.i unwind label %.loopexit.split-lp52.i.i

.noexc28.i.i:                                     ; preds = %bb.ba
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  %i.ld = load ptr, ptr %10, align 8, !tbaa !33, !noalias !651
  %i.le = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.ld, i64 noundef %i.kz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i unwind label %.loopexit51.i.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.lf = load ptr, ptr %10, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.hu
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
  %i.lh = load i64, ptr %i.hu, align 8, !tbaa !28, !noalias !651
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !651
  %i.lj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.041.071.i.i) #28 ; 2 uses
  %.not50.i.i = icmp eq ptr %i.lj, %i.gx
  br i1 %.not50.i.i, label %._crit_edge74.i.i, label %_ZSt4nextISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_S8_NSt15iterator_traitsIS8_E15difference_typeE.exit.i.i, !llvm.loop !583

.loopexit51.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %lpad.loopexit53.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp52.i.i:                         ; preds = %bb.ba
  %lpad.loopexit.split-lp54.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp52.i.i, %.loopexit51.i.i
  %lpad.phi55.i.i = phi { ptr, i32 } [ %lpad.loopexit53.i.i, %.loopexit51.i.i ], [ %lpad.loopexit.split-lp54.i.i, %.loopexit.split-lp52.i.i ] ; 2 uses
  %i.lk = load ptr, ptr %10, align 8, !tbaa !33, !noalias !651 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.hu
  br i1 %i.ll, label %.body.i.i, label %.body.i.i.sink.split

.body.i.i.sink.split:                             ; preds = %bb.bb, %bb.az
  %.sink = phi ptr [ %i.kx, %bb.az ], [ %i.lk, %bb.bb ]
  %.pn.pn.i.i.ph = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.az ], [ %lpad.phi55.i.i, %bb.bb ]
  %i.lm = load i64, ptr %i.hu, align 8, !tbaa !28, !noalias !651
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ln) #24
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.sink.split, %bb.bb, %bb.az
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.az ], [ %lpad.phi55.i.i, %bb.bb ], [ %.pn.pn.i.i.ph, %.body.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !651
  br label %bb.bc

bb.bc:                                            ; preds = %.body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i
  %.pn19.pn.pn.i.i = phi { ptr, i32 } [ %.pn19.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i ], [ %.pn.pn.i.i, %.body.i.i ] ; 2 uses
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !651
  %i.lo = load ptr, ptr %11, align 8, !tbaa !33, !alias.scope !650, !noalias !649 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.gv
  br i1 %i.lp, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i: ; preds = %bb.bc
  %i.lq = load i64, ptr %i.gv, align 8, !tbaa !28, !alias.scope !650, !noalias !649
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.i
  %common.resume.op = phi { ptr, i32 } [ %.pn78.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.i ], [ %lpad.phi163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn19.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.aqy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn19.pn.pn.i.i, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_ZN11flatbuffers2ts11TsGenerator14GenUnionTypeTSERKNS_7EnumDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12_GLOBAL__N_116ImportDefinitionESt4lessISB_ESaISt4pairIKSB_SD_EEE.exit.i: ; preds = %._crit_edge74.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !651
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !649
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.ls = load ptr, ptr %11, align 8, !tbaa !33, !noalias !655
  %i.lt = load i64, ptr %i.gw, align 8, !tbaa !153, !noalias !655 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.lu, ptr %13, align 8, !tbaa !27, !alias.scope !656, !noalias !649
  %i.lv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.lv, align 8, !tbaa !153, !alias.scope !656, !noalias !649
  store i8 0, ptr %i.lu, align 8, !tbaa !28, !alias.scope !656, !noalias !649
  %i.lw = add i64 %i.lt, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.lw)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %_ZN11flatbuffers2ts11TsGenerator14GenUnionTypeTSERKNS_7EnumDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12_GLOBAL__N_116ImportDefinitionESt4lessISB_ESaISt4pairIKSB_SD_EEE.exit.i
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !153, !alias.scope !656, !noalias !649
  %i.ly = sub i64 4611686018427387903, %i.lx
  %i.lz = icmp ult i64 %i.ly, %i.lt
  br i1 %i.lz, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.bd
  %i.ma = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ls, i64 noundef %i.lt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %bb.be ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.mb = load i64, ptr %i.lv, align 8, !tbaa !153, !alias.scope !656, !noalias !649
  %i.mc = icmp eq i64 %i.mb, 4611686018427387903
  br i1 %i.mc, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.cont.i.i.i unwind label %bb.be

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.md = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.76, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %.invoke.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %_ZN11flatbuffers2ts11TsGenerator14GenUnionTypeTSERKNS_7EnumDefERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12_GLOBAL__N_116ImportDefinitionESt4lessISB_ESaISt4pairIKSB_SD_EEE.exit.i
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load ptr, ptr %13, align 8, !tbaa !33, !alias.scope !656, !noalias !649 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.lu
  br i1 %i.mg, label %.body.i, label %.body.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !153, !noalias !658 ; 2 uses
  %i.mj = load i64, ptr %i.lv, align 8, !tbaa !153, !noalias !658
  %i.mk = sub i64 4611686018427387903, %i.mj
  %i.ml = icmp ult i64 %i.mk, %i.mi
  br i1 %i.ml, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.bf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc.i unwind label %bb.eb

.noexc.i:                                         ; preds = %bb.bf
  unreachable
end_hunk_0
