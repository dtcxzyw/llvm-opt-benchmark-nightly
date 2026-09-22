Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tune?download=true
inline.NumInlined: 399
inline.NumDeleted: 246
begin_hunk_0_@_ZN9Stockfish4Tune4nextERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 353
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -24      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.b

bb.b:                                             ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ae = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 44, i64 noundef 0) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.af = load i64, ptr %i.d, align 8, !tbaa !23, !noalias !100
  store ptr %i.e, ptr %3, align 8, !tbaa !54, !alias.scope !100
  %i.ag = load ptr, ptr %1, align 8, !tbaa !24, !noalias !100 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !100
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !55, !noalias !100
  %i.ah = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !24, !alias.scope !100
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !100
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !29, !alias.scope !100
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.ak = phi ptr [ %i.ai, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.ag, align 1, !tbaa !29
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ag, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.am = load i64, ptr %i.a, align 8, !tbaa !55, !noalias !100 ; 2 uses
  store i64 %i.am, ptr %i.f, align 8, !tbaa !23, !alias.scope !100
  %i.an = load ptr, ptr %3, align 8, !tbaa !24, !alias.scope !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !100
  br i1 %2, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  switch i64 %i.aq, label %bb.h [
    i64 -1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.d, align 8, !tbaa !23
  %i.ar = load ptr, ptr %1, align 8, !tbaa !24
  store i8 0, ptr %i.ar, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.h:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.d, align 8, !tbaa !23
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.as)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %spec.select.i.i) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.h, %bb.g, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !31
  store ptr null, ptr %i.h, align 8, !tbaa !101
  store i8 0, ptr %i.i, align 8, !tbaa !102
  store i8 0, ptr %i.j, align 1, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr %i.l, ptr %4, align 8, !tbaa !31
  %i.at = load i64, ptr %i.n, align 8
  %i.au = getelementptr inbounds i8, ptr %4, i64 %i.at
  store ptr %i.m, ptr %i.au, align 8, !tbaa !31
  store i64 0, ptr %i.o, align 8, !tbaa !105
  %i.av = load ptr, ptr %4, align 8, !tbaa !31
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %4, i64 %i.ax
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null) #16
  store ptr %i.q, ptr %i.p, align 8, !tbaa !31
  %i.az = load i64, ptr %i.s, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.p, i64 %i.az
  store ptr %i.r, ptr %i.ba, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.p, i64 %i.bd
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null) #16
  %i.bf = load i64, ptr %i.v, align 8
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.bf
  store ptr %i.u, ptr %i.bg, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.g, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8, !tbaa !31
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 24)
  %i.bh = load ptr, ptr %4, align 8, !tbaa !31
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %4, i64 %i.bj
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, ptr noundef nonnull %i.w) #16
  %i.bl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #16 ; 0 uses
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !23
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !24
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bq, i64 noundef %i.bm) #16 ; 0 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !31
  %i.bs = load i64, ptr %i.z, align 8
  %i.bt = getelementptr inbounds i8, ptr %4, i64 %i.bs
  store ptr %i.y, ptr %i.bt, align 8, !tbaa !31
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ac
  br i1 %i.bv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bw = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #17
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8, !tbaa !31
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #16
  store ptr %i.l, ptr %4, align 8, !tbaa !31
  %i.by = load i64, ptr %i.n, align 8
  %i.bz = getelementptr inbounds i8, ptr %4, i64 %i.by
  store ptr %i.m, ptr %i.bz, align 8, !tbaa !31
  store i64 0, ptr %i.o, align 8, !tbaa !105
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ca = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.e
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !29
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ce = load ptr, ptr %0, align 8, !tbaa !24    ; 11 uses
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !23  ; 16 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf ; 2 uses
  %.not5.i.i = icmp samesign eq i64 %i.cf, 0
  br i1 %.not5.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15.thread, label %iter.check69

iter.check69:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %min.iters.check45 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check46

vector.main.loop.iter.check46:                    ; preds = %iter.check69
  %min.iters.check47 = icmp ult i64 %i.cf, 32
  br i1 %min.iters.check47, label %vec.epilog.ph73, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check46
  %i.ch = and i64 %i.cf, 24
  %n.vec49 = and i64 %i.cf, -32                   ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 %n.vec49
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next61, %vector.body50 ] ; 2 uses
  %vec.phi52 = phi <8 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.cu, %vector.body50 ]
  %vec.phi53 = phi <8 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.cv, %vector.body50 ]
  %vec.phi54 = phi <8 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.cw, %vector.body50 ]
  %vec.phi55 = phi <8 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.cx, %vector.body50 ]
  %next.gep56 = getelementptr i8, ptr %i.ce, i64 %index51 ; 4 uses
  %i.cj = getelementptr i8, ptr %next.gep56, i64 8
  %i.ck = getelementptr i8, ptr %next.gep56, i64 16
  %i.cl = getelementptr i8, ptr %next.gep56, i64 24
  %wide.load57 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !29
  %wide.load58 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !29
  %wide.load59 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !29
  %wide.load60 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !29
  %i.cm = icmp eq <8 x i8> %wide.load57, splat (i8 40)
  %i.cn = icmp eq <8 x i8> %wide.load58, splat (i8 40)
  %i.co = icmp eq <8 x i8> %wide.load59, splat (i8 40)
  %i.cp = icmp eq <8 x i8> %wide.load60, splat (i8 40)
  %i.cq = zext <8 x i1> %i.cm to <8 x i64>
  %i.cr = zext <8 x i1> %i.cn to <8 x i64>
  %i.cs = zext <8 x i1> %i.co to <8 x i64>
  %i.ct = zext <8 x i1> %i.cp to <8 x i64>
  %i.cu = add <8 x i64> %vec.phi52, %i.cq         ; 2 uses
  %i.cv = add <8 x i64> %vec.phi53, %i.cr         ; 2 uses
  %i.cw = add <8 x i64> %vec.phi54, %i.cs         ; 2 uses
  %i.cx = add <8 x i64> %vec.phi55, %i.ct         ; 2 uses
  %index.next61 = add nuw i64 %index51, 32        ; 2 uses
  %i.cy = icmp eq i64 %index.next61, %n.vec49
  br i1 %i.cy, label %middle.block62, label %vector.body50, !llvm.loop !93

middle.block62:                                   ; preds = %vector.body50
  %bin.rdx63 = add <8 x i64> %i.cv, %i.cu
  %bin.rdx64 = add <8 x i64> %i.cw, %bin.rdx63
  %bin.rdx65 = add <8 x i64> %i.cx, %bin.rdx64
  %i.cz = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx65) ; 3 uses
  %cmp.n66 = icmp eq i64 %i.cf, %n.vec49
  br i1 %cmp.n66, label %iter.check, label %vec.epilog.iter.check71

vec.epilog.iter.check71:                          ; preds = %middle.block62
  %min.epilog.iters.check72 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check72, label %.lr.ph.i.i.preheader, label %vec.epilog.ph73, !prof !108

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check46, %vec.epilog.iter.check71
  %vec.epilog.resume.val67 = phi i64 [ %n.vec49, %vec.epilog.iter.check71 ], [ 0, %vector.main.loop.iter.check46 ]
  %bc.merge.rdx68 = phi i64 [ %i.cz, %vec.epilog.iter.check71 ], [ 0, %vector.main.loop.iter.check46 ]
  %n.vec74 = and i64 %i.cf, -8                    ; 3 uses
  %i.da = getelementptr i8, ptr %i.ce, i64 %n.vec74
  %i.db = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx68, i64 0
  br label %vec.epilog.vector.body75

vec.epilog.vector.body75:                         ; preds = %vec.epilog.vector.body75, %vec.epilog.ph73
  %index76 = phi i64 [ %vec.epilog.resume.val67, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body75 ] ; 2 uses
  %vec.phi77 = phi <8 x i64> [ %i.db, %vec.epilog.ph73 ], [ %i.de, %vec.epilog.vector.body75 ]
  %next.gep78 = getelementptr i8, ptr %i.ce, i64 %index76
  %wide.load79 = load <8 x i8>, ptr %next.gep78, align 1, !tbaa !29
  %i.dc = icmp eq <8 x i8> %wide.load79, splat (i8 40)
  %i.dd = zext <8 x i1> %i.dc to <8 x i64>
  %i.de = add <8 x i64> %vec.phi77, %i.dd         ; 2 uses
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.df, label %vec.epilog.middle.block81, label %vec.epilog.vector.body75, !llvm.loop !94

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body75
  %i.dg = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.de) ; 2 uses
  %cmp.n82 = icmp eq i64 %i.cf, %n.vec74
  br i1 %cmp.n82, label %iter.check, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check69, %vec.epilog.iter.check71, %vec.epilog.middle.block81
  %.07.i.i.ph = phi i64 [ 0, %iter.check69 ], [ %i.cz, %vec.epilog.iter.check71 ], [ %i.dg, %vec.epilog.middle.block81 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.ce, %iter.check69 ], [ %i.ci, %vec.epilog.iter.check71 ], [ %i.da, %vec.epilog.middle.block81 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %spec.select.i.i7, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dh = load i8, ptr %.sroa.03.06.i.i, align 1, !tbaa !29
  %i.di = icmp eq i8 %i.dh, 40
  %i.dj = zext i1 %i.di to i64
  %spec.select.i.i7 = add nuw nsw i64 %.07.i.i, %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dk, %i.cg
  br i1 %.not.i.i, label %iter.check, label %.lr.ph.i.i, !llvm.loop !95

iter.check:                                       ; preds = %.lr.ph.i.i, %vec.epilog.middle.block81, %middle.block62
  %spec.select.i.i7.lcssa = phi i64 [ %i.dg, %vec.epilog.middle.block81 ], [ %i.cz, %middle.block62 ], [ %spec.select.i.i7, %.lr.ph.i.i ]
  %min.iters.check = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check, label %.lr.ph.i.i9.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.cf, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.cf, 24
  %n.vec = and i64 %i.cf, -32                     ; 4 uses
  %i.dm = getelementptr i8, ptr %i.ce, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi28 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi29 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi30 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.eb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ce, i64 %index ; 4 uses
  %i.dn = getelementptr i8, ptr %next.gep, i64 8
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %i.dp = getelementptr i8, ptr %next.gep, i64 24
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load31 = load <8 x i8>, ptr %i.dn, align 1, !tbaa !29
  %wide.load32 = load <8 x i8>, ptr %i.do, align 1, !tbaa !29
  %wide.load33 = load <8 x i8>, ptr %i.dp, align 1, !tbaa !29
  %i.dq = icmp eq <8 x i8> %wide.load, splat (i8 41)
  %i.dr = icmp eq <8 x i8> %wide.load31, splat (i8 41)
  %i.ds = icmp eq <8 x i8> %wide.load32, splat (i8 41)
  %i.dt = icmp eq <8 x i8> %wide.load33, splat (i8 41)
  %i.du = zext <8 x i1> %i.dq to <8 x i64>
  %i.dv = zext <8 x i1> %i.dr to <8 x i64>
  %i.dw = zext <8 x i1> %i.ds to <8 x i64>
  %i.dx = zext <8 x i1> %i.dt to <8 x i64>
  %i.dy = add <8 x i64> %vec.phi, %i.du           ; 2 uses
  %i.dz = add <8 x i64> %vec.phi28, %i.dv         ; 2 uses
  %i.ea = add <8 x i64> %vec.phi29, %i.dw         ; 2 uses
  %i.eb = add <8 x i64> %vec.phi30, %i.dx         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.dz, %i.dy
  %bin.rdx34 = add <8 x i64> %i.ea, %bin.rdx
  %bin.rdx35 = add <8 x i64> %i.eb, %bin.rdx34
  %i.ed = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx35) ; 3 uses
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i9.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ed, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.cf, -8                    ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ce, i64 %n.vec36
  %i.ef = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi38 = phi <8 x i64> [ %i.ef, %vec.epilog.ph ], [ %i.ei, %vec.epilog.vector.body ]
  %next.gep39 = getelementptr i8, ptr %i.ce, i64 %index37
  %wide.load40 = load <8 x i8>, ptr %next.gep39, align 1, !tbaa !29
  %i.eg = icmp eq <8 x i8> %wide.load40, splat (i8 41)
  %i.eh = zext <8 x i1> %i.eg to <8 x i64>
  %i.ei = add <8 x i64> %vec.phi38, %i.eh         ; 2 uses
  %index.next41 = add nuw i64 %index37, 8         ; 2 uses
  %i.ej = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ek = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ei) ; 2 uses
  %cmp.n42 = icmp eq i64 %i.cf, %n.vec36
  br i1 %cmp.n42, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15, label %.lr.ph.i.i9.preheader

.lr.ph.i.i9.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i10.ph = phi i64 [ 0, %iter.check ], [ %i.ed, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  %.sroa.03.06.i.i11.ph = phi ptr [ %i.ce, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i.i9.preheader, %.lr.ph.i.i9
  %.07.i.i10 = phi i64 [ %spec.select.i.i12, %.lr.ph.i.i9 ], [ %.07.i.i10.ph, %.lr.ph.i.i9.preheader ]
  %.sroa.03.06.i.i11 = phi ptr [ %i.eo, %.lr.ph.i.i9 ], [ %.sroa.03.06.i.i11.ph, %.lr.ph.i.i9.preheader ] ; 2 uses
  %i.el = load i8, ptr %.sroa.03.06.i.i11, align 1, !tbaa !29
  %i.em = icmp eq i8 %i.el, 41
  %i.en = zext i1 %i.em to i64
  %spec.select.i.i12 = add nuw nsw i64 %.07.i.i10, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i11, i64 1 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.eo, %i.cg
  br i1 %.not.i.i13, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15, label %.lr.ph.i.i9, !llvm.loop !98

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15: ; preds = %.lr.ph.i.i9, %vec.epilog.middle.block, %middle.block
  %spec.select.i.i12.lcssa = phi i64 [ %i.ek, %vec.epilog.middle.block ], [ %i.ed, %middle.block ], [ %spec.select.i.i12, %.lr.ph.i.i9 ]
  %.not = icmp eq i64 %spec.select.i.i7.lcssa, %spec.select.i.i12.lcssa
  br i1 %.not, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15.thread, label %bb.b, !llvm.loop !99

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit15
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish4Tune5EntryIiE11init_optionEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN9Stockfish4Tune7optionsE, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60, !nonnull !50, !align !61
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN9Stockfish4Tune11make_optionEPNS_10OptionsMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_8SetRangeE(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish4Tune5EntryIiE11read_optionEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN9Stockfish4Tune7optionsE, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef i64 @_ZNK9Stockfish10OptionsMap5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN9Stockfish4Tune7optionsE, align 8, !tbaa !57
  %i.e = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.f = tail call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60, !nonnull !50, !align !61
  store i32 %i.f, ptr %i.h, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i64 @_ZNK9Stockfish10OptionsMap5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9Stockfish4Tune5EntryIFvvEE11init_optionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish4Tune5EntryIFvvEE11read_optionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110, !nonnull !50
  tail call void %i.b() #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9Stockfish4Tune12read_resultsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #17
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
