inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc20BytecodeDisassembler24disassembleBigIntStorageERN4llvh11raw_ostreamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.dn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit60

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  store i8 10, ptr %i.dl, align 1
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.dp, ptr %i.g, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit60

_ZN4llvh11raw_ostreamlsEPKc.exit60:               ; preds = %bb.z, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !136

_ZN4llvh11raw_ostreamlsEPKc.exit31:               ; preds = %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes3hbcL36bigintMagnitudeToLengthLimitedStringB5cxx11EN4llvh8ArrayRefIhEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !25
  store i8 0, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call noundef i32 @_ZN6hermes6bigint8toStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIhEEh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i8 noundef zeroext 10) #18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.115) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !25
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = icmp eq i8 %i.h, 45
  %.neg = sext i1 %i.i to i64
  %i.j = add i64 %i.f, %.neg                      ; 2 uses
  %i.k = icmp ugt i64 %i.j, 16
  br i1 %i.k, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.l) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr null, ptr %i.m, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i8 0, ptr %i.n, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 353
  store i8 0, ptr %i.o, align 1, !tbaa !152
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !19
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 -24      ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %3, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !153
  %i.w = load ptr, ptr %3, align 8, !tbaa !19
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef null) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !19
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !19
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.aj, ptr noundef null) #18
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !19
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.l, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.aa, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 24, ptr %i.as, align 8, !tbaa !155
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.av, align 8, !tbaa !25
  store i8 0, ptr %i.au, align 8, !tbaa !7
  %i.aw = load ptr, ptr %3, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %3, i64 %i.ay
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.az, ptr noundef nonnull %i.ap) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !83, !alias.scope !159
  %i.bc = load ptr, ptr %0, align 8, !tbaa !21, !noalias !159 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 16) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !159
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !42, !noalias !159
  %i.bd = icmp ugt i64 %i.ba, 15
  br i1 %i.bd, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.d
  %i.be = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !21, !alias.scope !159
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !159
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !7, !alias.scope !159
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.d
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !7
  store i8 %i.bg, ptr %i.bb, align 8, !tbaa !7
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.bh = phi ptr [ %i.be, %._crit_edge.i.i.i.thread ], [ %i.bb, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bc, i64 %spec.select.i.i.i, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !159
  %.pre8 = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !159
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.bi = phi ptr [ %i.bb, %._crit_edge.i.i.i ], [ %i.bb, %bb.e ], [ %.pre8, %bb.f ]
  %i.bj = phi i64 [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !25, !alias.scope !159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !159
  %i.bm = load ptr, ptr %4, align 8, !tbaa !21
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.bm, i64 noundef %i.bn) #18 ; 2 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.116, i64 noundef 5) #18 ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.j) #18
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.117, i64 noundef 16) #18 ; 0 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bb
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bu = load i64, ptr %i.bb, align 8, !tbaa !7
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !83, !alias.scope !168
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !25, !alias.scope !168
  store i8 0, ptr %i.bw, align 8, !tbaa !7, !alias.scope !168
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !169, !noalias !168 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.bz, null
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %7 = load ptr, ptr %6, align 8, !noalias !168   ; 2 uses
  %8 = icmp ugt ptr %i.bz, %7
  %.08.i.i.i = select i1 %8, ptr %i.bz, ptr %7
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !170, !noalias !168 ; 2 uses
  %i.cc = ptrtoint ptr %.08.i.i.i to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cb, i64 noundef %i.ce) #18 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #18
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.h
  %i.cg = load ptr, ptr %0, align 8, !tbaa !21    ; 6 uses
  %i.ch = icmp eq ptr %i.cg, %i.b
  %i.ci = load ptr, ptr %5, align 8, !tbaa !21    ; 6 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw                ; 2 uses
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cj, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !25 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %.not21.i = icmp eq ptr %5, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !171

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ck, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !7
  store i8 %i.cm, ptr %i.cg, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cn = load i64, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  store i64 %i.cn, ptr %i.c, align 8, !tbaa !25
  %i.co = load ptr, ptr %0, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ci, ptr %0, align 8, !tbaa !21
  %i.cq = load <2 x i64>, ptr %i.bx, align 8, !tbaa !7
  store <2 x i64> %i.cq, ptr %i.c, align 8, !tbaa !7
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !7
  store ptr %i.ci, ptr %0, align 8, !tbaa !21
  %i.cs = load <2 x i64>, ptr %i.bx, align 8, !tbaa !7
  store <2 x i64> %i.cs, ptr %i.c, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cg, ptr %5, align 8, !tbaa !21
  store i64 %i.cr, ptr %i.bw, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bw, ptr %5, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.ct = phi ptr [ %i.cg, %bb.m ], [ %i.bw, %bb.n ], [ %i.ci, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bx, align 8, !tbaa !25
  store i8 0, ptr %i.ct, align 1, !tbaa !7
  %i.cu = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bw
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cw = load i64, ptr %i.bw, align 8, !tbaa !7
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cy = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cy, ptr %3, align 8, !tbaa !19
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.da = getelementptr i8, ptr %i.cy, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %3, i64 %i.db
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !19
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dd, ptr %i.aa, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !19
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.au
  br i1 %i.df, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.dg = load i64, ptr %i.au, align 8, !tbaa !7
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !19
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #18
  store ptr %i.q, ptr %3, align 8, !tbaa !19
  %i.di = load i64, ptr %i.s, align 8
  %i.dj = getelementptr inbounds i8, ptr %3, i64 %i.di
  store ptr %i.r, ptr %i.dj, align 8, !tbaa !19
  store i64 0, ptr %i.v, align 8, !tbaa !153
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleCJSModuleTableERN4llvh11raw_ostreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !42 ; 2 uses
  %i.c = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.c, label %_ZN4llvh11raw_ostreamlsEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 18
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.34, i64 noundef 18) #18 ; 0 uses
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.g, ptr noundef nonnull align 1 dereferenceable(18) @.str.34, i64 18, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store ptr %i.n, ptr %i.f, align 8, !tbaa !18
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i, 3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit30
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !14
  %.not.i = icmp ult ptr %i.p, %i.q
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.r = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.f, align 8, !tbaa !18
  store i8 10, ptr %i.p, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvh11raw_ostreamlsEc.exit30
  %.058 = phi ptr [ %i.ba, %_ZN4llvh11raw_ostreamlsEc.exit30 ], [ %.sroa.0.0.copyload.i, %.lr.ph.preheader ] ; 3 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 10
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.35, i64 noundef 10) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.h:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc21BytecodeSectionWalker18printSectionRangesEb:bb.a
  %i.bx = icmp ult i64 %i.bw, 3
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12
  %i.by = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i11, ptr noundef nonnull @.str.78, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit16

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit16

_ZN4llvh11raw_ostreamlsEPKc.exit16:               ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !19
  store ptr null, ptr %i.s, align 8, !tbaa !138
  store i8 0, ptr %i.t, align 8, !tbaa !151
  store i8 0, ptr %i.u, align 1, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %2, align 8, !tbaa !19
  %i.cb = load i64, ptr %i.y, align 8
  %i.cc = getelementptr inbounds i8, ptr %2, i64 %i.cb
  store ptr %i.x, ptr %i.cc, align 8, !tbaa !19
  store i64 0, ptr %i.z, align 8, !tbaa !153
  %i.cd = load ptr, ptr %2, align 8, !tbaa !19
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cg, ptr noundef null) #18
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !19
  %i.ch = load i64, ptr %i.ad, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.aa, i64 %i.ch
  store ptr %i.ac, ptr %i.ci, align 8, !tbaa !19
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.aa, i64 %i.cl
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cm, ptr noundef null) #18
  %i.cn = load i64, ptr %i.ag, align 8
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  store ptr %i.af, ptr %i.co, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.r, align 8, !tbaa !19
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.aa, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !19
  store i32 24, ptr %i.ak, align 8, !tbaa !155
  store ptr %i.am, ptr %i.al, align 8, !tbaa !83
  store i64 0, ptr %i.an, align 8, !tbaa !25
  store i8 0, ptr %i.am, align 8, !tbaa !7
  %i.cp = load ptr, ptr %2, align 8, !tbaa !19
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, ptr noundef nonnull %i.ah) #18
  br i1 %1, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit16
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.79, i64 noundef 2) #18 ; 0 uses
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24    ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %i.aa, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !346
  %i.da = and i32 %i.cz, -75
  %i.db = or disjoint i32 %i.da, 8
  store i32 %i.db, ptr %i.cy, align 8, !tbaa !347
  %i.dc = load i64, ptr %i.cv, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.aa, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 225 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !152, !range !283, !noundef !250
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 240
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !348 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !349
  %.not.i1.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i.i.i, label %bb.m, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di) #18
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef signext i8 %i.dn(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 32) #18, !inline_history !350 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.m, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.de, align 1, !tbaa !152
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.j, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  store i8 48, ptr %i.dp, align 8, !tbaa !151
  %i.dq = load ptr, ptr %i.ao, align 8, !tbaa !344
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ba
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !44
  %i.dt = load ptr, ptr %0, align 8, !tbaa !288
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.dw) #18 ; 6 uses
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.21, i64 noundef 2) #18 ; 0 uses
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.79, i64 noundef 2) #18 ; 0 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !19
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24    ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.dx, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !346
  %i.eg = and i32 %i.ef, -75
  %i.eh = or disjoint i32 %i.eg, 8
  store i32 %i.eh, ptr %i.ee, align 8, !tbaa !347
  %i.ei = load i64, ptr %i.eb, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.dx, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 225 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !152, !range !283, !noundef !250
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit21, label %bb.n

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 240
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !348 ; 5 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i17, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i18

bb.o:                                             ; preds = %bb.n
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i18: ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !349
  %.not.i1.i.i.i.i19 = icmp eq i8 %i.eq, 0
  br i1 %.not.i1.i.i.i.i19, label %bb.p, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i20

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i18
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eo) #18
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call noundef signext i8 %i.et(ptr noundef nonnull align 8 dereferenceable(570) %i.eo, i8 noundef signext 32) #18, !inline_history !350 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i20

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i20: ; preds = %bb.p, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i18
  store i8 1, ptr %i.ek, align 1, !tbaa !152
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit21

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit21: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 224
  store i8 48, ptr %i.ev, align 8, !tbaa !151
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit16
  %i.ew = load ptr, ptr %i.ao, align 8, !tbaa !344
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ba
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !44
  %i.ez = load ptr, ptr %0, align 8, !tbaa !288
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.fc) #18 ; 2 uses
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.21, i64 noundef 2) #18 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit21
  %.sink33 = phi ptr [ %i.fd, %bb.q ], [ %i.dx, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit21 ]
  %i.ff = load ptr, ptr %i.ap, align 8, !tbaa !344
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ba
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !44
  %i.fi = load ptr, ptr %0, align 8, !tbaa !288
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink33, i64 noundef %i.fl) #18
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.80, i64 noundef 2) #18 ; 0 uses
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !345, !nonnull !250, !align !251
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  store ptr %i.aq, ptr %3, align 8, !tbaa !83, !alias.scope !357
  store i64 0, ptr %i.ar, align 8, !tbaa !25, !alias.scope !357
  store i8 0, ptr %i.aq, align 8, !tbaa !7, !alias.scope !357
  %i.fp = load ptr, ptr %i.as, align 8, !tbaa !169, !noalias !357 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.fp, null
  br i1 %.not4.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %4 = load ptr, ptr %i.at, align 8, !noalias !357 ; 2 uses
  %5 = icmp ugt ptr %i.fp, %4
  %.08.i.i.i = select i1 %5, ptr %i.fp, ptr %4
  %i.fq = load ptr, ptr %i.au, align 8, !tbaa !170, !noalias !357 ; 2 uses
  %i.fr = ptrtoint ptr %.08.i.i.i to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.fq, i64 noundef %i.ft) #18 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #18
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.s, %bb.t
  %i.fv = load ptr, ptr %3, align 8, !tbaa !21
  %i.fw = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.fx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef %i.fv, i64 noundef %i.fw) #18 ; 0 uses
  %i.fy = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.aq
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ga = load i64, ptr %i.aq, align 8, !tbaa !7
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  store ptr %i.av, ptr %2, align 8, !tbaa !19
  %i.gc = load i64, ptr %i.ax, align 8
  %i.gd = getelementptr inbounds i8, ptr %2, i64 %i.gc
  store ptr %i.aw, ptr %i.gd, align 8, !tbaa !19
  store ptr %i.ay, ptr %i.aa, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !19
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.am
  br i1 %i.gf, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gg = load i64, ptr %i.am, align 8, !tbaa !7
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !19
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #18
  store ptr %i.w, ptr %2, align 8, !tbaa !19
  %i.gi = load i64, ptr %i.y, align 8
  %i.gj = getelementptr inbounds i8, ptr %2, i64 %i.gi
  store ptr %i.x, ptr %i.gj, align 8, !tbaa !19
  store i64 0, ptr %i.z, align 8, !tbaa !153
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.gk = add i32 %.023, 1                        ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = load ptr, ptr %i.o, align 8, !tbaa !339
  %i.gn = load ptr, ptr %i.n, align 8, !tbaa !341 ; 2 uses
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  %i.gs = icmp ugt i64 %i.gr, %i.gl
  br i1 %i.gs, label %bb.d, label %._crit_edge, !llvm.loop !358
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::hbc::JumpTargetsVisitor", align 8 ; 32 uses
  %4 = alloca %"class.hermes::hbc::PrettyDisassembleVisitor", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 17 uses
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 12 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !3
  br label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.k = icmp eq i8 %.pre, 0
  br i1 %i.k, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.thread, %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.o = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br i1 %i.o, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre78 = load i32, ptr %i.d, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread.i
  %i.p = phi i32 [ %.pre78, %._crit_edge ], [ %i.m, %.thread.i ]
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !197
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !197
  %i.w = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.d, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !211
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !359
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !359
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i2.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.j ], [ %i.ai, %bb.k ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.l, label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit, !prof !171

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc18JumpTargetsVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  store ptr %i.an, ptr %i.am, align 8, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  store i64 1, ptr %i.ao, align 8, !tbaa !192
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !360
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m
end_hunk_1
