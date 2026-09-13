Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/options_helper?download=true
inline.NumInlined: 4739
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7rocksdb27SerializeSingleOptionHelperEPKvNS_10OptionTypeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i94:  ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bm
  %.022.i.i95 = phi i32 [ %i.if, %bb.bq ], [ %i.ib, %bb.bm ], [ %i.id, %bb.bo ], [ %i.ih, %bb.br ] ; 3 uses
  %i.ij = zext i32 %.022.i.i95 to i64             ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ik, ptr %6, align 8, !tbaa !70, !alias.scope !738
  %i.il = icmp ugt i32 %.022.i.i95, 15
  br i1 %i.il, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i94
  %i.im = add nuw nsw i64 %i.ij, 1
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #30
          to label %.noexc.i102 unwind label %bb.bz ; 2 uses

.noexc.i102:                                      ; preds = %bb.bs
  store ptr %i.in, ptr %6, align 8, !tbaa !77, !alias.scope !738
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !71, !alias.scope !738
  br label %bb.bv

bb.bt:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i94
  switch i32 %.022.i.i95, label %bb.bv [
    i32 0, label %bb.bw
    i32 1, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %.thread.i103
  %i.io = phi ptr [ %i.hz, %.thread.i103 ], [ %i.ik, %bb.bt ] ; 2 uses
  store i8 0, ptr %i.io, align 1, !tbaa !71, !alias.scope !738
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt, %.noexc.i102
  %i.ip = phi ptr [ %i.in, %.noexc.i102 ], [ %i.ik, %bb.bt ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ip, i8 0, i64 %i.ij, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.iq = phi i64 [ 0, %bb.bt ], [ %i.ij, %bb.bv ], [ 1, %bb.bu ] ; 2 uses
  %i.ir = phi ptr [ %i.ik, %bb.bt ], [ %i.ip, %bb.bv ], [ %i.io, %bb.bu ]
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !72, !alias.scope !738
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iq
  store i8 0, ptr %i.it, align 1, !tbaa !71
  %i.iu = load ptr, ptr %6, align 8, !tbaa !77, !alias.scope !738 ; 4 uses
  %i.iv = icmp ugt i32 %i.hx, 99
  br i1 %i.iv, label %.lr.ph.preheader.i.i99, label %._crit_edge.i.i96

.lr.ph.preheader.i.i99:                           ; preds = %bb.bw
  %i.iw = load i64, ptr %i.is, align 8, !tbaa !72, !alias.scope !738
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = add i32 %i.ix, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i99
  %.020.i.i100 = phi i32 [ %i.jb, %.lr.ph.i2.i ], [ %i.hx, %.lr.ph.preheader.i.i99 ] ; 3 uses
  %.01819.i.i101 = phi i32 [ %i.jm, %.lr.ph.i2.i ], [ %i.iy, %.lr.ph.preheader.i.i99 ] ; 3 uses
  %i.iz = urem i32 %.020.i.i100, 100
  %i.ja = shl nuw nsw i32 %i.iz, 1
  %i.jb = udiv i32 %.020.i.i100, 100              ; 2 uses
  %i.jc = zext nneg i32 %i.ja to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !71, !noalias !738
  %i.jg = zext i32 %.01819.i.i101 to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jg
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !71
  %i.ji = load i8, ptr %i.jd, align 2, !tbaa !71, !noalias !738
  %i.jj = add i32 %.01819.i.i101, -1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jk
  store i8 %i.ji, ptr %i.jl, align 1, !tbaa !71
  %i.jm = add i32 %.01819.i.i101, -2
  %i.jn = icmp ugt i32 %.020.i.i100, 9999
  br i1 %i.jn, label %.lr.ph.i2.i, label %._crit_edge.i.i96, !llvm.loop !716

._crit_edge.i.i96:                                ; preds = %.lr.ph.i2.i, %bb.bw
  %.0.lcssa.i.i97 = phi i32 [ %i.hx, %bb.bw ], [ %i.jb, %.lr.ph.i2.i ] ; 3 uses
  %i.jo = icmp samesign ugt i32 %.0.lcssa.i.i97, 9
  br i1 %i.jo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i96
  %i.jp = shl nuw nsw i32 %.0.lcssa.i.i97, 1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !71, !noalias !738
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !71
  %i.jv = load i8, ptr %i.jr, align 2, !tbaa !71, !noalias !738
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.by:                                            ; preds = %._crit_edge.i.i96
  %i.jw = trunc nuw nsw i32 %.0.lcssa.i.i97 to i8
  %i.jx = or disjoint i8 %i.jw, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.bz:                                            ; preds = %bb.bs
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #32
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.bx, %bb.by
  %storemerge.i.i98 = phi i8 [ %i.jx, %bb.by ], [ %i.jv, %bb.bx ]
  store i8 %storemerge.i.i98, ptr %i.iu, align 1, !tbaa !71
  %i.ka = load ptr, ptr %2, align 8, !tbaa !77    ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  %i.kd = load ptr, ptr %6, align 8, !tbaa !77    ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke                ; 2 uses
  br i1 %i.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.kf, label %bb.ca, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i104: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.kf, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i105

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.kg = load i64, ptr %i.is, align 8, !tbaa !72 ; 3 uses
  %i.kh = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kh)
  %.not21.i107 = icmp eq ptr %6, %2
  br i1 %.not21.i107, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  switch i64 %i.kg, label %bb.cd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ki = load i8, ptr %i.kd, align 1, !tbaa !71
  store i8 %i.ki, ptr %i.ka, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.kd, i64 %i.kg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.kj = load i64, ptr %i.is, align 8, !tbaa !72 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !72
  %i.kl = load ptr, ptr %2, align 8, !tbaa !77
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kj
  store i8 0, ptr %i.km, align 1, !tbaa !71
  %.pre.i109 = load ptr, ptr %6, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.kd, ptr %2, align 8, !tbaa !77
  %i.ko = load <2 x i64>, ptr %i.is, align 8, !tbaa !71
  store <2 x i64> %i.ko, ptr %i.kn, align 8, !tbaa !71
  br label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i104
  %i.kp = load i64, ptr %i.kb, align 8, !tbaa !71
  store ptr %i.kd, ptr %2, align 8, !tbaa !77
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kr = load <2 x i64>, ptr %i.is, align 8, !tbaa !71
  store <2 x i64> %i.kr, ptr %i.kq, align 8, !tbaa !71
  %.not.i106 = icmp eq ptr %i.ka, null
  br i1 %.not.i106, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i105
  store ptr %i.ka, ptr %6, align 8, !tbaa !77
  store i64 %i.kp, ptr %i.ke, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i105, %.thread.i111
  store ptr %i.ke, ptr %6, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.ce, %bb.cf
  %i.ks = phi ptr [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ], [ %i.ka, %bb.ce ], [ %i.ke, %bb.cf ], [ %i.kd, %bb.ca ]
  store i64 0, ptr %i.is, align 8, !tbaa !72
  store i8 0, ptr %i.ks, align 1, !tbaa !71
  %i.kt = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !71
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN7rocksdb13SerializeEnumINS_15CompactionStyleEEEbRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S9_EEERKS9_PS8_.exit

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i119: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ky = load i8, ptr %0, align 1, !tbaa !71     ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.kz = icmp ult i8 %i.ky, 10                   ; 3 uses
  %i.la = icmp ult i8 %i.ky, 100
  %. = select i1 %i.la, i32 2, i32 3              ; 3 uses
  %i.lb = zext nneg i32 %. to i64
  %i.lc = select i1 %i.kz, i64 1, i64 %i.lb       ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.ld, ptr %7, align 8, !tbaa !70, !alias.scope !739
  br i1 %i.kz, label %.thread, label %bb.cg

.thread:                                          ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i119
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.lc, ptr %i.le, align 8, !tbaa !72, !alias.scope !739
  br label %bb.ch

bb.cg:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ld, i8 45, i64 %i.lc, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.lc, ptr %i.lf, align 8, !tbaa !72, !alias.scope !739
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lc
  store i8 0, ptr %i.lg, align 1, !tbaa !71
  %i.lh = icmp ugt i8 %i.ky, 99
  br i1 %i.lh, label %.lr.ph.preheader.i.i125, label %._crit_edge.i.i122

.lr.ph.preheader.i.i125:                          ; preds = %bb.cg
  %i.li = urem i8 %i.ky, 100
  %i.lj = shl nuw i8 %i.li, 1
  %i.lk = udiv i8 %i.ky, 100
  %i.ll = zext i8 %i.lj to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !71, !noalias !739
  %16 = zext nneg i32 %. to i64
  %17 = getelementptr i8, ptr %i.ld, i64 %16
  %i.lp = getelementptr i8, ptr %17, i64 -1
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !71
  %i.lq = load i8, ptr %i.lm, align 2, !tbaa !71, !noalias !739
  %i.lr = add nsw i32 %., -2
  %i.ls = zext nneg i32 %i.lr to i64
  br label %bb.ch, !llvm.loop !716

._crit_edge.i.i122:                               ; preds = %bb.cg
  %i.lt = shl nuw i8 %i.ky, 1
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !71, !noalias !739
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !71
  %i.lz = load i8, ptr %i.lv, align 2, !tbaa !71, !noalias !739
  br label %_ZNSt7__cxx119to_stringEi.exit130

bb.ch:                                            ; preds = %.lr.ph.preheader.i.i125, %.thread
  %.sink646 = phi i64 [ %i.ls, %.lr.ph.preheader.i.i125 ], [ %i.lc, %.thread ]
  %.sink = phi i8 [ %i.lq, %.lr.ph.preheader.i.i125 ], [ 0, %.thread ]
  %.ph = phi ptr [ %i.lf, %.lr.ph.preheader.i.i125 ], [ %i.le, %.thread ]
  %.0.lcssa.i.i123.ph = phi i8 [ %i.lk, %.lr.ph.preheader.i.i125 ], [ %i.ky, %.thread ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.sink646
  store i8 %.sink, ptr %i.ma, align 1, !tbaa !71
  %i.mb = or disjoint i8 %.0.lcssa.i.i123.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit130

_ZNSt7__cxx119to_stringEi.exit130:                ; preds = %._crit_edge.i.i122, %bb.ch
  %i.mc = phi ptr [ %.ph, %bb.ch ], [ %i.lf, %._crit_edge.i.i122 ] ; 2 uses
  %i.md = phi i8 [ %i.mb, %bb.ch ], [ %i.lz, %._crit_edge.i.i122 ] ; 2 uses
  store i8 %i.md, ptr %i.ld, align 8, !tbaa !71
  %i.me = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %.not21.i134 = icmp eq ptr %7, %2
  br i1 %.not21.i134, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit139, label %bb.ci, !prof !78

bb.ci:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit130
  br i1 %i.kz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i8 %i.md, ptr %i.me, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i135

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, ptr noundef nonnull align 8 dereferenceable(1) %i.ld, i64 %i.lc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i135: ; preds = %bb.ck, %bb.cj
  %i.mf = load i64, ptr %i.mc, align 8, !tbaa !72 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !72
  %i.mh = load ptr, ptr %2, align 8, !tbaa !77
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mf
  store i8 0, ptr %i.mi, align 1, !tbaa !71
  %.pre.i136 = load ptr, ptr %7, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit139: ; preds = %_ZNSt7__cxx119to_stringEi.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i135
  %i.mj = phi ptr [ %.pre.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i135 ], [ %i.ld, %_ZNSt7__cxx119to_stringEi.exit130 ]
  store i64 0, ptr %i.mc, align 8, !tbaa !72
  store i8 0, ptr %i.mj, align 1, !tbaa !71
  %i.mk = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.ld
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit139
  %i.mm = load i64, ptr %i.ld, align 8, !tbaa !71
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZN7rocksdb13SerializeEnumINS_15CompactionStyleEEEbRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S9_EEERKS9_PS8_.exit

bb.cl:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.mo = load i32, ptr %0, align 4, !tbaa !130   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.mp = icmp ult i32 %i.mo, 10
  br i1 %i.mp, label %.thread.i156, label %.lr.ph.i.i143

.thread.i156:                                     ; preds = %bb.cl
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.mq, ptr %8, align 8, !tbaa !70, !alias.scope !740
  br label %bb.cu

.lr.ph.i.i143:                                    ; preds = %bb.cl, %bb.cr
  %.030.i.i144 = phi i32 [ %i.my, %bb.cr ], [ 1, %bb.cl ] ; 4 uses
  %.02329.i.i145 = phi i32 [ %i.mx, %bb.cr ], [ %i.mo, %bb.cl ] ; 5 uses
  %i.mr = icmp ult i32 %.02329.i.i145, 100
  br i1 %i.mr, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i.i143
  %i.ms = add i32 %.030.i.i144, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146

bb.cn:                                            ; preds = %.lr.ph.i.i143
  %i.mt = icmp ult i32 %.02329.i.i145, 1000
  br i1 %i.mt, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.mu = add i32 %.030.i.i144, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146

bb.cp:                                            ; preds = %bb.cn
  %i.mv = icmp ult i32 %.02329.i.i145, 10000
  br i1 %i.mv, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mw = add i32 %.030.i.i144, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146

bb.cr:                                            ; preds = %bb.cp
  %i.mx = udiv i32 %.02329.i.i145, 10000
  %i.my = add i32 %.030.i.i144, 4                 ; 2 uses
  %i.mz = icmp ult i32 %.02329.i.i145, 100000
  br i1 %i.mz, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146, label %.lr.ph.i.i143, !llvm.loop !715

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146: ; preds = %bb.cr, %bb.cq, %bb.co, %bb.cm
  %.022.i.i147 = phi i32 [ %i.mw, %bb.cq ], [ %i.ms, %bb.cm ], [ %i.mu, %bb.co ], [ %i.my, %bb.cr ] ; 3 uses
  %i.na = zext i32 %.022.i.i147 to i64            ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.nb, ptr %8, align 8, !tbaa !70, !alias.scope !740
  %i.nc = icmp ugt i32 %.022.i.i147, 15
  br i1 %i.nc, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146
  %i.nd = add nuw nsw i64 %i.na, 1
  %i.ne = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #30
          to label %.noexc.i155 unwind label %bb.cz ; 2 uses

.noexc.i155:                                      ; preds = %bb.cs
  store ptr %i.ne, ptr %8, align 8, !tbaa !77, !alias.scope !740
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !71, !alias.scope !740
  br label %bb.cv

bb.ct:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i146
  switch i32 %.022.i.i147, label %bb.cv [
    i32 0, label %bb.cw
    i32 1, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %.thread.i156
  %i.nf = phi ptr [ %i.mq, %.thread.i156 ], [ %i.nb, %bb.ct ] ; 2 uses
  store i8 0, ptr %i.nf, align 1, !tbaa !71, !alias.scope !740
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %.noexc.i155
  %i.ng = phi ptr [ %i.ne, %.noexc.i155 ], [ %i.nb, %bb.ct ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ng, i8 0, i64 %i.na, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.nh = phi i64 [ 0, %bb.ct ], [ %i.na, %bb.cv ], [ 1, %bb.cu ] ; 2 uses
  %i.ni = phi ptr [ %i.nb, %bb.ct ], [ %i.ng, %bb.cv ], [ %i.nf, %bb.cu ]
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 %i.nh, ptr %i.nj, align 8, !tbaa !72, !alias.scope !740
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nh
  store i8 0, ptr %i.nk, align 1, !tbaa !71
  %i.nl = load ptr, ptr %8, align 8, !tbaa !77, !alias.scope !740 ; 4 uses
  %i.nm = icmp ugt i32 %i.mo, 99
  br i1 %i.nm, label %.lr.ph.preheader.i.i151, label %._crit_edge.i.i148

.lr.ph.preheader.i.i151:                          ; preds = %bb.cw
  %i.nn = load i64, ptr %i.nj, align 8, !tbaa !72, !alias.scope !740
  %i.no = trunc i64 %i.nn to i32
  %i.np = add i32 %i.no, -1
  br label %.lr.ph.i2.i152

.lr.ph.i2.i152:                                   ; preds = %.lr.ph.i2.i152, %.lr.ph.preheader.i.i151
  %.020.i.i153 = phi i32 [ %i.ns, %.lr.ph.i2.i152 ], [ %i.mo, %.lr.ph.preheader.i.i151 ] ; 3 uses
  %.01819.i.i154 = phi i32 [ %i.od, %.lr.ph.i2.i152 ], [ %i.np, %.lr.ph.preheader.i.i151 ] ; 3 uses
  %i.nq = urem i32 %.020.i.i153, 100
  %i.nr = shl nuw nsw i32 %i.nq, 1
  %i.ns = udiv i32 %.020.i.i153, 100              ; 2 uses
  %i.nt = zext nneg i32 %i.nr to i64
  %i.nu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !71, !noalias !740
  %i.nx = zext i32 %.01819.i.i154 to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nx
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !71
  %i.nz = load i8, ptr %i.nu, align 2, !tbaa !71, !noalias !740
  %i.oa = add i32 %.01819.i.i154, -1
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ob
  store i8 %i.nz, ptr %i.oc, align 1, !tbaa !71
  %i.od = add i32 %.01819.i.i154, -2
  %i.oe = icmp ugt i32 %.020.i.i153, 9999
  br i1 %i.oe, label %.lr.ph.i2.i152, label %._crit_edge.i.i148, !llvm.loop !716

._crit_edge.i.i148:                               ; preds = %.lr.ph.i2.i152, %bb.cw
  %.0.lcssa.i.i149 = phi i32 [ %i.mo, %bb.cw ], [ %i.ns, %.lr.ph.i2.i152 ] ; 3 uses
  %i.of = icmp samesign ugt i32 %.0.lcssa.i.i149, 9
  br i1 %i.of, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i148
  %i.og = shl nuw nsw i32 %.0.lcssa.i.i149, 1
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !71, !noalias !740
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nl, i64 1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !71
  %i.om = load i8, ptr %i.oi, align 2, !tbaa !71, !noalias !740
  br label %_ZNSt7__cxx119to_stringEj.exit157

bb.cy:                                            ; preds = %._crit_edge.i.i148
  %i.on = trunc nuw nsw i32 %.0.lcssa.i.i149 to i8
  %i.oo = or disjoint i8 %i.on, 48
  br label %_ZNSt7__cxx119to_stringEj.exit157

bb.cz:                                            ; preds = %bb.cs
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #32
  unreachable

_ZNSt7__cxx119to_stringEj.exit157:                ; preds = %bb.cx, %bb.cy
  %storemerge.i.i150 = phi i8 [ %i.oo, %bb.cy ], [ %i.om, %bb.cx ]
  store i8 %storemerge.i.i150, ptr %i.nl, align 1, !tbaa !71
  %i.or = load ptr, ptr %2, align 8, !tbaa !77    ; 6 uses
end_hunk_0
