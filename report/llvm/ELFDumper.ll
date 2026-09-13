Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 236
begin_hunk_0_@_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE16printFileHeadersEv:bb.a
  %i.ia = or i8 %i.hz, 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !270, !noalias !2159
  br label %._crit_edge.i

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.u, %bb.v
  %i.ic = load i64, ptr %i.n, align 8, !tbaa !340, !noalias !2159 ; 2 uses
  store i64 %i.ic, ptr %i.hh, align 8, !tbaa !269, !alias.scope !2159
  %i.id = load ptr, ptr %13, align 8, !tbaa !349, !alias.scope !2159
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31, !noalias !2159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31, !noalias !2159
  %i.if = load ptr, ptr %13, align 8, !tbaa !349
  %i.ig = load i64, ptr %i.hh, align 8, !tbaa !269
  %i.ih = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef %i.if, i64 noundef %i.ig) #31 ; 0 uses
  %i.ii = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hg
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.ik = load i64, ptr %i.hg, align 8, !tbaa !270
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.im, align 1
  %i.in = icmp eq i32 %.0.copyload.i.i.i, 1
  br i1 %i.in, label %bb.w, label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !374, !nonnull !248, !align !338 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !371
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !372 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 10
  br i1 %i.iw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef nonnull @.str.80, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.is, ptr noundef nonnull align 1 dereferenceable(10) @.str.80, i64 10, i1 false)
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !372
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 10
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

_ZN4llvm11raw_ostreamlsEPKc.exit100:              ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ja = load ptr, ptr %i.t, align 8, !tbaa !374, !nonnull !248, !align !338 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !371
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !372 ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.je
  br i1 %i.jf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  store i8 10, ptr %i.je, align 1
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !372
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

_ZN4llvm11raw_ostreamlsEPKc.exit103:              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr @_ZL8ElfOSABI, ptr %14, align 8, !tbaa !385
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 20, ptr %i.jj, align 8, !tbaa !386
  %i.jk = load i8, ptr %i.cf, align 1, !tbaa !270 ; 2 uses
  %i.jl = icmp ugt i8 %i.jk, 63
  br i1 %i.jl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %.0.copyload.i.i.i104 = load i16, ptr %i.jm, align 1
  switch i16 %.0.copyload.i.i.i104, label %bb.ad [
    i16 40, label %.sink.split
    i16 224, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.ac
  %_ZL11ARMElfOSABI.sink = phi ptr [ @_ZL14AMDGPUElfOSABI, %bb.ac ], [ @_ZL11ARMElfOSABI, %bb.ab ]
  %.sink = phi i64 [ 3, %bb.ac ], [ 2, %bb.ab ]
  store ptr %_ZL11ARMElfOSABI.sink, ptr %14, align 8, !tbaa !387
  store i64 %.sink, ptr %i.jj, align 8, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %_ZN4llvm11raw_ostreamlsEPKc.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZNK4llvm11EnumStringsIjLj2EE13toStringOrHexIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext %i.jk, i32 noundef 1)
  %i.jn = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.jo = icmp eq ptr %i.jn, %i.as
  %i.jp = load ptr, ptr %15, align 8, !tbaa !349  ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq                ; 2 uses
  br i1 %i.jo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %bb.ad
  br i1 %i.jr, label %bb.ae, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105: ; preds = %bb.ad
  br i1 %i.jr, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !269 ; 3 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  switch i64 %i.jt, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jv = load i8, ptr %i.jp, align 1, !tbaa !270
  store i8 %i.jv, ptr %i.jn, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jp, i64 %i.jt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.jw = load i64, ptr %i.js, align 8, !tbaa !269 ; 2 uses
  store i64 %i.jw, ptr %i.at, align 8, !tbaa !269
  %i.jx = load ptr, ptr %7, align 8, !tbaa !349
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw
  store i8 0, ptr %i.jy, align 1, !tbaa !270
  %.pre.i109 = load ptr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  store ptr %i.jp, ptr %7, align 8, !tbaa !349
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ka = load <2 x i64>, ptr %i.jz, align 8, !tbaa !270
  store <2 x i64> %i.ka, ptr %i.at, align 8, !tbaa !270
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105
  %i.kb = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.jp, ptr %7, align 8, !tbaa !349
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kd = load <2 x i64>, ptr %i.kc, align 8, !tbaa !270
  store <2 x i64> %i.kd, ptr %i.at, align 8, !tbaa !270
  %.not.i107 = icmp eq ptr %i.jn, null
  br i1 %.not.i107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106
  store ptr %i.jn, ptr %15, align 8, !tbaa !349
  store i64 %i.kb, ptr %i.jq, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106, %.thread.i111
  store ptr %i.jq, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.ah, %bb.ai
  %i.ke = phi ptr [ %i.jn, %bb.ah ], [ %i.jq, %bb.ai ], [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.kf, align 8, !tbaa !269
  store i8 0, ptr %i.ke, align 1, !tbaa !270
  %i.kg = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !270
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.kl = load ptr, ptr %i.t, align 8, !tbaa !374, !nonnull !248, !align !338
  %i.km = load ptr, ptr %7, align 8, !tbaa !349
  %i.kn = load i64, ptr %i.at, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.kl, ptr nonnull @.str.81, i64 7, ptr %i.km, i64 %i.kn)
  %i.ko = load ptr, ptr %i.t, align 8, !tbaa !374, !nonnull !248, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.kp = load i8, ptr %i.ck, align 1, !tbaa !270 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.kq = icmp ult i8 %i.kp, 10
  %i.kr = icmp ult i8 %i.kp, 100
  %. = select i1 %i.kr, i32 2, i32 3              ; 2 uses
  %i.ks = zext nneg i32 %. to i64
  %i.kt = select i1 %i.kq, i64 1, i64 %i.ks       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ku, ptr %16, align 8, !tbaa !268, !alias.scope !2160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.kt, i8 noundef signext 45) #31
  %i.kv = load ptr, ptr %16, align 8, !tbaa !349, !alias.scope !2160 ; 4 uses
  %i.kw = icmp ugt i8 %i.kp, 99
  br i1 %i.kw, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.kx = urem i8 %i.kp, 100
  %i.ky = shl nuw i8 %i.kx, 1
  %i.kz = udiv i8 %i.kp, 100
  %i.la = zext i8 %i.ky to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !270, !noalias !2160
  %i.le = getelementptr i8, ptr %i.kv, i64 %i.kt
  %i.lf = getelementptr i8, ptr %i.le, i64 -1
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !270
  %i.lg = load i8, ptr %i.lb, align 2, !tbaa !270, !noalias !2160
  %i.lh = zext nneg i32 %. to i64
  %i.li = getelementptr i8, ptr %i.kv, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 -2
  store i8 %i.lg, ptr %i.lj, align 1, !tbaa !270
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.lk = icmp ugt i8 %i.kp, 9
  br i1 %i.lk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.ll = shl nuw i8 %i.kp, 1
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !270, !noalias !2160
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !270
  %i.lr = load i8, ptr %i.ln, align 2, !tbaa !270, !noalias !2160
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i1045 = phi i8 [ %i.kz, %._crit_edge.i.i.thread ], [ %i.kp, %._crit_edge.i.i ]
  %i.ls = or disjoint i8 %.0.lcssa.i.i1045, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.aj, %bb.ak
  %storemerge.i.i = phi i8 [ %i.ls, %bb.ak ], [ %i.lr, %bb.aj ]
  store i8 %storemerge.i.i, ptr %i.kv, align 1, !tbaa !270
  %i.lt = load ptr, ptr %16, align 8, !tbaa !349
  %i.lu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.ko, ptr nonnull @.str.82, i64 12, ptr %i.lt, i64 %i.lv)
  %i.lw = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.ku
  br i1 %i.lx, label %.lr.ph.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ly = load i64, ptr %i.ku, align 8, !tbaa !270
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #32
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.ma = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.016.0.copyload = load i16, ptr %i.ma, align 1, !tbaa !270 ; 7 uses
  switch i16 %.sroa.016.0.copyload, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread [
    i16 0, label %._crit_edge.i.i.i122.thread1054
    i16 1, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit
    i16 2, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split
    i16 3, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064
    i16 4, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065
  ]

._crit_edge.i.i.i122.thread1054:                  ; preds = %.lr.ph.i119
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.mb, ptr %17, align 8, !tbaa !268, !alias.scope !2161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !2161
  store i64 11, ptr %i.m, align 8, !tbaa !340, !noalias !2161
  br label %bb.am

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit: ; preds = %.lr.ph.i119, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split
  %.01119.i.ptr.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 36), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 12), %.lr.ph.i119 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 24), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 48), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065 ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 2
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !389
  %i.me = zext i16 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 5
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !270 ; 4 uses
  %i.mi = zext i8 %i.mh to i64                    ; 3 uses
  %i.mj = icmp eq i8 %i.mh, 0
  br i1 %i.mj, label %bb.bl, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050: ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  %i.mk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.mk, ptr %17, align 8, !tbaa !268, !alias.scope !2162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !2162
  store i64 %i.mi, ptr %i.m, align 8, !tbaa !340, !noalias !2162
  %i.ml = icmp ugt i8 %i.mh, 15
  br i1 %i.ml, label %._crit_edge.i.i.i122.thread, label %._crit_edge.i.i.i122

._crit_edge.i.i.i122.thread:                      ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050
  %i.mm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #31 ; 2 uses
  store ptr %i.mm, ptr %17, align 8, !tbaa !349, !alias.scope !2162
  %i.mn = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !2162
  store i64 %i.mn, ptr %i.mk, align 8, !tbaa !270, !alias.scope !2162
  br label %bb.am

._crit_edge.i.i.i122:                             ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050
  %cond = icmp eq i8 %i.mh, 1
  br i1 %cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i122
  %i.mo = load i8, ptr %i.mf, align 1, !tbaa !270
  store i8 %i.mo, ptr %i.mk, align 8, !tbaa !270
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.am:                                            ; preds = %._crit_edge.i.i.i122.thread1054, %._crit_edge.i.i.i122.thread, %._crit_edge.i.i.i122
  %i.mp = phi ptr [ %i.mk, %._crit_edge.i.i.i122.thread ], [ %i.mk, %._crit_edge.i.i.i122 ], [ %i.mb, %._crit_edge.i.i.i122.thread1054 ]
  %i.mq = phi ptr [ %i.mf, %._crit_edge.i.i.i122.thread ], [ %i.mf, %._crit_edge.i.i.i122 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 64), %._crit_edge.i.i.i122.thread1054 ]
  %i.mr = phi i64 [ %i.mi, %._crit_edge.i.i.i122.thread ], [ %i.mi, %._crit_edge.i.i.i122 ], [ 11, %._crit_edge.i.i.i122.thread1054 ]
  %i.ms = phi ptr [ %i.mm, %._crit_edge.i.i.i122.thread ], [ %i.mk, %._crit_edge.i.i.i122 ], [ %i.mb, %._crit_edge.i.i.i122.thread1054 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr nonnull align 1 %i.mq, i64 %i.mr, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.al, %bb.am
  %i.mt = phi ptr [ %i.mk, %bb.al ], [ %i.mp, %bb.am ] ; 8 uses
  %i.mu = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !2162 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !269, !alias.scope !2162
  %i.mw = load ptr, ptr %17, align 8, !tbaa !349, !alias.scope !2162
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 0, ptr %i.mx, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31, !noalias !2162
  %i.my = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.mz = icmp eq ptr %i.my, %i.as
  %i.na = load ptr, ptr %17, align 8, !tbaa !349  ; 5 uses
  %i.nb = icmp eq ptr %i.na, %i.mt                ; 2 uses
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.an, label %.thread.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !269 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nd)
  switch i64 %i.nc, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !270
  store i8 %i.ne, ptr %i.my, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.nf = load i64, ptr %i.mv, align 8, !tbaa !269 ; 2 uses
  store i64 %i.nf, ptr %i.at, align 8, !tbaa !269
  %i.ng = load ptr, ptr %7, align 8, !tbaa !349
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nf
  store i8 0, ptr %i.nh, align 1, !tbaa !270
  %.pre.i127 = load ptr, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

.thread.i129:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.ni = load i64, ptr %i.mv, align 8, !tbaa !269
  store i64 %i.ni, ptr %i.at, align 8, !tbaa !269
  %i.nj = load i64, ptr %i.mt, align 8, !tbaa !270
  store i64 %i.nj, ptr %i.as, align 8, !tbaa !270
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123
  %i.nk = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.nl = load i64, ptr %i.mv, align 8, !tbaa !269
  store i64 %i.nl, ptr %i.at, align 8, !tbaa !269
  %i.nm = load i64, ptr %i.mt, align 8, !tbaa !270
  store i64 %i.nm, ptr %i.as, align 8, !tbaa !270
  %.not.i125 = icmp eq ptr %i.my, null
  br i1 %.not.i125, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124
  store ptr %i.my, ptr %17, align 8, !tbaa !349
  store i64 %i.nk, ptr %i.mt, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124, %.thread.i129
  store ptr %i.mt, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126, %bb.aq, %bb.ar
  %i.nn = phi ptr [ %i.my, %bb.aq ], [ %i.mt, %bb.ar ], [ %.pre.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126 ]
  store i64 0, ptr %i.mv, align 8, !tbaa !269
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb0EEEE16printFileHeadersEv:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !270, !noalias !9821
  br label %._crit_edge.i

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.u, %bb.v
  %i.ic = load i64, ptr %i.n, align 8, !tbaa !340, !noalias !9821 ; 2 uses
  store i64 %i.ic, ptr %i.hh, align 8, !tbaa !269, !alias.scope !9821
  %i.id = load ptr, ptr %13, align 8, !tbaa !349, !alias.scope !9821
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31, !noalias !9821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31, !noalias !9821
  %i.if = load ptr, ptr %13, align 8, !tbaa !349
  %i.ig = load i64, ptr %i.hh, align 8, !tbaa !269
  %i.ih = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef %i.if, i64 noundef %i.ig) #31 ; 0 uses
  %i.ii = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hg
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.ik = load i64, ptr %i.hg, align 8, !tbaa !270
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.im, align 1
  %i.in = icmp eq i32 %.0.copyload.i.i.i, 16777216
  br i1 %i.in, label %bb.w, label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !1247, !nonnull !248, !align !338 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !371
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !372 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 10
  br i1 %i.iw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef nonnull @.str.80, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.is, ptr noundef nonnull align 1 dereferenceable(10) @.str.80, i64 10, i1 false)
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !372
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 10
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

_ZN4llvm11raw_ostreamlsEPKc.exit100:              ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ja = load ptr, ptr %i.t, align 8, !tbaa !1247, !nonnull !248, !align !338 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !371
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !372 ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.je
  br i1 %i.jf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  store i8 10, ptr %i.je, align 1
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !372
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

_ZN4llvm11raw_ostreamlsEPKc.exit103:              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr @_ZL8ElfOSABI, ptr %14, align 8, !tbaa !385
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 20, ptr %i.jj, align 8, !tbaa !386
  %i.jk = load i8, ptr %i.cf, align 1, !tbaa !270 ; 2 uses
  %i.jl = icmp ugt i8 %i.jk, 63
  br i1 %i.jl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %.0.copyload.i.i.i104 = load i16, ptr %i.jm, align 1
  %i.jn = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i104)
  switch i16 %i.jn, label %bb.ad [
    i16 40, label %.sink.split
    i16 224, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.ac
  %_ZL11ARMElfOSABI.sink = phi ptr [ @_ZL14AMDGPUElfOSABI, %bb.ac ], [ @_ZL11ARMElfOSABI, %bb.ab ]
  %.sink = phi i64 [ 3, %bb.ac ], [ 2, %bb.ab ]
  store ptr %_ZL11ARMElfOSABI.sink, ptr %14, align 8, !tbaa !387
  store i64 %.sink, ptr %i.jj, align 8, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %_ZN4llvm11raw_ostreamlsEPKc.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZNK4llvm11EnumStringsIjLj2EE13toStringOrHexIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext %i.jk, i32 noundef 1)
  %i.jo = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.jp = icmp eq ptr %i.jo, %i.as
  %i.jq = load ptr, ptr %15, align 8, !tbaa !349  ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.js = icmp eq ptr %i.jq, %i.jr                ; 2 uses
  br i1 %i.jp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %bb.ad
  br i1 %i.js, label %bb.ae, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105: ; preds = %bb.ad
  br i1 %i.js, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !269 ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 16
  call void @llvm.assume(i1 %i.jv)
  switch i64 %i.ju, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jw = load i8, ptr %i.jq, align 1, !tbaa !270
  store i8 %i.jw, ptr %i.jo, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jq, i64 %i.ju, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.jx = load i64, ptr %i.jt, align 8, !tbaa !269 ; 2 uses
  store i64 %i.jx, ptr %i.at, align 8, !tbaa !269
  %i.jy = load ptr, ptr %7, align 8, !tbaa !349
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx
  store i8 0, ptr %i.jz, align 1, !tbaa !270
  %.pre.i109 = load ptr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  store ptr %i.jq, ptr %7, align 8, !tbaa !349
  %i.ka = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kb = load <2 x i64>, ptr %i.ka, align 8, !tbaa !270
  store <2 x i64> %i.kb, ptr %i.at, align 8, !tbaa !270
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105
  %i.kc = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.jq, ptr %7, align 8, !tbaa !349
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ke = load <2 x i64>, ptr %i.kd, align 8, !tbaa !270
  store <2 x i64> %i.ke, ptr %i.at, align 8, !tbaa !270
  %.not.i107 = icmp eq ptr %i.jo, null
  br i1 %.not.i107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106
  store ptr %i.jo, ptr %15, align 8, !tbaa !349
  store i64 %i.kc, ptr %i.jr, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106, %.thread.i111
  store ptr %i.jr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.ah, %bb.ai
  %i.kf = phi ptr [ %i.jo, %bb.ah ], [ %i.jr, %bb.ai ], [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.kg, align 8, !tbaa !269
  store i8 0, ptr %i.kf, align 1, !tbaa !270
  %i.kh = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !270
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.km = load ptr, ptr %i.t, align 8, !tbaa !1247, !nonnull !248, !align !338
  %i.kn = load ptr, ptr %7, align 8, !tbaa !349
  %i.ko = load i64, ptr %i.at, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.km, ptr nonnull @.str.81, i64 7, ptr %i.kn, i64 %i.ko)
  %i.kp = load ptr, ptr %i.t, align 8, !tbaa !1247, !nonnull !248, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.kq = load i8, ptr %i.ck, align 1, !tbaa !270 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9822)
  %i.kr = icmp ult i8 %i.kq, 10
  %i.ks = icmp ult i8 %i.kq, 100
  %. = select i1 %i.ks, i32 2, i32 3              ; 2 uses
  %i.kt = zext nneg i32 %. to i64
  %i.ku = select i1 %i.kr, i64 1, i64 %i.kt       ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.kv, ptr %16, align 8, !tbaa !268, !alias.scope !9822
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.ku, i8 noundef signext 45) #31
  %i.kw = load ptr, ptr %16, align 8, !tbaa !349, !alias.scope !9822 ; 4 uses
  %i.kx = icmp ugt i8 %i.kq, 99
  br i1 %i.kx, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ky = urem i8 %i.kq, 100
  %i.kz = shl nuw i8 %i.ky, 1
  %i.la = udiv i8 %i.kq, 100
  %i.lb = zext i8 %i.kz to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !270, !noalias !9822
  %i.lf = getelementptr i8, ptr %i.kw, i64 %i.ku
  %i.lg = getelementptr i8, ptr %i.lf, i64 -1
  store i8 %i.le, ptr %i.lg, align 1, !tbaa !270
  %i.lh = load i8, ptr %i.lc, align 2, !tbaa !270, !noalias !9822
  %i.li = zext nneg i32 %. to i64
  %i.lj = getelementptr i8, ptr %i.kw, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 -2
  store i8 %i.lh, ptr %i.lk, align 1, !tbaa !270
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ll = icmp ugt i8 %i.kq, 9
  br i1 %i.ll, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.lm = shl nuw i8 %i.kq, 1
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !270, !noalias !9822
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !270
  %i.ls = load i8, ptr %i.lo, align 2, !tbaa !270, !noalias !9822
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i1048 = phi i8 [ %i.la, %._crit_edge.i.i.thread ], [ %i.kq, %._crit_edge.i.i ]
  %i.lt = or disjoint i8 %.0.lcssa.i.i1048, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.aj, %bb.ak
  %storemerge.i.i = phi i8 [ %i.lt, %bb.ak ], [ %i.ls, %bb.aj ]
  store i8 %storemerge.i.i, ptr %i.kw, align 1, !tbaa !270
  %i.lu = load ptr, ptr %16, align 8, !tbaa !349
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.kp, ptr nonnull @.str.82, i64 12, ptr %i.lu, i64 %i.lw)
  %i.lx = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kv
  br i1 %i.ly, label %.lr.ph.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.lz = load i64, ptr %i.kv, align 8, !tbaa !270
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #32
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.mb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.016.0.copyload = load i16, ptr %i.mb, align 1, !tbaa !270 ; 5 uses
  %i.mc = call noundef i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload) ; 5 uses
  %i.md = call i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload) ; 2 uses
  %i.me = icmp ult i16 %i.md, 5
  br i1 %i.me, label %switch.lookup, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread

switch.lookup:                                    ; preds = %.lr.ph.i119
  %i.mf = zext nneg i16 %i.md to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE16printFileHeadersEv.1588, i64 %i.mf
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %switch.load, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !389
  %i.mi = zext i16 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %switch.load, i64 5
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !270 ; 4 uses
  %i.mm = zext i8 %i.ml to i64                    ; 2 uses
  %i.mn = icmp eq i8 %i.ml, 0
  br i1 %i.mn, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread, label %bb.al

bb.al:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !9823)
  %i.mo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.mo, ptr %17, align 8, !tbaa !268, !alias.scope !9823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !9823
  store i64 %i.mm, ptr %i.m, align 8, !tbaa !340, !noalias !9823
  %i.mp = icmp ugt i8 %i.ml, 15
  br i1 %i.mp, label %._crit_edge.i.i.i122.thread, label %._crit_edge.i.i.i122

._crit_edge.i.i.i122.thread:                      ; preds = %bb.al
  %i.mq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #31 ; 2 uses
  store ptr %i.mq, ptr %17, align 8, !tbaa !349, !alias.scope !9823
  %i.mr = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !9823
  store i64 %i.mr, ptr %i.mo, align 8, !tbaa !270, !alias.scope !9823
  br label %bb.an

._crit_edge.i.i.i122:                             ; preds = %bb.al
  %cond = icmp eq i8 %i.ml, 1
  br i1 %cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i122
  %i.ms = load i8, ptr %i.mj, align 1, !tbaa !270
  store i8 %i.ms, ptr %i.mo, align 8, !tbaa !270
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.an:                                            ; preds = %._crit_edge.i.i.i122.thread, %._crit_edge.i.i.i122
  %i.mt = phi ptr [ %i.mq, %._crit_edge.i.i.i122.thread ], [ %i.mo, %._crit_edge.i.i.i122 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr nonnull align 1 %i.mj, i64 %i.mm, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.am, %bb.an
  %i.mu = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !9823 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !269, !alias.scope !9823
  %i.mw = load ptr, ptr %17, align 8, !tbaa !349, !alias.scope !9823
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 0, ptr %i.mx, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31, !noalias !9823
  %i.my = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.mz = icmp eq ptr %i.my, %i.as
  %i.na = load ptr, ptr %17, align 8, !tbaa !349  ; 5 uses
  %i.nb = icmp eq ptr %i.na, %i.mo                ; 2 uses
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.ao, label %.thread.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !269 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nd)
  switch i64 %i.nc, label %bb.aq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !270
  store i8 %i.ne, ptr %i.my, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nf = load i64, ptr %i.mv, align 8, !tbaa !269 ; 2 uses
  store i64 %i.nf, ptr %i.at, align 8, !tbaa !269
  %i.ng = load ptr, ptr %7, align 8, !tbaa !349
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nf
  store i8 0, ptr %i.nh, align 1, !tbaa !270
  %.pre.i127 = load ptr, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

.thread.i129:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.ni = load <2 x i64>, ptr %i.mv, align 8, !tbaa !270
  store <2 x i64> %i.ni, ptr %i.at, align 8, !tbaa !270
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123
  %i.nj = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.nk = load <2 x i64>, ptr %i.mv, align 8, !tbaa !270
  store <2 x i64> %i.nk, ptr %i.at, align 8, !tbaa !270
  %.not.i125 = icmp eq ptr %i.my, null
  br i1 %.not.i125, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124
  store ptr %i.my, ptr %17, align 8, !tbaa !349
  store i64 %i.nj, ptr %i.mo, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124, %.thread.i129
  store ptr %i.mo, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126, %bb.ar, %bb.as
  %i.nl = phi ptr [ %i.my, %bb.ar ], [ %i.mo, %bb.as ], [ %.pre.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126 ]
  store i64 0, ptr %i.mv, align 8, !tbaa !269
  store i8 0, ptr %i.nl, align 1, !tbaa !270
  %i.nm = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.mo
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130
  %i.no = load i64, ptr %i.mo, align 8, !tbaa !270
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.cc

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread: ; preds = %.lr.ph.i119, %switch.lookup
  %i.nq = icmp ugt i16 %i.mc, -257
  br i1 %i.nq, label %bb.at, label %bb.bf

bb.at:                                            ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !9824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31, !noalias !9824
  %i.nr = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %.not689 = icmp eq i16 %.sroa.016.0.copyload, 0
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE16printFileHeadersEv:bb.a
  %i.ia = or i8 %i.hz, 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !270, !noalias !16608
  br label %._crit_edge.i

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.u, %bb.v
  %i.ic = load i64, ptr %i.n, align 8, !tbaa !340, !noalias !16608 ; 2 uses
  store i64 %i.ic, ptr %i.hh, align 8, !tbaa !269, !alias.scope !16608
  %i.id = load ptr, ptr %13, align 8, !tbaa !349, !alias.scope !16608
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31, !noalias !16608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31, !noalias !16608
  %i.if = load ptr, ptr %13, align 8, !tbaa !349
  %i.ig = load i64, ptr %i.hh, align 8, !tbaa !269
  %i.ih = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef %i.if, i64 noundef %i.ig) #31 ; 0 uses
  %i.ii = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hg
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.ik = load i64, ptr %i.hg, align 8, !tbaa !270
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.im, align 1
  %i.in = icmp eq i32 %.0.copyload.i.i.i, 1
  br i1 %i.in, label %bb.w, label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !1442, !nonnull !248, !align !338 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !371
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !372 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 10
  br i1 %i.iw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef nonnull @.str.80, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.is, ptr noundef nonnull align 1 dereferenceable(10) @.str.80, i64 10, i1 false)
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !372
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 10
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

_ZN4llvm11raw_ostreamlsEPKc.exit100:              ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ja = load ptr, ptr %i.t, align 8, !tbaa !1442, !nonnull !248, !align !338 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !371
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !372 ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.je
  br i1 %i.jf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  store i8 10, ptr %i.je, align 1
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !372
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

_ZN4llvm11raw_ostreamlsEPKc.exit103:              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr @_ZL8ElfOSABI, ptr %14, align 8, !tbaa !385
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 20, ptr %i.jj, align 8, !tbaa !386
  %i.jk = load i8, ptr %i.cf, align 1, !tbaa !270 ; 2 uses
  %i.jl = icmp ugt i8 %i.jk, 63
  br i1 %i.jl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %.0.copyload.i.i.i104 = load i16, ptr %i.jm, align 1
  switch i16 %.0.copyload.i.i.i104, label %bb.ad [
    i16 40, label %.sink.split
    i16 224, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.ac
  %_ZL11ARMElfOSABI.sink = phi ptr [ @_ZL14AMDGPUElfOSABI, %bb.ac ], [ @_ZL11ARMElfOSABI, %bb.ab ]
  %.sink = phi i64 [ 3, %bb.ac ], [ 2, %bb.ab ]
  store ptr %_ZL11ARMElfOSABI.sink, ptr %14, align 8, !tbaa !387
  store i64 %.sink, ptr %i.jj, align 8, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %_ZN4llvm11raw_ostreamlsEPKc.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZNK4llvm11EnumStringsIjLj2EE13toStringOrHexIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext %i.jk, i32 noundef 1)
  %i.jn = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.jo = icmp eq ptr %i.jn, %i.as
  %i.jp = load ptr, ptr %15, align 8, !tbaa !349  ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq                ; 2 uses
  br i1 %i.jo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %bb.ad
  br i1 %i.jr, label %bb.ae, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105: ; preds = %bb.ad
  br i1 %i.jr, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !269 ; 3 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  switch i64 %i.jt, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jv = load i8, ptr %i.jp, align 1, !tbaa !270
  store i8 %i.jv, ptr %i.jn, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jp, i64 %i.jt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.jw = load i64, ptr %i.js, align 8, !tbaa !269 ; 2 uses
  store i64 %i.jw, ptr %i.at, align 8, !tbaa !269
  %i.jx = load ptr, ptr %7, align 8, !tbaa !349
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw
  store i8 0, ptr %i.jy, align 1, !tbaa !270
  %.pre.i109 = load ptr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  store ptr %i.jp, ptr %7, align 8, !tbaa !349
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ka = load <2 x i64>, ptr %i.jz, align 8, !tbaa !270
  store <2 x i64> %i.ka, ptr %i.at, align 8, !tbaa !270
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105
  %i.kb = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.jp, ptr %7, align 8, !tbaa !349
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kd = load <2 x i64>, ptr %i.kc, align 8, !tbaa !270
  store <2 x i64> %i.kd, ptr %i.at, align 8, !tbaa !270
  %.not.i107 = icmp eq ptr %i.jn, null
  br i1 %.not.i107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106
  store ptr %i.jn, ptr %15, align 8, !tbaa !349
  store i64 %i.kb, ptr %i.jq, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106, %.thread.i111
  store ptr %i.jq, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.ah, %bb.ai
  %i.ke = phi ptr [ %i.jn, %bb.ah ], [ %i.jq, %bb.ai ], [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.kf, align 8, !tbaa !269
  store i8 0, ptr %i.ke, align 1, !tbaa !270
  %i.kg = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !270
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.kl = load ptr, ptr %i.t, align 8, !tbaa !1442, !nonnull !248, !align !338
  %i.km = load ptr, ptr %7, align 8, !tbaa !349
  %i.kn = load i64, ptr %i.at, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.kl, ptr nonnull @.str.81, i64 7, ptr %i.km, i64 %i.kn)
  %i.ko = load ptr, ptr %i.t, align 8, !tbaa !1442, !nonnull !248, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.kp = load i8, ptr %i.ck, align 1, !tbaa !270 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16609)
  %i.kq = icmp ult i8 %i.kp, 10
  %i.kr = icmp ult i8 %i.kp, 100
  %. = select i1 %i.kr, i32 2, i32 3              ; 2 uses
  %i.ks = zext nneg i32 %. to i64
  %i.kt = select i1 %i.kq, i64 1, i64 %i.ks       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ku, ptr %16, align 8, !tbaa !268, !alias.scope !16609
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.kt, i8 noundef signext 45) #31
  %i.kv = load ptr, ptr %16, align 8, !tbaa !349, !alias.scope !16609 ; 4 uses
  %i.kw = icmp ugt i8 %i.kp, 99
  br i1 %i.kw, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.kx = urem i8 %i.kp, 100
  %i.ky = shl nuw i8 %i.kx, 1
  %i.kz = udiv i8 %i.kp, 100
  %i.la = zext i8 %i.ky to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !270, !noalias !16609
  %i.le = getelementptr i8, ptr %i.kv, i64 %i.kt
  %i.lf = getelementptr i8, ptr %i.le, i64 -1
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !270
  %i.lg = load i8, ptr %i.lb, align 2, !tbaa !270, !noalias !16609
  %i.lh = zext nneg i32 %. to i64
  %i.li = getelementptr i8, ptr %i.kv, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 -2
  store i8 %i.lg, ptr %i.lj, align 1, !tbaa !270
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.lk = icmp ugt i8 %i.kp, 9
  br i1 %i.lk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.ll = shl nuw i8 %i.kp, 1
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !270, !noalias !16609
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !270
  %i.lr = load i8, ptr %i.ln, align 2, !tbaa !270, !noalias !16609
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i1045 = phi i8 [ %i.kz, %._crit_edge.i.i.thread ], [ %i.kp, %._crit_edge.i.i ]
  %i.ls = or disjoint i8 %.0.lcssa.i.i1045, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.aj, %bb.ak
  %storemerge.i.i = phi i8 [ %i.ls, %bb.ak ], [ %i.lr, %bb.aj ]
  store i8 %storemerge.i.i, ptr %i.kv, align 1, !tbaa !270
  %i.lt = load ptr, ptr %16, align 8, !tbaa !349
  %i.lu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.ko, ptr nonnull @.str.82, i64 12, ptr %i.lt, i64 %i.lv)
  %i.lw = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.ku
  br i1 %i.lx, label %.lr.ph.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ly = load i64, ptr %i.ku, align 8, !tbaa !270
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #32
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.ma = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.016.0.copyload = load i16, ptr %i.ma, align 1, !tbaa !270 ; 7 uses
  switch i16 %.sroa.016.0.copyload, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread [
    i16 0, label %._crit_edge.i.i.i122.thread1054
    i16 1, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit
    i16 2, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split
    i16 3, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064
    i16 4, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065
  ]

._crit_edge.i.i.i122.thread1054:                  ; preds = %.lr.ph.i119
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !16610)
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.mb, ptr %17, align 8, !tbaa !268, !alias.scope !16610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !16610
  store i64 11, ptr %i.m, align 8, !tbaa !340, !noalias !16610
  br label %bb.am

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065: ; preds = %.lr.ph.i119
  br label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit: ; preds = %.lr.ph.i119, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064, %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split
  %.01119.i.ptr.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 36), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1064 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 12), %.lr.ph.i119 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 24), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 48), %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.fold.split1065 ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 2
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !389
  %i.me = zext i16 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.01119.i.ptr.lcssa, i64 5
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !270 ; 4 uses
  %i.mi = zext i8 %i.mh to i64                    ; 3 uses
  %i.mj = icmp eq i8 %i.mh, 0
  br i1 %i.mj, label %bb.bl, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050: ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !16611)
  %i.mk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.mk, ptr %17, align 8, !tbaa !268, !alias.scope !16611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !16611
  store i64 %i.mi, ptr %i.m, align 8, !tbaa !340, !noalias !16611
  %i.ml = icmp ugt i8 %i.mh, 15
  br i1 %i.ml, label %._crit_edge.i.i.i122.thread, label %._crit_edge.i.i.i122

._crit_edge.i.i.i122.thread:                      ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050
  %i.mm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #31 ; 2 uses
  store ptr %i.mm, ptr %17, align 8, !tbaa !349, !alias.scope !16611
  %i.mn = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !16611
  store i64 %i.mn, ptr %i.mk, align 8, !tbaa !270, !alias.scope !16611
  br label %bb.am

._crit_edge.i.i.i122:                             ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEENS_9StringRefET_j.exit.thread1050
  %cond = icmp eq i8 %i.mh, 1
  br i1 %cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i122
  %i.mo = load i8, ptr %i.mf, align 1, !tbaa !270
  store i8 %i.mo, ptr %i.mk, align 8, !tbaa !270
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.am:                                            ; preds = %._crit_edge.i.i.i122.thread1054, %._crit_edge.i.i.i122.thread, %._crit_edge.i.i.i122
  %i.mp = phi ptr [ %i.mk, %._crit_edge.i.i.i122.thread ], [ %i.mk, %._crit_edge.i.i.i122 ], [ %i.mb, %._crit_edge.i.i.i122.thread1054 ]
  %i.mq = phi ptr [ %i.mf, %._crit_edge.i.i.i122.thread ], [ %i.mf, %._crit_edge.i.i.i122 ], [ getelementptr inbounds nuw (i8, ptr @_ZL17ElfObjectFileType, i64 64), %._crit_edge.i.i.i122.thread1054 ]
  %i.mr = phi i64 [ %i.mi, %._crit_edge.i.i.i122.thread ], [ %i.mi, %._crit_edge.i.i.i122 ], [ 11, %._crit_edge.i.i.i122.thread1054 ]
  %i.ms = phi ptr [ %i.mm, %._crit_edge.i.i.i122.thread ], [ %i.mk, %._crit_edge.i.i.i122 ], [ %i.mb, %._crit_edge.i.i.i122.thread1054 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr nonnull align 1 %i.mq, i64 %i.mr, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.al, %bb.am
  %i.mt = phi ptr [ %i.mk, %bb.al ], [ %i.mp, %bb.am ] ; 8 uses
  %i.mu = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !16611 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !269, !alias.scope !16611
  %i.mw = load ptr, ptr %17, align 8, !tbaa !349, !alias.scope !16611
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 0, ptr %i.mx, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31, !noalias !16611
  %i.my = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.mz = icmp eq ptr %i.my, %i.as
  %i.na = load ptr, ptr %17, align 8, !tbaa !349  ; 5 uses
  %i.nb = icmp eq ptr %i.na, %i.mt                ; 2 uses
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.an, label %.thread.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !269 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nd)
  switch i64 %i.nc, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !270
  store i8 %i.ne, ptr %i.my, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.nf = load i64, ptr %i.mv, align 8, !tbaa !269 ; 2 uses
  store i64 %i.nf, ptr %i.at, align 8, !tbaa !269
  %i.ng = load ptr, ptr %7, align 8, !tbaa !349
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nf
  store i8 0, ptr %i.nh, align 1, !tbaa !270
  %.pre.i127 = load ptr, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

.thread.i129:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.ni = load i64, ptr %i.mv, align 8, !tbaa !269
  store i64 %i.ni, ptr %i.at, align 8, !tbaa !269
  %i.nj = load i64, ptr %i.mt, align 8, !tbaa !270
  store i64 %i.nj, ptr %i.as, align 8, !tbaa !270
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123
  %i.nk = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.nl = load i64, ptr %i.mv, align 8, !tbaa !269
  store i64 %i.nl, ptr %i.at, align 8, !tbaa !269
  %i.nm = load i64, ptr %i.mt, align 8, !tbaa !270
  store i64 %i.nm, ptr %i.as, align 8, !tbaa !270
  %.not.i125 = icmp eq ptr %i.my, null
  br i1 %.not.i125, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124
  store ptr %i.my, ptr %17, align 8, !tbaa !349
  store i64 %i.nk, ptr %i.mt, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124, %.thread.i129
  store ptr %i.mt, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126, %bb.aq, %bb.ar
  %i.nn = phi ptr [ %i.my, %bb.aq ], [ %i.mt, %bb.ar ], [ %.pre.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126 ]
  store i64 0, ptr %i.mv, align 8, !tbaa !269
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE16printFileHeadersEv:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !270, !noalias !23455
  br label %._crit_edge.i

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.u, %bb.v
  %i.ic = load i64, ptr %i.n, align 8, !tbaa !340, !noalias !23455 ; 2 uses
  store i64 %i.ic, ptr %i.hh, align 8, !tbaa !269, !alias.scope !23455
  %i.id = load ptr, ptr %13, align 8, !tbaa !349, !alias.scope !23455
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store i8 0, ptr %i.ie, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31, !noalias !23455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31, !noalias !23455
  %i.if = load ptr, ptr %13, align 8, !tbaa !349
  %i.ig = load i64, ptr %i.hh, align 8, !tbaa !269
  %i.ih = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef %i.if, i64 noundef %i.ig) #31 ; 0 uses
  %i.ii = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hg
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.ik = load i64, ptr %i.hg, align 8, !tbaa !270
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.im, align 1
  %i.in = icmp eq i32 %.0.copyload.i.i.i, 16777216
  br i1 %i.in, label %bb.w, label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !371
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !372 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 10
  br i1 %i.iw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef nonnull @.str.80, i64 noundef 10) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.is, ptr noundef nonnull align 1 dereferenceable(10) @.str.80, i64 10, i1 false)
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !372
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 10
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit100

_ZN4llvm11raw_ostreamlsEPKc.exit100:              ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ja = load ptr, ptr %i.t, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !371
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !372 ; 2 uses
  %i.jf = icmp eq ptr %i.jc, %i.je
  br i1 %i.jf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ja, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  store i8 10, ptr %i.je, align 1
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !372
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit103

_ZN4llvm11raw_ostreamlsEPKc.exit103:              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr @_ZL8ElfOSABI, ptr %14, align 8, !tbaa !385
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 20, ptr %i.jj, align 8, !tbaa !386
  %i.jk = load i8, ptr %i.cf, align 1, !tbaa !270 ; 2 uses
  %i.jl = icmp ugt i8 %i.jk, 63
  br i1 %i.jl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit103
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %.0.copyload.i.i.i104 = load i16, ptr %i.jm, align 1
  %i.jn = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i104)
  switch i16 %i.jn, label %bb.ad [
    i16 40, label %.sink.split
    i16 224, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.ac
  %_ZL11ARMElfOSABI.sink = phi ptr [ @_ZL14AMDGPUElfOSABI, %bb.ac ], [ @_ZL11ARMElfOSABI, %bb.ab ]
  %.sink = phi i64 [ 3, %bb.ac ], [ 2, %bb.ab ]
  store ptr %_ZL11ARMElfOSABI.sink, ptr %14, align 8, !tbaa !387
  store i64 %.sink, ptr %i.jj, align 8, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %_ZN4llvm11raw_ostreamlsEPKc.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @_ZNK4llvm11EnumStringsIjLj2EE13toStringOrHexIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext %i.jk, i32 noundef 1)
  %i.jo = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.jp = icmp eq ptr %i.jo, %i.as
  %i.jq = load ptr, ptr %15, align 8, !tbaa !349  ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.js = icmp eq ptr %i.jq, %i.jr                ; 2 uses
  br i1 %i.jp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %bb.ad
  br i1 %i.js, label %bb.ae, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105: ; preds = %bb.ad
  br i1 %i.js, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !269 ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 16
  call void @llvm.assume(i1 %i.jv)
  switch i64 %i.ju, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jw = load i8, ptr %i.jq, align 1, !tbaa !270
  store i8 %i.jw, ptr %i.jo, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jq, i64 %i.ju, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.jx = load i64, ptr %i.jt, align 8, !tbaa !269 ; 2 uses
  store i64 %i.jx, ptr %i.at, align 8, !tbaa !269
  %i.jy = load ptr, ptr %7, align 8, !tbaa !349
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx
  store i8 0, ptr %i.jz, align 1, !tbaa !270
  %.pre.i109 = load ptr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  store ptr %i.jq, ptr %7, align 8, !tbaa !349
  %i.ka = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kb = load <2 x i64>, ptr %i.ka, align 8, !tbaa !270
  store <2 x i64> %i.kb, ptr %i.at, align 8, !tbaa !270
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105
  %i.kc = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.jq, ptr %7, align 8, !tbaa !349
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ke = load <2 x i64>, ptr %i.kd, align 8, !tbaa !270
  store <2 x i64> %i.ke, ptr %i.at, align 8, !tbaa !270
  %.not.i107 = icmp eq ptr %i.jo, null
  br i1 %.not.i107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106
  store ptr %i.jo, ptr %15, align 8, !tbaa !349
  store i64 %i.kc, ptr %i.jr, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106, %.thread.i111
  store ptr %i.jr, ptr %15, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.ah, %bb.ai
  %i.kf = phi ptr [ %i.jo, %bb.ah ], [ %i.jr, %bb.ai ], [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.kg, align 8, !tbaa !269
  store i8 0, ptr %i.kf, align 1, !tbaa !270
  %i.kh = load ptr, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !270
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.km = load ptr, ptr %i.t, align 8, !tbaa !1624, !nonnull !248, !align !338
  %i.kn = load ptr, ptr %7, align 8, !tbaa !349
  %i.ko = load i64, ptr %i.at, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.km, ptr nonnull @.str.81, i64 7, ptr %i.kn, i64 %i.ko)
  %i.kp = load ptr, ptr %i.t, align 8, !tbaa !1624, !nonnull !248, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.kq = load i8, ptr %i.ck, align 1, !tbaa !270 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23456)
  %i.kr = icmp ult i8 %i.kq, 10
  %i.ks = icmp ult i8 %i.kq, 100
  %. = select i1 %i.ks, i32 2, i32 3              ; 2 uses
  %i.kt = zext nneg i32 %. to i64
  %i.ku = select i1 %i.kr, i64 1, i64 %i.kt       ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.kv, ptr %16, align 8, !tbaa !268, !alias.scope !23456
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.ku, i8 noundef signext 45) #31
  %i.kw = load ptr, ptr %16, align 8, !tbaa !349, !alias.scope !23456 ; 4 uses
  %i.kx = icmp ugt i8 %i.kq, 99
  br i1 %i.kx, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ky = urem i8 %i.kq, 100
  %i.kz = shl nuw i8 %i.ky, 1
  %i.la = udiv i8 %i.kq, 100
  %i.lb = zext i8 %i.kz to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !270, !noalias !23456
  %i.lf = getelementptr i8, ptr %i.kw, i64 %i.ku
  %i.lg = getelementptr i8, ptr %i.lf, i64 -1
  store i8 %i.le, ptr %i.lg, align 1, !tbaa !270
  %i.lh = load i8, ptr %i.lc, align 2, !tbaa !270, !noalias !23456
  %i.li = zext nneg i32 %. to i64
  %i.lj = getelementptr i8, ptr %i.kw, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 -2
  store i8 %i.lh, ptr %i.lk, align 1, !tbaa !270
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ll = icmp ugt i8 %i.kq, 9
  br i1 %i.ll, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.lm = shl nuw i8 %i.kq, 1
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !270, !noalias !23456
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !270
  %i.ls = load i8, ptr %i.lo, align 2, !tbaa !270, !noalias !23456
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i1048 = phi i8 [ %i.la, %._crit_edge.i.i.thread ], [ %i.kq, %._crit_edge.i.i ]
  %i.lt = or disjoint i8 %.0.lcssa.i.i1048, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.aj, %bb.ak
  %storemerge.i.i = phi i8 [ %i.lt, %bb.ak ], [ %i.ls, %bb.aj ]
  store i8 %storemerge.i.i, ptr %i.kw, align 1, !tbaa !270
  %i.lu = load ptr, ptr %16, align 8, !tbaa !349
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !269
  call fastcc void @_ZL11printFieldsRN4llvm21formatted_raw_ostreamENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(105) %i.kp, ptr nonnull @.str.82, i64 12, ptr %i.lu, i64 %i.lw)
  %i.lx = load ptr, ptr %16, align 8, !tbaa !349  ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kv
  br i1 %i.ly, label %.lr.ph.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.lz = load i64, ptr %i.kv, align 8, !tbaa !270
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #32
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.mb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.016.0.copyload = load i16, ptr %i.mb, align 1, !tbaa !270 ; 5 uses
  %i.mc = call noundef i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload) ; 5 uses
  %i.md = call i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload) ; 2 uses
  %i.me = icmp ult i16 %i.md, 5
  br i1 %i.me, label %switch.lookup, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread

switch.lookup:                                    ; preds = %.lr.ph.i119
  %i.mf = zext nneg i16 %i.md to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_113LLVMELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE16printFileHeadersEv.1588, i64 %i.mf
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %switch.load, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !389
  %i.mi = zext i16 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %switch.load, i64 5
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !270 ; 4 uses
  %i.mm = zext i8 %i.ml to i64                    ; 2 uses
  %i.mn = icmp eq i8 %i.ml, 0
  br i1 %i.mn, label %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread, label %bb.al

bb.al:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !23457)
  %i.mo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.mo, ptr %17, align 8, !tbaa !268, !alias.scope !23457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31, !noalias !23457
  store i64 %i.mm, ptr %i.m, align 8, !tbaa !340, !noalias !23457
  %i.mp = icmp ugt i8 %i.ml, 15
  br i1 %i.mp, label %._crit_edge.i.i.i122.thread, label %._crit_edge.i.i.i122

._crit_edge.i.i.i122.thread:                      ; preds = %bb.al
  %i.mq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #31 ; 2 uses
  store ptr %i.mq, ptr %17, align 8, !tbaa !349, !alias.scope !23457
  %i.mr = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !23457
  store i64 %i.mr, ptr %i.mo, align 8, !tbaa !270, !alias.scope !23457
  br label %bb.an

._crit_edge.i.i.i122:                             ; preds = %bb.al
  %cond = icmp eq i8 %i.ml, 1
  br i1 %cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i122
  %i.ms = load i8, ptr %i.mj, align 1, !tbaa !270
  store i8 %i.ms, ptr %i.mo, align 8, !tbaa !270
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.an:                                            ; preds = %._crit_edge.i.i.i122.thread, %._crit_edge.i.i.i122
  %i.mt = phi ptr [ %i.mq, %._crit_edge.i.i.i122.thread ], [ %i.mo, %._crit_edge.i.i.i122 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr nonnull align 1 %i.mj, i64 %i.mm, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.am, %bb.an
  %i.mu = load i64, ptr %i.m, align 8, !tbaa !340, !noalias !23457 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !269, !alias.scope !23457
  %i.mw = load ptr, ptr %17, align 8, !tbaa !349, !alias.scope !23457
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 0, ptr %i.mx, align 1, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31, !noalias !23457
  %i.my = load ptr, ptr %7, align 8, !tbaa !349   ; 6 uses
  %i.mz = icmp eq ptr %i.my, %i.as
  %i.na = load ptr, ptr %17, align 8, !tbaa !349  ; 5 uses
  %i.nb = icmp eq ptr %i.na, %i.mo                ; 2 uses
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.ao, label %.thread.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.nb, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !269 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nd)
  switch i64 %i.nc, label %bb.aq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !270
  store i8 %i.ne, ptr %i.my, align 1, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nf = load i64, ptr %i.mv, align 8, !tbaa !269 ; 2 uses
  store i64 %i.nf, ptr %i.at, align 8, !tbaa !269
  %i.ng = load ptr, ptr %7, align 8, !tbaa !349
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nf
  store i8 0, ptr %i.nh, align 1, !tbaa !270
  %.pre.i127 = load ptr, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

.thread.i129:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i128
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.ni = load <2 x i64>, ptr %i.mv, align 8, !tbaa !270
  store <2 x i64> %i.ni, ptr %i.at, align 8, !tbaa !270
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i123
  %i.nj = load i64, ptr %i.as, align 8, !tbaa !270
  store ptr %i.na, ptr %7, align 8, !tbaa !349
  %i.nk = load <2 x i64>, ptr %i.mv, align 8, !tbaa !270
  store <2 x i64> %i.nk, ptr %i.at, align 8, !tbaa !270
  %.not.i125 = icmp eq ptr %i.my, null
  br i1 %.not.i125, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124
  store ptr %i.my, ptr %17, align 8, !tbaa !349
  store i64 %i.nj, ptr %i.mo, align 8, !tbaa !270
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i124, %.thread.i129
  store ptr %i.mo, ptr %17, align 8, !tbaa !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126, %bb.ar, %bb.as
  %i.nl = phi ptr [ %i.my, %bb.ar ], [ %i.mo, %bb.as ], [ %.pre.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i126 ]
  store i64 0, ptr %i.mv, align 8, !tbaa !269
  store i8 0, ptr %i.nl, align 1, !tbaa !270
  %i.nm = load ptr, ptr %17, align 8, !tbaa !349  ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.mo
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130
  %i.no = load i64, ptr %i.mo, align 8, !tbaa !270
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.cc

_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread: ; preds = %.lr.ph.i119, %switch.lookup
  %i.nq = icmp ugt i16 %i.mc, -257
  br i1 %i.nq, label %bb.at, label %bb.bf

bb.at:                                            ; preds = %_ZNK4llvm11EnumStringsIjLj2EE8toStringINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE0ELm1ELm1EEEEENS_9StringRefET_j.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !23458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31, !noalias !23458
  %i.nr = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %.not689 = icmp eq i16 %.sroa.016.0.copyload, 0
end_hunk_3
