Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmUnsetCommand?download=true
inline.NumInlined: 143
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z14cmUnsetCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24 ; 10 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 4)
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ad, ptr nonnull @.str.2, i64 %.sroa.speculated.i.i.i.i)
  %bcmp.i.i.fr = freeze i32 %bcmp.i.i
  %i.ah = icmp ne i32 %bcmp.i.i.fr, 0
  %i.ai = icmp ult i64 %i.af, 6
  %or.cond = or i1 %i.ai, %i.ah
  br i1 %or.cond, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.aj = add i64 %i.af, -5
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !20, !alias.scope !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.am = add i64 %i.af, -4
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.am) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10, !noalias !25
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !10, !noalias !25
  %i.an = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.an, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !22, !alias.scope !25
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !25
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !23, !alias.scope !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aq = phi ptr [ %i.ao, %.noexc10.i.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  %cond = icmp eq i64 %spec.select.i.i.i, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !23
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.al, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.f, %bb.g
  %i.as = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !24, !alias.scope !25
  %i.au = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10, !noalias !25
  %i.aw = load ptr, ptr %3, align 8, !tbaa !22
  %i.ax = invoke noundef zeroext i1 @_ZN13cmSystemTools8UnsetEnvEPKc(ptr noundef %i.aw)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.h
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.r

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.i
  %i.bf = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.s

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.speculated.i.i.i.i59 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 6)
  %bcmp.i.i60 = tail call i32 @bcmp(ptr %i.ad, ptr nonnull @.str.3, i64 %.sroa.speculated.i.i.i.i59)
  %bcmp.i.i60.fr = freeze i32 %bcmp.i.i60
  %i.bh = icmp ne i32 %bcmp.i.i60.fr, 0
  %i.bi = icmp ult i64 %i.af, 8
  %or.cond104 = or i1 %i.bi, %i.bh
  br i1 %or.cond104, label %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94, label %_Z11cmHasSuffixSt17basic_string_viewIcSt11char_traitsIcEEc.exit

_Z11cmHasSuffixSt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.bm = icmp eq i8 %i.bl, 125
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i65, label %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i65: ; preds = %_Z11cmHasSuffixSt17basic_string_viewIcSt11char_traitsIcEEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.bn = add i64 %i.af, -7
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bo, ptr %4, align 8, !tbaa !20, !alias.scope !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 6 ; 2 uses
  %i.bq = add i64 %i.af, -6
  %spec.select.i.i.i66 = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10, !noalias !26
  store i64 %spec.select.i.i.i66, ptr %i.b, align 8, !tbaa !10, !noalias !26
  %i.br = icmp ugt i64 %spec.select.i.i.i66, 15
  br i1 %i.br, label %.noexc10.i.i68, label %._crit_edge.i.i.i67

.noexc10.i.i68:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i65
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bs, ptr %4, align 8, !tbaa !22, !alias.scope !26
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !10, !noalias !26
  store i64 %i.bt, ptr %i.bo, align 8, !tbaa !23, !alias.scope !26
  br label %._crit_edge.i.i.i67

._crit_edge.i.i.i67:                              ; preds = %.noexc10.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i65
  %i.bu = phi ptr [ %i.bs, %.noexc10.i.i68 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i65 ] ; 2 uses
  %cond124 = icmp eq i64 %spec.select.i.i.i66, 1
  br i1 %cond124, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i67
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !23
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit69

bb.k:                                             ; preds = %._crit_edge.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bp, i64 %spec.select.i.i.i66, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit69: ; preds = %bb.j, %bb.k
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !10, !noalias !26 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !24, !alias.scope !26
  %i.by = load ptr, ptr %4, align 8, !tbaa !22, !alias.scope !26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10, !noalias !26
  %i.ca = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  invoke void @_ZNK10cmMakefile21RemoveCacheDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit69
  %i.cb = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bo
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.l
  %i.cd = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.r

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit69
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bo
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.m
  %i.ci = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.s

_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58, %bb.e, %_Z11cmHasSuffixSt17basic_string_viewIcSt11char_traitsIcEEc.exit
  switch i64 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98 [
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.n:                                             ; preds = %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94
  %i.ck = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  tail call void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %bb.r

bb.o:                                             ; preds = %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !24
  switch i64 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.a
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a: ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = xor i32 %i.cp, 1212367171
  %i.cr = getelementptr i8, ptr %i.co, i64 4
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = xor i32 %i.ct, 69
  %i.cv = or i32 %i.cq, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a
  %i.cz = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  tail call void @_ZNK10cmMakefile21RemoveCacheDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.a: ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !22 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 1
  %i.dd = xor i64 %i.dc, 6007613123082731856
  %i.de = getelementptr i8, ptr %i.db, i64 8
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.dg, 1162891075
  %i.di = or i64 %i.dd, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.a
  %i.dm = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  tail call void @_ZN10cmMakefile10RaiseScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(2952) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef null)
  br label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a, %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread94, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.dn, ptr %5, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 38, ptr %i.a, align 8, !tbaa !10
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.p   ; 3 uses

.noexc80:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98
  store ptr %i.do, ptr %5, align 8, !tbaa !22
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.do, ptr noundef nonnull align 1 dereferenceable(38) @.str.6, i64 38, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83 unwind label %bb.q

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83: ; preds = %.noexc80
  %i.dt = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dn
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83
  %i.dv = load i64, ptr %i.dn, align 8, !tbaa !23
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.r

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread98
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.q:                                             ; preds = %.noexc80
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dn
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.q
  %i.eb = load i64, ptr %i.dn, align 8, !tbaa !23
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.p ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.dy, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ true, %bb.n ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  ret i1 %.1

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ]
  resume { ptr, i32 } %.pn43.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN13cmSystemTools8UnsetEnvEPKc(ptr noundef) local_unnamed_addr #0

declare void @_ZNK10cmMakefile21RemoveCacheDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN10cmMakefile10RaiseScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmUnsetCommand.cxx() #6 section ".text.startup" {
bb.a:
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #10 ; 0 uses
  store i64 7, ptr @_ZN12cmStateEnumsL16AllTargetDomainsE, align 8, !tbaa !10
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12cmStateEnumsL16AllTargetDomainsE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!12 = distinct !{!12, !11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!14 = distinct !{!14, !13, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !9, i64 8, !5, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!21, !9, i64 8}
!25 = !{!12}
!26 = !{!14}
!27 = !{!"p1 _ZTS10cmMakefile", !15, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !28, i64 4}
!30 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !29, i64 0}
!31 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !30, i64 0}
!32 = !{!"_ZTSSt8optionalIiE", !31, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !35, i64 0}
!37 = !{!"_ZTS17cmExecutionStatus", !27, i64 0, !21, i64 8, !28, i64 40, !28, i64 41, !28, i64 42, !28, i64 43, !32, i64 44, !36, i64 56}
!38 = !{!37, !27, i64 0}
!39 = !{}
!40 = !{i64 8}
end_hunk_0
