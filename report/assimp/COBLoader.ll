Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/COBLoader?download=true
inline.NumInlined: 2279
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp11COBImporter24ReadBasicNodeInfo_BinaryERNS_3COB4NodeERNS_12StreamReaderILb0ELb0EEERKNS1_9ChunkInfoE:bb.a
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %5, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2INSt7__cxx1112basic_stringIcS3_S4_EEEERKT_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 noundef signext 95)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = and i64 %i.k, 4294967295
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %5, i64 noundef %i.z)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.t ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ab, ptr %4, align 8, !alias.scope !176
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.ac, align 8, !alias.scope !176
  store i8 0, ptr %i.ab, align 8, !alias.scope !176
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !176 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !176 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !176 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !alias.scope !176 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ab, align 8, !alias.scope !176
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %.body

bb.k:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.j

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.k, %bb.i
  %i.au = load ptr, ptr %i.l, align 8             ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %4, align 8               ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  br i1 %i.ay, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  br i1 %i.ay, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  switch i64 %i.az, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bb = load i8, ptr %i.ax, align 1
  store i8 %i.bb, ptr %i.au, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bc = load i64, ptr %i.ac, align 8            ; 2 uses
  store i64 %i.bc, ptr %i.n, align 8
  %i.bd = load ptr, ptr %i.l, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ax, ptr %i.l, align 8
  %i.bf = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.bf, ptr %i.n, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bg = load i64, ptr %i.av, align 8
  store ptr %i.ax, ptr %i.l, align 8
  %i.bh = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.bh, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %4, align 8
  store i64 %i.bg, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bi = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.o ], [ %i.ab, %bb.p ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %4, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ab
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bl = load i64, ptr %i.ab, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bn, ptr %5, align 8
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %5, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load i64, ptr %i.bv, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bz) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ca) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  store ptr %i.cc, ptr %i.b, align 8
  %i.cd = load ptr, ptr %i.e, align 8
  %i.ce = icmp ugt ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.q, label %.preheader.split.us.preheader

bb.q:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.109)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cf) #26
  br label %common.resume

.preheader.split.us.preheader:                    ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store float 1.000000e+00, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 204
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ck = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8
  %i.cn = icmp ugt ptr %i.cl, %i.cm
  br i1 %i.cn, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us: ; preds = %.preheader.split.us.preheader
  %i.co = load float, ptr %i.ck, align 1
  store ptr %i.cl, ptr %i.b, align 8
  store float %i.co, ptr %i.ch, align 8
  %i.cp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load ptr, ptr %i.e, align 8
  %i.cs = icmp ugt ptr %i.cq, %i.cr
  br i1 %i.cs, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us
  %i.ct = load float, ptr %i.cp, align 1
  store ptr %i.cq, ptr %i.b, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.ct, ptr %i.cu, align 4
  %i.cv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load ptr, ptr %i.e, align 8
  %i.cy = icmp ugt ptr %i.cw, %i.cx
  br i1 %i.cy, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1
  %i.cz = load float, ptr %i.cv, align 1
  store ptr %i.cw, ptr %i.b, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.cz, ptr %i.da, align 8
  %i.db = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load ptr, ptr %i.e, align 8
  %i.de = icmp ugt ptr %i.dc, %i.dd
  br i1 %i.de, label %.split.us, label %.preheader.split.us24.preheader.1

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ao, %bb.j ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.preheader.split.us24.preheader.1:                ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2
  %i.dg = load float, ptr %i.db, align 1
  store ptr %i.dc, ptr %i.b, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.dg, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.dk = load ptr, ptr %i.e, align 8
  %i.dl = icmp ugt ptr %i.dj, %i.dk
  br i1 %i.dl, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152: ; preds = %.preheader.split.us24.preheader.1
  %i.dm = load float, ptr %i.di, align 1
  store ptr %i.dj, ptr %i.b, align 8
  store float %i.dm, ptr %i.cj, align 8
  %i.dn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dp = load ptr, ptr %i.e, align 8
  %i.dq = icmp ugt ptr %i.do, %i.dp
  br i1 %i.dq, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152
  %i.dr = load float, ptr %i.dn, align 1
  store ptr %i.do, ptr %i.b, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.dr, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8
  %i.dw = icmp ugt ptr %i.du, %i.dv
  br i1 %i.dw, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1
  %i.dx = load float, ptr %i.dt, align 1
  store ptr %i.du, ptr %i.b, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.dx, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.eb = load ptr, ptr %i.e, align 8
  %i.ec = icmp ugt ptr %i.ea, %i.eb
  br i1 %i.ec, label %.split.us, label %.preheader.split.us29.preheader.2

.preheader.split.us29.preheader.2:                ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1
  %i.ed = load float, ptr %i.dz, align 1
  store ptr %i.ea, ptr %i.b, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load ptr, ptr %i.e, align 8
  %i.ei = icmp ugt ptr %i.eg, %i.eh
  br i1 %i.ei, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255: ; preds = %.preheader.split.us29.preheader.2
  %i.ej = load float, ptr %i.ef, align 1
  store ptr %i.eg, ptr %i.b, align 8
  store float %i.ej, ptr %i.ci, align 8
  %i.ek = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %i.em = load ptr, ptr %i.e, align 8
  %i.en = icmp ugt ptr %i.el, %i.em
  br i1 %i.en, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255
  %i.eo = load float, ptr %i.ek, align 1
  store ptr %i.el, ptr %i.b, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.eo, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  %i.es = load ptr, ptr %i.e, align 8
  %i.et = icmp ugt ptr %i.er, %i.es
  br i1 %i.et, label %.split.us, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.2.2

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.2.2: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2
  %i.eu = load float, ptr %i.eq, align 1
  store ptr %i.er, ptr %i.b, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.eu, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = load ptr, ptr %i.e, align 8
  %i.ez = icmp ugt ptr %i.ex, %i.ey
  br i1 %i.ez, label %.split.us, label %.split23.us.2

.split23.us.2:                                    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.2.2
  %i.fa = load float, ptr %i.ew, align 1
  store ptr %i.ex, ptr %i.b, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %i.fa, ptr %i.fb, align 4
  ret void

.split.us:                                        ; preds = %.preheader.split.us29.preheader.2, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.255, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.1.2, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us31.2.2, %.preheader.split.us24.preheader.1, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.152, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.1.1, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us26.2.1, %.preheader.split.us.preheader, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.1, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit.us.2
  %i.fc = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull @.str.108)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.split.us
  call void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.v:                                             ; preds = %.split.us
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fc) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11COBImporter23UnsupportedChunk_BinaryERNS_12StreamReaderILb0ELb0EEERKNS_3COB9ChunkInfoEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull @.str.33, i64 noundef 31)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit: ; preds = %bb.a
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit
  %i.c = load ptr, ptr %5, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = or i32 %i.h, 1
end_hunk_0
