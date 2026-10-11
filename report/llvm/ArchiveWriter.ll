Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ArchiveWriter?download=true
inline.NumInlined: 2900
inline.NumDeleted: 1330
begin_hunk_0_@_ZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEE:bb.a
  %i.ib = icmp eq i32 %i.ia, 3
  %i.ic = select i1 %i.hz, i1 %i.ib, i1 false
  %i.id = load ptr, ptr %21, align 8, !tbaa !56   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.gx
  br i1 %i.ie, label %_ZN4llvm6TripleD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.if = load i64, ptr %i.gx, align 8, !tbaa !55
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #22
  br label %_ZN4llvm6TripleD2Ev.exit.i

_ZN4llvm6TripleD2Ev.exit.i:                       ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %.pre.i286 = load i8, ptr %i.gu, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvm6TripleD2Ev.exit.i, %bb.aj
  %i.ih = phi i8 [ %.pre.i286, %_ZN4llvm6TripleD2Ev.exit.i ], [ %i.hw, %bb.aj ]
  %.0.i = phi i1 [ %i.ic, %_ZN4llvm6TripleD2Ev.exit.i ], [ false, %bb.aj ]
  %i.ii = trunc i8 %i.ih to i1
  %i.ij = load ptr, ptr %19, align 8, !tbaa !39   ; 5 uses
  br i1 %i.ii, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ik = icmp eq ptr %i.ij, %i.gy
  br i1 %i.ik, label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i: ; preds = %bb.am
  %i.il = load i64, ptr %i.gy, align 8, !tbaa !55
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #22
  br label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

bb.an:                                            ; preds = %bb.al
  %.not.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i, label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.an
  %i.in = load ptr, ptr %i.ij, align 8, !tbaa !48
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.ij) #21, !inline_history !340
  br label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %_ZL14isAnyArm64COFFRN4llvm6object12SymbolicFileE.exit

_ZL14isAnyArm64COFFRN4llvm6object12SymbolicFileE.exit: ; preds = %bb.ab, %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.i, %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread.i, %bb.ah, %bb.ai, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %.1.i = phi i1 [ false, %bb.ab ], [ %i.ho, %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread.i ], [ %.0.i, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ], [ true, %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.i ], [ true, %bb.ah ], [ %i.hv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.iq = zext i1 %.1.i to i8
  br label %bb.ao

bb.ao:                                            ; preds = %_ZL14isAnyArm64COFFRN4llvm6object12SymbolicFileE.exit, %bb.aa
  %.1206 = phi i8 [ 1, %bb.aa ], [ %i.iq, %_ZL14isAnyArm64COFFRN4llvm6object12SymbolicFileE.exit ] ; 2 uses
  %i.ir = trunc nuw i8 %.0202120 to i1
  br i1 %i.ir, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.is = load ptr, ptr %i.gz, align 8, !tbaa !50
  %i.it = call fastcc noundef zeroext i1 @_ZL10isECObjectRN4llvm6object12SymbolicFileE(ptr noundef nonnull align 8 dereferenceable(48) %i.is)
  %i.iu = zext i1 %i.it to i8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1203 = phi i8 [ 1, %bb.ao ], [ %i.iu, %bb.ap ] ; 2 uses
  %i.iv = and i8 %.1203, %.1206
  %or.cond.not = icmp eq i8 %i.iv, 0
  br i1 %or.cond.not, label %bb.ar, label %.loopexit.sink.split

bb.ar:                                            ; preds = %bb.z, %bb.aq
  %.2207.ph = phi i8 [ %.1206, %bb.aq ], [ %.0205119, %bb.z ]
  %.2204.ph = phi i8 [ %.1203, %bb.aq ], [ %.0202120, %bb.z ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.015.0118, i64 144 ; 2 uses
  %.not74 = icmp eq ptr %i.iw, %.val
  br i1 %.not74, label %.loopexit, label %bb.z

.loopexit.sink.split:                             ; preds = %bb.aq, %bb.x
  %.sink = phi i8 [ %.sroa.038.0.extract.trunc, %bb.x ], [ 1, %bb.aq ]
  store i8 %.sink, ptr %7, align 8, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %.loopexit.sink.split, %bb.y, %._crit_edge116
  %i.ix = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.val244123 = load ptr, ptr %32, align 8, !tbaa !128 ; 8 uses
  %.val245124 = load ptr, ptr %i.ix, align 8, !tbaa !137 ; 6 uses
  %.not237125.not = icmp eq ptr %.val245124, %.val244123
  br i1 %.not237125.not, label %_ZN4llvm11raw_ostreamlsEc.exit338, label %.lr.ph134

.lr.ph134:                                        ; preds = %.loopexit
  %i.iy = ptrtoint ptr %.val245124 to i64
  %i.iz = ptrtoint ptr %.val244123 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = sdiv exact i64 %i.ja, 144               ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %48, i64 40
  %i.je = getelementptr inbounds nuw i8, ptr %48, i64 44
  %i.jf = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.jh = add i32 %3, -3
  %i.ji = icmp ult i32 %i.jh, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 8 uses
  %i.jk = icmp eq i32 %3, 7                       ; 3 uses
  %_ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE14ZOSPaddingData._ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE11PaddingData = select i1 %i.jk, ptr @_ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE14ZOSPaddingData, ptr @_ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE11PaddingData
  %.off.i.i = add i32 %3, -2
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.7.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.9.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.jl = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %33, i64 12 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.jr = icmp eq i32 %3, 5
  %.not236 = icmp eq i32 %6, 0
  %i.js = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %55, i64 33
  %i.jw = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph134, %bb.di
  %i.kb = phi i64 [ 0, %.lr.ph134 ], [ %i.zv, %bb.di ]
  %.0131 = phi i64 [ %i.c, %.lr.ph134 ], [ %i.zt, %bb.di ] ; 4 uses
  %.0185130 = phi i1 [ false, %.lr.ph134 ], [ %.3, %bb.di ] ; 2 uses
  %.0191129 = phi i32 [ 0, %.lr.ph134 ], [ %spec.select, %bb.di ] ; 2 uses
  %.0193128 = phi i32 [ 0, %.lr.ph134 ], [ %i.zu, %bb.di ] ; 5 uses
  %.0194127 = phi i64 [ 0, %.lr.ph134 ], [ %.3197, %bb.di ] ; 2 uses
  %.0199126 = phi i64 [ 0, %.lr.ph134 ], [ %.1200, %bb.di ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [144 x i8], ptr %.val244123, i64 %i.kb ; 19 uses
  %i.kd = zext i32 %.0191129 to i64
  %i.ke = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %i.kd ; 17 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 136
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !38
  %.not233 = icmp eq ptr %i.kg, null
  %i.kh = zext i1 %.not233 to i32
  %spec.select = add i32 %.0191129, %i.kh         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  store i32 0, ptr %i.jc, align 8, !tbaa !74
  store i8 0, ptr %i.jd, align 8, !tbaa !75
  store i32 1, ptr %i.je, align 4, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %48, align 8, !tbaa !48
  store ptr %i.ki, ptr %i.jg, align 8, !tbaa !97
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %48, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 64 ; 4 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !102 ; 2 uses
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  store ptr @.str.1, ptr %i.kl, align 8, !tbaa !23
  store i64 0, ptr %i.kj, align 8, !tbaa !25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.km = phi i64 [ 0, %bb.at ], [ %i.kk, %bb.as ] ; 2 uses
  %i.kn = add i64 %i.km, 7
  %i.ko = and i64 %i.kn, 4294967288
  %i.kp = sub i64 %i.ko, %i.km
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = select i1 %i.ji, i32 %i.kq, i32 0       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 112
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !54 ; 3 uses
  %.not234 = icmp eq i64 %i.kt, 0
  br i1 %.not234, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kc, i64 104
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !56
  store ptr %i.kv, ptr %49, align 8, !tbaa !101
  store i64 %i.kt, ptr %i.jj, align 8, !tbaa !102
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false), !tbaa.struct !126
  %.pre141 = load i64, ptr %i.jj, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kx = phi i64 [ %.pre141, %bb.aw ], [ %i.kt, %bb.av ] ; 2 uses
  %i.ky = load i64, ptr %i.kj, align 8, !tbaa !102
  %i.kz = zext i32 %i.kr to i64                   ; 2 uses
  %i.la = add i64 %i.ky, %i.kz
  %i.lb = icmp ugt i64 %i.kx, 16
  %i.lc = select i1 %i.jk, i1 %i.lb, i1 false
  %spec.select68 = select i1 %i.lc, i64 %i.kx, i64 0
  %.0190 = add i64 %i.la, %spec.select68          ; 2 uses
  %i.ld = add i64 %.0190, 1
  %56 = and i64 %i.ld, 4294967294
  %57 = sub i64 %56, %.0190
  %58 = trunc i64 %57 to i32
  %i.le = add i32 %i.kr, %58
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kc, i64 72
  store ptr %_ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE14ZOSPaddingData._ZZL17computeMemberDataRN4llvm11raw_ostreamES1_NS_6object7Archive4KindEbbNS_17SymtabWritingModeEP6SymMapRNS_11LLVMContextENS_8ArrayRefINS_16NewArchiveMemberEEESt8optionalIbENS_12function_refIFvNS_5ErrorEEEEE11PaddingData, ptr %i.lg, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.kc, i64 80 ; 2 uses
  store i64 %i.lf, ptr %.sroa.4.0..sroa_idx9, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  br i1 %i.gq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lh = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN4llvm9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(16) %49) ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !57 ; 2 uses
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 4, !tbaa !57
  %i.lk = zext i32 %i.li to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %storemerge = phi i64 [ %i.lm, %bb.az ], [ %i.lk, %bb.ay ] ; 4 uses
  store i64 %storemerge, ptr %50, align 8, !tbaa !25
  %i.ln = add i64 %i.kk, %i.kz                    ; 8 uses
  %i.lo = icmp ugt i64 %i.ln, 9999999999
  br i1 %i.lo, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.lp = load ptr, ptr %49, align 8, !tbaa !101, !noalias !386 ; 3 uses
  %.not.i288 = icmp eq ptr %i.lp, null
  br i1 %.not.i288, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lq = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  store ptr %i.lq, ptr %53, align 8, !tbaa !52, !alias.scope !386
  %i.lr = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 0, ptr %i.lr, align 8, !tbaa !54, !alias.scope !386
  store i8 0, ptr %i.lq, align 8, !tbaa !55, !alias.scope !386
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ls = load i64, ptr %i.jj, align 8, !tbaa !102, !noalias !386 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 3 uses
  store ptr %i.lt, ptr %53, align 8, !tbaa !52, !alias.scope !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !386
  store i64 %i.ls, ptr %i.a, align 8, !tbaa !25, !noalias !386
  %i.lu = icmp ugt i64 %i.ls, 15
  br i1 %i.lu, label %bb.be, label %._crit_edge.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.lv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.lv, ptr %53, align 8, !tbaa !56, !alias.scope !386
  %i.lw = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !386
  store i64 %i.lw, ptr %i.lt, align 8, !tbaa !55, !alias.scope !386
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.be, %bb.bd
  %i.lx = phi ptr [ %i.lv, %bb.be ], [ %i.lt, %bb.bd ] ; 2 uses
  switch i64 %i.ls, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  %i.ly = load i8, ptr %i.lp, align 1, !tbaa !55
  store i8 %i.ly, ptr %i.lx, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.bg:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr nonnull align 1 %i.lp, i64 %i.ls, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i
  %i.lz = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !386 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !54, !alias.scope !386
  %i.mb = load ptr, ptr %53, align 8, !tbaa !56, !alias.scope !386
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lz
  store i8 0, ptr %i.mc, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !386
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.md = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 5) #21, !noalias !387 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 5 uses
  store ptr %i.me, ptr %52, align 8, !tbaa !52, !alias.scope !387
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !56 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 5 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

bb.bh:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !54 ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 16
  call void @llvm.assume(i1 %i.mk)
  %i.ml = add nuw nsw i64 %i.mj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.me, ptr noundef nonnull align 8 dereferenceable(1) %i.mg, i64 %i.ml, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.mf, ptr %52, align 8, !tbaa !56, !alias.scope !387
  %i.mm = load i64, ptr %i.mg, align 8, !tbaa !55
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !55, !alias.scope !387
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %.pre.i290 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !54
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  %i.mn = phi i64 [ %i.mj, %bb.bh ], [ %.pre.i290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !54, !alias.scope !387
  store ptr %i.mg, ptr %i.md, align 8, !tbaa !56
  store i64 0, ptr %i.mo, align 8, !tbaa !54
  store i8 0, ptr %i.mg, align 8, !tbaa !55
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.mq = add i64 %i.mn, -4611686018427387885
  %i.mr = icmp ult i64 %i.mq, 19
  br i1 %i.mr, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.bi:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24, !noalias !388
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ms = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @.str.19, i64 noundef 19) #21, !noalias !388 ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 5 uses
  store ptr %i.mt, ptr %51, align 8, !tbaa !52, !alias.scope !388
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !56 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 5 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !54 ; 3 uses
  %i.mz = icmp ult i64 %i.my, 16
  call void @llvm.assume(i1 %i.mz)
  %i.na = add nuw nsw i64 %i.my, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mt, ptr noundef nonnull align 8 dereferenceable(1) %i.mv, i64 %i.na, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.mu, ptr %51, align 8, !tbaa !56, !alias.scope !388
  %i.nb = load i64, ptr %i.mv, align 8, !tbaa !55
  store i64 %i.nb, ptr %i.mt, align 8, !tbaa !55, !alias.scope !388
  %.phi.trans.insert.i292 = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %.pre.i293 = load i64, ptr %.phi.trans.insert.i292, align 8, !tbaa !54
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  %i.nc = phi i64 [ %i.my, %bb.bj ], [ %.pre.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %i.nc, ptr %i.ne, align 8, !tbaa !54, !alias.scope !388
  store ptr %i.mv, ptr %i.ms, align 8, !tbaa !56
  store i64 0, ptr %i.nd, align 8, !tbaa !54
  store i8 0, ptr %i.mv, align 8, !tbaa !55
  %i.nf = load ptr, ptr %52, align 8, !tbaa !56   ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.me
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.nh = load i64, ptr %i.me, align 8, !tbaa !55
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  %i.nj = load ptr, ptr %53, align 8, !tbaa !56   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZN4llvm5ErrorD2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !55
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #22
  br label %_ZN4llvm5ErrorD2Ev.exit300

_ZN4llvm5ErrorD2Ev.exit300:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  %i.no = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !389 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !389
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 4, ptr %i.np, align 8, !tbaa !61, !noalias !389
  %i.nq = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.nq, align 1, !tbaa !62, !noalias !389
  store ptr %51, ptr %18, align 8, !tbaa !55, !noalias !389
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.no, ptr noundef nonnull align 8 dereferenceable(34) %18, i32 noundef 3) #21, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !389
  %i.nr = load i8, ptr %i.jx, align 8
end_hunk_0
begin_hunk_1_@_ZL23printRestOfMemberHeaderRN4llvm11raw_ostreamERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEjjjm:bb.a
  %.neg7.i11 = trunc i64 %.neg.i10 to i32
  %i.au = add i32 %.neg7.i11, 6
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.au) #21 ; 0 uses
  %i.aw = urem i32 %2, 1000000
  %i.ax = load ptr, ptr %0, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i64 %i.az(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !7
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = zext nneg i32 %i.aw to i64
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.bf) #21 ; 0 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !7
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %.neg13 = add i64 %i.ba, %i.bd
  %i.bp = add i64 %i.bk, %i.be
  %i.bq = add i64 %i.bp, %i.bn
  %i.br = sub i64 %.neg13, %i.bq
  %.neg.i13 = add i64 %i.br, %i.bo
  %.neg7.i14 = trunc i64 %.neg.i13 to i32
  %i.bs = add i32 %.neg7.i14, 6
  %i.bt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !6
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  store ptr @.str.27, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %3, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %6, ptr %5, align 8, !tbaa !171
  %i.cc = ptrtoint ptr %5 to i64
  %i.cd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.cc) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ce = load ptr, ptr %0, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !6
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %.neg18 = add i64 %i.bx, %i.ca
  %i.cm = add i64 %i.ch, %i.cb
  %i.cn = add i64 %i.cm, %i.ck
  %i.co = sub i64 %.neg18, %i.cn
  %.neg.i15 = add i64 %i.co, %i.cl
  %.neg6.i = trunc i64 %.neg.i15 to i32
  %i.cp = add i32 %.neg6.i, 8
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cp) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cr = load ptr, ptr %0, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !2
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %4) #21 ; 0 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !2
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %.neg23 = add i64 %i.cu, %i.cx
  %i.di = add i64 %i.dd, %i.cy
  %i.dj = add i64 %i.di, %i.dg
  %i.dk = sub i64 %.neg23, %i.dj
  %.neg.i17 = add i64 %i.dk, %i.dh
  %.neg7.i18 = trunc i64 %.neg.i17 to i32
  %i.dl = add i32 %.neg7.i18, 10
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.dl) #21 ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !100
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ult i64 %i.ds, 2
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.28, i64 noundef 2) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 2656, ptr %i.dp, align 1
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store ptr %i.dw, ptr %i.e, align 8, !tbaa !98
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare { i32, ptr } @_ZN4llvm15ConverterEBCDIC15convertToEBCDICENS_9StringRefERNS_15SmallVectorImplIcEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #1

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630, !nonnull !161, !align !186 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !635
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.f) #21
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  tail call void @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZL20computeSymbolMapSizemR6SymMapPj(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.247", align 8    ; 10 uses
  %i.b = shl i64 %0, 2
  %i.c = add i64 %i.b, 8                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not1718 = icmp eq ptr %i.e, %i.f
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit, %bb.a
  %.0.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.aa, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ] ; 3 uses
  %4 = add i64 %.0.lcssa, 1
  %i.j = and i64 %4, -2
  %5 = sub i64 %i.j, %.0.lcssa                    ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.g, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit
  %.020 = phi i64 [ %i.c, %.lr.ph ], [ %i.aa, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ]
  %.sroa.014.019 = phi ptr [ %i.e, %.lr.ph ], [ %i.ag, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 32
  store ptr %i.g, ptr %3, align 8, !tbaa !52
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.n, ptr %i.a, align 8, !tbaa !25
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !56
  %i.q = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.q, ptr %i.g, align 8, !tbaa !55
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !55
  store i8 %i.s, ptr %i.r, align 1, !tbaa !55
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store i64 %i.t, ptr %i.h, align 8, !tbaa !54
  %i.u = load ptr, ptr %3, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 64
  %i.x = load i16, ptr %i.w, align 8, !tbaa !124
  store i16 %i.x, ptr %i.i, align 8, !tbaa !124
  %i.y = load i64, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %i.z = add i64 %.020, 3
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  %i.ad = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !55
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #22
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ag = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.019) #25 ; 2 uses
  %.not17 = icmp eq ptr %i.ag, %i.f
  br i1 %.not17, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.ah = trunc i64 %5 to i32
  store i32 %i.ah, ptr %2, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %6 = and i64 %5, 4294967295
  %i.ai = add i64 %6, %.0.lcssa
  ret i64 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZL20computeECSymbolsSizeR6SymMapPj(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::pair.247", align 8    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not1516 = icmp eq ptr %i.c, %i.d
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit, %bb.a
  %.0.lcssa = phi i64 [ 4, %bb.a ], [ %i.y, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ] ; 3 uses
  %3 = add i64 %.0.lcssa, 1
  %i.h = and i64 %3, -2
  %4 = sub i64 %i.h, %.0.lcssa                    ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit
  %.018 = phi i64 [ 4, %.lr.ph ], [ %i.y, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ]
  %.sroa.012.017 = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 32
  store ptr %i.e, ptr %2, align 8, !tbaa !52
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.l, ptr %i.a, align 8, !tbaa !25
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !56
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.o, ptr %i.e, align 8, !tbaa !55
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !55
  store i8 %i.q, ptr %i.p, align 1, !tbaa !55
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !tbaa !54
  %i.s = load ptr, ptr %2, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 64
  %i.v = load i16, ptr %i.u, align 8, !tbaa !124
  store i16 %i.v, ptr %i.g, align 8, !tbaa !124
  %i.w = load i64, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.x = add i64 %.018, 3
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  %i.ab = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEC2ERKS7_.exit
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !55
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ae = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.017) #25 ; 2 uses
  %.not15 = icmp eq ptr %i.ae, %i.d
  br i1 %.not15, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.af = trunc i64 %4 to i32
  store i32 %i.af, ptr %1, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %5 = and i64 %4, 4294967295
  %i.ag = add i64 %5, %.0.lcssa
  ret i64 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22writeSymbolTableHeaderRN4llvm11raw_ostreamENS_6object7Archive4KindEbmmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %8 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %9 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %.off.i = add i32 %1, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit, label %bb.c

_ZL11is64BitKindN4llvm6object7Archive4KindE.exit: ; preds = %bb.a
  %i.a = icmp eq i32 %1, 4                        ; 2 uses
  %spec.select = select i1 %i.a, ptr @.str.31, ptr @.str.32
  %i.b = load ptr, ptr %0, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %i.e, %i.j
  %i.m = sub i64 %i.l, %i.k
  %i.n = select i1 %i.a, i64 12, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  br i1 %2, label %_ZL3nowb.exit, label %bb.b

bb.b:                                             ; preds = %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit
  %i.o = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #21
  %i.p = sdiv i64 %i.o, 1000000000
  br label %_ZL3nowb.exit

_ZL3nowb.exit:                                    ; preds = %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit ]
  store i64 %.sroa.01.0.i, ptr %7, align 8
  call fastcc void @_ZL20printBSDMemberHeaderRN4llvm11raw_ostreamEmNS_9StringRefERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEjjjm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.m, ptr nonnull %spec.select, i64 %i.n, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 6, label %bb.d
    i32 7, label %bb.f
    i32 0, label %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27
    i32 1, label %bb.i
    i32 5, label %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  br i1 %2, label %_ZL3nowb.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #21
  %i.r = sdiv i64 %i.q, 1000000000
  br label %_ZL3nowb.exit23

_ZL3nowb.exit23:                                  ; preds = %bb.d, %bb.e
  %.sroa.01.0.i22 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.d ]
  store i64 %.sroa.01.0.i22, ptr %8, align 8
  call fastcc void @_ZL27printBigArchiveMemberHeaderRN4llvm11raw_ostreamENS_9StringRefERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEjjjmmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @.str.1, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  br i1 %2, label %_ZL3nowb.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #21
  %i.t = sdiv i64 %i.s, 1000000000
  br label %_ZL3nowb.exit25

_ZL3nowb.exit25:                                  ; preds = %bb.f, %bb.g
  %.sroa.01.0.i24 = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ]
  store i64 %.sroa.01.0.i24, ptr %9, align 8
  call fastcc void @_ZL20printZOSMemberHeaderRN4llvm11raw_ostreamENS_9StringRefERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEjjjm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @.str.32, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  unreachable

bb.i:                                             ; preds = %bb.c
  br label %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27

_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27: ; preds = %bb.c, %bb.c, %bb.i
  %i.u = phi ptr [ @.str.33, %bb.i ], [ @.str.1, %bb.c ], [ @.str.1, %bb.c ] ; 2 uses
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #21
  br i1 %2, label %_ZL3nowb.exit29, label %bb.j

bb.j:                                             ; preds = %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27
  %i.w = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #21
  %i.x = sdiv i64 %i.w, 1000000000
  br label %_ZL3nowb.exit29

_ZL3nowb.exit29:                                  ; preds = %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27, %bb.j
  %.sroa.01.0.i28 = phi i64 [ %i.x, %bb.j ], [ 0, %_ZL11is64BitKindN4llvm6object7Archive4KindE.exit27 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.u, ptr %6, align 8
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx5.i, align 8
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.26, ptr %.sroa.5.0..sroa_idx9.i, align 8
  %.sroa.7.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %.sroa.7.0..sroa_idx17.i, align 8
  %.sroa.9.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %.sroa.9.0..sroa_idx21.i, align 1
  %i.y = load ptr, ptr %0, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !637
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  %i.ai = load ptr, ptr %0, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %0) #21, !inline_history !637
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %.neg40 = add i64 %i.ab, %i.ag
  %i.aq = add i64 %i.al, %i.ah
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = sub i64 %.neg40, %i.ar
  %.neg.i.i = add i64 %i.as, %i.ap
  %.neg6.i.i = trunc i64 %.neg.i.i to i32
  %i.at = add i32 %.neg6.i.i, 16
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.at) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call fastcc void @_ZL23printRestOfMemberHeaderRN4llvm11raw_ostreamERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEEjjjm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.01.0.i28, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %_ZL3nowb.exit23, %_ZL3nowb.exit29, %_ZL3nowb.exit25, %_ZL3nowb.exit
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4lessIS5_ESaISt4pairIKS5_tEEE11try_emplaceIJRtEEES8_ISt17_Rb_tree_iteratorISA_EbERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.260", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.263", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
end_hunk_1
